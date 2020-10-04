.class public Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;
.super Ljava/lang/Object;
.source "RecoverableKeyStoreManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RecoverableKeyStoreMgr"

.field private static mInstance:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;


# instance fields
.field private final mApplicationKeyStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;

.field private final mCleanupManager:Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;

.field private final mContext:Landroid/content/Context;

.field private final mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private final mListenersStorage:Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;

.field private final mPlatformKeyManager:Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

.field private final mRecoverableKeyGenerator:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;

.field private final mRecoverySessionStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;

.field private final mSnapshotStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

.field private final mTestCertHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;Ljava/util/concurrent/ExecutorService;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "recoverableKeyStoreDb"    # Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;
    .param p3, "recoverySessionStorage"    # Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;
    .param p4, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .param p5, "snapshotStorage"    # Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;
    .param p6, "listenersStorage"    # Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;
    .param p7, "platformKeyManager"    # Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;
    .param p8, "applicationKeyStorage"    # Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;
    .param p9, "testOnlyInsecureCertificateHelper"    # Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;
    .param p10, "cleanupManager"    # Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mContext:Landroid/content/Context;

    .line 162
    iput-object p2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 163
    iput-object p3, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mRecoverySessionStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;

    .line 164
    iput-object p4, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 165
    iput-object p6, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mListenersStorage:Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;

    .line 166
    iput-object p5, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mSnapshotStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

    .line 167
    iput-object p7, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mPlatformKeyManager:Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

    .line 168
    iput-object p8, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mApplicationKeyStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;

    .line 169
    iput-object p9, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mTestCertHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 170
    iput-object p10, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mCleanupManager:Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;

    .line 172
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mCleanupManager:Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->verifyKnownUsers()V

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-static {v0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;->newInstance(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;)Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mRecoverableKeyGenerator:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    nop

    .line 179
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v1, "RecoverableKeyStoreMgr"

    const-string v2, "AES keygen algorithm not available. AOSP must support this."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    new-instance v1, Landroid/os/ServiceSpecificException;

    const/16 v2, 0x16

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method private checkRecoverKeyStorePermission()V
    .locals 3

    .line 968
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 970
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " doesn\'t have RecoverKeyStore permission."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 968
    const-string v2, "android.permission.RECOVER_KEYSTORE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 972
    .local v0, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 973
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mCleanupManager:Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->registerRecoveryAgent(II)V

    .line 974
    return-void
.end method

.method private decryptRecoveryKey(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;[B)[B
    .locals 6
    .param p1, "sessionEntry"    # Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;
    .param p2, "encryptedClaimResponse"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/os/ServiceSpecificException;
        }
    .end annotation

    .line 830
    const-string v0, "Failed to decrypt recovery key "

    const-string v1, "RecoverableKeyStoreMgr"

    .line 831
    const/16 v2, 0x16

    const/16 v3, 0x1a

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->getKeyClaimant()[B

    move-result-object v4

    .line 832
    invoke-virtual {p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->getVaultParams()[B

    move-result-object v5

    .line 830
    invoke-static {v4, v5, p2}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->decryptRecoveryClaimResponse([B[B[B)[B

    move-result-object v4
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/AEADBadTagException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3

    .line 845
    .local v4, "locallyEncryptedKey":[B
    nop

    .line 848
    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->getLskfHash()[B

    move-result-object v5

    invoke-static {v5, v4}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->decryptRecoveryKey([B[B)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/crypto/AEADBadTagException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 857
    :catch_0
    move-exception v0

    .line 859
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Landroid/os/ServiceSpecificException;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 853
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v2

    .line 854
    .local v2, "e":Ljavax/crypto/AEADBadTagException;
    const-string v5, "Got AEADBadTagException during decrypting recovery key"

    invoke-static {v1, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 855
    new-instance v1, Landroid/os/ServiceSpecificException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    invoke-virtual {v2}, Ljavax/crypto/AEADBadTagException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 849
    .end local v2    # "e":Ljavax/crypto/AEADBadTagException;
    :catch_2
    move-exception v2

    .line 850
    .local v2, "e":Ljava/security/InvalidKeyException;
    const-string v5, "Got InvalidKeyException during decrypting recovery key"

    invoke-static {v1, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 851
    new-instance v1, Landroid/os/ServiceSpecificException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    invoke-virtual {v2}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 842
    .end local v2    # "e":Ljava/security/InvalidKeyException;
    .end local v4    # "locallyEncryptedKey":[B
    :catch_3
    move-exception v0

    .line 844
    .restart local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Landroid/os/ServiceSpecificException;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 838
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_4
    move-exception v2

    .line 839
    .local v2, "e":Ljavax/crypto/AEADBadTagException;
    const-string v4, "Got AEADBadTagException during decrypting recovery claim response"

    invoke-static {v1, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 840
    new-instance v1, Landroid/os/ServiceSpecificException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    invoke-virtual {v2}, Ljavax/crypto/AEADBadTagException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 834
    .end local v2    # "e":Ljavax/crypto/AEADBadTagException;
    :catch_5
    move-exception v2

    .line 835
    .local v2, "e":Ljava/security/InvalidKeyException;
    const-string v4, "Got InvalidKeyException during decrypting recovery claim response"

    invoke-static {v1, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 836
    new-instance v1, Landroid/os/ServiceSpecificException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    invoke-virtual {v2}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method private getAlias(IILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "alias"    # Ljava/lang/String;

    .line 661
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mApplicationKeyStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->getGrantAlias(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Landroid/security/KeyStore;)Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "keystore"    # Landroid/security/KeyStore;

    const-class v1, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    monitor-enter v1

    .line 113
    :try_start_0
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mInstance:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    if-nez v0, :cond_0

    .line 114
    invoke-static/range {p0 .. p0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->newInstance(Landroid/content/Context;)Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v13, v0

    .line 118
    .local v13, "db":Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;
    move-object/from16 v14, p0

    :try_start_1
    invoke-static {v14, v13}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getInstance(Landroid/content/Context;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;)Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

    move-result-object v9

    .line 119
    .local v9, "platformKeyManager":Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;
    invoke-static/range {p1 .. p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->getInstance(Landroid/security/KeyStore;)Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    .local v0, "applicationKeyStorage":Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;
    nop

    .line 128
    :try_start_2
    invoke-static {}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->newInstance()Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

    move-result-object v2

    move-object v15, v2

    .line 129
    .local v15, "snapshotStorage":Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;
    nop

    .line 130
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 129
    invoke-static {v2, v15, v13, v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->getInstance(Landroid/content/Context;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;)Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;

    move-result-object v12

    .line 134
    .local v12, "cleanupManager":Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;
    new-instance v16, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 135
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v5, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;

    invoke-direct {v5}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;-><init>()V

    .line 138
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    new-instance v8, Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;

    invoke-direct {v8}, Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;-><init>()V

    new-instance v11, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    invoke-direct {v11}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;-><init>()V

    move-object/from16 v2, v16

    move-object v4, v13

    move-object v7, v15

    move-object v10, v0

    invoke-direct/range {v2 .. v12}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;-><init>(Landroid/content/Context;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;Ljava/util/concurrent/ExecutorService;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;)V

    sput-object v16, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mInstance:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    goto :goto_0

    .line 123
    .end local v0    # "applicationKeyStorage":Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;
    .end local v9    # "platformKeyManager":Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;
    .end local v12    # "cleanupManager":Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;
    .end local v15    # "snapshotStorage":Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/security/KeyStoreException;
    new-instance v2, Landroid/os/ServiceSpecificException;

    const/16 v3, 0x16

    invoke-virtual {v0}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 120
    .end local v0    # "e":Ljava/security/KeyStoreException;
    :catch_1
    move-exception v0

    .line 122
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 113
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v13    # "db":Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;
    :cond_0
    move-object/from16 v14, p0

    .line 146
    :goto_0
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mInstance:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v0

    .line 112
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "keystore":Landroid/security/KeyStore;
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private importKeyMaterials(IILjava/util/Map;)Ljava/util/Map;
    .locals 7
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 642
    .local p3, "keysByAlias":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 643
    .local v0, "grantAliasesByAlias":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 644
    .local v2, "alias":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mApplicationKeyStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-virtual {v3, p1, p2, v2, v4}, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->setSymmetricKeyEntry(IILjava/lang/String;[B)V

    .line 645
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getAlias(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 646
    .local v3, "grantAlias":Ljava/lang/String;
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    const-string v6, "Import %s -> %s"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "RecoverableKeyStoreMgr"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    .end local v2    # "alias":Ljava/lang/String;
    .end local v3    # "grantAlias":Ljava/lang/String;
    goto :goto_0

    .line 649
    :cond_0
    return-object v0
.end method

.method private publicKeysMatch(Ljava/security/PublicKey;[B)Z
    .locals 2
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .param p2, "vaultParams"    # [B

    .line 977
    invoke-static {p1}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->encodePublicKey(Ljava/security/PublicKey;)[B

    move-result-object v0

    .line 978
    .local v0, "encodedPublicKey":[B
    array-length v1, v0

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method private recoverApplicationKeys([BLjava/util/List;)Ljava/util/Map;
    .locals 10
    .param p1, "recoveryKey"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/WrappedApplicationKey;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 871
    .local p2, "applicationKeys":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/WrappedApplicationKey;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 872
    .local v0, "keyMaterialByAlias":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v3, 0x1a

    const-string v4, "RecoverableKeyStoreMgr"

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/keystore/recovery/WrappedApplicationKey;

    .line 873
    .local v2, "applicationKey":Landroid/security/keystore/recovery/WrappedApplicationKey;
    invoke-virtual {v2}, Landroid/security/keystore/recovery/WrappedApplicationKey;->getAlias()Ljava/lang/String;

    move-result-object v5

    .line 874
    .local v5, "alias":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/security/keystore/recovery/WrappedApplicationKey;->getEncryptedKeyMaterial()[B

    move-result-object v6

    .line 875
    .local v6, "encryptedKeyMaterial":[B
    invoke-virtual {v2}, Landroid/security/keystore/recovery/WrappedApplicationKey;->getMetadata()[B

    move-result-object v7

    .line 878
    .local v7, "keyMetadata":[B
    :try_start_0
    invoke-static {p1, v6, v7}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->decryptApplicationKey([B[B[B)[B

    move-result-object v8

    .line 880
    .local v8, "keyMaterial":[B
    invoke-virtual {v0, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/AEADBadTagException; {:try_start_0 .. :try_end_0} :catch_0

    .line 894
    nop

    .end local v8    # "keyMaterial":[B
    goto :goto_1

    .line 890
    :catch_0
    move-exception v3

    .line 891
    .local v3, "e":Ljavax/crypto/AEADBadTagException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Got AEADBadTagException during decrypting application key with alias: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 895
    .end local v2    # "applicationKey":Landroid/security/keystore/recovery/WrappedApplicationKey;
    .end local v3    # "e":Ljavax/crypto/AEADBadTagException;
    .end local v5    # "alias":Ljava/lang/String;
    .end local v6    # "encryptedKeyMaterial":[B
    .end local v7    # "keyMetadata":[B
    :goto_1
    goto :goto_0

    .line 885
    .restart local v2    # "applicationKey":Landroid/security/keystore/recovery/WrappedApplicationKey;
    .restart local v5    # "alias":Ljava/lang/String;
    .restart local v6    # "encryptedKeyMaterial":[B
    .restart local v7    # "keyMetadata":[B
    :catch_1
    move-exception v1

    .line 886
    .local v1, "e":Ljava/security/InvalidKeyException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Got InvalidKeyException during decrypting application key with alias: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 888
    new-instance v4, Landroid/os/ServiceSpecificException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to recover key with alias \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\': "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v3, v8}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 881
    .end local v1    # "e":Ljava/security/InvalidKeyException;
    :catch_2
    move-exception v1

    .line 882
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v3, "Missing SecureBox algorithm. AOSP required to support this."

    invoke-static {v4, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 883
    new-instance v3, Landroid/os/ServiceSpecificException;

    const/16 v4, 0x16

    .line 884
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v4, v8}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 896
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v2    # "applicationKey":Landroid/security/keystore/recovery/WrappedApplicationKey;
    .end local v5    # "alias":Ljava/lang/String;
    .end local v6    # "encryptedKeyMaterial":[B
    .end local v7    # "keyMetadata":[B
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 897
    :cond_1
    const-string v1, "Failed to recover any of the application keys."

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    new-instance v2, Landroid/os/ServiceSpecificException;

    invoke-direct {v2, v3, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 901
    :cond_2
    :goto_2
    return-object v0
.end method


# virtual methods
.method public closeSession(Ljava/lang/String;)V
    .locals 2
    .param p1, "sessionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 668
    invoke-direct {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 669
    const-string v0, "invalid session"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mRecoverySessionStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->remove(ILjava/lang/String;)V

    .line 671
    return-void
.end method

.method public generateKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 698
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->generateKeyWithMetadata(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public generateKeyWithMetadata(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 9
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "metadata"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 713
    invoke-direct {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 714
    const-string v0, "alias is null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 716
    .local v0, "uid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    .line 720
    .local v7, "userId":I
    const/16 v8, 0x16

    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mPlatformKeyManager:Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

    invoke-virtual {v1, v7}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getEncryptKey(I)Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;

    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 728
    .local v2, "encryptionKey":Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;
    nop

    .line 731
    :try_start_1
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mRecoverableKeyGenerator:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;

    move v3, v7

    move v4, v0

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;->generateAndStoreKey(Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;IILjava/lang/String;[B)[B

    move-result-object v1

    .line 733
    .local v1, "secretKey":[B
    iget-object v3, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mApplicationKeyStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;

    invoke-virtual {v3, v7, v0, p1, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->setSymmetricKeyEntry(IILjava/lang/String;[B)V

    .line 734
    invoke-direct {p0, v7, v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getAlias(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStorageException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3

    .line 735
    .end local v1    # "secretKey":[B
    :catch_0
    move-exception v1

    .line 736
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Landroid/os/ServiceSpecificException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v8, v4}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 726
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "encryptionKey":Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;
    :catch_1
    move-exception v1

    .line 727
    .local v1, "e":Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException;
    new-instance v2, Landroid/os/ServiceSpecificException;

    const/16 v3, 0x17

    invoke-virtual {v1}, Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 724
    .end local v1    # "e":Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException;
    :catch_2
    move-exception v1

    .line 725
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Landroid/os/ServiceSpecificException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v8, v3}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 721
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 723
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 818
    invoke-direct {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 819
    const-string v0, "alias is null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 821
    .local v0, "uid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 822
    .local v1, "userId":I
    invoke-direct {p0, v1, v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getAlias(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getKeyChainSnapshot()Landroid/security/keystore/recovery/KeyChainSnapshot;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 340
    invoke-direct {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 341
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 342
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mSnapshotStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

    invoke-virtual {v1, v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->get(I)Landroid/security/keystore/recovery/KeyChainSnapshot;

    move-result-object v1

    .line 343
    .local v1, "snapshot":Landroid/security/keystore/recovery/KeyChainSnapshot;
    if-eqz v1, :cond_0

    .line 346
    return-object v1

    .line 344
    :cond_0
    new-instance v2, Landroid/os/ServiceSpecificException;

    const/16 v3, 0x15

    invoke-direct {v2, v3}, Landroid/os/ServiceSpecificException;-><init>(I)V

    throw v2
.end method

.method public getRecoverySecretTypes()[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 464
    invoke-direct {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 465
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 466
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 465
    invoke-virtual {v0, v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getRecoverySecretTypes(II)[I

    move-result-object v0

    return-object v0
.end method

.method public getRecoveryStatus()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 414
    invoke-direct {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 415
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getStatusForAllKeys(I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public importKey(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "keyBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 756
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->importKeyWithMetadata(Ljava/lang/String;[B[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public importKeyWithMetadata(Ljava/lang/String;[B[B)Ljava/lang/String;
    .locals 10
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "keyBytes"    # [B
    .param p3, "metadata"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 773
    invoke-direct {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 774
    const-string v0, "alias is null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    const-string/jumbo v0, "keyBytes is null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    array-length v0, p2

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 784
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 785
    .local v0, "uid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 789
    .local v1, "userId":I
    const/16 v9, 0x16

    :try_start_0
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mPlatformKeyManager:Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

    invoke-virtual {v2, v1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getEncryptKey(I)Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 797
    .local v3, "encryptionKey":Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;
    nop

    .line 801
    :try_start_1
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mRecoverableKeyGenerator:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;

    move v4, v1

    move v5, v0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;->importKey(Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;IILjava/lang/String;[B[B)V

    .line 805
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mApplicationKeyStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;

    invoke-virtual {v2, v1, v0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->setSymmetricKeyEntry(IILjava/lang/String;[B)V

    .line 806
    invoke-direct {p0, v1, v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getAlias(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStorageException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    .line 807
    :catch_0
    move-exception v2

    .line 808
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Landroid/os/ServiceSpecificException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v9, v5}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 795
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "encryptionKey":Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;
    :catch_1
    move-exception v2

    .line 796
    .local v2, "e":Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException;
    new-instance v3, Landroid/os/ServiceSpecificException;

    const/16 v4, 0x17

    invoke-virtual {v2}, Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 793
    .end local v2    # "e":Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException;
    :catch_2
    move-exception v2

    .line 794
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Landroid/os/ServiceSpecificException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v9, v4}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 790
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 792
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 777
    .end local v0    # "uid":I
    .end local v1    # "userId":I
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_0
    const-string v0, "RecoverableKeyStoreMgr"

    const-string v1, "The given key for import doesn\'t have the required length 256"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    new-instance v0, Landroid/os/ServiceSpecificException;

    const/16 v1, 0x1b

    const-string v2, "The given key does not contain 256 bits."

    invoke-direct {v0, v1, v2}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method initRecoveryService(Ljava/lang/String;[B)V
    .locals 25
    .param p1, "rootCertificateAlias"    # Ljava/lang/String;
    .param p2, "recoveryServiceCertFile"    # [B
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 188
    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 189
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    .line 190
    .local v8, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 192
    .local v9, "uid":I
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mTestCertHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 193
    move-object/from16 v2, p1

    invoke-virtual {v0, v2}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getDefaultCertificateAliasIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 194
    .end local p1    # "rootCertificateAlias":Ljava/lang/String;
    .local v10, "rootCertificateAlias":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mTestCertHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    invoke-virtual {v0, v10}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->isValidRootCertificateAlias(Ljava/lang/String;)Z

    move-result v0

    const/16 v2, 0x1c

    if-eqz v0, :cond_a

    .line 200
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v0, v8, v9}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getActiveRootOfTrust(II)Ljava/lang/String;

    move-result-object v11

    .line 201
    .local v11, "activeRootAlias":Ljava/lang/String;
    const-string v12, "RecoverableKeyStoreMgr"

    if-nez v11, :cond_0

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Root of trust for recovery agent + "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is assigned for the first time to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Root of trust for recovery agent "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is changed to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_1
    :goto_0
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v0, v8, v9, v10}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setActiveRootOfTrust(IILjava/lang/String;)J

    move-result-wide v13

    .line 209
    .local v13, "updatedRows":J
    const-wide/16 v15, 0x0

    cmp-long v0, v13, v15

    if-ltz v0, :cond_9

    .line 216
    const/16 v7, 0x19

    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;->parse([B)Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException; {:try_start_0 .. :try_end_0} :catch_3

    move-object v5, v0

    .line 221
    .local v5, "certXml":Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;
    nop

    .line 224
    invoke-virtual {v5}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;->getSerial()J

    move-result-wide v3

    .line 225
    .local v3, "newSerial":J
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v0, v8, v9, v10}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getRecoveryServiceCertSerial(IILjava/lang/String;)Ljava/lang/Long;

    move-result-object v17

    .line 226
    .local v17, "oldSerial":Ljava/lang/Long;
    if-eqz v17, :cond_3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    cmp-long v0, v18, v3

    if-ltz v0, :cond_3

    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mTestCertHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 227
    invoke-virtual {v0, v10}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->isTestOnlyCertificateAlias(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 228
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v0, v6, v3

    if-nez v0, :cond_2

    .line 229
    const-string v0, "The cert file serial number is the same, so skip updating."

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return-void

    .line 231
    :cond_2
    const-string v0, "The cert file serial number is older than the one in database."

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    new-instance v2, Landroid/os/ServiceSpecificException;

    const/16 v6, 0x1d

    invoke-direct {v2, v6, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 237
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Updating the certificate with the new serial number "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mTestCertHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 242
    invoke-virtual {v0, v10}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getRootCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v6

    .line 244
    .local v6, "rootCert":Ljava/security/cert/X509Certificate;
    :try_start_1
    const-string v0, "Getting and validating a random endpoint certificate"

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {v5, v6}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;->getRandomEndpointCert(Ljava/security/cert/X509Certificate;)Ljava/security/cert/CertPath;

    move-result-object v0
    :try_end_1
    .catch Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v2, v0

    .line 249
    .local v2, "certPath":Ljava/security/cert/CertPath;
    nop

    .line 253
    :try_start_2
    const-string v0, "Saving the randomly chosen endpoint certificate to database"

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v0, v8, v9, v10, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setRecoveryServiceCertPath(IILjava/lang/String;Ljava/security/cert/CertPath;)J

    move-result-wide v18

    .line 256
    .local v18, "updatedCertPathRows":J
    cmp-long v0, v18, v15

    if-lez v0, :cond_6

    .line 257
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;
    :try_end_2
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v20, v2

    .end local v2    # "certPath":Ljava/security/cert/CertPath;
    .local v20, "certPath":Ljava/security/cert/CertPath;
    move-object v2, v0

    move-wide/from16 v21, v3

    .end local v3    # "newSerial":J
    .local v21, "newSerial":J
    move v3, v8

    move v4, v9

    move-object/from16 v23, v5

    .end local v5    # "certXml":Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;
    .local v23, "certXml":Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;
    move-object v5, v10

    move-object/from16 v24, v6

    const/16 v0, 0x16

    .end local v6    # "rootCert":Ljava/security/cert/X509Certificate;
    .local v24, "rootCert":Ljava/security/cert/X509Certificate;
    move-wide/from16 v6, v21

    :try_start_3
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setRecoveryServiceCertSerial(IILjava/lang/String;J)J

    move-result-wide v2

    .line 259
    .local v2, "updatedCertSerialRows":J
    cmp-long v4, v2, v15

    if-ltz v4, :cond_5

    .line 266
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v0, v8, v9}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getSnapshotVersion(II)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 267
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    const/4 v4, 0x1

    invoke-virtual {v0, v8, v9, v4}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setShouldCreateSnapshot(IIZ)J

    .line 268
    const-string v0, "This is a certificate change. Snapshot must be updated"

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 270
    :cond_4
    const-string v0, "This is a certificate change. Snapshot didn\'t exist"

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :goto_1
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    .line 273
    invoke-virtual {v4}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v4

    invoke-virtual {v0, v8, v9, v4, v5}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setCounterId(IIJ)J

    move-result-wide v4

    .line 274
    .local v4, "updatedCounterIdRows":J
    cmp-long v0, v4, v15

    if-gez v0, :cond_7

    .line 275
    const-string v0, "Failed to set the counter id in the local DB."

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 263
    .end local v4    # "updatedCounterIdRows":J
    :cond_5
    new-instance v4, Landroid/os/ServiceSpecificException;

    const-string v5, "Failed to set the certificate serial number in the local DB."

    invoke-direct {v4, v0, v5}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .end local v8    # "userId":I
    .end local v9    # "uid":I
    .end local v10    # "rootCertificateAlias":Ljava/lang/String;
    .end local v11    # "activeRootAlias":Ljava/lang/String;
    .end local v13    # "updatedRows":J
    .end local v17    # "oldSerial":Ljava/lang/Long;
    .end local v20    # "certPath":Ljava/security/cert/CertPath;
    .end local v21    # "newSerial":J
    .end local v23    # "certXml":Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;
    .end local v24    # "rootCert":Ljava/security/cert/X509Certificate;
    .end local p0    # "this":Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;
    .end local p2    # "recoveryServiceCertFile":[B
    throw v4

    .line 277
    .local v2, "certPath":Ljava/security/cert/CertPath;
    .restart local v3    # "newSerial":J
    .restart local v5    # "certXml":Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;
    .restart local v6    # "rootCert":Ljava/security/cert/X509Certificate;
    .restart local v8    # "userId":I
    .restart local v9    # "uid":I
    .restart local v10    # "rootCertificateAlias":Ljava/lang/String;
    .restart local v11    # "activeRootAlias":Ljava/lang/String;
    .restart local v13    # "updatedRows":J
    .restart local v17    # "oldSerial":Ljava/lang/Long;
    .restart local p0    # "this":Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;
    .restart local p2    # "recoveryServiceCertFile":[B
    :cond_6
    move-object/from16 v20, v2

    move-wide/from16 v21, v3

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    const/16 v0, 0x16

    .end local v2    # "certPath":Ljava/security/cert/CertPath;
    .end local v3    # "newSerial":J
    .end local v5    # "certXml":Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;
    .end local v6    # "rootCert":Ljava/security/cert/X509Certificate;
    .restart local v20    # "certPath":Ljava/security/cert/CertPath;
    .restart local v21    # "newSerial":J
    .restart local v23    # "certXml":Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;
    .restart local v24    # "rootCert":Ljava/security/cert/X509Certificate;
    cmp-long v2, v18, v15

    if-ltz v2, :cond_8

    :cond_7
    :goto_2
    nop

    .line 284
    .end local v18    # "updatedCertPathRows":J
    nop

    .line 285
    return-void

    .line 278
    .restart local v18    # "updatedCertPathRows":J
    :cond_8
    new-instance v2, Landroid/os/ServiceSpecificException;

    const-string v3, "Failed to set the certificate path in the local DB."

    invoke-direct {v2, v0, v3}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .end local v8    # "userId":I
    .end local v9    # "uid":I
    .end local v10    # "rootCertificateAlias":Ljava/lang/String;
    .end local v11    # "activeRootAlias":Ljava/lang/String;
    .end local v13    # "updatedRows":J
    .end local v17    # "oldSerial":Ljava/lang/Long;
    .end local v20    # "certPath":Ljava/security/cert/CertPath;
    .end local v21    # "newSerial":J
    .end local v23    # "certXml":Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;
    .end local v24    # "rootCert":Ljava/security/cert/X509Certificate;
    .end local p0    # "this":Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;
    .end local p2    # "recoveryServiceCertFile":[B
    throw v2
    :try_end_3
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_3 .. :try_end_3} :catch_0

    .line 281
    .end local v18    # "updatedCertPathRows":J
    .restart local v8    # "userId":I
    .restart local v9    # "uid":I
    .restart local v10    # "rootCertificateAlias":Ljava/lang/String;
    .restart local v11    # "activeRootAlias":Ljava/lang/String;
    .restart local v13    # "updatedRows":J
    .restart local v17    # "oldSerial":Ljava/lang/Long;
    .restart local v20    # "certPath":Ljava/security/cert/CertPath;
    .restart local v21    # "newSerial":J
    .restart local v23    # "certXml":Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;
    .restart local v24    # "rootCert":Ljava/security/cert/X509Certificate;
    .restart local p0    # "this":Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;
    .restart local p2    # "recoveryServiceCertFile":[B
    :catch_0
    move-exception v0

    goto :goto_3

    .end local v20    # "certPath":Ljava/security/cert/CertPath;
    .end local v21    # "newSerial":J
    .end local v23    # "certXml":Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;
    .end local v24    # "rootCert":Ljava/security/cert/X509Certificate;
    .restart local v2    # "certPath":Ljava/security/cert/CertPath;
    .restart local v3    # "newSerial":J
    .restart local v5    # "certXml":Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;
    .restart local v6    # "rootCert":Ljava/security/cert/X509Certificate;
    :catch_1
    move-exception v0

    move-object/from16 v20, v2

    move-wide/from16 v21, v3

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    .line 282
    .end local v2    # "certPath":Ljava/security/cert/CertPath;
    .end local v3    # "newSerial":J
    .end local v5    # "certXml":Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;
    .end local v6    # "rootCert":Ljava/security/cert/X509Certificate;
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    .restart local v20    # "certPath":Ljava/security/cert/CertPath;
    .restart local v21    # "newSerial":J
    .restart local v23    # "certXml":Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;
    .restart local v24    # "rootCert":Ljava/security/cert/X509Certificate;
    :goto_3
    const-string v2, "Failed to encode CertPath"

    invoke-static {v12, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 283
    new-instance v2, Landroid/os/ServiceSpecificException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x19

    invoke-direct {v2, v4, v3}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 246
    .end local v0    # "e":Ljava/security/cert/CertificateEncodingException;
    .end local v20    # "certPath":Ljava/security/cert/CertPath;
    .end local v21    # "newSerial":J
    .end local v23    # "certXml":Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;
    .end local v24    # "rootCert":Ljava/security/cert/X509Certificate;
    .restart local v3    # "newSerial":J
    .restart local v5    # "certXml":Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;
    .restart local v6    # "rootCert":Ljava/security/cert/X509Certificate;
    :catch_2
    move-exception v0

    move-wide/from16 v21, v3

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    .line 247
    .end local v3    # "newSerial":J
    .end local v5    # "certXml":Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;
    .end local v6    # "rootCert":Ljava/security/cert/X509Certificate;
    .local v0, "e":Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;
    .restart local v21    # "newSerial":J
    .restart local v23    # "certXml":Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;
    .restart local v24    # "rootCert":Ljava/security/cert/X509Certificate;
    const-string v3, "Invalid endpoint cert"

    invoke-static {v12, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 248
    new-instance v3, Landroid/os/ServiceSpecificException;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 217
    .end local v0    # "e":Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;
    .end local v17    # "oldSerial":Ljava/lang/Long;
    .end local v21    # "newSerial":J
    .end local v23    # "certXml":Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;
    .end local v24    # "rootCert":Ljava/security/cert/X509Certificate;
    :catch_3
    move-exception v0

    move v4, v7

    move-object v2, v0

    move-object v0, v2

    .line 218
    .local v0, "e":Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse the input as a cert file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    new-instance v2, Landroid/os/ServiceSpecificException;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 210
    .end local v0    # "e":Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;
    :cond_9
    const/16 v0, 0x16

    new-instance v2, Landroid/os/ServiceSpecificException;

    const-string v3, "Failed to set the root of trust in the local DB."

    invoke-direct {v2, v0, v3}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 195
    .end local v11    # "activeRootAlias":Ljava/lang/String;
    .end local v13    # "updatedRows":J
    :cond_a
    new-instance v0, Landroid/os/ServiceSpecificException;

    const-string v3, "Invalid root certificate alias"

    invoke-direct {v0, v2, v3}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public initRecoveryServiceWithSigFile(Ljava/lang/String;[B[B)V
    .locals 6
    .param p1, "rootCertificateAlias"    # Ljava/lang/String;
    .param p2, "recoveryServiceCertFile"    # [B
    .param p3, "recoveryServiceSigFile"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 302
    const-string v0, "RecoverableKeyStoreMgr"

    invoke-direct {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 303
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mTestCertHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 304
    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getDefaultCertificateAliasIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 305
    const-string/jumbo v1, "recoveryServiceCertFile is null"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string/jumbo v1, "recoveryServiceSigFile is null"

    invoke-static {p3, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    :try_start_0
    invoke-static {p3}, Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;->parse([B)Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;

    move-result-object v1
    :try_end_0
    .catch Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 315
    .local v1, "sigXml":Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;
    nop

    .line 317
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mTestCertHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 318
    invoke-virtual {v2, p1}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getRootCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 320
    .local v2, "rootCert":Ljava/security/cert/X509Certificate;
    :try_start_1
    invoke-virtual {v1, v2, p2}, Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;->verifyFileSignature(Ljava/security/cert/X509Certificate;[B)V
    :try_end_1
    .catch Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 326
    nop

    .line 328
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->initRecoveryService(Ljava/lang/String;[B)V

    .line 329
    return-void

    .line 321
    :catch_0
    move-exception v3

    .line 322
    .local v3, "e":Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The signature over the cert file is invalid. Cert: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-static {p2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Sig: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-static {p3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 322
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    new-instance v0, Landroid/os/ServiceSpecificException;

    const/16 v4, 0x1c

    invoke-virtual {v3}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 311
    .end local v1    # "sigXml":Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;
    .end local v2    # "rootCert":Ljava/security/cert/X509Certificate;
    .end local v3    # "e":Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;
    :catch_1
    move-exception v1

    .line 312
    .local v1, "e":Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse the sig file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    new-instance v0, Landroid/os/ServiceSpecificException;

    const/16 v2, 0x19

    invoke-virtual {v1}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public lockScreenSecretAvailable(I[BI)V
    .locals 10
    .param p1, "storedHashType"    # I
    .param p2, "credential"    # [B
    .param p3, "userId"    # I

    .line 917
    const-string v0, "RecoverableKeyStoreMgr"

    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget-object v4, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mSnapshotStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

    iget-object v5, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mListenersStorage:Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;

    const/4 v9, 0x0

    move v6, p3

    move v7, p1

    move-object v8, p2

    invoke-static/range {v2 .. v9}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->newInstance(Landroid/content/Context;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;II[BZ)Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 930
    :catch_0
    move-exception v1

    .line 931
    .local v1, "e":Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException;
    const-string v2, "Impossible - insecure user, but user just entered lock screen"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 928
    .end local v1    # "e":Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException;
    :catch_1
    move-exception v1

    .line 929
    .local v1, "e":Ljava/security/KeyStoreException;
    const-string v2, "Key store error encountered during recoverable key sync"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/security/KeyStoreException;
    goto :goto_0

    .line 926
    :catch_2
    move-exception v1

    .line 927
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v2, "Should never happen - algorithm unavailable for KeySync"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 932
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_0
    nop

    .line 933
    :goto_1
    return-void
.end method

.method public lockScreenSecretChanged(I[BI)V
    .locals 10
    .param p1, "storedHashType"    # I
    .param p2, "credential"    # [B
    .param p3, "userId"    # I

    .line 949
    const-string v0, "RecoverableKeyStoreMgr"

    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget-object v4, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mSnapshotStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

    iget-object v5, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mListenersStorage:Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;

    const/4 v9, 0x1

    move v6, p3

    move v7, p1

    move-object v8, p2

    invoke-static/range {v2 .. v9}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->newInstance(Landroid/content/Context;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;II[BZ)Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 962
    :catch_0
    move-exception v1

    .line 963
    .local v1, "e":Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException;
    const-string v2, "InsecureUserException during lock screen secret update"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 960
    .end local v1    # "e":Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException;
    :catch_1
    move-exception v1

    .line 961
    .local v1, "e":Ljava/security/KeyStoreException;
    const-string v2, "Key store error encountered during recoverable key sync"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/security/KeyStoreException;
    goto :goto_0

    .line 958
    :catch_2
    move-exception v1

    .line 959
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v2, "Should never happen - algorithm unavailable for KeySync"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 964
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_0
    nop

    .line 965
    :goto_1
    return-void
.end method

.method public recoverKeyChainSnapshot(Ljava/lang/String;[BLjava/util/List;)Ljava/util/Map;
    .locals 9
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "encryptedRecoveryKey"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/WrappedApplicationKey;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 606
    .local p3, "applicationKeys":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/WrappedApplicationKey;>;"
    invoke-direct {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 607
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 608
    .local v0, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 609
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mRecoverySessionStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->get(ILjava/lang/String;)Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;

    move-result-object v2

    .line 610
    .local v2, "sessionEntry":Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;
    if-eqz v2, :cond_0

    .line 619
    :try_start_0
    invoke-direct {p0, v2, p2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->decryptRecoveryKey(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;[B)[B

    move-result-object v3

    .line 620
    .local v3, "recoveryKey":[B
    invoke-direct {p0, v3, p3}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->recoverApplicationKeys([BLjava/util/List;)Ljava/util/Map;

    move-result-object v4

    .line 622
    .local v4, "keysByAlias":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    invoke-direct {p0, v0, v1, v4}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->importKeyMaterials(IILjava/util/Map;)Ljava/util/Map;

    move-result-object v5
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 626
    invoke-virtual {v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->destroy()V

    .line 627
    iget-object v6, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mRecoverySessionStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;

    invoke-virtual {v6, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->remove(I)V

    .line 622
    return-object v5

    .line 626
    .end local v3    # "recoveryKey":[B
    .end local v4    # "keysByAlias":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 623
    :catch_0
    move-exception v3

    .line 624
    .local v3, "e":Ljava/security/KeyStoreException;
    :try_start_1
    new-instance v4, Landroid/os/ServiceSpecificException;

    const/16 v5, 0x16

    invoke-virtual {v3}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .end local v0    # "userId":I
    .end local v1    # "uid":I
    .end local v2    # "sessionEntry":Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;
    .end local p0    # "this":Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;
    .end local p1    # "sessionId":Ljava/lang/String;
    .end local p2    # "encryptedRecoveryKey":[B
    .end local p3    # "applicationKeys":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/WrappedApplicationKey;>;"
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 626
    .end local v3    # "e":Ljava/security/KeyStoreException;
    .restart local v0    # "userId":I
    .restart local v1    # "uid":I
    .restart local v2    # "sessionEntry":Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;
    .restart local p0    # "this":Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;
    .restart local p1    # "sessionId":Ljava/lang/String;
    .restart local p2    # "encryptedRecoveryKey":[B
    .restart local p3    # "applicationKeys":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/WrappedApplicationKey;>;"
    :goto_0
    invoke-virtual {v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->destroy()V

    .line 627
    iget-object v4, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mRecoverySessionStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;

    invoke-virtual {v4, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->remove(I)V

    throw v3

    .line 611
    :cond_0
    new-instance v3, Landroid/os/ServiceSpecificException;

    const/16 v4, 0x18

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 614
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    .line 612
    const-string v7, "Application uid=%d does not have pending session \'%s\'"

    invoke-static {v5, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public removeKey(Ljava/lang/String;)V
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 674
    invoke-direct {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 675
    const-string v0, "alias is null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 677
    .local v0, "uid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 679
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v2, v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->removeKey(ILjava/lang/String;)Z

    move-result v2

    .line 680
    .local v2, "wasRemoved":Z
    if-eqz v2, :cond_0

    .line 681
    iget-object v3, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v0, v4}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setShouldCreateSnapshot(IIZ)J

    .line 682
    iget-object v3, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mApplicationKeyStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;

    invoke-virtual {v3, v1, v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->deleteEntry(IILjava/lang/String;)V

    .line 684
    :cond_0
    return-void
.end method

.method public setRecoverySecretTypes([I)V
    .locals 9
    .param p1, "secretTypes"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 426
    invoke-direct {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 427
    const-string/jumbo v0, "secretTypes is null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 429
    .local v0, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 431
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getRecoverySecretTypes(II)[I

    move-result-object v2

    .line 432
    .local v2, "currentSecretTypes":[I
    invoke-static {p1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    const-string v4, "RecoverableKeyStoreMgr"

    if-eqz v3, :cond_0

    .line 433
    const-string v3, "Not updating secret types - same as old value."

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    return-void

    .line 437
    :cond_0
    iget-object v3, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v3, v0, v1, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setRecoverySecretTypes(II[I)J

    move-result-wide v5

    .line 438
    .local v5, "updatedRows":J
    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-ltz v3, :cond_3

    .line 443
    array-length v3, v2

    if-nez v3, :cond_1

    .line 444
    const-string v3, "Initialized secret types."

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    return-void

    .line 448
    :cond_1
    const-string v3, "Updated secret types. Snapshot pending."

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v3, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v3, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getSnapshotVersion(II)Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 450
    iget-object v3, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    const/4 v7, 0x1

    invoke-virtual {v3, v0, v1, v7}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setShouldCreateSnapshot(IIZ)J

    .line 451
    const-string v3, "Updated secret types. Snapshot must be updated"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 453
    :cond_2
    const-string v3, "Updated secret types. Snapshot didn\'t exist"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :goto_0
    return-void

    .line 439
    :cond_3
    new-instance v3, Landroid/os/ServiceSpecificException;

    const/16 v4, 0x16

    const-string v7, "Database error trying to set secret types."

    invoke-direct {v3, v4, v7}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public setRecoveryStatus(Ljava/lang/String;I)V
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 395
    invoke-direct {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 396
    const-string v0, "alias is null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setRecoveryStatus(ILjava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    .line 398
    .local v0, "updatedRows":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 403
    return-void

    .line 399
    :cond_0
    new-instance v2, Landroid/os/ServiceSpecificException;

    const/16 v3, 0x16

    const-string v4, "Failed to set the key recovery status in the local DB."

    invoke-direct {v2, v3, v4}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method public setServerParams([B)V
    .locals 9
    .param p1, "serverParams"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 361
    invoke-direct {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 362
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 363
    .local v0, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 365
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getServerParams(II)[B

    move-result-object v2

    .line 367
    .local v2, "currentServerParams":[B
    invoke-static {p1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    const-string v4, "RecoverableKeyStoreMgr"

    if-eqz v3, :cond_0

    .line 368
    const-string v3, "Not updating server params - same as old value."

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    return-void

    .line 372
    :cond_0
    iget-object v3, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v3, v0, v1, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setServerParams(II[B)J

    move-result-wide v5

    .line 373
    .local v5, "updatedRows":J
    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-ltz v3, :cond_3

    .line 378
    if-nez v2, :cond_1

    .line 379
    const-string v3, "Initialized server params."

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    return-void

    .line 383
    :cond_1
    iget-object v3, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v3, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getSnapshotVersion(II)Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 384
    iget-object v3, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    const/4 v7, 0x1

    invoke-virtual {v3, v0, v1, v7}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setShouldCreateSnapshot(IIZ)J

    .line 385
    const-string v3, "Updated server params. Snapshot must be updated"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 387
    :cond_2
    const-string v3, "Updated server params. Snapshot didn\'t exist"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :goto_0
    return-void

    .line 374
    :cond_3
    new-instance v3, Landroid/os/ServiceSpecificException;

    const/16 v4, 0x16

    const-string v7, "Database failure trying to set server params."

    invoke-direct {v3, v4, v7}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public setSnapshotCreatedPendingIntent(Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 351
    invoke-direct {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 352
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 353
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mListenersStorage:Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;->setSnapshotListener(ILandroid/app/PendingIntent;)V

    .line 354
    return-void
.end method

.method startRecoverySession(Ljava/lang/String;[B[B[BLjava/util/List;)[B
    .locals 8
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "verifierPublicKey"    # [B
    .param p3, "vaultParams"    # [B
    .param p4, "vaultChallenge"    # [B
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B[B[B",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/KeyChainProtectionParams;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 491
    .local p5, "secrets":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/KeyChainProtectionParams;>;"
    invoke-direct {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 492
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 494
    .local v0, "uid":I
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 501
    const/16 v1, 0x19

    :try_start_0
    invoke-static {p2}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->deserializePublicKey([B)Ljava/security/PublicKey;

    move-result-object v2
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_2

    .line 504
    .local v2, "publicKey":Ljava/security/PublicKey;
    nop

    .line 508
    invoke-direct {p0, v2, p3}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->publicKeysMatch(Ljava/security/PublicKey;[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 513
    invoke-static {}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->generateKeyClaimant()[B

    move-result-object v3

    .line 514
    .local v3, "keyClaimant":[B
    const/4 v4, 0x0

    invoke-interface {p5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/security/keystore/recovery/KeyChainProtectionParams;

    invoke-virtual {v4}, Landroid/security/keystore/recovery/KeyChainProtectionParams;->getSecret()[B

    move-result-object v4

    .line 515
    .local v4, "kfHash":[B
    iget-object v5, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mRecoverySessionStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;

    new-instance v6, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;

    invoke-direct {v6, p1, v4, v3, p3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;-><init>(Ljava/lang/String;[B[B[B)V

    invoke-virtual {v5, v0, v6}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->add(ILcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;)V

    .line 519
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received VaultParams for recovery: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "RecoverableKeyStoreMgr"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :try_start_1
    invoke-static {v4}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->calculateThmKfHash([B)[B

    move-result-object v5

    .line 522
    .local v5, "thmKfHash":[B
    invoke-static {v2, p3, p4, v5, v3}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->encryptRecoveryClaim(Ljava/security/PublicKey;[B[B[B[B)[B

    move-result-object v1
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    .line 531
    .end local v5    # "thmKfHash":[B
    :catch_0
    move-exception v5

    .line 532
    .local v5, "e":Ljava/security/InvalidKeyException;
    new-instance v6, Landroid/os/ServiceSpecificException;

    invoke-virtual {v5}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v1, v7}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 528
    .end local v5    # "e":Ljava/security/InvalidKeyException;
    :catch_1
    move-exception v1

    .line 529
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v5, "SecureBox algorithm missing. AOSP must support this."

    invoke-static {v6, v5, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 530
    new-instance v5, Landroid/os/ServiceSpecificException;

    const/16 v6, 0x16

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 509
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v3    # "keyClaimant":[B
    .end local v4    # "kfHash":[B
    :cond_0
    new-instance v1, Landroid/os/ServiceSpecificException;

    const/16 v3, 0x1c

    const-string v4, "The public keys given in verifierPublicKey and vaultParams do not match."

    invoke-direct {v1, v3, v4}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 502
    .end local v2    # "publicKey":Ljava/security/PublicKey;
    :catch_2
    move-exception v2

    .line 503
    .local v2, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v3, Landroid/os/ServiceSpecificException;

    invoke-virtual {v2}, Ljava/security/spec/InvalidKeySpecException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 495
    .end local v2    # "e":Ljava/security/spec/InvalidKeySpecException;
    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Only a single KeyChainProtectionParams is supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public startRecoverySessionWithCertPath(Ljava/lang/String;Ljava/lang/String;Landroid/security/keystore/recovery/RecoveryCertPath;[B[BLjava/util/List;)[B
    .locals 15
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "rootCertificateAlias"    # Ljava/lang/String;
    .param p3, "verifierCertPath"    # Landroid/security/keystore/recovery/RecoveryCertPath;
    .param p4, "vaultParams"    # [B
    .param p5, "vaultChallenge"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/security/keystore/recovery/RecoveryCertPath;",
            "[B[B",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/KeyChainProtectionParams;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 556
    .local p6, "secrets":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/KeyChainProtectionParams;>;"
    move-object v7, p0

    const-string v1, "RecoverableKeyStoreMgr"

    invoke-direct {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 557
    iget-object v0, v7, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mTestCertHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 558
    move-object/from16 v2, p2

    invoke-virtual {v0, v2}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getDefaultCertificateAliasIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 559
    .end local p2    # "rootCertificateAlias":Ljava/lang/String;
    .local v8, "rootCertificateAlias":Ljava/lang/String;
    const-string v0, "invalid session"

    move-object/from16 v9, p1

    invoke-static {v9, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    const-string/jumbo v0, "verifierCertPath is null"

    move-object/from16 v10, p3

    invoke-static {v10, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    const-string/jumbo v0, "vaultParams is null"

    move-object/from16 v11, p4

    invoke-static {v11, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    const-string/jumbo v0, "vaultChallenge is null"

    move-object/from16 v12, p5

    invoke-static {v12, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    const-string/jumbo v0, "secrets is null"

    move-object/from16 v13, p6

    invoke-static {v13, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    const/16 v2, 0x19

    :try_start_0
    invoke-virtual/range {p3 .. p3}, Landroid/security/keystore/recovery/RecoveryCertPath;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v14, v0

    .line 569
    .local v14, "certPath":Ljava/security/cert/CertPath;
    nop

    .line 572
    :try_start_1
    iget-object v0, v7, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mTestCertHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 573
    invoke-virtual {v0, v8}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getRootCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 572
    invoke-static {v0, v14}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->validateCertPath(Ljava/security/cert/X509Certificate;Ljava/security/cert/CertPath;)V
    :try_end_1
    .catch Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 577
    nop

    .line 579
    invoke-virtual {v14}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    .line 580
    .local v0, "verifierPublicKey":[B
    if-eqz v0, :cond_0

    .line 586
    move-object v1, p0

    move-object/from16 v2, p1

    move-object v3, v0

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->startRecoverySession(Ljava/lang/String;[B[B[BLjava/util/List;)[B

    move-result-object v1

    return-object v1

    .line 581
    :cond_0
    const-string v3, "Failed to encode verifierPublicKey"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    new-instance v1, Landroid/os/ServiceSpecificException;

    invoke-direct {v1, v2, v3}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 574
    .end local v0    # "verifierPublicKey":[B
    :catch_0
    move-exception v0

    .line 575
    .local v0, "e":Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;
    const-string v2, "Failed to validate the given cert path"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 576
    new-instance v1, Landroid/os/ServiceSpecificException;

    const/16 v2, 0x1c

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 567
    .end local v0    # "e":Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;
    .end local v14    # "certPath":Ljava/security/cert/CertPath;
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 568
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v1, Landroid/os/ServiceSpecificException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1
.end method
