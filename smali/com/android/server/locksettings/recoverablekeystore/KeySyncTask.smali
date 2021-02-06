.class public Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;
.super Ljava/lang/Object;
.source "KeySyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final LENGTH_PREFIX_BYTES:I = 0x4

.field private static final LOCK_SCREEN_HASH_ALGORITHM:Ljava/lang/String; = "SHA-256"

.field private static final RECOVERY_KEY_ALGORITHM:Ljava/lang/String; = "AES"

.field private static final RECOVERY_KEY_SIZE_BITS:I = 0x100

.field private static final SALT_LENGTH_BYTES:I = 0x10

.field static final SCRYPT_PARAM_N:I = 0x1000

.field static final SCRYPT_PARAM_OUTLEN_BYTES:I = 0x20

.field static final SCRYPT_PARAM_P:I = 0x1

.field static final SCRYPT_PARAM_R:I = 0x8

.field private static final TAG:Ljava/lang/String; = "KeySyncTask"

.field private static final TRUSTED_HARDWARE_MAX_ATTEMPTS:I = 0xa


# instance fields
.field private final mCredential:[B

.field private final mCredentialType:I

.field private final mCredentialUpdated:Z

.field private final mPlatformKeyManager:Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

.field private final mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

.field private final mRecoverySnapshotStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

.field private final mScrypt:Landroid/security/Scrypt;

.field private final mSnapshotListenersStorage:Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;

.field private final mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

.field private final mUserId:I


# direct methods
.method constructor <init>(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;II[BZLcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;Landroid/security/Scrypt;)V
    .locals 0
    .param p1, "recoverableKeyStoreDb"    # Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;
    .param p2, "snapshotStorage"    # Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;
    .param p3, "recoverySnapshotListenersStorage"    # Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;
    .param p4, "userId"    # I
    .param p5, "credentialType"    # I
    .param p6, "credential"    # [B
    .param p7, "credentialUpdated"    # Z
    .param p8, "platformKeyManager"    # Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;
    .param p9, "testOnlyInsecureCertificateHelper"    # Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;
    .param p10, "scrypt"    # Landroid/security/Scrypt;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p3, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mSnapshotListenersStorage:Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;

    .line 143
    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 144
    iput p4, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    .line 145
    iput p5, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredentialType:I

    .line 146
    iput-object p6, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredential:[B

    .line 147
    iput-boolean p7, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredentialUpdated:Z

    .line 148
    iput-object p8, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mPlatformKeyManager:Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

    .line 149
    iput-object p2, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverySnapshotStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

    .line 150
    iput-object p9, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 151
    iput-object p10, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mScrypt:Landroid/security/Scrypt;

    .line 152
    return-void
.end method

.method private static createApplicationKeyEntries(Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljavax/crypto/SecretKey;",
            "[B>;>;)",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/WrappedApplicationKey;",
            ">;"
        }
    .end annotation

    .line 527
    .local p0, "encryptedApplicationKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    .local p1, "originalKeysWithMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljavax/crypto/SecretKey;[B>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 528
    .local v0, "keyEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/security/keystore/recovery/WrappedApplicationKey;>;"
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

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

    .line 529
    .local v2, "alias":Ljava/lang/String;
    new-instance v3, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;

    invoke-direct {v3}, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;-><init>()V

    .line 530
    invoke-virtual {v3, v2}, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->setAlias(Ljava/lang/String;)Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;

    move-result-object v3

    .line 531
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-virtual {v3, v4}, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->setEncryptedKeyMaterial([B)Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;

    move-result-object v3

    .line 532
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, [B

    invoke-virtual {v3, v4}, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->setMetadata([B)Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;

    move-result-object v3

    .line 533
    invoke-virtual {v3}, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->build()Landroid/security/keystore/recovery/WrappedApplicationKey;

    move-result-object v3

    .line 529
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    .end local v2    # "alias":Ljava/lang/String;
    goto :goto_0

    .line 535
    :cond_0
    return-object v0
.end method

.method private generateAndStoreCounterId(I)J
    .locals 6
    .param p1, "recoveryAgentUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 414
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    .line 415
    .local v0, "counter":J
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v3, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v2, v3, p1, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setCounterId(IIJ)J

    move-result-wide v2

    .line 416
    .local v2, "updatedRows":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    .line 420
    return-wide v0

    .line 417
    :cond_0
    const-string v4, "KeySyncTask"

    const-string v5, "Failed to set the snapshot version in the local DB."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Failed to set counterId in the local DB."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static generateRecoveryKey()Ljavax/crypto/SecretKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 519
    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 520
    .local v0, "keyGenerator":Ljavax/crypto/KeyGenerator;
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 521
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    return-object v1
.end method

.method private static generateSalt()[B
    .locals 2

    .line 481
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 482
    .local v0, "salt":[B
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 483
    return-object v0
.end method

.method private getKeysToSync(I)Ljava/util/Map;
    .locals 4
    .param p1, "recoveryAgentUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljavax/crypto/SecretKey;",
            "[B>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Lcom/android/server/locksettings/recoverablekeystore/BadPlatformKeyException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 430
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mPlatformKeyManager:Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

    iget v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getDecryptKey(I)Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;

    move-result-object v0

    .line 431
    .local v0, "decryptKey":Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v2, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    .line 432
    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;->getGenerationId()I

    move-result v3

    .line 431
    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getAllKeys(III)Ljava/util/Map;

    move-result-object v1

    .line 433
    .local v1, "wrappedKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;>;"
    invoke-static {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->unwrapKeys(Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    return-object v2
.end method

.method static getUiFormat(I)I
    .locals 2
    .param p0, "credentialType"    # I

    .line 466
    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 467
    return v0

    .line 468
    :cond_0
    if-ne p0, v0, :cond_1

    .line 469
    return v1

    .line 471
    :cond_1
    const/4 v0, 0x2

    return v0
.end method

.method static hashCredentialsBySaltedSha256([B[B)[B
    .locals 4
    .param p0, "salt"    # [B
    .param p1, "credentialsBytes"    # [B

    .line 493
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 495
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 496
    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 497
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 498
    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 499
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 500
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 503
    .local v1, "bytes":[B
    :try_start_0
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 504
    .local v2, "hash":[B
    const/4 v3, 0x0

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([BB)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    return-object v2

    .line 506
    .end local v2    # "hash":[B
    :catch_0
    move-exception v2

    .line 508
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private hashCredentialsByScrypt([B[B)[B
    .locals 7
    .param p1, "salt"    # [B
    .param p2, "credentials"    # [B

    .line 513
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mScrypt:Landroid/security/Scrypt;

    const/16 v3, 0x1000

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/16 v6, 0x20

    move-object v1, p2

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Landroid/security/Scrypt;->scrypt([B[BIIII)[B

    move-result-object v0

    return-object v0
.end method

.method private isCustomLockScreen()Z
    .locals 3

    .line 206
    iget v0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredentialType:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;II[BZ)Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "recoverableKeyStoreDb"    # Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;
    .param p2, "snapshotStorage"    # Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;
    .param p3, "recoverySnapshotListenersStorage"    # Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;
    .param p4, "userId"    # I
    .param p5, "credentialType"    # I
    .param p6, "credential"    # [B
    .param p7, "credentialUpdated"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;,
            Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException;
        }
    .end annotation

    .line 106
    new-instance v11, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;

    .line 114
    invoke-static {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getInstance(Landroid/content/Context;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;)Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

    move-result-object v8

    new-instance v9, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    invoke-direct {v9}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;-><init>()V

    new-instance v10, Landroid/security/Scrypt;

    invoke-direct {v10}, Landroid/security/Scrypt;-><init>()V

    move-object v0, v11

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v10}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;-><init>(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;II[BZLcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;Landroid/security/Scrypt;)V

    .line 106
    return-object v11
.end method

.method private shouldCreateSnapshot(I)Z
    .locals 4
    .param p1, "recoveryAgentUid"    # I

    .line 441
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getRecoverySecretTypes(II)[I

    move-result-object v0

    .line 442
    .local v0, "types":[I
    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 445
    const/4 v1, 0x0

    return v1

    .line 447
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredentialUpdated:Z

    if-eqz v1, :cond_1

    .line 449
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v2, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v1, v2, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getSnapshotVersion(II)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 450
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v2, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setShouldCreateSnapshot(IIZ)J

    .line 451
    return v3

    .line 455
    :cond_1
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v2, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v1, v2, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getShouldCreateSnapshot(II)Z

    move-result v1

    return v1
.end method

.method private shouldUseScryptToHashCredential()Z
    .locals 2

    .line 539
    iget v0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredentialType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private syncKeys()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mPlatformKeyManager:Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

    iget v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getGenerationId(I)I

    move-result v0

    .line 168
    .local v0, "generation":I
    iget v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredentialType:I

    const v2, 0xf4240

    const-string v3, "KeySyncTask"

    const/4 v4, -0x1

    if-ne v1, v4, :cond_2

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Credentials are not set for user "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    if-lt v0, v2, :cond_0

    iget v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    if-eqz v1, :cond_1

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mPlatformKeyManager:Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

    iget v2, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v1, v2, v0}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->invalidatePlatformKey(II)V

    .line 176
    :cond_1
    return-void

    .line 178
    :cond_2
    invoke-direct {p0}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->isCustomLockScreen()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported credential type "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredentialType:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " for user "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    if-lt v0, v2, :cond_3

    iget v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    if-eqz v1, :cond_4

    .line 183
    :cond_3
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v2, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->invalidateKeysForUserIdOnCustomScreenLock(I)V

    .line 185
    :cond_4
    return-void

    .line 187
    :cond_5
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mPlatformKeyManager:Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

    iget v2, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->isDeviceLocked(I)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    if-nez v1, :cond_6

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t sync keys for locked user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-void

    .line 192
    :cond_6
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v2, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getRecoveryAgents(I)Ljava/util/List;

    move-result-object v1

    .line 193
    .local v1, "recoveryAgents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 195
    .local v4, "uid":I
    :try_start_0
    invoke-direct {p0, v4}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->syncKeysForAgent(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    goto :goto_1

    .line 196
    :catch_0
    move-exception v5

    .line 197
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException during sync for agent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    .end local v4    # "uid":I
    .end local v5    # "e":Ljava/io/IOException;
    :goto_1
    goto :goto_0

    .line 200
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No recovery agent initialized for user "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_8
    return-void
.end method

.method private syncKeysForAgent(I)V
    .locals 24
    .param p1, "recoveryAgentUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 213
    move-object/from16 v1, p0

    move/from16 v2, p1

    const/4 v0, 0x0

    .line 214
    .local v0, "shouldRecreateCurrentVersion":Z
    invoke-direct/range {p0 .. p1}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->shouldCreateSnapshot(I)Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "KeySyncTask"

    if-nez v3, :cond_2

    .line 215
    iget-object v3, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v6, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    .line 216
    invoke-virtual {v3, v6, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getSnapshotVersion(II)Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverySnapshotStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

    .line 217
    invoke-virtual {v3, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->get(I)Landroid/security/keystore/recovery/KeyChainSnapshot;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    move v0, v3

    .line 218
    if-eqz v0, :cond_1

    .line 219
    const-string v3, "Recreating most recent snapshot"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v0

    goto :goto_1

    .line 221
    :cond_1
    const-string v3, "Key sync not needed."

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return-void

    .line 214
    :cond_2
    move v3, v0

    .line 226
    .end local v0    # "shouldRecreateCurrentVersion":Z
    .local v3, "shouldRecreateCurrentVersion":Z
    :goto_1
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v6, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    .line 227
    invoke-virtual {v0, v6, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getActiveRootOfTrust(II)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "rootCertAlias":Ljava/lang/String;
    iget-object v6, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 229
    invoke-virtual {v6, v0}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getDefaultCertificateAliasIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 232
    .end local v0    # "rootCertAlias":Ljava/lang/String;
    .local v6, "rootCertAlias":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v7, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v0, v7, v2, v6}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getRecoveryServiceCertPath(IILjava/lang/String;)Ljava/security/cert/CertPath;

    move-result-object v7

    .line 234
    .local v7, "certPath":Ljava/security/cert/CertPath;
    if-eqz v7, :cond_3

    .line 235
    const-string v0, "Using the public key in stored CertPath for syncing"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {v7}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    move-object v8, v0

    .local v0, "publicKey":Ljava/security/PublicKey;
    goto :goto_2

    .line 238
    .end local v0    # "publicKey":Ljava/security/PublicKey;
    :cond_3
    const-string v0, "Using the stored raw public key for syncing"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v8, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v0, v8, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getRecoveryServicePublicKey(II)Ljava/security/PublicKey;

    move-result-object v0

    move-object v8, v0

    .line 242
    .local v8, "publicKey":Ljava/security/PublicKey;
    :goto_2
    if-nez v8, :cond_4

    .line 243
    const-string v0, "Not initialized for KeySync: no public key set. Cancelling task."

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-void

    .line 247
    :cond_4
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v9, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v0, v9, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getServerParams(II)[B

    move-result-object v9

    .line 248
    .local v9, "vaultHandle":[B
    if-nez v9, :cond_5

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No device ID set for user "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    return-void

    .line 253
    :cond_5
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    invoke-virtual {v0, v6}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->isTestOnlyCertificateAlias(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Insecure root certificate is used by recovery agent "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    iget v10, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredentialType:I

    iget-object v11, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredential:[B

    invoke-virtual {v0, v10, v11}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->doesCredentialSupportInsecureMode(I[B)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Whitelisted credential is used to generate snapshot by recovery agent "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 261
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Non whitelisted credential is used to generate recovery snapshot by "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " - ignore attempt."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return-void

    .line 267
    :cond_7
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->shouldUseScryptToHashCredential()Z

    move-result v10

    .line 268
    .local v10, "useScryptToHashCredential":Z
    invoke-static {}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->generateSalt()[B

    move-result-object v11

    .line 270
    .local v11, "salt":[B
    if-eqz v10, :cond_8

    .line 271
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredential:[B

    invoke-direct {v1, v11, v0}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->hashCredentialsByScrypt([B[B)[B

    move-result-object v0

    move-object v12, v0

    .local v0, "localLskfHash":[B
    goto :goto_4

    .line 273
    .end local v0    # "localLskfHash":[B
    :cond_8
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredential:[B

    invoke-static {v11, v0}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->hashCredentialsBySaltedSha256([B[B)[B

    move-result-object v0

    move-object v12, v0

    .line 278
    .local v12, "localLskfHash":[B
    :goto_4
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->getKeysToSync(I)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/android/server/locksettings/recoverablekeystore/BadPlatformKeyException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 293
    .local v0, "rawKeysWithMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljavax/crypto/SecretKey;[B>;>;"
    nop

    .line 295
    iget-object v13, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    invoke-virtual {v13, v6}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->isTestOnlyCertificateAlias(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 296
    iget-object v13, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 297
    invoke-virtual {v13, v0}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->keepOnlyWhitelistedInsecureKeys(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    move-object v13, v0

    goto :goto_5

    .line 295
    :cond_9
    move-object v13, v0

    .line 303
    .end local v0    # "rawKeysWithMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljavax/crypto/SecretKey;[B>;>;"
    .local v13, "rawKeysWithMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljavax/crypto/SecretKey;[B>;>;"
    :goto_5
    :try_start_1
    invoke-static {}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->generateRecoveryKey()Ljavax/crypto/SecretKey;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_4

    move-object v14, v0

    .line 307
    .local v14, "recoveryKey":Ljavax/crypto/SecretKey;
    nop

    .line 311
    :try_start_2
    invoke-static {v14, v13}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->encryptKeysWithRecoveryKey(Ljavax/crypto/SecretKey;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0
    :try_end_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v15, v0

    .line 318
    .local v15, "encryptedApplicationKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    nop

    .line 322
    iget-boolean v0, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredentialUpdated:Z

    if-eqz v0, :cond_a

    .line 323
    invoke-direct/range {p0 .. p1}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->generateAndStoreCounterId(I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v4, v0

    .local v0, "counterId":Ljava/lang/Long;
    goto :goto_6

    .line 325
    .end local v0    # "counterId":Ljava/lang/Long;
    :cond_a
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v4, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v0, v4, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getCounterId(II)Ljava/lang/Long;

    move-result-object v0

    .line 326
    .restart local v0    # "counterId":Ljava/lang/Long;
    if-nez v0, :cond_b

    .line 327
    invoke-direct/range {p0 .. p1}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->generateAndStoreCounterId(I)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v4, v0

    goto :goto_6

    .line 326
    :cond_b
    move-object v4, v0

    .line 331
    .end local v0    # "counterId":Ljava/lang/Long;
    .local v4, "counterId":Ljava/lang/Long;
    :goto_6
    nop

    .line 333
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .end local v6    # "rootCertAlias":Ljava/lang/String;
    .local v18, "rootCertAlias":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 331
    const/16 v0, 0xa

    invoke-static {v8, v5, v6, v0, v9}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->packVaultParams(Ljava/security/PublicKey;JI[B)[B

    move-result-object v5

    .line 339
    .local v5, "vaultParams":[B
    :try_start_3
    invoke-static {v8, v12, v5, v14}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->thmEncryptRecoveryKey(Ljava/security/PublicKey;[B[BLjavax/crypto/SecretKey;)[B

    move-result-object v6
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_1

    .line 350
    .local v6, "encryptedRecoveryKey":[B
    nop

    .line 353
    if-eqz v10, :cond_c

    .line 354
    const/16 v0, 0x1000

    invoke-static {v11, v0}, Landroid/security/keystore/recovery/KeyDerivationParams;->createScryptParams([BI)Landroid/security/keystore/recovery/KeyDerivationParams;

    move-result-object v0

    move-object/from16 v20, v5

    move-object v5, v0

    .local v0, "keyDerivationParams":Landroid/security/keystore/recovery/KeyDerivationParams;
    goto :goto_7

    .line 357
    .end local v0    # "keyDerivationParams":Landroid/security/keystore/recovery/KeyDerivationParams;
    :cond_c
    invoke-static {v11}, Landroid/security/keystore/recovery/KeyDerivationParams;->createSha256Params([B)Landroid/security/keystore/recovery/KeyDerivationParams;

    move-result-object v0

    move-object/from16 v20, v5

    move-object v5, v0

    .line 359
    .local v5, "keyDerivationParams":Landroid/security/keystore/recovery/KeyDerivationParams;
    .local v20, "vaultParams":[B
    :goto_7
    new-instance v0, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;

    invoke-direct {v0}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;-><init>()V

    move-object/from16 v21, v8

    .end local v8    # "publicKey":Ljava/security/PublicKey;
    .local v21, "publicKey":Ljava/security/PublicKey;
    const/16 v8, 0x64

    .line 360
    invoke-virtual {v0, v8}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->setUserSecretType(I)Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;

    move-result-object v0

    iget v8, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredentialType:I

    .line 361
    invoke-static {v8}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->getUiFormat(I)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->setLockScreenUiFormat(I)Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;

    move-result-object v0

    .line 362
    invoke-virtual {v0, v5}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->setKeyDerivationParams(Landroid/security/keystore/recovery/KeyDerivationParams;)Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;

    move-result-object v0

    move-object/from16 v22, v5

    const/4 v8, 0x0

    .end local v5    # "keyDerivationParams":Landroid/security/keystore/recovery/KeyDerivationParams;
    .local v22, "keyDerivationParams":Landroid/security/keystore/recovery/KeyDerivationParams;
    new-array v5, v8, [B

    .line 363
    invoke-virtual {v0, v5}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->setSecret([B)Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;

    move-result-object v0

    .line 364
    invoke-virtual {v0}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->build()Landroid/security/keystore/recovery/KeyChainProtectionParams;

    move-result-object v5

    .line 366
    .local v5, "keyChainProtectionParams":Landroid/security/keystore/recovery/KeyChainProtectionParams;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 367
    .local v8, "metadataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/security/keystore/recovery/KeyChainProtectionParams;>;"
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    new-instance v0, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    invoke-direct {v0}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;-><init>()V

    .line 371
    move-object/from16 v23, v5

    .end local v5    # "keyChainProtectionParams":Landroid/security/keystore/recovery/KeyChainProtectionParams;
    .local v23, "keyChainProtectionParams":Landroid/security/keystore/recovery/KeyChainProtectionParams;
    invoke-virtual {v1, v2, v3}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->getSnapshotVersion(IZ)I

    move-result v5

    .line 370
    invoke-virtual {v0, v5}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setSnapshotVersion(I)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    move-result-object v0

    .line 372
    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setMaxAttempts(I)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    move-result-object v0

    .line 373
    move v5, v10

    move-object/from16 v19, v11

    .end local v10    # "useScryptToHashCredential":Z
    .end local v11    # "salt":[B
    .local v5, "useScryptToHashCredential":Z
    .local v19, "salt":[B
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setCounterId(J)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    move-result-object v0

    .line 374
    invoke-virtual {v0, v9}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setServerParams([B)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    move-result-object v0

    .line 375
    invoke-virtual {v0, v8}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setKeyChainProtectionParams(Ljava/util/List;)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    move-result-object v0

    .line 377
    invoke-static {v15, v13}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->createApplicationKeyEntries(Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object v10

    .line 376
    invoke-virtual {v0, v10}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setWrappedApplicationKeys(Ljava/util/List;)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    move-result-object v0

    .line 378
    invoke-virtual {v0, v6}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setEncryptedRecoveryKeyBlob([B)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    move-result-object v10

    .line 380
    .local v10, "keyChainSnapshotBuilder":Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;
    :try_start_4
    invoke-virtual {v10, v7}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setTrustedHardwareCertPath(Ljava/security/cert/CertPath;)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;
    :try_end_4
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_0

    .line 385
    nop

    .line 386
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverySnapshotStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

    invoke-virtual {v10}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->build()Landroid/security/keystore/recovery/KeyChainSnapshot;

    move-result-object v11

    invoke-virtual {v0, v2, v11}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->put(ILandroid/security/keystore/recovery/KeyChainSnapshot;)V

    .line 387
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mSnapshotListenersStorage:Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;

    invoke-virtual {v0, v2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;->recoverySnapshotAvailable(I)V

    .line 389
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v11, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    const/4 v1, 0x0

    invoke-virtual {v0, v11, v2, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setShouldCreateSnapshot(IIZ)J

    .line 390
    return-void

    .line 381
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 383
    .local v0, "e":Ljava/security/cert/CertificateException;
    const-string v1, "Cannot serialize CertPath when calling setTrustedHardwareCertPath"

    move-object/from16 v11, v17

    invoke-static {v11, v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 384
    return-void

    .line 347
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    .end local v6    # "encryptedRecoveryKey":[B
    .end local v19    # "salt":[B
    .end local v20    # "vaultParams":[B
    .end local v21    # "publicKey":Ljava/security/PublicKey;
    .end local v22    # "keyDerivationParams":Landroid/security/keystore/recovery/KeyDerivationParams;
    .end local v23    # "keyChainProtectionParams":Landroid/security/keystore/recovery/KeyChainProtectionParams;
    .local v5, "vaultParams":[B
    .local v8, "publicKey":Ljava/security/PublicKey;
    .local v10, "useScryptToHashCredential":Z
    .restart local v11    # "salt":[B
    :catch_1
    move-exception v0

    move-object/from16 v20, v5

    move-object/from16 v21, v8

    move v5, v10

    move-object/from16 v19, v11

    move-object/from16 v11, v17

    move-object v1, v0

    .end local v8    # "publicKey":Ljava/security/PublicKey;
    .end local v10    # "useScryptToHashCredential":Z
    .end local v11    # "salt":[B
    .local v5, "useScryptToHashCredential":Z
    .restart local v19    # "salt":[B
    .restart local v20    # "vaultParams":[B
    .restart local v21    # "publicKey":Ljava/security/PublicKey;
    move-object v0, v1

    .line 348
    .local v0, "e":Ljava/security/InvalidKeyException;
    const-string v1, "Could not encrypt with recovery key"

    invoke-static {v11, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 349
    return-void

    .line 344
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    .end local v19    # "salt":[B
    .end local v20    # "vaultParams":[B
    .end local v21    # "publicKey":Ljava/security/PublicKey;
    .local v5, "vaultParams":[B
    .restart local v8    # "publicKey":Ljava/security/PublicKey;
    .restart local v10    # "useScryptToHashCredential":Z
    .restart local v11    # "salt":[B
    :catch_2
    move-exception v0

    move-object/from16 v20, v5

    move-object/from16 v21, v8

    move v5, v10

    move-object/from16 v19, v11

    move-object/from16 v11, v17

    move-object v1, v0

    .end local v8    # "publicKey":Ljava/security/PublicKey;
    .end local v10    # "useScryptToHashCredential":Z
    .end local v11    # "salt":[B
    .local v5, "useScryptToHashCredential":Z
    .restart local v19    # "salt":[B
    .restart local v20    # "vaultParams":[B
    .restart local v21    # "publicKey":Ljava/security/PublicKey;
    move-object v0, v1

    .line 345
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v1, "SecureBox encrypt algorithms unavailable"

    invoke-static {v11, v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 346
    return-void

    .line 313
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v4    # "counterId":Ljava/lang/Long;
    .end local v5    # "useScryptToHashCredential":Z
    .end local v15    # "encryptedApplicationKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    .end local v18    # "rootCertAlias":Ljava/lang/String;
    .end local v19    # "salt":[B
    .end local v20    # "vaultParams":[B
    .end local v21    # "publicKey":Ljava/security/PublicKey;
    .local v6, "rootCertAlias":Ljava/lang/String;
    .restart local v8    # "publicKey":Ljava/security/PublicKey;
    .restart local v10    # "useScryptToHashCredential":Z
    .restart local v11    # "salt":[B
    :catch_3
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v21, v8

    move-object/from16 v19, v11

    move-object v11, v5

    move v5, v10

    .line 314
    .end local v6    # "rootCertAlias":Ljava/lang/String;
    .end local v8    # "publicKey":Ljava/security/PublicKey;
    .end local v10    # "useScryptToHashCredential":Z
    .end local v11    # "salt":[B
    .local v0, "e":Ljava/security/GeneralSecurityException;
    .restart local v5    # "useScryptToHashCredential":Z
    .restart local v18    # "rootCertAlias":Ljava/lang/String;
    .restart local v19    # "salt":[B
    .restart local v21    # "publicKey":Ljava/security/PublicKey;
    const-string v1, "Should be impossible: could not encrypt application keys with random key"

    invoke-static {v11, v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 317
    return-void

    .line 304
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    .end local v5    # "useScryptToHashCredential":Z
    .end local v14    # "recoveryKey":Ljavax/crypto/SecretKey;
    .end local v18    # "rootCertAlias":Ljava/lang/String;
    .end local v19    # "salt":[B
    .end local v21    # "publicKey":Ljava/security/PublicKey;
    .restart local v6    # "rootCertAlias":Ljava/lang/String;
    .restart local v8    # "publicKey":Ljava/security/PublicKey;
    .restart local v10    # "useScryptToHashCredential":Z
    .restart local v11    # "salt":[B
    :catch_4
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v21, v8

    move v5, v10

    move-object/from16 v19, v11

    move-object v1, v0

    .end local v6    # "rootCertAlias":Ljava/lang/String;
    .end local v8    # "publicKey":Ljava/security/PublicKey;
    .end local v10    # "useScryptToHashCredential":Z
    .end local v11    # "salt":[B
    .restart local v5    # "useScryptToHashCredential":Z
    .restart local v18    # "rootCertAlias":Ljava/lang/String;
    .restart local v19    # "salt":[B
    .restart local v21    # "publicKey":Ljava/security/PublicKey;
    move-object v0, v1

    .line 305
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v1, "AES should never be unavailable"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 306
    return-void

    .line 290
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v5    # "useScryptToHashCredential":Z
    .end local v13    # "rawKeysWithMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljavax/crypto/SecretKey;[B>;>;"
    .end local v18    # "rootCertAlias":Ljava/lang/String;
    .end local v19    # "salt":[B
    .end local v21    # "publicKey":Ljava/security/PublicKey;
    .restart local v6    # "rootCertAlias":Ljava/lang/String;
    .restart local v8    # "publicKey":Ljava/security/PublicKey;
    .restart local v10    # "useScryptToHashCredential":Z
    .restart local v11    # "salt":[B
    :catch_5
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v21, v8

    move-object/from16 v19, v11

    move-object v11, v5

    move v5, v10

    move-object v1, v0

    .end local v6    # "rootCertAlias":Ljava/lang/String;
    .end local v8    # "publicKey":Ljava/security/PublicKey;
    .end local v10    # "useScryptToHashCredential":Z
    .end local v11    # "salt":[B
    .restart local v5    # "useScryptToHashCredential":Z
    .restart local v18    # "rootCertAlias":Ljava/lang/String;
    .restart local v19    # "salt":[B
    .restart local v21    # "publicKey":Ljava/security/PublicKey;
    move-object v0, v1

    .line 291
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Local database error."

    invoke-static {v11, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 292
    return-void

    .line 286
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "useScryptToHashCredential":Z
    .end local v18    # "rootCertAlias":Ljava/lang/String;
    .end local v19    # "salt":[B
    .end local v21    # "publicKey":Ljava/security/PublicKey;
    .restart local v6    # "rootCertAlias":Ljava/lang/String;
    .restart local v8    # "publicKey":Ljava/security/PublicKey;
    .restart local v10    # "useScryptToHashCredential":Z
    .restart local v11    # "salt":[B
    :catch_6
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v21, v8

    move-object/from16 v19, v11

    move-object v11, v5

    move v5, v10

    move-object v1, v0

    .end local v6    # "rootCertAlias":Ljava/lang/String;
    .end local v8    # "publicKey":Ljava/security/PublicKey;
    .end local v10    # "useScryptToHashCredential":Z
    .end local v11    # "salt":[B
    .restart local v5    # "useScryptToHashCredential":Z
    .restart local v18    # "rootCertAlias":Ljava/lang/String;
    .restart local v19    # "salt":[B
    .restart local v21    # "publicKey":Ljava/security/PublicKey;
    move-object v0, v1

    .line 287
    .local v0, "e":Lcom/android/server/locksettings/recoverablekeystore/BadPlatformKeyException;
    const-string v1, "Loaded keys for same generation ID as platform key, so BadPlatformKeyException should be impossible."

    invoke-static {v11, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 289
    return-void

    .line 282
    .end local v0    # "e":Lcom/android/server/locksettings/recoverablekeystore/BadPlatformKeyException;
    .end local v5    # "useScryptToHashCredential":Z
    .end local v18    # "rootCertAlias":Ljava/lang/String;
    .end local v19    # "salt":[B
    .end local v21    # "publicKey":Ljava/security/PublicKey;
    .restart local v6    # "rootCertAlias":Ljava/lang/String;
    .restart local v8    # "publicKey":Ljava/security/PublicKey;
    .restart local v10    # "useScryptToHashCredential":Z
    .restart local v11    # "salt":[B
    :catch_7
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v21, v8

    move-object/from16 v19, v11

    move-object v11, v5

    move v5, v10

    move-object v1, v0

    .end local v6    # "rootCertAlias":Ljava/lang/String;
    .end local v8    # "publicKey":Ljava/security/PublicKey;
    .end local v10    # "useScryptToHashCredential":Z
    .end local v11    # "salt":[B
    .restart local v5    # "useScryptToHashCredential":Z
    .restart local v18    # "rootCertAlias":Ljava/lang/String;
    .restart local v19    # "salt":[B
    .restart local v21    # "publicKey":Ljava/security/PublicKey;
    move-object v0, v1

    .line 283
    .local v0, "e":Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException;
    const-string v1, "A screen unlock triggered the key sync flow, so user must have lock screen. This should be impossible."

    invoke-static {v11, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    return-void

    .line 279
    .end local v0    # "e":Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException;
    .end local v5    # "useScryptToHashCredential":Z
    .end local v18    # "rootCertAlias":Ljava/lang/String;
    .end local v19    # "salt":[B
    .end local v21    # "publicKey":Ljava/security/PublicKey;
    .restart local v6    # "rootCertAlias":Ljava/lang/String;
    .restart local v8    # "publicKey":Ljava/security/PublicKey;
    .restart local v10    # "useScryptToHashCredential":Z
    .restart local v11    # "salt":[B
    :catch_8
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v21, v8

    move-object/from16 v19, v11

    move-object v11, v5

    move v5, v10

    move-object v1, v0

    .end local v6    # "rootCertAlias":Ljava/lang/String;
    .end local v8    # "publicKey":Ljava/security/PublicKey;
    .end local v10    # "useScryptToHashCredential":Z
    .end local v11    # "salt":[B
    .restart local v5    # "useScryptToHashCredential":Z
    .restart local v18    # "rootCertAlias":Ljava/lang/String;
    .restart local v19    # "salt":[B
    .restart local v21    # "publicKey":Ljava/security/PublicKey;
    move-object v0, v1

    .line 280
    .local v0, "e":Ljava/security/GeneralSecurityException;
    const-string v1, "Failed to load recoverable keys for sync"

    invoke-static {v11, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    return-void
.end method


# virtual methods
.method getSnapshotVersion(IZ)I
    .locals 5
    .param p1, "recoveryAgentUid"    # I
    .param p2, "shouldRecreateCurrentVersion"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 395
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getSnapshotVersion(II)Ljava/lang/Long;

    move-result-object v0

    .line 396
    .local v0, "snapshotVersion":Ljava/lang/Long;
    const-wide/16 v1, 0x1

    if-eqz p2, :cond_1

    .line 398
    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_2

    .line 400
    :cond_1
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v1, v3

    :goto_1
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 403
    :goto_2
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v2, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    .line 404
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 403
    invoke-virtual {v1, v2, p1, v3, v4}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setSnapshotVersion(IIJ)J

    move-result-wide v1

    .line 405
    .local v1, "updatedRows":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_3

    .line 410
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v3

    return v3

    .line 406
    :cond_3
    const-string v3, "KeySyncTask"

    const-string v4, "Failed to set the snapshot version in the local DB."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public run()V
    .locals 3

    .line 158
    :try_start_0
    const-class v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->syncKeys()V

    .line 160
    monitor-exit v0

    .line 163
    goto :goto_0

    .line 160
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 161
    .restart local p0    # "this":Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "KeySyncTask"

    const-string v2, "Unexpected exception thrown during KeySyncTask"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
