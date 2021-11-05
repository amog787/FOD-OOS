.class public Lcom/android/server/locksettings/recoverablekeystore/SecureBox;
.super Ljava/lang/Object;
.source "SecureBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;
    }
.end annotation


# static fields
.field private static final BIG_INT_02:Ljava/math/BigInteger;

.field private static final CIPHER_ALG:Ljava/lang/String; = "AES"

.field private static final CONSTANT_01:[B

.field private static final EC_ALG:Ljava/lang/String; = "EC"

.field private static final EC_COORDINATE_LEN_BYTES:I = 0x20

.field private static final EC_P256_COMMON_NAME:Ljava/lang/String; = "secp256r1"

.field private static final EC_P256_OPENSSL_NAME:Ljava/lang/String; = "prime256v1"

.field private static final EC_PARAM_A:Ljava/math/BigInteger;

.field private static final EC_PARAM_B:Ljava/math/BigInteger;

.field private static final EC_PARAM_P:Ljava/math/BigInteger;

.field static final EC_PARAM_SPEC:Ljava/security/spec/ECParameterSpec;

.field private static final EC_PUBLIC_KEY_LEN_BYTES:I = 0x41

.field private static final EC_PUBLIC_KEY_PREFIX:B = 0x4t

.field private static final EMPTY_BYTE_ARRAY:[B

.field private static final ENC_ALG:Ljava/lang/String; = "AES/GCM/NoPadding"

.field private static final GCM_KEY_LEN_BYTES:I = 0x10

.field private static final GCM_NONCE_LEN_BYTES:I = 0xc

.field private static final GCM_TAG_LEN_BYTES:I = 0x10

.field private static final HKDF_INFO_WITHOUT_PUBLIC_KEY:[B

.field private static final HKDF_INFO_WITH_PUBLIC_KEY:[B

.field private static final HKDF_SALT:[B

.field private static final KA_ALG:Ljava/lang/String; = "ECDH"

.field private static final MAC_ALG:Ljava/lang/String; = "HmacSHA256"

.field private static final VERSION:[B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 70
    const/4 v0, 0x2

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->VERSION:[B

    .line 71
    new-array v0, v0, [[B

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 72
    const-string v2, "SECUREBOX"

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->VERSION:[B

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->concat([[B)[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->HKDF_SALT:[B

    .line 73
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 74
    const-string v1, "P256 HKDF-SHA-256 AES-128-GCM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->HKDF_INFO_WITH_PUBLIC_KEY:[B

    .line 75
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 76
    const-string v1, "SHARED HKDF-SHA-256 AES-128-GCM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->HKDF_INFO_WITHOUT_PUBLIC_KEY:[B

    .line 77
    new-array v0, v3, [B

    aput-byte v3, v0, v2

    sput-object v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->CONSTANT_01:[B

    .line 78
    new-array v0, v2, [B

    sput-object v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EMPTY_BYTE_ARRAY:[B

    .line 95
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->BIG_INT_02:Ljava/math/BigInteger;

    .line 103
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "ffffffff00000001000000000000000000000000ffffffffffffffffffffffff"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EC_PARAM_P:Ljava/math/BigInteger;

    .line 105
    new-instance v1, Ljava/math/BigInteger;

    const-string v4, "3"

    invoke-direct {v1, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EC_PARAM_A:Ljava/math/BigInteger;

    .line 106
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "5ac635d8aa3a93e7b3ebbd55769886bc651d06b0cc53b0f63bce3c3e27d2604b"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EC_PARAM_B:Ljava/math/BigInteger;

    .line 112
    new-instance v0, Ljava/security/spec/EllipticCurve;

    new-instance v1, Ljava/security/spec/ECFieldFp;

    sget-object v4, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EC_PARAM_P:Ljava/math/BigInteger;

    invoke-direct {v1, v4}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    sget-object v4, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EC_PARAM_A:Ljava/math/BigInteger;

    sget-object v5, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EC_PARAM_B:Ljava/math/BigInteger;

    invoke-direct {v0, v1, v4, v5}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 114
    .local v0, "curveSpec":Ljava/security/spec/EllipticCurve;
    new-instance v1, Ljava/security/spec/ECPoint;

    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "6b17d1f2e12c4247f8bce6e563a440f277037d812deb33a0f4a13945d898c296"

    invoke-direct {v4, v5, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "4fe342e2fe1a7f9b8ee7eb4a7c0f9e162bce33576b315ececbb6406837bf51f5"

    invoke-direct {v5, v6, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v4, v5}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 122
    .local v1, "generator":Ljava/security/spec/ECPoint;
    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "ffffffff00000000ffffffffffffffffbce6faada7179e84f3b9cac2fc632551"

    invoke-direct {v4, v5, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    move-object v2, v4

    .line 125
    .local v2, "generatorOrder":Ljava/math/BigInteger;
    new-instance v4, Ljava/security/spec/ECParameterSpec;

    invoke-direct {v4, v0, v1, v2, v3}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    sput-object v4, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EC_PARAM_SPEC:Ljava/security/spec/ECParameterSpec;

    .line 126
    .end local v0    # "curveSpec":Ljava/security/spec/EllipticCurve;
    .end local v1    # "generator":Ljava/security/spec/ECPoint;
    .end local v2    # "generatorOrder":Ljava/math/BigInteger;
    return-void

    :array_0
    .array-data 1
        0x2t
        0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static aesGcmDecrypt(Ljavax/crypto/SecretKey;[B[B[B)[B
    .locals 1
    .param p0, "key"    # Ljavax/crypto/SecretKey;
    .param p1, "nonce"    # [B
    .param p2, "ciphertext"    # [B
    .param p3, "aad"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/AEADBadTagException;
        }
    .end annotation

    .line 337
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;->DECRYPT:Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->aesGcmInternal(Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;Ljavax/crypto/SecretKey;[B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static aesGcmEncrypt(Ljavax/crypto/SecretKey;[B[B[B)[B
    .locals 2
    .param p0, "key"    # Ljavax/crypto/SecretKey;
    .param p1, "nonce"    # [B
    .param p2, "plaintext"    # [B
    .param p3, "aad"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 328
    :try_start_0
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;->ENCRYPT:Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->aesGcmInternal(Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;Ljavax/crypto/SecretKey;[B[B[B)[B

    move-result-object v0
    :try_end_0
    .catch Ljavax/crypto/AEADBadTagException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 329
    :catch_0
    move-exception v0

    .line 331
    .local v0, "ex":Ljavax/crypto/AEADBadTagException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static aesGcmInternal(Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;Ljavax/crypto/SecretKey;[B[B[B)[B
    .locals 4
    .param p0, "operation"    # Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;
    .param p1, "key"    # Ljavax/crypto/SecretKey;
    .param p2, "nonce"    # [B
    .param p3, "text"    # [B
    .param p4, "aad"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/AEADBadTagException;
        }
    .end annotation

    .line 345
    :try_start_0
    const-string v0, "AES/GCM/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3

    .line 349
    .local v0, "cipher":Ljavax/crypto/Cipher;
    nop

    .line 350
    new-instance v1, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v2, 0x80

    invoke-direct {v1, v2, p2}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 352
    .local v1, "spec":Ljavax/crypto/spec/GCMParameterSpec;
    :try_start_1
    sget-object v2, Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;->DECRYPT:Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;

    if-ne p0, v2, :cond_0

    .line 353
    const/4 v2, 0x2

    invoke-virtual {v0, v2, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_0

    .line 355
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_2

    .line 360
    :goto_0
    nop

    .line 362
    :try_start_2
    invoke-virtual {v0, p4}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 363
    invoke-virtual {v0, p3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2
    :try_end_2
    .catch Ljavax/crypto/AEADBadTagException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v2

    .line 368
    :catch_0
    move-exception v2

    .line 371
    .local v2, "ex":Ljava/security/GeneralSecurityException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 364
    .end local v2    # "ex":Ljava/security/GeneralSecurityException;
    :catch_1
    move-exception v2

    .line 367
    .local v2, "ex":Ljavax/crypto/AEADBadTagException;
    throw v2

    .line 357
    .end local v2    # "ex":Ljavax/crypto/AEADBadTagException;
    :catch_2
    move-exception v2

    .line 359
    .local v2, "ex":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 346
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "spec":Ljavax/crypto/spec/GCMParameterSpec;
    .end local v2    # "ex":Ljava/security/InvalidAlgorithmParameterException;
    :catch_3
    move-exception v0

    .line 348
    .local v0, "ex":Ljavax/crypto/NoSuchPaddingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static varargs concat([[B)[B
    .locals 8
    .param p0, "inputs"    # [[B

    .line 451
    const/4 v0, 0x0

    .line 452
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 453
    aget-object v2, p0, v1

    if-nez v2, :cond_0

    .line 454
    sget-object v2, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EMPTY_BYTE_ARRAY:[B

    aput-object v2, p0, v1

    .line 456
    :cond_0
    aget-object v2, p0, v1

    array-length v2, v2

    add-int/2addr v0, v2

    .line 452
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 459
    .end local v1    # "i":I
    :cond_1
    new-array v1, v0, [B

    .line 460
    .local v1, "output":[B
    const/4 v2, 0x0

    .line 461
    .local v2, "outputPos":I
    array-length v3, p0

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_2

    aget-object v6, p0, v5

    .line 462
    .local v6, "input":[B
    array-length v7, v6

    invoke-static {v6, v4, v1, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 463
    array-length v7, v6

    add-int/2addr v2, v7

    .line 461
    .end local v6    # "input":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 465
    :cond_2
    return-object v1
.end method

.method static decodePublicKey([B)Ljava/security/PublicKey;
    .locals 6
    .param p0, "keyBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 399
    new-instance v0, Ljava/math/BigInteger;

    .line 402
    const/4 v1, 0x1

    const/16 v2, 0x21

    invoke-static {p0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-direct {v0, v1, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 403
    .local v0, "x":Ljava/math/BigInteger;
    new-instance v3, Ljava/math/BigInteger;

    .line 406
    const/16 v4, 0x41

    invoke-static {p0, v2, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-direct {v3, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    move-object v1, v3

    .line 410
    .local v1, "y":Ljava/math/BigInteger;
    invoke-static {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->validateEcPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 412
    const-string v2, "EC"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 414
    .local v2, "keyFactory":Ljava/security/KeyFactory;
    :try_start_0
    new-instance v3, Ljava/security/spec/ECPublicKeySpec;

    new-instance v4, Ljava/security/spec/ECPoint;

    invoke-direct {v4, v0, v1}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    sget-object v5, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EC_PARAM_SPEC:Ljava/security/spec/ECParameterSpec;

    invoke-direct {v3, v4, v5}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 415
    :catch_0
    move-exception v3

    .line 417
    .local v3, "ex":Ljava/security/spec/InvalidKeySpecException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static decrypt(Ljava/security/PrivateKey;[B[B[B)[B
    .locals 9
    .param p0, "ourPrivateKey"    # Ljava/security/PrivateKey;
    .param p1, "sharedSecret"    # [B
    .param p2, "header"    # [B
    .param p3, "encryptedPayload"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/AEADBadTagException;
        }
    .end annotation

    .line 242
    invoke-static {p1}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->emptyByteArrayIfNull([B)[B

    move-result-object p1

    .line 243
    if-nez p0, :cond_1

    array-length v0, p1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 244
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both the private key and shared secret are empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_1
    :goto_0
    invoke-static {p2}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->emptyByteArrayIfNull([B)[B

    move-result-object p2

    .line 247
    if-eqz p3, :cond_4

    .line 251
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 252
    .local v0, "ciphertextBuffer":Ljava/nio/ByteBuffer;
    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->VERSION:[B

    array-length v1, v1

    invoke-static {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->readEncryptedPayload(Ljava/nio/ByteBuffer;I)[B

    move-result-object v1

    .line 253
    .local v1, "version":[B
    sget-object v2, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->VERSION:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 260
    if-nez p0, :cond_2

    .line 261
    sget-object v2, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EMPTY_BYTE_ARRAY:[B

    .line 262
    .local v2, "dhSecret":[B
    sget-object v3, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->HKDF_INFO_WITHOUT_PUBLIC_KEY:[B

    .local v3, "hkdfInfo":[B
    goto :goto_1

    .line 264
    .end local v2    # "dhSecret":[B
    .end local v3    # "hkdfInfo":[B
    :cond_2
    const/16 v2, 0x41

    invoke-static {v0, v2}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->readEncryptedPayload(Ljava/nio/ByteBuffer;I)[B

    move-result-object v2

    .line 265
    .local v2, "senderPublicKeyBytes":[B
    invoke-static {v2}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->decodePublicKey([B)Ljava/security/PublicKey;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->dhComputeSecret(Ljava/security/PrivateKey;Ljava/security/PublicKey;)[B

    move-result-object v3

    .line 266
    .local v3, "dhSecret":[B
    sget-object v4, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->HKDF_INFO_WITH_PUBLIC_KEY:[B

    move-object v2, v3

    move-object v3, v4

    .line 269
    .local v2, "dhSecret":[B
    .local v3, "hkdfInfo":[B
    :goto_1
    const/16 v4, 0xc

    invoke-static {v0, v4}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->readEncryptedPayload(Ljava/nio/ByteBuffer;I)[B

    move-result-object v4

    .line 270
    .local v4, "randNonce":[B
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-static {v0, v5}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->readEncryptedPayload(Ljava/nio/ByteBuffer;I)[B

    move-result-object v5

    .line 271
    .local v5, "ciphertext":[B
    const/4 v6, 0x2

    new-array v6, v6, [[B

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-static {v6}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->concat([[B)[B

    move-result-object v6

    .line 272
    .local v6, "keyingMaterial":[B
    sget-object v7, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->HKDF_SALT:[B

    invoke-static {v6, v7, v3}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->hkdfDeriveKey([B[B[B)Ljavax/crypto/SecretKey;

    move-result-object v7

    .line 273
    .local v7, "decryptionKey":Ljavax/crypto/SecretKey;
    invoke-static {v7, v4, v5, p2}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->aesGcmDecrypt(Ljavax/crypto/SecretKey;[B[B[B)[B

    move-result-object v8

    return-object v8

    .line 254
    .end local v2    # "dhSecret":[B
    .end local v3    # "hkdfInfo":[B
    .end local v4    # "randNonce":[B
    .end local v5    # "ciphertext":[B
    .end local v6    # "keyingMaterial":[B
    .end local v7    # "decryptionKey":Ljavax/crypto/SecretKey;
    :cond_3
    new-instance v2, Ljavax/crypto/AEADBadTagException;

    const-string v3, "The payload was not encrypted by SecureBox v2"

    invoke-direct {v2, v3}, Ljavax/crypto/AEADBadTagException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 248
    .end local v0    # "ciphertextBuffer":Ljava/nio/ByteBuffer;
    .end local v1    # "version":[B
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Encrypted payload must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static dhComputeSecret(Ljava/security/PrivateKey;Ljava/security/PublicKey;)[B
    .locals 3
    .param p0, "ourPrivateKey"    # Ljava/security/PrivateKey;
    .param p1, "theirPublicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 289
    const-string v0, "ECDH"

    invoke-static {v0}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v0

    .line 291
    .local v0, "agreement":Ljavax/crypto/KeyAgreement;
    :try_start_0
    invoke-virtual {v0, p0}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    nop

    .line 296
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 297
    invoke-virtual {v0}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object v1

    return-object v1

    .line 292
    :catch_0
    move-exception v1

    .line 294
    .local v1, "ex":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/security/InvalidKeyException;

    invoke-direct {v2, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static emptyByteArrayIfNull([B)[B
    .locals 1
    .param p0, "input"    # [B

    .line 469
    if-nez p0, :cond_0

    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EMPTY_BYTE_ARRAY:[B

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method static encodePublicKey(Ljava/security/PublicKey;)[B
    .locals 7
    .param p0, "publicKey"    # Ljava/security/PublicKey;

    .line 383
    move-object v0, p0

    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v0

    .line 384
    .local v0, "point":Ljava/security/spec/ECPoint;
    invoke-virtual {v0}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 385
    .local v1, "x":[B
    invoke-virtual {v0}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    .line 387
    .local v2, "y":[B
    const/16 v3, 0x41

    new-array v4, v3, [B

    .line 390
    .local v4, "output":[B
    array-length v5, v2

    sub-int/2addr v3, v5

    array-length v5, v2

    const/4 v6, 0x0

    invoke-static {v2, v6, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 391
    array-length v3, v1

    rsub-int/lit8 v3, v3, 0x21

    array-length v5, v1

    invoke-static {v1, v6, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 392
    const/4 v3, 0x4

    aput-byte v3, v4, v6

    .line 393
    return-object v4
.end method

.method public static encrypt(Ljava/security/PublicKey;[B[B[B)[B
    .locals 17
    .param p0, "theirPublicKey"    # Ljava/security/PublicKey;
    .param p1, "sharedSecret"    # [B
    .param p2, "header"    # [B
    .param p3, "payload"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 181
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->emptyByteArrayIfNull([B)[B

    move-result-object v1

    .line 182
    .end local p1    # "sharedSecret":[B
    .local v1, "sharedSecret":[B
    if-nez v0, :cond_1

    array-length v2, v1

    if-eqz v2, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Both the public key and shared secret are empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 185
    :cond_1
    :goto_0
    invoke-static/range {p2 .. p2}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->emptyByteArrayIfNull([B)[B

    move-result-object v2

    .line 186
    .end local p2    # "header":[B
    .local v2, "header":[B
    invoke-static/range {p3 .. p3}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->emptyByteArrayIfNull([B)[B

    move-result-object v3

    .line 191
    .end local p3    # "payload":[B
    .local v3, "payload":[B
    if-nez v0, :cond_2

    .line 192
    const/4 v4, 0x0

    .line 193
    .local v4, "senderKeyPair":Ljava/security/KeyPair;
    sget-object v5, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EMPTY_BYTE_ARRAY:[B

    .line 194
    .local v5, "dhSecret":[B
    sget-object v6, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->HKDF_INFO_WITHOUT_PUBLIC_KEY:[B

    .local v6, "hkdfInfo":[B
    goto :goto_1

    .line 196
    .end local v4    # "senderKeyPair":Ljava/security/KeyPair;
    .end local v5    # "dhSecret":[B
    .end local v6    # "hkdfInfo":[B
    :cond_2
    invoke-static {}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->genKeyPair()Ljava/security/KeyPair;

    move-result-object v4

    .line 197
    .restart local v4    # "senderKeyPair":Ljava/security/KeyPair;
    invoke-virtual {v4}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->dhComputeSecret(Ljava/security/PrivateKey;Ljava/security/PublicKey;)[B

    move-result-object v5

    .line 198
    .restart local v5    # "dhSecret":[B
    sget-object v6, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->HKDF_INFO_WITH_PUBLIC_KEY:[B

    .line 201
    .restart local v6    # "hkdfInfo":[B
    :goto_1
    invoke-static {}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->genRandomNonce()[B

    move-result-object v7

    .line 202
    .local v7, "randNonce":[B
    const/4 v8, 0x2

    new-array v9, v8, [[B

    const/4 v10, 0x0

    aput-object v5, v9, v10

    const/4 v11, 0x1

    aput-object v1, v9, v11

    invoke-static {v9}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->concat([[B)[B

    move-result-object v9

    .line 203
    .local v9, "keyingMaterial":[B
    sget-object v12, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->HKDF_SALT:[B

    invoke-static {v9, v12, v6}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->hkdfDeriveKey([B[B[B)Ljavax/crypto/SecretKey;

    move-result-object v12

    .line 204
    .local v12, "encryptionKey":Ljavax/crypto/SecretKey;
    invoke-static {v12, v7, v3, v2}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->aesGcmEncrypt(Ljavax/crypto/SecretKey;[B[B[B)[B

    move-result-object v13

    .line 205
    .local v13, "ciphertext":[B
    const/4 v14, 0x3

    if-nez v4, :cond_3

    .line 206
    new-array v14, v14, [[B

    sget-object v15, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->VERSION:[B

    aput-object v15, v14, v10

    aput-object v7, v14, v11

    aput-object v13, v14, v8

    invoke-static {v14}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->concat([[B)[B

    move-result-object v8

    return-object v8

    .line 208
    :cond_3
    const/4 v15, 0x4

    new-array v15, v15, [[B

    sget-object v16, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->VERSION:[B

    aput-object v16, v15, v10

    .line 209
    invoke-virtual {v4}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->encodePublicKey(Ljava/security/PublicKey;)[B

    move-result-object v10

    aput-object v10, v15, v11

    aput-object v7, v15, v8

    aput-object v13, v15, v14

    .line 208
    invoke-static {v15}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->concat([[B)[B

    move-result-object v8

    return-object v8
.end method

.method public static genKeyPair()Ljava/security/KeyPair;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 139
    const-string v0, "EC"

    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 142
    .local v0, "keyPairGenerator":Ljava/security/KeyPairGenerator;
    :try_start_0
    new-instance v1, Ljava/security/spec/ECGenParameterSpec;

    const-string/jumbo v2, "prime256v1"

    invoke-direct {v1, v2}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 143
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 144
    :catch_0
    move-exception v1

    .line 148
    :try_start_1
    new-instance v1, Ljava/security/spec/ECGenParameterSpec;

    const-string/jumbo v2, "secp256r1"

    invoke-direct {v1, v2}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 149
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v1
    :try_end_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 150
    :catch_1
    move-exception v1

    .line 151
    .local v1, "ex":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    const-string v3, "Unable to find the NIST P-256 curve"

    invoke-direct {v2, v3, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static genRandomNonce()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 444
    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 445
    .local v0, "nonce":[B
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 446
    return-object v0
.end method

.method private static hkdfDeriveKey([B[B[B)Ljavax/crypto/SecretKey;
    .locals 6
    .param p0, "secret"    # [B
    .param p1, "salt"    # [B
    .param p2, "info"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 303
    const-string v0, "HmacSHA256"

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 305
    .local v1, "mac":Ljavax/crypto/Mac;
    :try_start_0
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v2, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    .line 309
    nop

    .line 310
    invoke-virtual {v1, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v2

    .line 313
    .local v2, "pseudorandomKey":[B
    :try_start_1
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v3, v2, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0

    .line 317
    nop

    .line 318
    invoke-virtual {v1, p2}, Ljavax/crypto/Mac;->update([B)V

    .line 320
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->CONSTANT_01:[B

    invoke-virtual {v1, v0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    .line 322
    .local v0, "hkdfOutput":[B
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v4, 0x10

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    const-string v5, "AES"

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v3

    .line 314
    .end local v0    # "hkdfOutput":[B
    :catch_0
    move-exception v0

    .line 316
    .local v0, "ex":Ljava/security/InvalidKeyException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 306
    .end local v0    # "ex":Ljava/security/InvalidKeyException;
    .end local v2    # "pseudorandomKey":[B
    :catch_1
    move-exception v0

    .line 308
    .restart local v0    # "ex":Ljava/security/InvalidKeyException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static readEncryptedPayload(Ljava/nio/ByteBuffer;I)[B
    .locals 4
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/AEADBadTagException;
        }
    .end annotation

    .line 278
    new-array v0, p1, [B

    .line 280
    .local v0, "output":[B
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    nop

    .line 284
    return-object v0

    .line 281
    :catch_0
    move-exception v1

    .line 282
    .local v1, "ex":Ljava/nio/BufferUnderflowException;
    new-instance v2, Ljavax/crypto/AEADBadTagException;

    const-string v3, "The encrypted payload is too short"

    invoke-direct {v2, v3}, Ljavax/crypto/AEADBadTagException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static validateEcPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 4
    .param p0, "x"    # Ljava/math/BigInteger;
    .param p1, "y"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 422
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EC_PARAM_P:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    const-string v1, "Point lies outside of the expected curve"

    if-gez v0, :cond_1

    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EC_PARAM_P:Ljava/math/BigInteger;

    .line 423
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_1

    .line 424
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 425
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 430
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->BIG_INT_02:Ljava/math/BigInteger;

    sget-object v2, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EC_PARAM_P:Ljava/math/BigInteger;

    invoke-virtual {p1, v0, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 431
    .local v0, "lhs":Ljava/math/BigInteger;
    sget-object v2, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->BIG_INT_02:Ljava/math/BigInteger;

    sget-object v3, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EC_PARAM_P:Ljava/math/BigInteger;

    .line 432
    invoke-virtual {p0, v2, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EC_PARAM_A:Ljava/math/BigInteger;

    .line 433
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EC_PARAM_P:Ljava/math/BigInteger;

    .line 434
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 435
    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EC_PARAM_B:Ljava/math/BigInteger;

    .line 436
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EC_PARAM_P:Ljava/math/BigInteger;

    .line 437
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 438
    .local v2, "rhs":Ljava/math/BigInteger;
    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 441
    return-void

    .line 439
    :cond_0
    new-instance v3, Ljava/security/InvalidKeyException;

    invoke-direct {v3, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 426
    .end local v0    # "lhs":Ljava/math/BigInteger;
    .end local v2    # "rhs":Ljava/math/BigInteger;
    :cond_1
    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
