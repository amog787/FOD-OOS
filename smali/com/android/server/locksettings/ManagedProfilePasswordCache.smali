.class public Lcom/android/server/locksettings/ManagedProfilePasswordCache;
.super Ljava/lang/Object;
.source "ManagedProfilePasswordCache.java"


# static fields
.field private static final CACHE_TIMEOUT_SECONDS:I

.field private static final KEY_LENGTH:I = 0x100

.field private static final TAG:Ljava/lang/String; = "ManagedProfilePasswordCache"


# instance fields
.field private final mEncryptedPasswords:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[B>;"
        }
    .end annotation
.end field

.field private final mKeyStore:Ljava/security/KeyStore;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 67
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->CACHE_TIMEOUT_SECONDS:I

    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;Landroid/os/UserManager;)V
    .locals 1
    .param p1, "keyStore"    # Ljava/security/KeyStore;
    .param p2, "userManager"    # Landroid/os/UserManager;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    .line 74
    iput-object p1, p0, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->mKeyStore:Ljava/security/KeyStore;

    .line 75
    iput-object p2, p0, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->mUserManager:Landroid/os/UserManager;

    .line 76
    return-void
.end method

.method private static getEncryptionKeyName(I)Ljava/lang/String;
    .locals 2
    .param p0, "userId"    # I

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.android.server.locksettings.unified_profile_cache_v2_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getLegacyEncryptionKeyName(I)Ljava/lang/String;
    .locals 2
    .param p0, "userId"    # I

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.android.server.locksettings.unified_profile_cache_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public removePassword(I)V
    .locals 6
    .param p1, "userId"    # I

    .line 175
    iget-object v0, p0, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    monitor-enter v0

    .line 176
    :try_start_0
    invoke-static {p1}, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->getEncryptionKeyName(I)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "keyName":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->getLegacyEncryptionKeyName(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    .local v2, "legacyKeyName":Ljava/lang/String;
    :try_start_1
    iget-object v3, p0, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v3, v1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 180
    iget-object v3, p0, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v3, v1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 182
    :cond_0
    iget-object v3, p0, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v3, v2}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 183
    iget-object v3, p0, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v3, v2}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    :cond_1
    goto :goto_0

    .line 185
    :catch_0
    move-exception v3

    .line 186
    .local v3, "e":Ljava/security/KeyStoreException;
    :try_start_2
    const-string v4, "ManagedProfilePasswordCache"

    const-string v5, "Cannot delete key"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    .end local v3    # "e":Ljava/security/KeyStoreException;
    :goto_0
    iget-object v3, p0, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 189
    iget-object v3, p0, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 190
    iget-object v3, p0, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 192
    .end local v1    # "keyName":Ljava/lang/String;
    .end local v2    # "legacyKeyName":Ljava/lang/String;
    :cond_2
    monitor-exit v0

    .line 193
    return-void

    .line 192
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public retrievePassword(I)Lcom/android/internal/widget/LockscreenCredential;
    .locals 10
    .param p1, "userId"    # I

    .line 138
    iget-object v0, p0, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    monitor-enter v0

    .line 139
    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 140
    .local v1, "block":[B
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 141
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 145
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->mKeyStore:Ljava/security/KeyStore;

    invoke-static {p1}, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->getEncryptionKeyName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v3
    :try_end_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    .local v3, "key":Ljava/security/Key;
    nop

    .line 150
    if-nez v3, :cond_1

    .line 151
    :try_start_2
    monitor-exit v0

    return-object v2

    .line 153
    :cond_1
    const/16 v4, 0xc

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    .line 154
    .local v5, "iv":[B
    array-length v6, v1

    invoke-static {v1, v4, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 157
    .local v4, "ciphertext":[B
    :try_start_3
    const-string v6, "AES/GCM/NoPadding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    .line 158
    .local v6, "cipher":Ljavax/crypto/Cipher;
    const/4 v7, 0x2

    new-instance v8, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v9, 0x80

    invoke-direct {v8, v9, v5}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    invoke-virtual {v6, v7, v3, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 159
    invoke-virtual {v6, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2
    :try_end_3
    .catch Landroid/security/keystore/UserNotAuthenticatedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 166
    .end local v6    # "cipher":Ljavax/crypto/Cipher;
    .local v2, "credential":[B
    nop

    .line 167
    :try_start_4
    invoke-static {v2}, Lcom/android/internal/widget/LockscreenCredential;->createManagedPassword([B)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v6

    .line 168
    .local v6, "result":Lcom/android/internal/widget/LockscreenCredential;
    const/4 v7, 0x0

    invoke-static {v2, v7}, Ljava/util/Arrays;->fill([BB)V

    .line 169
    monitor-exit v0

    return-object v6

    .line 163
    .end local v2    # "credential":[B
    .end local v6    # "result":Lcom/android/internal/widget/LockscreenCredential;
    :catch_0
    move-exception v6

    .line 164
    .local v6, "e":Ljava/security/GeneralSecurityException;
    const-string v7, "ManagedProfilePasswordCache"

    const-string v8, "Cannot decrypt"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    monitor-exit v0

    return-object v2

    .line 160
    .end local v6    # "e":Ljava/security/GeneralSecurityException;
    :catch_1
    move-exception v6

    .line 161
    .local v6, "e":Landroid/security/keystore/UserNotAuthenticatedException;
    const-string v7, "ManagedProfilePasswordCache"

    const-string v8, "Device not unlocked for more than 7 days"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    monitor-exit v0

    return-object v2

    .line 146
    .end local v3    # "key":Ljava/security/Key;
    .end local v4    # "ciphertext":[B
    .end local v5    # "iv":[B
    .end local v6    # "e":Landroid/security/keystore/UserNotAuthenticatedException;
    :catch_2
    move-exception v3

    .line 147
    .local v3, "e":Ljava/security/GeneralSecurityException;
    const-string v4, "ManagedProfilePasswordCache"

    const-string v5, "Cannot get key"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    monitor-exit v0

    return-object v2

    .line 170
    .end local v1    # "block":[B
    .end local v3    # "e":Ljava/security/GeneralSecurityException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public storePassword(ILcom/android/internal/widget/LockscreenCredential;)V
    .locals 12
    .param p1, "userId"    # I
    .param p2, "password"    # Lcom/android/internal/widget/LockscreenCredential;

    .line 83
    iget-object v0, p0, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    monitor-enter v0

    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    monitor-exit v0

    return-void

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 88
    .local v1, "parent":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_2

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    if-eqz v2, :cond_1

    goto/16 :goto_1

    .line 93
    :cond_1
    invoke-static {p1}, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->getEncryptionKeyName(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    .local v2, "keyName":Ljava/lang/String;
    :try_start_1
    const-string v3, "AES"

    const-string v4, "AndroidKeyStore"

    invoke-static {v3, v4}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v3

    .line 99
    .local v3, "generator":Ljavax/crypto/KeyGenerator;
    new-instance v4, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v5, 0x3

    invoke-direct {v4, v2, v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const/16 v5, 0x100

    .line 101
    invoke-virtual {v4, v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v4

    const-string v5, "GCM"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    .line 102
    invoke-virtual {v4, v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v4

    const-string v5, "NoPadding"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    .line 103
    invoke-virtual {v4, v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v4

    .line 105
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v4

    sget v6, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->CACHE_TIMEOUT_SECONDS:I

    .line 106
    invoke-virtual {v4, v6}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationValidityDurationSeconds(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v4

    .line 107
    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v4

    .line 99
    invoke-virtual {v3, v4}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 108
    invoke-virtual {v3}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    .local v4, "key":Ljavax/crypto/SecretKey;
    nop

    .line 121
    :try_start_2
    const-string v6, "AES/GCM/NoPadding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    .line 122
    .local v6, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v6, v5, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 123
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v5

    invoke-virtual {v6, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    .line 124
    .local v5, "ciphertext":[B
    invoke-virtual {v6}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v7

    .line 125
    .local v7, "iv":[B
    array-length v8, v5

    array-length v9, v7

    add-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v8

    .line 126
    .local v8, "block":[B
    const/4 v9, 0x0

    array-length v10, v7

    array-length v11, v5

    invoke-static {v5, v9, v8, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    iget-object v9, p0, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    invoke-virtual {v9, p1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    .end local v5    # "ciphertext":[B
    .end local v7    # "iv":[B
    .end local v8    # "block":[B
    goto :goto_0

    .line 128
    .end local v6    # "cipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v5

    .line 129
    .local v5, "e":Ljava/security/GeneralSecurityException;
    :try_start_3
    const-string v6, "ManagedProfilePasswordCache"

    const-string v7, "Cannot encrypt"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    .end local v1    # "parent":Landroid/content/pm/UserInfo;
    .end local v2    # "keyName":Ljava/lang/String;
    .end local v3    # "generator":Ljavax/crypto/KeyGenerator;
    .end local v4    # "key":Ljavax/crypto/SecretKey;
    .end local v5    # "e":Ljava/security/GeneralSecurityException;
    :goto_0
    monitor-exit v0

    .line 132
    return-void

    .line 113
    .restart local v1    # "parent":Landroid/content/pm/UserInfo;
    .restart local v2    # "keyName":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 115
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "ManagedProfilePasswordCache"

    const-string v5, "Cannot generate key"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    monitor-exit v0

    return-void

    .line 91
    .end local v2    # "keyName":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    .line 131
    .end local v1    # "parent":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
