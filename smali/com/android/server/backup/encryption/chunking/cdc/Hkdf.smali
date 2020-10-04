.class public final Lcom/android/server/backup/encryption/chunking/cdc/Hkdf;
.super Ljava/lang/Object;
.source "Hkdf.java"


# static fields
.field private static final AES:Ljava/lang/String; = "AES"

.field private static final CONSTANT_01:[B

.field private static final HmacSHA256:Ljava/lang/String; = "HmacSHA256"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    sput-object v1, Lcom/android/server/backup/encryption/chunking/cdc/Hkdf;->CONSTANT_01:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static hkdf([B[B[B)[B
    .locals 1
    .param p0, "masterKey"    # [B
    .param p1, "salt"    # [B
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 52
    const-string v0, "HKDF requires master key to be set."

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v0, "HKDF requires a salt."

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v0, "No data provided to HKDF."

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-static {p0, p1}, Lcom/android/server/backup/encryption/chunking/cdc/Hkdf;->hkdfSha256Extract([B[B)[B

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/backup/encryption/chunking/cdc/Hkdf;->hkdfSha256Expand([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static hkdfSha256Expand([B[B)[B
    .locals 3
    .param p0, "pseudoRandomKey"    # [B
    .param p1, "info"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 104
    :try_start_0
    const-string v0, "HmacSHA256"

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .local v0, "sha256":Ljavax/crypto/Mac;
    nop

    .line 109
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, p0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 111
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update([B)V

    .line 112
    sget-object v1, Lcom/android/server/backup/encryption/chunking/cdc/Hkdf;->CONSTANT_01:[B

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->update([B)V

    .line 113
    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v1

    return-object v1

    .line 105
    .end local v0    # "sha256":Ljavax/crypto/Mac;
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private static hkdfSha256Extract([B[B)[B
    .locals 3
    .param p0, "inputKeyMaterial"    # [B
    .param p1, "salt"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 77
    :try_start_0
    const-string v0, "HmacSHA256"

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .local v0, "sha256":Ljavax/crypto/Mac;
    nop

    .line 82
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 84
    invoke-virtual {v0, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v1

    return-object v1

    .line 78
    .end local v0    # "sha256":Ljavax/crypto/Mac;
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
