.class public Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;
.super Ljava/lang/Object;
.source "KeySyncUtils.java"


# static fields
.field private static final ENCRYPTED_APPLICATION_KEY_HEADER:[B

.field private static final KEY_CLAIMANT_LENGTH_BYTES:I = 0x10

.field private static final LOCALLY_ENCRYPTED_RECOVERY_KEY_HEADER:[B

.field private static final PUBLIC_KEY_FACTORY_ALGORITHM:Ljava/lang/String; = "EC"

.field private static final RECOVERY_CLAIM_HEADER:[B

.field private static final RECOVERY_KEY_ALGORITHM:Ljava/lang/String; = "AES"

.field private static final RECOVERY_KEY_SIZE_BITS:I = 0x100

.field private static final RECOVERY_RESPONSE_HEADER:[B

.field private static final THM_ENCRYPTED_RECOVERY_KEY_HEADER:[B

.field private static final THM_KF_HASH_PREFIX:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 54
    const-string v1, "V1 THM_encrypted_recovery_key"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->THM_ENCRYPTED_RECOVERY_KEY_HEADER:[B

    .line 55
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 56
    const-string v1, "V1 locally_encrypted_recovery_key"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->LOCALLY_ENCRYPTED_RECOVERY_KEY_HEADER:[B

    .line 57
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 58
    const-string v1, "V1 encrypted_application_key"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->ENCRYPTED_APPLICATION_KEY_HEADER:[B

    .line 59
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 60
    const-string v1, "V1 KF_claim"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->RECOVERY_CLAIM_HEADER:[B

    .line 61
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 62
    const-string v1, "V1 reencrypted_recovery_key"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->RECOVERY_RESPONSE_HEADER:[B

    .line 64
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "THM_KF_hash"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->THM_KF_HASH_PREFIX:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateThmKfHash([B)[B
    .locals 2
    .param p0, "lockScreenHash"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 110
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 111
    .local v0, "messageDigest":Ljava/security/MessageDigest;
    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->THM_KF_HASH_PREFIX:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 112
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 113
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    return-object v1
.end method

.method static varargs concat([[B)[B
    .locals 8
    .param p0, "arrays"    # [[B
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 341
    const/4 v0, 0x0

    .line 342
    .local v0, "length":I
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    .end local v0    # "length":I
    .local v3, "length":I
    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v4, p0, v0

    .line 343
    .local v4, "array":[B
    array-length v5, v4

    add-int/2addr v3, v5

    .line 342
    .end local v4    # "array":[B
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 346
    :cond_0
    new-array v0, v3, [B

    .line 347
    .local v0, "concatenated":[B
    const/4 v1, 0x0

    .line 348
    .local v1, "pos":I
    array-length v4, p0

    move v5, v1

    move v1, v2

    .end local v1    # "pos":I
    .local v5, "pos":I
    :goto_1
    if-ge v1, v4, :cond_1

    aget-object v6, p0, v1

    .line 349
    .local v6, "array":[B
    array-length v7, v6

    invoke-static {v6, v2, v0, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 350
    array-length v7, v6

    add-int/2addr v5, v7

    .line 348
    .end local v6    # "array":[B
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 353
    :cond_1
    return-object v0
.end method

.method public static decryptApplicationKey([B[B[B)[B
    .locals 3
    .param p0, "recoveryKey"    # [B
    .param p1, "encryptedApplicationKey"    # [B
    .param p2, "applicationKeyMetadata"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/AEADBadTagException;
        }
    .end annotation

    .line 280
    if-nez p2, :cond_0

    .line 281
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->ENCRYPTED_APPLICATION_KEY_HEADER:[B

    .local v0, "header":[B
    goto :goto_0

    .line 283
    .end local v0    # "header":[B
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [[B

    const/4 v1, 0x0

    sget-object v2, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->ENCRYPTED_APPLICATION_KEY_HEADER:[B

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->concat([[B)[B

    move-result-object v0

    .line 285
    .restart local v0    # "header":[B
    :goto_0
    const/4 v1, 0x0

    invoke-static {v1, p0, v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->decrypt(Ljava/security/PrivateKey;[B[B[B)[B

    move-result-object v1

    return-object v1
.end method

.method public static decryptRecoveryClaimResponse([B[B[B)[B
    .locals 3
    .param p0, "keyClaimant"    # [B
    .param p1, "vaultParams"    # [B
    .param p2, "encryptedResponse"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/AEADBadTagException;
        }
    .end annotation

    .line 240
    const/4 v0, 0x2

    new-array v0, v0, [[B

    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->RECOVERY_RESPONSE_HEADER:[B

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 243
    invoke-static {v0}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->concat([[B)[B

    move-result-object v0

    .line 240
    const/4 v1, 0x0

    invoke-static {v1, p0, v0, p2}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->decrypt(Ljava/security/PrivateKey;[B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static decryptRecoveryKey([B[B)[B
    .locals 2
    .param p0, "lskfHash"    # [B
    .param p1, "encryptedRecoveryKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/AEADBadTagException;
        }
    .end annotation

    .line 259
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->LOCALLY_ENCRYPTED_RECOVERY_KEY_HEADER:[B

    const/4 v1, 0x0

    invoke-static {v1, p0, v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->decrypt(Ljava/security/PrivateKey;[B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static deserializePublicKey([B)Ljava/security/PublicKey;
    .locals 3
    .param p0, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 302
    :try_start_0
    const-string v0, "EC"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    .local v0, "keyFactory":Ljava/security/KeyFactory;
    nop

    .line 307
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 308
    .local v1, "publicKeySpec":Ljava/security/spec/X509EncodedKeySpec;
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    return-object v2

    .line 303
    .end local v0    # "keyFactory":Ljava/security/KeyFactory;
    .end local v1    # "publicKeySpec":Ljava/security/spec/X509EncodedKeySpec;
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static encryptKeysWithRecoveryKey(Ljavax/crypto/SecretKey;Ljava/util/Map;)Ljava/util/Map;
    .locals 9
    .param p0, "recoveryKey"    # Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/crypto/SecretKey;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljavax/crypto/SecretKey;",
            "[B>;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 160
    .local p1, "keys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljavax/crypto/SecretKey;[B>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 161
    .local v0, "encryptedKeys":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 162
    .local v2, "alias":Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljavax/crypto/SecretKey;

    .line 163
    .local v3, "key":Ljavax/crypto/SecretKey;
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, [B

    .line 165
    .local v4, "metadata":[B
    if-nez v4, :cond_0

    .line 166
    sget-object v5, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->ENCRYPTED_APPLICATION_KEY_HEADER:[B

    .local v5, "header":[B
    goto :goto_1

    .line 174
    .end local v5    # "header":[B
    :cond_0
    const/4 v5, 0x2

    new-array v5, v5, [[B

    const/4 v6, 0x0

    sget-object v7, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->ENCRYPTED_APPLICATION_KEY_HEADER:[B

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v4, v5, v6

    invoke-static {v5}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->concat([[B)[B

    move-result-object v5

    .line 176
    .restart local v5    # "header":[B
    :goto_1
    const/4 v6, 0x0

    .line 178
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v7

    .line 180
    invoke-interface {v3}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v8

    .line 176
    invoke-static {v6, v7, v5, v8}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->encrypt(Ljava/security/PublicKey;[B[B[B)[B

    move-result-object v6

    .line 181
    .local v6, "encryptedKey":[B
    invoke-virtual {v0, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .end local v2    # "alias":Ljava/lang/String;
    .end local v3    # "key":Ljavax/crypto/SecretKey;
    .end local v4    # "metadata":[B
    .end local v5    # "header":[B
    .end local v6    # "encryptedKey":[B
    goto :goto_0

    .line 183
    :cond_1
    return-object v0
.end method

.method public static encryptRecoveryClaim(Ljava/security/PublicKey;[B[B[B[B)[B
    .locals 4
    .param p0, "publicKey"    # Ljava/security/PublicKey;
    .param p1, "vaultParams"    # [B
    .param p2, "challenge"    # [B
    .param p3, "thmKfHash"    # [B
    .param p4, "keyClaimant"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 218
    const/4 v0, 0x3

    new-array v0, v0, [[B

    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->RECOVERY_CLAIM_HEADER:[B

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v3, 0x2

    aput-object p2, v0, v3

    .line 221
    invoke-static {v0}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->concat([[B)[B

    move-result-object v0

    new-array v3, v3, [[B

    aput-object p3, v3, v2

    aput-object p4, v3, v1

    .line 222
    invoke-static {v3}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->concat([[B)[B

    move-result-object v1

    .line 218
    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->encrypt(Ljava/security/PublicKey;[B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static generateKeyClaimant()[B
    .locals 2

    .line 192
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 193
    .local v0, "secureRandom":Ljava/security/SecureRandom;
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 194
    .local v1, "key":[B
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 195
    return-object v1
.end method

.method public static generateRecoveryKey()Ljavax/crypto/SecretKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 141
    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 142
    .local v0, "keyGenerator":Ljavax/crypto/KeyGenerator;
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    const/16 v2, 0x100

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 143
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    return-object v1
.end method

.method static locallyEncryptRecoveryKey([BLjavax/crypto/SecretKey;)[B
    .locals 3
    .param p0, "lockScreenHash"    # [B
    .param p1, "recoveryKey"    # Ljavax/crypto/SecretKey;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 128
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->LOCALLY_ENCRYPTED_RECOVERY_KEY_HEADER:[B

    .line 132
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    .line 128
    const/4 v2, 0x0

    invoke-static {v2, p0, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->encrypt(Ljava/security/PublicKey;[B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static packVaultParams(Ljava/security/PublicKey;JI[B)[B
    .locals 3
    .param p0, "thmPublicKey"    # Ljava/security/PublicKey;
    .param p1, "counterId"    # J
    .param p3, "maxAttempts"    # I
    .param p4, "vaultHandle"    # [B

    .line 322
    array-length v0, p4

    add-int/lit8 v0, v0, 0x4d

    .line 327
    .local v0, "vaultParamsLength":I
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 328
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 329
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->encodePublicKey(Ljava/security/PublicKey;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 330
    invoke-virtual {v1, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 331
    invoke-virtual {v1, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 332
    invoke-virtual {v1, p4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 333
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 327
    return-object v1
.end method

.method public static thmEncryptRecoveryKey(Ljava/security/PublicKey;[B[BLjavax/crypto/SecretKey;)[B
    .locals 5
    .param p0, "publicKey"    # Ljava/security/PublicKey;
    .param p1, "lockScreenHash"    # [B
    .param p2, "vaultParams"    # [B
    .param p3, "recoveryKey"    # Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 89
    invoke-static {p1, p3}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->locallyEncryptRecoveryKey([BLjavax/crypto/SecretKey;)[B

    move-result-object v0

    .line 90
    .local v0, "encryptedRecoveryKey":[B
    invoke-static {p1}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->calculateThmKfHash([B)[B

    move-result-object v1

    .line 91
    .local v1, "thmKfHash":[B
    const/4 v2, 0x2

    new-array v2, v2, [[B

    sget-object v3, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->THM_ENCRYPTED_RECOVERY_KEY_HEADER:[B

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v2}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->concat([[B)[B

    move-result-object v2

    .line 92
    .local v2, "header":[B
    invoke-static {p0, v1, v2, v0}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->encrypt(Ljava/security/PublicKey;[B[B[B)[B

    move-result-object v3

    return-object v3
.end method
