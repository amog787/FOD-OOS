.class public final Lcom/android/server/backup/BackupPasswordManager;
.super Ljava/lang/Object;
.source "BackupPasswordManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/BackupPasswordManager$PasswordHashFileCodec;,
        Lcom/android/server/backup/BackupPasswordManager$PasswordVersionFileCodec;,
        Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;
    }
.end annotation


# static fields
.field private static final BACKUP_PW_FILE_VERSION:I = 0x2

.field private static final DEBUG:Z = false

.field private static final DEFAULT_PW_FILE_VERSION:I = 0x1

.field private static final PASSWORD_HASH_FILE_NAME:Ljava/lang/String; = "pwhash"

.field private static final PASSWORD_VERSION_FILE_NAME:Ljava/lang/String; = "pwversion"

.field public static final PBKDF_CURRENT:Ljava/lang/String; = "PBKDF2WithHmacSHA1"

.field public static final PBKDF_FALLBACK:Ljava/lang/String; = "PBKDF2WithHmacSHA1And8bit"

.field private static final TAG:Ljava/lang/String; = "BackupPasswordManager"


# instance fields
.field private final mBaseStateDir:Ljava/io/File;

.field private final mContext:Landroid/content/Context;

.field private mPasswordHash:Ljava/lang/String;

.field private mPasswordSalt:[B

.field private mPasswordVersion:I

.field private final mRng:Ljava/security/SecureRandom;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/security/SecureRandom;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "baseStateDir"    # Ljava/io/File;
    .param p3, "secureRandom"    # Ljava/security/SecureRandom;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/server/backup/BackupPasswordManager;->mContext:Landroid/content/Context;

    .line 73
    iput-object p3, p0, Lcom/android/server/backup/BackupPasswordManager;->mRng:Ljava/security/SecureRandom;

    .line 74
    iput-object p2, p0, Lcom/android/server/backup/BackupPasswordManager;->mBaseStateDir:Ljava/io/File;

    .line 75
    invoke-direct {p0}, Lcom/android/server/backup/BackupPasswordManager;->loadStateFromFilesystem()V

    .line 76
    return-void
.end method

.method private clearPassword()Z
    .locals 3

    .line 163
    invoke-direct {p0}, Lcom/android/server/backup/BackupPasswordManager;->getPasswordHashFile()Ljava/io/File;

    move-result-object v0

    .line 164
    .local v0, "passwordHashFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    const-string v1, "BackupPasswordManager"

    const-string v2, "Unable to clear backup password"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/4 v1, 0x0

    return v1

    .line 169
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordHash:Ljava/lang/String;

    .line 170
    iput-object v1, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordSalt:[B

    .line 171
    const/4 v1, 0x1

    return v1
.end method

.method private getPasswordHashFile()Ljava/io/File;
    .locals 3

    .line 245
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/BackupPasswordManager;->mBaseStateDir:Ljava/io/File;

    const-string/jumbo v2, "pwhash"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getPasswordHashFileCodec()Lcom/android/server/backup/utils/DataStreamFileCodec;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/backup/utils/DataStreamFileCodec<",
            "Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;",
            ">;"
        }
    .end annotation

    .line 241
    new-instance v0, Lcom/android/server/backup/utils/DataStreamFileCodec;

    invoke-direct {p0}, Lcom/android/server/backup/BackupPasswordManager;->getPasswordHashFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Lcom/android/server/backup/BackupPasswordManager$PasswordHashFileCodec;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/backup/BackupPasswordManager$PasswordHashFileCodec;-><init>(Lcom/android/server/backup/BackupPasswordManager$1;)V

    invoke-direct {v0, v1, v2}, Lcom/android/server/backup/utils/DataStreamFileCodec;-><init>(Ljava/io/File;Lcom/android/server/backup/utils/DataStreamCodec;)V

    return-object v0
.end method

.method private getPasswordVersionFileCodec()Lcom/android/server/backup/utils/DataStreamFileCodec;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/backup/utils/DataStreamFileCodec<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 235
    new-instance v0, Lcom/android/server/backup/utils/DataStreamFileCodec;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/backup/BackupPasswordManager;->mBaseStateDir:Ljava/io/File;

    const-string/jumbo v3, "pwversion"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/backup/BackupPasswordManager$PasswordVersionFileCodec;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/backup/BackupPasswordManager$PasswordVersionFileCodec;-><init>(Lcom/android/server/backup/BackupPasswordManager$1;)V

    invoke-direct {v0, v1, v2}, Lcom/android/server/backup/utils/DataStreamFileCodec;-><init>(Ljava/io/File;Lcom/android/server/backup/utils/DataStreamCodec;)V

    return-object v0
.end method

.method private loadStateFromFilesystem()V
    .locals 3

    .line 180
    const-string v0, "BackupPasswordManager"

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/backup/BackupPasswordManager;->getPasswordVersionFileCodec()Lcom/android/server/backup/utils/DataStreamFileCodec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/backup/utils/DataStreamFileCodec;->deserialize()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordVersion:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    goto :goto_0

    .line 181
    :catch_0
    move-exception v1

    .line 182
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Unable to read backup pw version"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordVersion:I

    .line 187
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/backup/BackupPasswordManager;->getPasswordHashFileCodec()Lcom/android/server/backup/utils/DataStreamFileCodec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/backup/utils/DataStreamFileCodec;->deserialize()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;

    .line 188
    .local v1, "hash":Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;
    iget-object v2, v1, Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;->hash:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordHash:Ljava/lang/String;

    .line 189
    iget-object v2, v1, Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;->salt:[B

    iput-object v2, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordSalt:[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 192
    .end local v1    # "hash":Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;
    goto :goto_1

    .line 190
    :catch_1
    move-exception v1

    .line 191
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Unable to read saved backup pw hash"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method

.method private passwordMatchesSaved(Ljava/lang/String;)Z
    .locals 1
    .param p1, "candidatePassword"    # Ljava/lang/String;

    .line 203
    const-string v0, "PBKDF2WithHmacSHA1"

    invoke-direct {p0, v0, p1}, Lcom/android/server/backup/BackupPasswordManager;->passwordMatchesSaved(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 204
    invoke-direct {p0}, Lcom/android/server/backup/BackupPasswordManager;->usePbkdf2Fallback()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PBKDF2WithHmacSHA1And8bit"

    invoke-direct {p0, v0, p1}, Lcom/android/server/backup/BackupPasswordManager;->passwordMatchesSaved(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 203
    :goto_1
    return v0
.end method

.method private passwordMatchesSaved(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "candidatePassword"    # Ljava/lang/String;

    .line 215
    iget-object v0, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordHash:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 216
    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    .line 217
    :cond_2
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 221
    :cond_3
    iget-object v0, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordSalt:[B

    const/16 v1, 0x2710

    invoke-static {p1, p2, v0, v1}, Lcom/android/server/backup/utils/PasswordUtils;->buildPasswordHash(Ljava/lang/String;Ljava/lang/String;[BI)Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "candidatePasswordHash":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordHash:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 219
    .end local v0    # "candidatePasswordHash":Ljava/lang/String;
    :cond_4
    :goto_0
    return v1
.end method

.method private randomSalt()[B
    .locals 3

    .line 228
    const/16 v0, 0x8

    .line 229
    .local v0, "bitsPerByte":I
    const/16 v1, 0x200

    div-int/2addr v1, v0

    new-array v1, v1, [B

    .line 230
    .local v1, "array":[B
    iget-object v2, p0, Lcom/android/server/backup/BackupPasswordManager;->mRng:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 231
    return-object v1
.end method

.method private usePbkdf2Fallback()Z
    .locals 2

    .line 154
    iget v0, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordVersion:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method backupPasswordMatches(Ljava/lang/String;)Z
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    .line 97
    invoke-virtual {p0}, Lcom/android/server/backup/BackupPasswordManager;->hasBackupPassword()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupPasswordManager;->passwordMatchesSaved(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    const/4 v0, 0x0

    return v0

    .line 101
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasBackupPassword()Z
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/android/server/backup/BackupPasswordManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "hasBackupPassword"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordHash:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "currentPassword"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;

    .line 113
    const-string v0, "BackupPasswordManager"

    iget-object v1, p0, Lcom/android/server/backup/BackupPasswordManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BACKUP"

    const-string/jumbo v3, "setBackupPassword"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupPasswordManager;->passwordMatchesSaved(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 117
    return v2

    .line 122
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/backup/BackupPasswordManager;->getPasswordVersionFileCodec()Lcom/android/server/backup/utils/DataStreamFileCodec;

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/backup/utils/DataStreamFileCodec;->serialize(Ljava/lang/Object;)V

    .line 123
    iput v3, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordVersion:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 127
    nop

    .line 129
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 134
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/backup/BackupPasswordManager;->randomSalt()[B

    move-result-object v1

    .line 135
    .local v1, "salt":[B
    const-string v3, "PBKDF2WithHmacSHA1"

    const/16 v4, 0x2710

    invoke-static {v3, p2, v1, v4}, Lcom/android/server/backup/utils/PasswordUtils;->buildPasswordHash(Ljava/lang/String;Ljava/lang/String;[BI)Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, "newPwHash":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/backup/BackupPasswordManager;->getPasswordHashFileCodec()Lcom/android/server/backup/utils/DataStreamFileCodec;

    move-result-object v4

    new-instance v5, Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;

    invoke-direct {v5, v3, v1}, Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v4, v5}, Lcom/android/server/backup/utils/DataStreamFileCodec;->serialize(Ljava/lang/Object;)V

    .line 139
    iput-object v3, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordHash:Ljava/lang/String;

    .line 140
    iput-object v1, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordSalt:[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 141
    const/4 v0, 0x1

    return v0

    .line 142
    .end local v1    # "salt":[B
    .end local v3    # "newPwHash":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "Unable to set backup password"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .end local v1    # "e":Ljava/io/IOException;
    return v2

    .line 130
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/server/backup/BackupPasswordManager;->clearPassword()Z

    move-result v0

    return v0

    .line 124
    :catch_1
    move-exception v1

    .line 125
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v3, "Unable to write backup pw version; password not changed"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return v2
.end method
