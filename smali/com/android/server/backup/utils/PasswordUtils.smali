.class public Lcom/android/server/backup/utils/PasswordUtils;
.super Ljava/lang/Object;
.source "PasswordUtils.java"


# static fields
.field public static final ENCRYPTION_ALGORITHM_NAME:Ljava/lang/String; = "AES-256"

.field public static final PBKDF2_HASH_ROUNDS:I = 0x2710

.field private static final PBKDF2_KEY_SIZE:I = 0x100

.field public static final PBKDF2_SALT_SIZE:I = 0x200


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildCharArrayKey(Ljava/lang/String;[C[BI)Ljavax/crypto/SecretKey;
    .locals 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "pwArray"    # [C
    .param p2, "salt"    # [B
    .param p3, "rounds"    # I

    .line 125
    const-string v0, "BackupManagerService"

    :try_start_0
    invoke-static {p0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 126
    .local v1, "keyFactory":Ljavax/crypto/SecretKeyFactory;
    new-instance v2, Ljavax/crypto/spec/PBEKeySpec;

    const/16 v3, 0x100

    invoke-direct {v2, p1, p2, p3, v3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 127
    .local v2, "ks":Ljava/security/spec/KeySpec;
    invoke-virtual {v1, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 130
    .end local v1    # "keyFactory":Ljavax/crypto/SecretKeyFactory;
    .end local v2    # "ks":Ljava/security/spec/KeySpec;
    :catch_0
    move-exception v1

    .line 131
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v2, "PBKDF2 unavailable!"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 128
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 129
    .local v1, "e":Ljava/security/spec/InvalidKeySpecException;
    const-string v2, "Invalid key spec for PBKDF2!"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .end local v1    # "e":Ljava/security/spec/InvalidKeySpecException;
    nop

    .line 133
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static buildPasswordHash(Ljava/lang/String;Ljava/lang/String;[BI)Ljava/lang/String;
    .locals 2
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "pw"    # Ljava/lang/String;
    .param p2, "salt"    # [B
    .param p3, "rounds"    # I

    .line 66
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/backup/utils/PasswordUtils;->buildPasswordKey(Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 67
    .local v0, "key":Ljavax/crypto/SecretKey;
    if-eqz v0, :cond_0

    .line 68
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/backup/utils/PasswordUtils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 70
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static buildPasswordKey(Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;
    .locals 1
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "pw"    # Ljava/lang/String;
    .param p2, "salt"    # [B
    .param p3, "rounds"    # I

    .line 52
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/android/server/backup/utils/PasswordUtils;->buildCharArrayKey(Ljava/lang/String;[C[BI)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method public static byteArrayToHex([B)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # [B

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 78
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 79
    aget-byte v2, p0, v1

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Byte;->toHexString(BZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static hexToByteArray(Ljava/lang/String;)[B
    .locals 6
    .param p0, "digits"    # Ljava/lang/String;

    .line 88
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 89
    .local v0, "bytes":I
    mul-int/lit8 v1, v0, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 93
    new-array v1, v0, [B

    .line 94
    .local v1, "result":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 95
    div-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v2, 0x2

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 94
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 97
    .end local v2    # "i":I
    :cond_0
    return-object v1

    .line 90
    .end local v1    # "result":[B
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Hex string must have an even number of digits"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static makeKeyChecksum(Ljava/lang/String;[B[BI)[B
    .locals 3
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "pwBytes"    # [B
    .param p2, "salt"    # [B
    .param p3, "rounds"    # I

    .line 113
    array-length v0, p1

    new-array v0, v0, [C

    .line 114
    .local v0, "mkAsChar":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 115
    aget-byte v2, p1, v1

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    .end local v1    # "i":I
    :cond_0
    invoke-static {p0, v0, p2, p3}, Lcom/android/server/backup/utils/PasswordUtils;->buildCharArrayKey(Ljava/lang/String;[C[BI)Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 119
    .local v1, "checksum":Ljava/security/Key;
    invoke-interface {v1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    return-object v2
.end method
