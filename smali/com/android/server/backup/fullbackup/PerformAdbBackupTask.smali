.class public Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;
.super Lcom/android/server/backup/fullbackup/FullBackupTask;
.source "PerformAdbBackupTask.java"

# interfaces
.implements Lcom/android/server/backup/BackupRestoreTask;


# instance fields
.field private final mAllApps:Z

.field private final mCompress:Z

.field private final mCurrentOpToken:I

.field private final mCurrentPassword:Ljava/lang/String;

.field private mCurrentTarget:Landroid/content/pm/PackageInfo;

.field private final mDoWidgets:Z

.field private final mEncryptPassword:Ljava/lang/String;

.field private final mIncludeApks:Z

.field private final mIncludeObbs:Z

.field private final mIncludeShared:Z

.field private final mIncludeSystem:Z

.field private final mKeyValue:Z

.field private final mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mOutputFile:Landroid/os/ParcelFileDescriptor;

.field private final mPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/IFullBackupRestoreObserver;ZZZZLjava/lang/String;Ljava/lang/String;ZZZZ[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 15
    .param p1, "backupManagerService"    # Lcom/android/server/backup/UserBackupManagerService;
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p4, "includeApks"    # Z
    .param p5, "includeObbs"    # Z
    .param p6, "includeShared"    # Z
    .param p7, "doWidgets"    # Z
    .param p8, "curPassword"    # Ljava/lang/String;
    .param p9, "encryptPassword"    # Ljava/lang/String;
    .param p10, "doAllApps"    # Z
    .param p11, "doSystem"    # Z
    .param p12, "doCompress"    # Z
    .param p13, "doKeyValue"    # Z
    .param p14, "packages"    # [Ljava/lang/String;
    .param p15, "latch"    # Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 92
    move-object v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    move-object/from16 v3, p3

    invoke-direct {p0, v3}, Lcom/android/server/backup/fullbackup/FullBackupTask;-><init>(Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 93
    move-object/from16 v4, p1

    iput-object v4, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 94
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result v5

    iput v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentOpToken:I

    .line 95
    move-object/from16 v5, p15

    iput-object v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 97
    move-object/from16 v6, p2

    iput-object v6, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    .line 98
    move/from16 v7, p4

    iput-boolean v7, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeApks:Z

    .line 99
    move/from16 v8, p5

    iput-boolean v8, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeObbs:Z

    .line 100
    move/from16 v9, p6

    iput-boolean v9, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeShared:Z

    .line 101
    move/from16 v10, p7

    iput-boolean v10, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mDoWidgets:Z

    .line 102
    move/from16 v11, p10

    iput-boolean v11, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mAllApps:Z

    .line 103
    move/from16 v12, p11

    iput-boolean v12, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeSystem:Z

    .line 104
    if-nez p14, :cond_0

    .line 105
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 106
    :cond_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-static/range {p14 .. p14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object v13, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    .line 107
    iput-object v1, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentPassword:Ljava/lang/String;

    .line 112
    if-eqz v2, :cond_2

    const-string v13, ""

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    goto :goto_1

    .line 115
    :cond_1
    iput-object v2, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    goto :goto_2

    .line 113
    :cond_2
    :goto_1
    iput-object v1, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    .line 120
    :goto_2
    move/from16 v13, p12

    iput-boolean v13, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCompress:Z

    .line 121
    move/from16 v14, p13

    iput-boolean v14, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mKeyValue:Z

    .line 122
    return-void
.end method

.method private addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 125
    .local p1, "set":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .local p2, "pkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 126
    .local v1, "pkgName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 128
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x8000000

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 131
    .local v2, "info":Landroid/content/pm/PackageInfo;
    invoke-virtual {p1, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    nop

    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    goto :goto_1

    .line 132
    :catch_0
    move-exception v2

    .line 133
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", skipping"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BackupManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    :goto_1
    goto :goto_0

    .line 137
    :cond_1
    return-void
.end method

.method private emitAesBackupHeader(Ljava/lang/StringBuilder;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 17
    .param p1, "headerbuf"    # Ljava/lang/StringBuilder;
    .param p2, "ofstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 142
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 143
    const/16 v3, 0x200

    invoke-virtual {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->randomBytes(I)[B

    move-result-object v2

    .line 144
    .local v2, "newUserSalt":[B
    iget-object v4, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    .line 145
    const-string v5, "PBKDF2WithHmacSHA1"

    const/16 v6, 0x2710

    invoke-static {v5, v4, v2, v6}, Lcom/android/server/backup/utils/PasswordUtils;->buildPasswordKey(Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v4

    .line 150
    .local v4, "userKey":Ljavax/crypto/SecretKey;
    const/16 v7, 0x20

    new-array v7, v7, [B

    .line 151
    .local v7, "masterPw":[B
    iget-object v8, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v8}, Lcom/android/server/backup/UserBackupManagerService;->getRng()Ljava/security/SecureRandom;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 152
    iget-object v8, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 153
    invoke-virtual {v8, v3}, Lcom/android/server/backup/UserBackupManagerService;->randomBytes(I)[B

    move-result-object v3

    .line 156
    .local v3, "checksumSalt":[B
    const-string v8, "AES/CBC/PKCS5Padding"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v9

    .line 157
    .local v9, "c":Ljavax/crypto/Cipher;
    new-instance v10, Ljavax/crypto/spec/SecretKeySpec;

    const-string v11, "AES"

    invoke-direct {v10, v7, v11}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 158
    .local v10, "masterKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const/4 v11, 0x1

    invoke-virtual {v9, v11, v10}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 159
    new-instance v12, Ljavax/crypto/CipherOutputStream;

    move-object/from16 v13, p2

    invoke-direct {v12, v13, v9}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 162
    .local v12, "finalOutput":Ljava/io/OutputStream;
    const-string v14, "AES-256"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    const/16 v14, 0xa

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 165
    invoke-static {v2}, Lcom/android/server/backup/utils/PasswordUtils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    invoke-static {v3}, Lcom/android/server/backup/utils/PasswordUtils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 175
    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v8

    .line 176
    .local v8, "mkC":Ljavax/crypto/Cipher;
    invoke-virtual {v8, v11, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 178
    invoke-virtual {v8}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v11

    .line 179
    .local v11, "IV":[B
    invoke-static {v11}, Lcom/android/server/backup/utils/PasswordUtils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v9}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v11

    .line 193
    invoke-virtual {v10}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v15

    .line 194
    .local v15, "mk":[B
    nop

    .line 196
    invoke-virtual {v10}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v14

    .line 195
    invoke-static {v5, v14, v3, v6}, Lcom/android/server/backup/utils/PasswordUtils;->makeKeyChecksum(Ljava/lang/String;[B[BI)[B

    move-result-object v5

    .line 199
    .local v5, "checksum":[B
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    array-length v14, v11

    array-length v0, v15

    add-int/2addr v14, v0

    array-length v0, v5

    add-int/2addr v14, v0

    add-int/lit8 v14, v14, 0x3

    invoke-direct {v6, v14}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object v0, v6

    .line 201
    .local v0, "blob":Ljava/io/ByteArrayOutputStream;
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-direct {v6, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 202
    .local v6, "mkOut":Ljava/io/DataOutputStream;
    array-length v14, v11

    invoke-virtual {v6, v14}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 203
    invoke-virtual {v6, v11}, Ljava/io/DataOutputStream;->write([B)V

    .line 204
    array-length v14, v15

    invoke-virtual {v6, v14}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 205
    invoke-virtual {v6, v15}, Ljava/io/DataOutputStream;->write([B)V

    .line 206
    array-length v14, v5

    invoke-virtual {v6, v14}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 207
    invoke-virtual {v6, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 208
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    .line 209
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    invoke-virtual {v8, v14}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v14

    .line 210
    .local v14, "encryptedMk":[B
    move-object/from16 v16, v0

    .end local v0    # "blob":Ljava/io/ByteArrayOutputStream;
    .local v16, "blob":Ljava/io/ByteArrayOutputStream;
    invoke-static {v14}, Lcom/android/server/backup/utils/PasswordUtils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 213
    return-object v12
.end method

.method private finalizeBackup(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 219
    const/16 v0, 0x400

    :try_start_0
    new-array v0, v0, [B

    .line 220
    .local v0, "eof":[B
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    .end local v0    # "eof":[B
    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "BackupManagerService"

    const-string v2, "Error attempting to finalize backup stream"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 0

    .line 489
    return-void
.end method

.method public handleCancel(Z)V
    .locals 3
    .param p1, "cancelAll"    # Z

    .line 498
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentTarget:Landroid/content/pm/PackageInfo;

    .line 500
    .local v0, "target":Landroid/content/pm/PackageInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adb backup cancel of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BackupManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    if-eqz v0, :cond_0

    .line 503
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v2, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentTarget:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    .line 505
    :cond_0
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget v2, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentOpToken:I

    invoke-virtual {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->removeOperation(I)V

    .line 506
    return-void
.end method

.method public operationComplete(J)V
    .locals 0
    .param p1, "result"    # J

    .line 494
    return-void
.end method

.method public run()V
    .locals 34

    .line 228
    move-object/from16 v12, p0

    iget-boolean v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mKeyValue:Z

    if-eqz v0, :cond_0

    const-string v0, ", including key-value backups"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    move-object v13, v0

    .line 229
    .local v13, "includeKeyValue":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--- Performing adb backup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ---"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    move-object v14, v0

    .line 232
    .local v14, "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    new-instance v0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    iget-object v1, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    move-object v15, v0

    .line 234
    .local v15, "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    invoke-virtual {v15}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->establish()V

    .line 236
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendStartBackup()V

    .line 237
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 240
    .local v11, "pm":Landroid/content/pm/PackageManager;
    iget-boolean v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mAllApps:Z

    const/4 v10, 0x1

    if-eqz v0, :cond_3

    .line 241
    const/high16 v0, 0x8000000

    invoke-virtual {v11, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 243
    .local v0, "allPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 244
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 246
    .local v2, "pkg":Landroid/content/pm/PackageInfo;
    iget-boolean v3, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeSystem:Z

    if-nez v3, :cond_1

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v3, v10

    if-nez v3, :cond_2

    .line 248
    :cond_1
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 255
    .end local v0    # "allPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v1    # "i":I
    :cond_3
    iget-boolean v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mDoWidgets:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 257
    nop

    .line 258
    invoke-static {v1}, Lcom/android/server/AppWidgetBackupBridge;->getWidgetParticipants(I)Ljava/util/List;

    move-result-object v0

    .line 259
    .local v0, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_4

    .line 270
    invoke-direct {v12, v14, v0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V

    .line 277
    .end local v0    # "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 278
    invoke-direct {v12, v14, v0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V

    .line 285
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 286
    .local v8, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual {v14}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 287
    .local v16, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 288
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 289
    .local v0, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 290
    invoke-virtual {v3}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result v3

    .line 289
    invoke-static {v2, v3}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 291
    invoke-static {v2}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsStopped(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    .line 297
    :cond_6
    invoke-static {v0}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsKeyValueOnly(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 298
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->remove()V

    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is key-value."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BackupManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 292
    :cond_7
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->remove()V

    .line 294
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not eligible for backup, removing."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BackupManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    .end local v0    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_8
    :goto_4
    goto :goto_2

    .line 308
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    .line 309
    invoke-virtual {v14}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v9, v0

    .line 310
    .local v9, "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v2, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v7, v0

    .line 311
    .local v7, "ofstream":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 313
    .local v2, "out":Ljava/io/OutputStream;
    const/4 v3, 0x0

    .line 315
    .local v3, "pkg":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_23
    .catchall {:try_start_0 .. :try_end_0} :catchall_11

    if-eqz v0, :cond_a

    :try_start_1
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v0, :cond_a

    move v0, v10

    goto :goto_5

    .line 463
    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v4, v2

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move v5, v10

    move-object/from16 v18, v11

    goto/16 :goto_1f

    .line 460
    :catch_0
    move-exception v0

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move v5, v10

    move-object/from16 v18, v11

    goto/16 :goto_19

    .line 458
    :catch_1
    move-exception v0

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move v5, v10

    move-object/from16 v18, v11

    goto/16 :goto_1b

    .line 315
    :cond_a
    move v0, v1

    :goto_5
    move/from16 v17, v0

    .line 318
    .local v17, "encrypting":Z
    :try_start_2
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->deviceIsEncrypted()Z

    move-result v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_25
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_23
    .catchall {:try_start_2 .. :try_end_2} :catchall_11

    if-eqz v0, :cond_c

    if-nez v17, :cond_c

    .line 319
    :try_start_3
    const-string v0, "BackupManagerService"

    const-string v1, "Unencrypted backup of encrypted device; aborting"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 464
    if-eqz v2, :cond_b

    .line 465
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 466
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 468
    :cond_b
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 471
    goto :goto_6

    .line 469
    :catch_2
    move-exception v0

    .line 470
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IO error closing adb backup file: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "BackupManagerService"

    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    .end local v0    # "e":Ljava/io/IOException;
    :goto_6
    iget-object v1, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 473
    :try_start_5
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 474
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 475
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 476
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    .line 477
    invoke-virtual {v15}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 479
    const-string v0, "BackupManagerService"

    const-string v1, "Full backup pass complete."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 320
    return-void

    .line 475
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    .line 323
    :cond_c
    move-object v4, v7

    .line 327
    .local v4, "finalOutput":Ljava/io/OutputStream;
    :try_start_7
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v5, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/android/server/backup/UserBackupManagerService;->backupPasswordMatches(Ljava/lang/String;)Z

    move-result v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_25
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_23
    .catchall {:try_start_7 .. :try_end_7} :catchall_11

    if-nez v0, :cond_e

    .line 329
    :try_start_8
    const-string v0, "BackupManagerService"

    const-string v1, "Backup password mismatch; aborting"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 464
    if-eqz v2, :cond_d

    .line 465
    :try_start_9
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 466
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 468
    :cond_d
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 471
    goto :goto_7

    .line 469
    :catch_3
    move-exception v0

    .line 470
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IO error closing adb backup file: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "BackupManagerService"

    invoke-static {v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    .end local v0    # "e":Ljava/io/IOException;
    :goto_7
    iget-object v1, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 473
    :try_start_a
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 474
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 475
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 476
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    .line 477
    invoke-virtual {v15}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 479
    const-string v0, "BackupManagerService"

    const-string v1, "Full backup pass complete."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 331
    return-void

    .line 475
    :catchall_2
    move-exception v0

    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v0

    .line 359
    :cond_e
    :try_start_c
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v5, 0x400

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v6, v0

    .line 361
    .local v6, "headerbuf":Ljava/lang/StringBuilder;
    const-string v0, "ANDROID BACKUP\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    const/4 v0, 0x5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 363
    iget-boolean v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCompress:Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_25
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_23
    .catchall {:try_start_c .. :try_end_c} :catchall_11

    if-eqz v0, :cond_f

    :try_start_d
    const-string v0, "\n1\n"
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_8

    :cond_f
    :try_start_e
    const-string v0, "\n0\n"

    :goto_8
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_25
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_23
    .catchall {:try_start_e .. :try_end_e} :catchall_11

    .line 367
    if-eqz v17, :cond_10

    .line 368
    :try_start_f
    invoke-direct {v12, v6, v4}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->emitAesBackupHeader(Ljava/lang/StringBuilder;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move-object v4, v0

    goto :goto_9

    .line 383
    :catch_4
    move-exception v0

    move-object/from16 v29, v6

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move v5, v10

    move-object/from16 v18, v11

    goto/16 :goto_17

    .line 370
    :cond_10
    :try_start_10
    const-string/jumbo v0, "none\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    :goto_9
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "UTF-8"

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 374
    .local v0, "header":[B
    invoke-virtual {v7, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 377
    iget-boolean v5, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCompress:Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1f
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_25
    .catchall {:try_start_10 .. :try_end_10} :catchall_11

    if-eqz v5, :cond_11

    .line 378
    :try_start_11
    new-instance v5, Ljava/util/zip/Deflater;

    const/16 v1, 0x9

    invoke-direct {v5, v1}, Ljava/util/zip/Deflater;-><init>(I)V

    move-object v1, v5

    .line 379
    .local v1, "deflater":Ljava/util/zip/Deflater;
    new-instance v5, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v5, v4, v1, v10}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;Z)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    move-object v4, v5

    move-object/from16 v19, v4

    goto :goto_a

    .line 377
    .end local v1    # "deflater":Ljava/util/zip/Deflater;
    :cond_11
    move-object/from16 v19, v4

    .line 382
    .end local v4    # "finalOutput":Ljava/io/OutputStream;
    .local v19, "finalOutput":Ljava/io/OutputStream;
    :goto_a
    move-object/from16 v5, v19

    .line 387
    .end local v0    # "header":[B
    .end local v2    # "out":Ljava/io/OutputStream;
    .local v5, "out":Ljava/io/OutputStream;
    nop

    .line 390
    :try_start_12
    iget-boolean v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeShared:Z
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1d
    .catchall {:try_start_12 .. :try_end_12} :catchall_f

    if-eqz v0, :cond_12

    .line 392
    :try_start_13
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.android.sharedstoragebackup"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    move-object v3, v0

    .line 394
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_13} :catch_7
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_6
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 397
    goto :goto_b

    .line 463
    .end local v6    # "headerbuf":Ljava/lang/StringBuilder;
    .end local v17    # "encrypting":Z
    .end local v19    # "finalOutput":Ljava/io/OutputStream;
    :catchall_3
    move-exception v0

    move-object v1, v0

    move-object v4, v5

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move v5, v10

    move-object/from16 v18, v11

    goto/16 :goto_1f

    .line 460
    :catch_5
    move-exception v0

    move-object v2, v5

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move v5, v10

    move-object/from16 v18, v11

    goto/16 :goto_19

    .line 458
    :catch_6
    move-exception v0

    move-object v2, v5

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move v5, v10

    move-object/from16 v18, v11

    goto/16 :goto_1b

    .line 395
    .restart local v6    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v17    # "encrypting":Z
    .restart local v19    # "finalOutput":Ljava/io/OutputStream;
    :catch_7
    move-exception v0

    .line 396
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_14
    const-string v1, "BackupManagerService"

    const-string v2, "Unable to find shared-storage backup handler"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_6
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_5
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 401
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_12
    :goto_b
    :try_start_15
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_1d
    .catchall {:try_start_15 .. :try_end_15} :catchall_f

    .line 402
    .local v0, "N":I
    const/4 v1, 0x0

    move v4, v1

    .local v4, "i":I
    :goto_c
    if-ge v4, v0, :cond_16

    .line 403
    :try_start_16
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_17
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    move-object v3, v1

    .line 405
    :try_start_17
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_15
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_14
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    :try_start_18
    const-string v10, "--- Performing full backup for package "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " ---"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v1, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.android.sharedstoragebackup"

    .line 409
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    move/from16 v20, v1

    .line 412
    .local v20, "isSharedStorage":Z
    new-instance v21, Lcom/android/server/backup/fullbackup/FullBackupEngine;

    iget-object v2, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v10, 0x0

    iget-boolean v1, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeApks:Z
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_13
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_12
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    const-wide v22, 0x7fffffffffffffffL

    move-object/from16 v24, v8

    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .local v24, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :try_start_19
    iget v8, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentOpToken:I
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_11
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_10
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    const/16 v25, 0x0

    move/from16 v26, v1

    move-object/from16 v1, v21

    move-object/from16 v27, v3

    .end local v3    # "pkg":Landroid/content/pm/PackageInfo;
    .local v27, "pkg":Landroid/content/pm/PackageInfo;
    move-object v3, v5

    move/from16 v28, v4

    .end local v4    # "i":I
    .local v28, "i":I
    move-object v4, v10

    move-object v10, v5

    .end local v5    # "out":Ljava/io/OutputStream;
    .local v10, "out":Ljava/io/OutputStream;
    move-object/from16 v5, v27

    move-object/from16 v29, v6

    .end local v6    # "headerbuf":Ljava/lang/StringBuilder;
    .local v29, "headerbuf":Ljava/lang/StringBuilder;
    move/from16 v6, v26

    move-object/from16 v30, v7

    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .local v30, "ofstream":Ljava/io/FileOutputStream;
    move-object/from16 v7, p0

    move-object/from16 v32, v9

    move-object/from16 v31, v24

    move/from16 v24, v8

    .end local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v24    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .local v31, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .local v32, "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    move-wide/from16 v8, v22

    move-object/from16 v33, v10

    .end local v10    # "out":Ljava/io/OutputStream;
    .local v33, "out":Ljava/io/OutputStream;
    move/from16 v10, v24

    move-object/from16 v18, v11

    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .local v18, "pm":Landroid/content/pm/PackageManager;
    move/from16 v11, v25

    :try_start_1a
    invoke-direct/range {v1 .. v11}, Lcom/android/server/backup/fullbackup/FullBackupEngine;-><init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/io/OutputStream;Lcom/android/server/backup/fullbackup/FullBackupPreflight;Landroid/content/pm/PackageInfo;ZLcom/android/server/backup/BackupRestoreTask;JII)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_f
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_e
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    move-object/from16 v1, v21

    .line 423
    .local v1, "mBackupEngine":Lcom/android/server/backup/fullbackup/FullBackupEngine;
    if-eqz v20, :cond_13

    :try_start_1b
    const-string v2, "Shared storage"
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_8
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    move-object v3, v2

    move-object/from16 v2, v27

    goto :goto_d

    .line 463
    .end local v0    # "N":I
    .end local v1    # "mBackupEngine":Lcom/android/server/backup/fullbackup/FullBackupEngine;
    .end local v17    # "encrypting":Z
    .end local v19    # "finalOutput":Ljava/io/OutputStream;
    .end local v20    # "isSharedStorage":Z
    .end local v28    # "i":I
    .end local v29    # "headerbuf":Ljava/lang/StringBuilder;
    :catchall_4
    move-exception v0

    move-object v1, v0

    move-object/from16 v3, v27

    move-object/from16 v4, v33

    const/4 v5, 0x1

    goto/16 :goto_1f

    .line 460
    :catch_8
    move-exception v0

    move-object/from16 v3, v27

    move-object/from16 v2, v33

    const/4 v5, 0x1

    goto/16 :goto_19

    .line 458
    :catch_9
    move-exception v0

    move-object/from16 v3, v27

    move-object/from16 v2, v33

    const/4 v5, 0x1

    goto/16 :goto_1b

    .line 423
    .restart local v0    # "N":I
    .restart local v1    # "mBackupEngine":Lcom/android/server/backup/fullbackup/FullBackupEngine;
    .restart local v17    # "encrypting":Z
    .restart local v19    # "finalOutput":Ljava/io/OutputStream;
    .restart local v20    # "isSharedStorage":Z
    .restart local v28    # "i":I
    .restart local v29    # "headerbuf":Ljava/lang/StringBuilder;
    :cond_13
    move-object/from16 v2, v27

    .end local v27    # "pkg":Landroid/content/pm/PackageInfo;
    .local v2, "pkg":Landroid/content/pm/PackageInfo;
    :try_start_1c
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    :goto_d
    invoke-virtual {v12, v3}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendOnBackupPackage(Ljava/lang/String;)V

    .line 426
    iput-object v2, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentTarget:Landroid/content/pm/PackageInfo;

    .line 427
    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupOnePackage()I

    .line 431
    iget-boolean v3, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeObbs:Z
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1c} :catch_d
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    if-eqz v3, :cond_15

    if-nez v20, :cond_15

    .line 432
    move-object/from16 v4, v33

    .end local v33    # "out":Ljava/io/OutputStream;
    .local v4, "out":Ljava/io/OutputStream;
    :try_start_1d
    invoke-virtual {v15, v2, v4}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupObbs(Landroid/content/pm/PackageInfo;Ljava/io/OutputStream;)Z

    move-result v3

    .line 433
    .local v3, "obbOkay":Z
    if-eqz v3, :cond_14

    goto :goto_e

    .line 434
    :cond_14
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure writing OBB stack for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v4    # "out":Ljava/io/OutputStream;
    .end local v13    # "includeKeyValue":Ljava/lang/String;
    .end local v14    # "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .end local v15    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .end local v16    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v30    # "ofstream":Ljava/io/FileOutputStream;
    .end local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local p0    # "this":Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;
    throw v5
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1d} :catch_b
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_a
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    .line 463
    .end local v0    # "N":I
    .end local v1    # "mBackupEngine":Lcom/android/server/backup/fullbackup/FullBackupEngine;
    .end local v3    # "obbOkay":Z
    .end local v17    # "encrypting":Z
    .end local v19    # "finalOutput":Ljava/io/OutputStream;
    .end local v20    # "isSharedStorage":Z
    .end local v28    # "i":I
    .end local v29    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v4    # "out":Ljava/io/OutputStream;
    .restart local v13    # "includeKeyValue":Ljava/lang/String;
    .restart local v14    # "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .restart local v15    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v16    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v30    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local p0    # "this":Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;
    :catchall_5
    move-exception v0

    move-object v1, v0

    move-object v3, v2

    const/4 v5, 0x1

    goto/16 :goto_1f

    .line 460
    :catch_a
    move-exception v0

    move-object v3, v2

    move-object v2, v4

    const/4 v5, 0x1

    goto/16 :goto_19

    .line 458
    :catch_b
    move-exception v0

    move-object v3, v2

    move-object v2, v4

    const/4 v5, 0x1

    goto/16 :goto_1b

    .line 431
    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v0    # "N":I
    .restart local v1    # "mBackupEngine":Lcom/android/server/backup/fullbackup/FullBackupEngine;
    .restart local v17    # "encrypting":Z
    .restart local v19    # "finalOutput":Ljava/io/OutputStream;
    .restart local v20    # "isSharedStorage":Z
    .restart local v28    # "i":I
    .restart local v29    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v33    # "out":Ljava/io/OutputStream;
    :cond_15
    move-object/from16 v4, v33

    .line 402
    .end local v1    # "mBackupEngine":Lcom/android/server/backup/fullbackup/FullBackupEngine;
    .end local v20    # "isSharedStorage":Z
    .end local v33    # "out":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    :goto_e
    add-int/lit8 v1, v28, 0x1

    move-object v3, v2

    move-object v5, v4

    move-object/from16 v11, v18

    move-object/from16 v6, v29

    move-object/from16 v7, v30

    move-object/from16 v8, v31

    move-object/from16 v9, v32

    const/4 v10, 0x1

    move v4, v1

    .end local v28    # "i":I
    .local v1, "i":I
    goto/16 :goto_c

    .line 463
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v4    # "out":Ljava/io/OutputStream;
    .end local v17    # "encrypting":Z
    .end local v19    # "finalOutput":Ljava/io/OutputStream;
    .end local v29    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v33    # "out":Ljava/io/OutputStream;
    :catchall_6
    move-exception v0

    move-object/from16 v4, v33

    move-object v1, v0

    move-object v3, v2

    const/4 v5, 0x1

    .end local v33    # "out":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    goto/16 :goto_1f

    .line 460
    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v33    # "out":Ljava/io/OutputStream;
    :catch_c
    move-exception v0

    move-object/from16 v4, v33

    move-object v3, v2

    move-object v2, v4

    const/4 v5, 0x1

    .end local v33    # "out":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    goto/16 :goto_19

    .line 458
    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v33    # "out":Ljava/io/OutputStream;
    :catch_d
    move-exception v0

    move-object/from16 v4, v33

    move-object v3, v2

    move-object v2, v4

    const/4 v5, 0x1

    .end local v33    # "out":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    goto/16 :goto_1b

    .line 463
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v27    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v33    # "out":Ljava/io/OutputStream;
    :catchall_7
    move-exception v0

    move-object/from16 v2, v27

    move-object/from16 v4, v33

    move-object v1, v0

    move-object v3, v2

    const/4 v5, 0x1

    .end local v27    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v33    # "out":Ljava/io/OutputStream;
    .restart local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v4    # "out":Ljava/io/OutputStream;
    goto/16 :goto_1f

    .line 460
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v27    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v33    # "out":Ljava/io/OutputStream;
    :catch_e
    move-exception v0

    move-object/from16 v2, v27

    move-object/from16 v4, v33

    move-object v3, v2

    move-object v2, v4

    const/4 v5, 0x1

    .end local v27    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v33    # "out":Ljava/io/OutputStream;
    .restart local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v4    # "out":Ljava/io/OutputStream;
    goto/16 :goto_19

    .line 458
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v27    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v33    # "out":Ljava/io/OutputStream;
    :catch_f
    move-exception v0

    move-object/from16 v2, v27

    move-object/from16 v4, v33

    move-object v3, v2

    move-object v2, v4

    const/4 v5, 0x1

    .end local v27    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v33    # "out":Ljava/io/OutputStream;
    .restart local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v4    # "out":Ljava/io/OutputStream;
    goto/16 :goto_1b

    .line 463
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v4    # "out":Ljava/io/OutputStream;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v30    # "ofstream":Ljava/io/FileOutputStream;
    .end local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .local v3, "pkg":Landroid/content/pm/PackageInfo;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v24    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catchall_8
    move-exception v0

    move-object v2, v3

    move-object v4, v5

    move-object/from16 v30, v7

    move-object/from16 v32, v9

    move-object/from16 v18, v11

    move-object/from16 v31, v24

    move-object v1, v0

    const/4 v5, 0x1

    .end local v3    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v24    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v4    # "out":Ljava/io/OutputStream;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v30    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    goto/16 :goto_1f

    .line 460
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v4    # "out":Ljava/io/OutputStream;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v30    # "ofstream":Ljava/io/FileOutputStream;
    .end local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v3    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v24    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catch_10
    move-exception v0

    move-object v2, v3

    move-object v4, v5

    move-object/from16 v30, v7

    move-object/from16 v32, v9

    move-object/from16 v18, v11

    move-object/from16 v31, v24

    move-object v2, v4

    const/4 v5, 0x1

    .end local v3    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v24    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v4    # "out":Ljava/io/OutputStream;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v30    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    goto/16 :goto_19

    .line 458
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v4    # "out":Ljava/io/OutputStream;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v30    # "ofstream":Ljava/io/FileOutputStream;
    .end local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v3    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v24    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catch_11
    move-exception v0

    move-object v2, v3

    move-object v4, v5

    move-object/from16 v30, v7

    move-object/from16 v32, v9

    move-object/from16 v18, v11

    move-object/from16 v31, v24

    move-object v2, v4

    const/4 v5, 0x1

    .end local v3    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v24    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v4    # "out":Ljava/io/OutputStream;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v30    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    goto/16 :goto_1b

    .line 463
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v4    # "out":Ljava/io/OutputStream;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v30    # "ofstream":Ljava/io/FileOutputStream;
    .end local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v3    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    :catchall_9
    move-exception v0

    move-object v2, v3

    move-object v4, v5

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move-object/from16 v18, v11

    move-object v1, v0

    const/4 v5, 0x1

    goto :goto_f

    .line 460
    :catch_12
    move-exception v0

    move-object v2, v3

    move-object v4, v5

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move-object/from16 v18, v11

    move-object v2, v4

    const/4 v5, 0x1

    goto :goto_10

    .line 458
    :catch_13
    move-exception v0

    move-object v2, v3

    move-object v4, v5

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move-object/from16 v18, v11

    move-object v2, v4

    const/4 v5, 0x1

    goto :goto_11

    .line 463
    :catchall_a
    move-exception v0

    move-object v2, v3

    move-object v4, v5

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move-object/from16 v18, v11

    move-object v1, v0

    move v5, v10

    .end local v3    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v4    # "out":Ljava/io/OutputStream;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v30    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :goto_f
    goto/16 :goto_1f

    .line 460
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v4    # "out":Ljava/io/OutputStream;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v30    # "ofstream":Ljava/io/FileOutputStream;
    .end local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v3    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    :catch_14
    move-exception v0

    move-object v2, v3

    move-object v4, v5

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move-object/from16 v18, v11

    move-object v2, v4

    move v5, v10

    .end local v3    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v4    # "out":Ljava/io/OutputStream;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v30    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :goto_10
    goto/16 :goto_19

    .line 458
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v4    # "out":Ljava/io/OutputStream;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v30    # "ofstream":Ljava/io/FileOutputStream;
    .end local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v3    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    :catch_15
    move-exception v0

    move-object v2, v3

    move-object v4, v5

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move-object/from16 v18, v11

    move-object v2, v4

    move v5, v10

    .end local v3    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v4    # "out":Ljava/io/OutputStream;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v30    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :goto_11
    goto/16 :goto_1b

    .line 463
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v4    # "out":Ljava/io/OutputStream;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v30    # "ofstream":Ljava/io/FileOutputStream;
    .end local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v3    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    :catchall_b
    move-exception v0

    move-object v4, v5

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move-object/from16 v18, v11

    move-object v1, v0

    move v5, v10

    goto/16 :goto_14

    .line 460
    :catch_16
    move-exception v0

    move-object v4, v5

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move-object/from16 v18, v11

    move-object v2, v4

    move v5, v10

    goto/16 :goto_15

    .line 458
    :catch_17
    move-exception v0

    move-object v4, v5

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move-object/from16 v18, v11

    move-object v2, v4

    move v5, v10

    goto/16 :goto_16

    .line 402
    .restart local v0    # "N":I
    .local v4, "i":I
    .restart local v6    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v17    # "encrypting":Z
    .restart local v19    # "finalOutput":Ljava/io/OutputStream;
    :cond_16
    move/from16 v28, v4

    move-object v4, v5

    move-object/from16 v29, v6

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move-object/from16 v18, v11

    .line 439
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v6    # "headerbuf":Ljava/lang/StringBuilder;
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .local v4, "out":Ljava/io/OutputStream;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v29    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v30    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :try_start_1e
    iget-boolean v1, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mKeyValue:Z
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1e} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_1b
    .catchall {:try_start_1e .. :try_end_1e} :catchall_e

    if-eqz v1, :cond_17

    .line 440
    :try_start_1f
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 442
    .local v2, "keyValuePackage":Landroid/content/pm/PackageInfo;
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--- Performing key-value backup for package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ---"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    new-instance v5, Lcom/android/server/backup/KeyValueAdbBackupEngine;

    iget-object v6, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v7, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 448
    invoke-virtual {v7}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    iget-object v7, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 449
    invoke-virtual {v7}, Lcom/android/server/backup/UserBackupManagerService;->getBaseStateDir()Ljava/io/File;

    move-result-object v25

    iget-object v7, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 450
    invoke-virtual {v7}, Lcom/android/server/backup/UserBackupManagerService;->getDataDir()Ljava/io/File;

    move-result-object v26

    move-object/from16 v20, v5

    move-object/from16 v21, v4

    move-object/from16 v22, v2

    move-object/from16 v23, v6

    invoke-direct/range {v20 .. v26}, Lcom/android/server/backup/KeyValueAdbBackupEngine;-><init>(Ljava/io/OutputStream;Landroid/content/pm/PackageInfo;Lcom/android/server/backup/UserBackupManagerService;Landroid/content/pm/PackageManager;Ljava/io/File;Ljava/io/File;)V

    .line 451
    .local v5, "kvBackupEngine":Lcom/android/server/backup/KeyValueAdbBackupEngine;
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v6}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendOnBackupPackage(Ljava/lang/String;)V

    .line 452
    invoke-virtual {v5}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->backupOnePackage()V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_1f} :catch_19
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_18
    .catchall {:try_start_1f .. :try_end_1f} :catchall_c

    .line 453
    .end local v2    # "keyValuePackage":Landroid/content/pm/PackageInfo;
    .end local v5    # "kvBackupEngine":Lcom/android/server/backup/KeyValueAdbBackupEngine;
    goto :goto_12

    .line 463
    .end local v0    # "N":I
    .end local v17    # "encrypting":Z
    .end local v19    # "finalOutput":Ljava/io/OutputStream;
    .end local v29    # "headerbuf":Ljava/lang/StringBuilder;
    :catchall_c
    move-exception v0

    move-object v1, v0

    const/4 v5, 0x1

    goto/16 :goto_1f

    .line 460
    :catch_18
    move-exception v0

    move-object v2, v4

    const/4 v5, 0x1

    goto/16 :goto_19

    .line 458
    :catch_19
    move-exception v0

    move-object v2, v4

    const/4 v5, 0x1

    goto/16 :goto_1b

    .line 457
    .restart local v0    # "N":I
    .restart local v17    # "encrypting":Z
    .restart local v19    # "finalOutput":Ljava/io/OutputStream;
    .restart local v29    # "headerbuf":Ljava/lang/StringBuilder;
    :cond_17
    :try_start_20
    invoke-direct {v12, v4}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->finalizeBackup(Ljava/io/OutputStream;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_20} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_1b
    .catchall {:try_start_20 .. :try_end_20} :catchall_e

    .line 464
    .end local v0    # "N":I
    .end local v17    # "encrypting":Z
    .end local v19    # "finalOutput":Ljava/io/OutputStream;
    .end local v29    # "headerbuf":Ljava/lang/StringBuilder;
    if-eqz v4, :cond_18

    .line 465
    :try_start_21
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 466
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 468
    :cond_18
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_1a

    .line 471
    goto :goto_13

    .line 469
    :catch_1a
    move-exception v0

    .line 470
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IO error closing adb backup file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BackupManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    .end local v0    # "e":Ljava/io/IOException;
    :goto_13
    iget-object v1, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 473
    :try_start_22
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 474
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 475
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_d

    .line 476
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    .line 477
    invoke-virtual {v15}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 479
    const-string v0, "BackupManagerService"

    const-string v1, "Full backup pass complete."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 482
    move-object v2, v4

    goto/16 :goto_1e

    .line 475
    :catchall_d
    move-exception v0

    :try_start_23
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_d

    throw v0

    .line 463
    :catchall_e
    move-exception v0

    const/4 v5, 0x1

    move-object v1, v0

    goto/16 :goto_1f

    .line 460
    :catch_1b
    move-exception v0

    const/4 v5, 0x1

    move-object v2, v4

    goto/16 :goto_19

    .line 458
    :catch_1c
    move-exception v0

    const/4 v5, 0x1

    move-object v2, v4

    goto/16 :goto_1b

    .line 463
    .end local v4    # "out":Ljava/io/OutputStream;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v30    # "ofstream":Ljava/io/FileOutputStream;
    .end local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .local v5, "out":Ljava/io/OutputStream;
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    :catchall_f
    move-exception v0

    move-object v4, v5

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move v5, v10

    move-object/from16 v18, v11

    move-object v1, v0

    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "out":Ljava/io/OutputStream;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v30    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :goto_14
    goto/16 :goto_1f

    .line 460
    .end local v4    # "out":Ljava/io/OutputStream;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v30    # "ofstream":Ljava/io/FileOutputStream;
    .end local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    :catch_1d
    move-exception v0

    move-object v4, v5

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move v5, v10

    move-object/from16 v18, v11

    move-object v2, v4

    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "out":Ljava/io/OutputStream;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v30    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :goto_15
    goto/16 :goto_19

    .line 458
    .end local v4    # "out":Ljava/io/OutputStream;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v30    # "ofstream":Ljava/io/FileOutputStream;
    .end local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    :catch_1e
    move-exception v0

    move-object v4, v5

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move v5, v10

    move-object/from16 v18, v11

    move-object v2, v4

    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "out":Ljava/io/OutputStream;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v30    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :goto_16
    goto/16 :goto_1b

    .line 383
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v30    # "ofstream":Ljava/io/FileOutputStream;
    .end local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .local v2, "out":Ljava/io/OutputStream;
    .local v4, "finalOutput":Ljava/io/OutputStream;
    .restart local v6    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v17    # "encrypting":Z
    :catch_1f
    move-exception v0

    move-object/from16 v29, v6

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move v5, v10

    move-object/from16 v18, v11

    .end local v6    # "headerbuf":Ljava/lang/StringBuilder;
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v29    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v30    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :goto_17
    move-object v1, v0

    .line 385
    .local v1, "e":Ljava/lang/Exception;
    :try_start_24
    const-string v0, "BackupManagerService"

    const-string v6, "Unable to emit archive header"

    invoke-static {v0, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_24} :catch_22
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_21
    .catchall {:try_start_24 .. :try_end_24} :catchall_14

    .line 464
    if-eqz v2, :cond_19

    .line 465
    :try_start_25
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 466
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 468
    :cond_19
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_20

    .line 471
    goto :goto_18

    .line 469
    :catch_20
    move-exception v0

    .line 470
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IO error closing adb backup file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "BackupManagerService"

    invoke-static {v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    .end local v0    # "e":Ljava/io/IOException;
    :goto_18
    iget-object v6, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v6

    .line 473
    :try_start_26
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 474
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 475
    monitor-exit v6
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_10

    .line 476
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    .line 477
    invoke-virtual {v15}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 479
    const-string v0, "BackupManagerService"

    const-string v5, "Full backup pass complete."

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 386
    return-void

    .line 475
    :catchall_10
    move-exception v0

    :try_start_27
    monitor-exit v6
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_10

    throw v0

    .line 460
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "finalOutput":Ljava/io/OutputStream;
    .end local v17    # "encrypting":Z
    .end local v29    # "headerbuf":Ljava/lang/StringBuilder;
    :catch_21
    move-exception v0

    goto :goto_19

    .line 458
    :catch_22
    move-exception v0

    goto/16 :goto_1b

    .line 463
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v30    # "ofstream":Ljava/io/FileOutputStream;
    .end local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    :catchall_11
    move-exception v0

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move v5, v10

    move-object/from16 v18, v11

    move-object v1, v0

    move-object v4, v2

    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v30    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    goto/16 :goto_1f

    .line 460
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v30    # "ofstream":Ljava/io/FileOutputStream;
    .end local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    :catch_23
    move-exception v0

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move v5, v10

    move-object/from16 v18, v11

    .line 461
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v30    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :goto_19
    :try_start_28
    const-string v1, "BackupManagerService"

    const-string v4, "Internal exception during full backup"

    invoke-static {v1, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_14

    .line 464
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_1a

    .line 465
    :try_start_29
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 466
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 468
    :cond_1a
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_24

    .line 471
    goto :goto_1a

    .line 469
    :catch_24
    move-exception v0

    .line 470
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IO error closing adb backup file: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "BackupManagerService"

    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1a
    iget-object v1, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 473
    :try_start_2a
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 474
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 475
    monitor-exit v1

    goto :goto_1d

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_12

    throw v0

    .line 458
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v30    # "ofstream":Ljava/io/FileOutputStream;
    .end local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    :catch_25
    move-exception v0

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move v5, v10

    move-object/from16 v18, v11

    .line 459
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v30    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :goto_1b
    :try_start_2b
    const-string v1, "BackupManagerService"

    const-string v4, "App died during full backup"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_14

    .line 464
    .end local v0    # "e":Landroid/os/RemoteException;
    if-eqz v2, :cond_1b

    .line 465
    :try_start_2c
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 466
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 468
    :cond_1b
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_26

    .line 471
    goto :goto_1c

    .line 469
    :catch_26
    move-exception v0

    .line 470
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IO error closing adb backup file: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "BackupManagerService"

    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1c
    iget-object v1, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 473
    :try_start_2d
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 474
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 475
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_13

    .line 476
    :goto_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    .line 477
    invoke-virtual {v15}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 479
    const-string v0, "BackupManagerService"

    const-string v1, "Full backup pass complete."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 482
    nop

    .line 483
    :goto_1e
    return-void

    .line 475
    :catchall_13
    move-exception v0

    :try_start_2e
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_13

    throw v0

    .line 463
    :catchall_14
    move-exception v0

    move-object v1, v0

    move-object v4, v2

    .line 464
    .end local v2    # "out":Ljava/io/OutputStream;
    .local v4, "out":Ljava/io/OutputStream;
    :goto_1f
    if-eqz v4, :cond_1c

    .line 465
    :try_start_2f
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 466
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 468
    :cond_1c
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_2f} :catch_27

    .line 471
    goto :goto_20

    .line 469
    :catch_27
    move-exception v0

    .line 470
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IO error closing adb backup file: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "BackupManagerService"

    invoke-static {v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    .end local v0    # "e":Ljava/io/IOException;
    :goto_20
    iget-object v2, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 473
    :try_start_30
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 474
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 475
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_15

    .line 476
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    .line 477
    invoke-virtual {v15}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 479
    const-string v0, "BackupManagerService"

    const-string v2, "Full backup pass complete."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v1

    .line 475
    :catchall_15
    move-exception v0

    :try_start_31
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_15

    throw v0
.end method
