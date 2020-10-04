.class public Lcom/android/server/backup/encryption/chunking/ChunkEncryptor;
.super Ljava/lang/Object;
.source "ChunkEncryptor.java"


# static fields
.field private static final CIPHER_ALGORITHM:Ljava/lang/String; = "AES/GCM/NoPadding"

.field private static final GCM_NONCE_LENGTH_BYTES:I = 0xc

.field private static final GCM_TAG_LENGTH_BYTES:I = 0x10


# instance fields
.field private final mSecretKey:Ljavax/crypto/SecretKey;

.field private final mSecureRandom:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Ljavax/crypto/SecretKey;Ljava/security/SecureRandom;)V
    .locals 0
    .param p1, "secretKey"    # Ljavax/crypto/SecretKey;
    .param p2, "secureRandom"    # Ljava/security/SecureRandom;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/server/backup/encryption/chunking/ChunkEncryptor;->mSecretKey:Ljavax/crypto/SecretKey;

    .line 46
    iput-object p2, p0, Lcom/android/server/backup/encryption/chunking/ChunkEncryptor;->mSecureRandom:Ljava/security/SecureRandom;

    .line 47
    return-void
.end method

.method private generateNonce()[B
    .locals 2

    .line 86
    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 87
    .local v0, "nonce":[B
    iget-object v1, p0, Lcom/android/server/backup/encryption/chunking/ChunkEncryptor;->mSecureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 88
    return-object v0
.end method


# virtual methods
.method public encrypt(Lcom/android/server/backup/encryption/chunk/ChunkHash;[B)Lcom/android/server/backup/encryption/chunking/EncryptedChunk;
    .locals 6
    .param p1, "plaintextHash"    # Lcom/android/server/backup/encryption/chunk/ChunkHash;
    .param p2, "plaintext"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Lcom/android/server/backup/encryption/chunking/ChunkEncryptor;->generateNonce()[B

    move-result-object v0

    .line 63
    .local v0, "nonce":[B
    :try_start_0
    const-string v1, "AES/GCM/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 64
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/backup/encryption/chunking/ChunkEncryptor;->mSecretKey:Ljavax/crypto/SecretKey;

    new-instance v4, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v5, 0x80

    invoke-direct {v4, v5, v0}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    invoke-virtual {v1, v2, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1

    .line 73
    nop

    .line 76
    :try_start_1
    invoke-virtual {v1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2
    :try_end_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 80
    .local v2, "encryptedBytes":[B
    nop

    .line 82
    invoke-static {p1, v0, v2}, Lcom/android/server/backup/encryption/chunking/EncryptedChunk;->create(Lcom/android/server/backup/encryption/chunk/ChunkHash;[B[B)Lcom/android/server/backup/encryption/chunking/EncryptedChunk;

    move-result-object v3

    return-object v3

    .line 77
    .end local v2    # "encryptedBytes":[B
    :catch_0
    move-exception v2

    .line 79
    .local v2, "e":Ljavax/crypto/BadPaddingException;
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "Impossible: threw BadPaddingException in encrypt mode."

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 68
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "e":Ljavax/crypto/BadPaddingException;
    :catch_1
    move-exception v1

    .line 72
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method
