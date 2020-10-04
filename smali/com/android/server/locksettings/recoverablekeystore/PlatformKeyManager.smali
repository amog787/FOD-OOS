.class public Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;
.super Ljava/lang/Object;
.source "PlatformKeyManager.java"


# static fields
.field private static final ANDROID_KEY_STORE_PROVIDER:Ljava/lang/String; = "AndroidKeyStore"

.field private static final DECRYPT_KEY_ALIAS_SUFFIX:Ljava/lang/String; = "decrypt"

.field private static final ENCRYPT_KEY_ALIAS_SUFFIX:Ljava/lang/String; = "encrypt"

.field private static final GCM_INSECURE_NONCE_BYTES:[B

.field private static final GCM_TAG_LENGTH_BITS:I = 0x80

.field private static final KEY_ALGORITHM:Ljava/lang/String; = "AES"

.field private static final KEY_ALIAS_PREFIX:Ljava/lang/String; = "com.android.server.locksettings.recoverablekeystore/platform/"

.field private static final KEY_SIZE_BITS:I = 0x100

.field private static final KEY_WRAP_CIPHER_ALGORITHM:Ljava/lang/String; = "AES/GCM/NoPadding"

.field private static final TAG:Ljava/lang/String; = "PlatformKeyManager"

.field private static final USER_AUTHENTICATION_VALIDITY_DURATION_SECONDS:I = 0xf


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

.field private final mKeyStore:Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    const/16 v0, 0xc

    new-array v0, v0, [B

    sput-object v0, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->GCM_INSECURE_NONCE_BYTES:[B

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyStore"    # Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;
    .param p3, "database"    # Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p2, p0, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->mKeyStore:Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;

    .line 114
    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->mContext:Landroid/content/Context;

    .line 115
    iput-object p3, p0, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 116
    return-void
.end method

.method private ensureDecryptionKeyIsValid(ILcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "decryptionKey"    # Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 316
    :try_start_0
    const-string v0, "AES/GCM/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x4

    .line 317
    invoke-virtual {p2}, Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;->getKey()Landroid/security/keystore/AndroidKeyStoreSecretKey;

    move-result-object v2

    new-instance v3, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v4, 0x80

    sget-object v5, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->GCM_INSECURE_NONCE_BYTES:[B

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 316
    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Landroid/security/keystore/KeyPermanentlyInvalidatedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    goto :goto_0

    .line 323
    :catch_0
    move-exception v0

    .line 327
    :goto_0
    return-void

    .line 319
    :catch_1
    move-exception v0

    .line 320
    .local v0, "e":Landroid/security/keystore/KeyPermanentlyInvalidatedException;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 321
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 320
    const-string v3, "The platform key for user %d became invalid."

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PlatformKeyManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    new-instance v1, Ljava/security/UnrecoverableKeyException;

    invoke-virtual {v0}, Landroid/security/keystore/KeyPermanentlyInvalidatedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static generateAesKey()Ljavax/crypto/SecretKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 478
    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 479
    .local v0, "keyGenerator":Ljavax/crypto/KeyGenerator;
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 480
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    return-object v1
.end method

.method private generateAndLoadKey(II)V
    .locals 12
    .param p1, "userId"    # I
    .param p2, "generationId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;,
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 434
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getEncryptAlias(II)Ljava/lang/String;

    move-result-object v0

    .line 435
    .local v0, "encryptAlias":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getDecryptAlias(II)Ljava/lang/String;

    move-result-object v1

    .line 438
    .local v1, "decryptAlias":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->generateAesKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 440
    .local v2, "secretKey":Ljavax/crypto/SecretKey;
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/service/gatekeeper/IGateKeeperService;->getSecureUserId(I)J

    move-result-wide v3

    .line 442
    .local v3, "secureUserId":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-nez v5, :cond_0

    .line 443
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No SID available for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PlatformKeyManager"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    return-void

    .line 448
    :cond_0
    iget-object v5, p0, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->mKeyStore:Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;

    new-instance v6, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v6, v2}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    new-instance v7, Landroid/security/keystore/KeyProtection$Builder;

    const/4 v8, 0x2

    invoke-direct {v7, v8}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    .line 452
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v7

    const/16 v9, 0xf

    .line 453
    invoke-virtual {v7, v9}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationValidityDurationSeconds(I)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v7

    const-string v9, "GCM"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v10

    .line 455
    invoke-virtual {v7, v10}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v7

    const-string v10, "NoPadding"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v11

    .line 456
    invoke-virtual {v7, v11}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v7

    .line 457
    invoke-virtual {v7, v3, v4}, Landroid/security/keystore/KeyProtection$Builder;->setBoundToSpecificSecureUserId(J)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v7

    .line 458
    invoke-virtual {v7}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v7

    .line 448
    invoke-interface {v5, v1, v6, v7}, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 459
    iget-object v5, p0, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->mKeyStore:Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;

    new-instance v6, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v6, v2}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    new-instance v7, Landroid/security/keystore/KeyProtection$Builder;

    invoke-direct {v7, v8}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v8

    .line 463
    invoke-virtual {v7, v8}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v7

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v8

    .line 464
    invoke-virtual {v7, v8}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v7

    .line 465
    invoke-virtual {v7}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v7

    .line 459
    invoke-interface {v5, v0, v6, v7}, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 467
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->setGenerationId(II)V

    .line 468
    return-void
.end method

.method private static getAndLoadAndroidKeyStore()Ljava/security/KeyStore;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 490
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 492
    .local v0, "keyStore":Ljava/security/KeyStore;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    nop

    .line 497
    return-object v0

    .line 493
    :catch_0
    move-exception v1

    .line 495
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/KeyStoreException;

    const-string v3, "Unable to load keystore."

    invoke-direct {v2, v3, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private getDecryptAlias(II)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "generationId"    # I

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.android.server.locksettings.recoverablekeystore/platform/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "decrypt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDecryptKeyInternal(I)Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException;
        }
    .end annotation

    .line 296
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getGenerationId(I)I

    move-result v0

    .line 297
    .local v0, "generationId":I
    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getDecryptAlias(II)Ljava/lang/String;

    move-result-object v1

    .line 298
    .local v1, "alias":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->isKeyLoaded(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 301
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->mKeyStore:Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v2

    check-cast v2, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    .line 303
    .local v2, "key":Landroid/security/keystore/AndroidKeyStoreSecretKey;
    new-instance v3, Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;

    invoke-direct {v3, v0, v2}, Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;-><init>(ILandroid/security/keystore/AndroidKeyStoreSecretKey;)V

    return-object v3

    .line 299
    .end local v2    # "key":Landroid/security/keystore/AndroidKeyStoreSecretKey;
    :cond_0
    new-instance v2, Ljava/security/UnrecoverableKeyException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KeyStore doesn\'t contain key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getEncryptAlias(II)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "generationId"    # I

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.android.server.locksettings.recoverablekeystore/platform/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "encrypt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getEncryptKeyInternal(I)Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException;
        }
    .end annotation

    .line 242
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getGenerationId(I)I

    move-result v0

    .line 243
    .local v0, "generationId":I
    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getEncryptAlias(II)Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, "alias":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->isKeyLoaded(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 247
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->mKeyStore:Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v2

    check-cast v2, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    .line 249
    .local v2, "key":Landroid/security/keystore/AndroidKeyStoreSecretKey;
    new-instance v3, Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;

    invoke-direct {v3, v0, v2}, Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;-><init>(ILandroid/security/keystore/AndroidKeyStoreSecretKey;)V

    return-object v3

    .line 245
    .end local v2    # "key":Landroid/security/keystore/AndroidKeyStoreSecretKey;
    :cond_0
    new-instance v2, Ljava/security/UnrecoverableKeyException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KeyStore doesn\'t contain key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getInstance(Landroid/content/Context;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;)Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "database"    # Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 102
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxyImpl;

    .line 104
    invoke-static {}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getAndLoadAndroidKeyStore()Ljava/security/KeyStore;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxyImpl;-><init>(Ljava/security/KeyStore;)V

    invoke-direct {v0, v1, v2, p1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;-><init>(Landroid/content/Context;Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;)V

    .line 102
    return-object v0
.end method

.method private isKeyLoaded(II)Z
    .locals 2
    .param p1, "userId"    # I
    .param p2, "generationId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 413
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->mKeyStore:Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;

    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getEncryptAlias(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;->containsAlias(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->mKeyStore:Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;

    .line 414
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getDecryptAlias(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;->containsAlias(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 413
    :goto_0
    return v0
.end method

.method private setGenerationId(II)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "generationId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 403
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setPlatformKeyGenerationId(II)J

    .line 404
    return-void
.end method


# virtual methods
.method public getDecryptKey(I)Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException;,
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 269
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->init(I)V

    .line 271
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getDecryptKeyInternal(I)Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;

    move-result-object v0

    .line 272
    .local v0, "decryptionKey":Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;
    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->ensureDecryptionKeyIsValid(ILcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;)V
    :try_end_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    return-object v0

    .line 274
    .end local v0    # "decryptionKey":Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Ljava/security/UnrecoverableKeyException;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 277
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 275
    const-string v3, "Regenerating permanently invalid Platform key for user %d."

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PlatformKeyManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->regenerate(I)V

    .line 279
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getDecryptKeyInternal(I)Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;

    move-result-object v1

    return-object v1
.end method

.method public getEncryptKey(I)Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException;,
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 214
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->init(I)V

    .line 218
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getDecryptKeyInternal(I)Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;

    .line 219
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getEncryptKeyInternal(I)Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/security/UnrecoverableKeyException;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 223
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 221
    const-string v3, "Regenerating permanently invalid Platform key for user %d."

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PlatformKeyManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->regenerate(I)V

    .line 225
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getEncryptKeyInternal(I)Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;

    move-result-object v1

    return-object v1
.end method

.method getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 419
    invoke-static {}, Landroid/security/GateKeeper;->getService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v0

    return-object v0
.end method

.method public getGenerationId(I)I
    .locals 1
    .param p1, "userId"    # I

    .line 128
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getPlatformKeyGenerationId(I)I

    move-result v0

    return v0
.end method

.method init(I)V
    .locals 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException;,
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 344
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->isAvailable(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 349
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getGenerationId(I)I

    move-result v0

    .line 350
    .local v0, "generationId":I
    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->isKeyLoaded(II)Z

    move-result v3

    const-string v4, "PlatformKeyManager"

    if-eqz v3, :cond_0

    .line 351
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    .line 352
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v1

    .line 351
    const-string v1, "Platform key generation %d exists already."

    invoke-static {v3, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    return-void

    .line 355
    :cond_0
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 356
    const-string v1, "Generating initial platform key generation ID."

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const/4 v0, 0x1

    goto :goto_0

    .line 359
    :cond_1
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v2, [Ljava/lang/Object;

    .line 360
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    .line 359
    const-string v1, "Platform generation ID was %d but no entry was present in AndroidKeyStore. Generating fresh key."

    invoke-static {v3, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    add-int/2addr v0, v2

    .line 365
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->generateAndLoadKey(II)V

    .line 366
    return-void

    .line 345
    .end local v0    # "generationId":I
    :cond_2
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    .line 346
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    .line 345
    const-string v1, "%d does not have a lock screen set."

    invoke-static {v3, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public invalidatePlatformKey(II)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "generationId"    # I

    .line 153
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->mKeyStore:Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;

    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getEncryptAlias(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;->deleteEntry(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->mKeyStore:Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;

    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getDecryptAlias(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;->deleteEntry(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 161
    :cond_0
    :goto_0
    return-void
.end method

.method public isAvailable(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 140
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/KeyguardManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0, p1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v0

    return v0
.end method

.method regenerate(I)V
    .locals 5
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;,
            Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException;,
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 181
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->isAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getGenerationId(I)I

    move-result v0

    .line 188
    .local v0, "generationId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 189
    const/4 v1, 0x1

    .local v1, "nextId":I
    goto :goto_0

    .line 191
    .end local v1    # "nextId":I
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->invalidatePlatformKey(II)V

    .line 192
    add-int/lit8 v1, v0, 0x1

    .line 194
    .restart local v1    # "nextId":I
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->generateAndLoadKey(II)V

    .line 195
    return-void

    .line 182
    .end local v0    # "generationId":I
    .end local v1    # "nextId":I
    :cond_1
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 183
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 182
    const-string v3, "%d does not have a lock screen set."

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
