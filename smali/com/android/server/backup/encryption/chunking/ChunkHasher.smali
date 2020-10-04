.class public Lcom/android/server/backup/encryption/chunking/ChunkHasher;
.super Ljava/lang/Object;
.source "ChunkHasher.java"


# static fields
.field private static final MAC_ALGORITHM:Ljava/lang/String; = "HmacSHA256"


# instance fields
.field private final mSecretKey:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>(Ljavax/crypto/SecretKey;)V
    .locals 0
    .param p1, "secretKey"    # Ljavax/crypto/SecretKey;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/server/backup/encryption/chunking/ChunkHasher;->mSecretKey:Ljavax/crypto/SecretKey;

    .line 34
    return-void
.end method


# virtual methods
.method public computeHash([B)Lcom/android/server/backup/encryption/chunk/ChunkHash;
    .locals 3
    .param p1, "plaintext"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 39
    :try_start_0
    const-string v0, "HmacSHA256"

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 40
    .local v0, "mac":Ljavax/crypto/Mac;
    iget-object v1, p0, Lcom/android/server/backup/encryption/chunking/ChunkHasher;->mSecretKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 41
    new-instance v1, Lcom/android/server/backup/encryption/chunk/ChunkHash;

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/backup/encryption/chunk/ChunkHash;-><init>([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 42
    .end local v0    # "mac":Ljavax/crypto/Mac;
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
