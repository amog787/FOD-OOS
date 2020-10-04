.class public Lcom/android/server/backup/encryption/keys/TertiaryKeyGenerator;
.super Ljava/lang/Object;
.source "TertiaryKeyGenerator.java"


# static fields
.field private static final KEY_ALGORITHM:Ljava/lang/String; = "AES"

.field private static final KEY_SIZE_BITS:I = 0x100


# instance fields
.field private final mKeyGenerator:Ljavax/crypto/KeyGenerator;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 3
    .param p1, "secureRandom"    # Ljava/security/SecureRandom;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    :try_start_0
    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/encryption/keys/TertiaryKeyGenerator;->mKeyGenerator:Ljavax/crypto/KeyGenerator;

    .line 36
    iget-object v0, p0, Lcom/android/server/backup/encryption/keys/TertiaryKeyGenerator;->mKeyGenerator:Ljavax/crypto/KeyGenerator;

    const/16 v1, 0x100

    invoke-virtual {v0, v1, p1}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    nop

    .line 41
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Impossible condition: JCE thinks it does not support AES."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public generate()Ljavax/crypto/SecretKey;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/android/server/backup/encryption/keys/TertiaryKeyGenerator;->mKeyGenerator:Ljavax/crypto/KeyGenerator;

    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method
