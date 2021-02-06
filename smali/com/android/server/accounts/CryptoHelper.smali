.class Lcom/android/server/accounts/CryptoHelper;
.super Ljava/lang/Object;
.source "CryptoHelper.java"


# static fields
.field private static final CIPHER_ALGORITHM:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static final IV_LENGTH:I = 0x10

.field private static final KEY_ALGORITHM:Ljava/lang/String; = "AES"

.field private static final KEY_CIPHER:Ljava/lang/String; = "cipher"

.field private static final KEY_IV:Ljava/lang/String; = "iv"

.field private static final KEY_MAC:Ljava/lang/String; = "mac"

.field private static final MAC_ALGORITHM:Ljava/lang/String; = "HMACSHA256"

.field private static final TAG:Ljava/lang/String; = "Account"

.field private static sInstance:Lcom/android/server/accounts/CryptoHelper;


# instance fields
.field private final mEncryptionKey:Ljavax/crypto/SecretKey;

.field private final mMacKey:Ljavax/crypto/SecretKey;


# direct methods
.method private constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 50
    .local v0, "kgen":Ljavax/crypto/KeyGenerator;
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accounts/CryptoHelper;->mEncryptionKey:Ljavax/crypto/SecretKey;

    .line 52
    const-string v1, "HMACSHA256"

    invoke-static {v1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accounts/CryptoHelper;->mMacKey:Ljavax/crypto/SecretKey;

    .line 54
    return-void
.end method

.method private static constantTimeArrayEquals([B[B)Z
    .locals 6
    .param p0, "a"    # [B
    .param p1, "b"    # [B

    .line 125
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_2

    .line 128
    :cond_0
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_1

    .line 129
    return v1

    .line 131
    :cond_1
    const/4 v2, 0x1

    .line 132
    .local v2, "isEqual":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_3

    .line 133
    aget-byte v4, p0, v3

    aget-byte v5, p1, v3

    if-ne v4, v5, :cond_2

    move v4, v0

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    and-int/2addr v2, v4

    .line 132
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 135
    .end local v3    # "i":I
    :cond_3
    return v2

    .line 126
    .end local v2    # "isEqual":Z
    :cond_4
    :goto_2
    if-ne p0, p1, :cond_5

    goto :goto_3

    :cond_5
    move v0, v1

    :goto_3
    return v0
.end method

.method private createMac([B[B)[B
    .locals 2
    .param p1, "cipher"    # [B
    .param p2, "iv"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 117
    const-string v0, "HMACSHA256"

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 118
    .local v0, "mac":Ljavax/crypto/Mac;
    iget-object v1, p0, Lcom/android/server/accounts/CryptoHelper;->mMacKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 119
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update([B)V

    .line 120
    invoke-virtual {v0, p2}, Ljavax/crypto/Mac;->update([B)V

    .line 121
    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v1

    return-object v1
.end method

.method static declared-synchronized getInstance()Lcom/android/server/accounts/CryptoHelper;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-class v0, Lcom/android/server/accounts/CryptoHelper;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Lcom/android/server/accounts/CryptoHelper;->sInstance:Lcom/android/server/accounts/CryptoHelper;

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Lcom/android/server/accounts/CryptoHelper;

    invoke-direct {v1}, Lcom/android/server/accounts/CryptoHelper;-><init>()V

    sput-object v1, Lcom/android/server/accounts/CryptoHelper;->sInstance:Lcom/android/server/accounts/CryptoHelper;

    .line 45
    :cond_0
    sget-object v1, Lcom/android/server/accounts/CryptoHelper;->sInstance:Lcom/android/server/accounts/CryptoHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 41
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private verifyMac([B[B[B)Z
    .locals 2
    .param p1, "cipherArray"    # [B
    .param p2, "iv"    # [B
    .param p3, "macArray"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 105
    if-eqz p1, :cond_1

    array-length v0, p1

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    array-length v0, p3

    if-nez v0, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/CryptoHelper;->createMac([B[B)[B

    move-result-object v0

    invoke-static {p3, v0}, Lcom/android/server/accounts/CryptoHelper;->constantTimeArrayEquals([B[B)Z

    move-result v0

    return v0

    .line 107
    :cond_1
    :goto_0
    const/4 v0, 0x2

    const-string v1, "Account"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    const-string v0, "Cipher or MAC is empty!"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_2
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method decryptBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 80
    const-string v0, "Cannot decrypt null bundle."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    const-string/jumbo v0, "iv"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 82
    .local v0, "iv":[B
    const-string v1, "cipher"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 83
    .local v1, "encryptedBytes":[B
    const-string/jumbo v2, "mac"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 84
    .local v2, "mac":[B
    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/accounts/CryptoHelper;->verifyMac([B[B[B)Z

    move-result v3

    if-nez v3, :cond_0

    .line 85
    const-string v3, "Account"

    const-string v4, "Escrow mac mismatched!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v3, 0x0

    return-object v3

    .line 89
    :cond_0
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 90
    .local v3, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    const-string v4, "AES/CBC/PKCS5Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    .line 91
    .local v4, "cipher":Ljavax/crypto/Cipher;
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/server/accounts/CryptoHelper;->mEncryptionKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v4, v5, v6, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 92
    invoke-virtual {v4, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    .line 94
    .local v5, "decryptedBytes":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 95
    .local v6, "decryptedParcel":Landroid/os/Parcel;
    array-length v7, v5

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8, v7}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 96
    invoke-virtual {v6, v8}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 97
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 98
    .local v7, "decryptedBundle":Landroid/os/Bundle;
    invoke-virtual {v7, v6}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 99
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 100
    return-object v7
.end method

.method encryptBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 58
    const-string v0, "Cannot encrypt null bundle."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 60
    .local v0, "parcel":Landroid/os/Parcel;
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 61
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    .line 62
    .local v1, "clearBytes":[B
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 64
    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 65
    .local v2, "cipher":Ljavax/crypto/Cipher;
    iget-object v3, p0, Lcom/android/server/accounts/CryptoHelper;->mEncryptionKey:Ljavax/crypto/SecretKey;

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 66
    invoke-virtual {v2, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 67
    .local v3, "encryptedBytes":[B
    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v4

    .line 68
    .local v4, "iv":[B
    invoke-direct {p0, v3, v4}, Lcom/android/server/accounts/CryptoHelper;->createMac([B[B)[B

    move-result-object v5

    .line 70
    .local v5, "mac":[B
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 71
    .local v6, "encryptedBundle":Landroid/os/Bundle;
    const-string v7, "cipher"

    invoke-virtual {v6, v7, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 72
    const-string/jumbo v7, "mac"

    invoke-virtual {v6, v7, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 73
    const-string/jumbo v7, "iv"

    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 75
    return-object v6
.end method
