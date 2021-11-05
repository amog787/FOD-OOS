.class Lcom/android/server/locksettings/SP800Derive;
.super Ljava/lang/Object;
.source "SP800Derive.java"


# instance fields
.field private final mKeyBytes:[B


# direct methods
.method constructor <init>([B)V
    .locals 0
    .param p1, "keyBytes"    # [B

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/server/locksettings/SP800Derive;->mKeyBytes:[B

    .line 41
    return-void
.end method

.method private getMac()Ljavax/crypto/Mac;
    .locals 4

    .line 45
    :try_start_0
    const-string v0, "HmacSHA256"

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 46
    .local v0, "m":Ljavax/crypto/Mac;
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lcom/android/server/locksettings/SP800Derive;->mKeyBytes:[B

    invoke-virtual {v0}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    return-object v0

    .line 48
    .end local v0    # "m":Ljavax/crypto/Mac;
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static update32(Ljavax/crypto/Mac;I)V
    .locals 1
    .param p0, "m"    # Ljavax/crypto/Mac;
    .param p1, "v"    # I

    .line 54
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/crypto/Mac;->update([B)V

    .line 55
    return-void
.end method


# virtual methods
.method public fixedInput([B)[B
    .locals 2
    .param p1, "fixedInput"    # [B

    .line 61
    invoke-direct {p0}, Lcom/android/server/locksettings/SP800Derive;->getMac()Ljavax/crypto/Mac;

    move-result-object v0

    .line 62
    .local v0, "m":Ljavax/crypto/Mac;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/locksettings/SP800Derive;->update32(Ljavax/crypto/Mac;I)V

    .line 63
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update([B)V

    .line 64
    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v1

    return-object v1
.end method

.method public withContext([B[B)[B
    .locals 2
    .param p1, "label"    # [B
    .param p2, "context"    # [B

    .line 72
    invoke-direct {p0}, Lcom/android/server/locksettings/SP800Derive;->getMac()Ljavax/crypto/Mac;

    move-result-object v0

    .line 74
    .local v0, "m":Ljavax/crypto/Mac;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/locksettings/SP800Derive;->update32(Ljavax/crypto/Mac;I)V

    .line 75
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update([B)V

    .line 76
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->update(B)V

    .line 77
    invoke-virtual {v0, p2}, Ljavax/crypto/Mac;->update([B)V

    .line 78
    array-length v1, p2

    mul-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Lcom/android/server/locksettings/SP800Derive;->update32(Ljavax/crypto/Mac;I)V

    .line 79
    const/16 v1, 0x100

    invoke-static {v0, v1}, Lcom/android/server/locksettings/SP800Derive;->update32(Ljavax/crypto/Mac;I)V

    .line 80
    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v1

    return-object v1
.end method
