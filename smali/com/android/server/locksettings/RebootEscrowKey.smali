.class Lcom/android/server/locksettings/RebootEscrowKey;
.super Ljava/lang/Object;
.source "RebootEscrowKey.java"


# static fields
.field private static final KEY_ALGO:Ljava/lang/String; = "AES"

.field private static final KEY_SIZE_BITS:I = 0x100


# instance fields
.field private final mKey:Ljavax/crypto/SecretKey;


# direct methods
.method private constructor <init>(Ljavax/crypto/SecretKey;)V
    .locals 0
    .param p1, "key"    # Ljavax/crypto/SecretKey;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/server/locksettings/RebootEscrowKey;->mKey:Ljavax/crypto/SecretKey;

    .line 42
    return-void
.end method

.method static fromKeyBytes([B)Lcom/android/server/locksettings/RebootEscrowKey;
    .locals 3
    .param p0, "keyBytes"    # [B

    .line 45
    new-instance v0, Lcom/android/server/locksettings/RebootEscrowKey;

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, p0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/RebootEscrowKey;-><init>(Ljavax/crypto/SecretKey;)V

    return-object v0
.end method

.method static generate()Lcom/android/server/locksettings/RebootEscrowKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    :try_start_0
    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 52
    .local v0, "keyGenerator":Ljavax/crypto/KeyGenerator;
    const/16 v1, 0x100

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 53
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 56
    .local v0, "secretKey":Ljavax/crypto/SecretKey;
    nop

    .line 57
    new-instance v1, Lcom/android/server/locksettings/RebootEscrowKey;

    invoke-direct {v1, v0}, Lcom/android/server/locksettings/RebootEscrowKey;-><init>(Ljavax/crypto/SecretKey;)V

    return-object v1

    .line 54
    .end local v0    # "secretKey":Ljavax/crypto/SecretKey;
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Could not generate new secret key"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method getKey()Ljavax/crypto/SecretKey;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowKey;->mKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method getKeyBytes()[B
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowKey;->mKey:Ljavax/crypto/SecretKey;

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method
