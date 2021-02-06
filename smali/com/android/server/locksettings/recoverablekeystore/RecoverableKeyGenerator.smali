.class public Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;
.super Ljava/lang/Object;
.source "RecoverableKeyGenerator.java"


# static fields
.field static final KEY_SIZE_BITS:I = 0x100

.field private static final RESULT_CANNOT_INSERT_ROW:I = -0x1

.field private static final SECRET_KEY_ALGORITHM:Ljava/lang/String; = "AES"

.field private static final TAG:Ljava/lang/String; = "PlatformKeyGen"


# instance fields
.field private final mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

.field private final mKeyGenerator:Ljavax/crypto/KeyGenerator;


# direct methods
.method private constructor <init>(Ljavax/crypto/KeyGenerator;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;)V
    .locals 0
    .param p1, "keyGenerator"    # Ljavax/crypto/KeyGenerator;
    .param p2, "recoverableKeyStoreDb"    # Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;->mKeyGenerator:Ljavax/crypto/KeyGenerator;

    .line 74
    iput-object p2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 75
    return-void
.end method

.method public static newInstance(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;)Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;
    .locals 2
    .param p0, "database"    # Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 63
    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 64
    .local v0, "keyGenerator":Ljavax/crypto/KeyGenerator;
    new-instance v1, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;

    invoke-direct {v1, v0, p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;-><init>(Ljavax/crypto/KeyGenerator;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;)V

    return-object v1
.end method


# virtual methods
.method public generateAndStoreKey(Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;IILjava/lang/String;[B)[B
    .locals 10
    .param p1, "platformKey"    # Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;
    .param p2, "userId"    # I
    .param p3, "uid"    # I
    .param p4, "alias"    # Ljava/lang/String;
    .param p5, "metadata"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStorageException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;->mKeyGenerator:Ljavax/crypto/KeyGenerator;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 102
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;->mKeyGenerator:Ljavax/crypto/KeyGenerator;

    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 104
    .local v0, "key":Ljavax/crypto/SecretKey;
    invoke-static {p1, v0, p5}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->fromSecretKey(Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;Ljavax/crypto/SecretKey;[B)Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;

    move-result-object v1

    .line 105
    .local v1, "wrappedKey":Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v2, p2, p3, p4, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->insertKey(IILjava/lang/String;Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;)J

    move-result-wide v2

    .line 107
    .local v2, "result":J
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 113
    iget-object v4, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v4, p2, p3, v5}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setShouldCreateSnapshot(IIZ)J

    move-result-wide v4

    .line 114
    .local v4, "updatedRows":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_0

    .line 115
    const-string v6, "PlatformKeyGen"

    const-string v7, "Failed to set the shoudCreateSnapshot flag in the local DB."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v6

    return-object v6

    .line 108
    .end local v4    # "updatedRows":J
    :cond_1
    new-instance v4, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStorageException;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 110
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    aput-object p4, v7, v5

    .line 109
    const-string v5, "Failed writing (%d, %s) to database."

    invoke-static {v6, v5, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStorageException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public importKey(Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;IILjava/lang/String;[B[B)V
    .locals 17
    .param p1, "platformKey"    # Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;
    .param p2, "userId"    # I
    .param p3, "uid"    # I
    .param p4, "alias"    # Ljava/lang/String;
    .param p5, "keyBytes"    # [B
    .param p6, "metadata"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStorageException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 146
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "AES"

    move-object/from16 v6, p5

    invoke-direct {v4, v6, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 148
    .local v4, "key":Ljavax/crypto/SecretKey;
    move-object/from16 v5, p1

    move-object/from16 v7, p6

    invoke-static {v5, v4, v7}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->fromSecretKey(Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;Ljavax/crypto/SecretKey;[B)Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;

    move-result-object v8

    .line 149
    .local v8, "wrappedKey":Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;
    iget-object v9, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v9, v1, v2, v3, v8}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->insertKey(IILjava/lang/String;Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;)J

    move-result-wide v9

    .line 151
    .local v9, "result":J
    const-wide/16 v11, -0x1

    cmp-long v11, v9, v11

    const/4 v12, 0x1

    if-eqz v11, :cond_0

    .line 157
    iget-object v11, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v11, v1, v2, v12}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setShouldCreateSnapshot(IIZ)J

    .line 158
    return-void

    .line 152
    :cond_0
    new-instance v11, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStorageException;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 154
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    aput-object v3, v14, v12

    .line 153
    const-string v12, "Failed writing (%d, %s) to database."

    invoke-static {v13, v12, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStorageException;-><init>(Ljava/lang/String;)V

    throw v11
.end method
