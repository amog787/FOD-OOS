.class public final Lcom/android/server/accounts/AccountManagerBackupHelper;
.super Ljava/lang/Object;
.source "AccountManagerBackupHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accounts/AccountManagerBackupHelper$CancelRestoreCommand;,
        Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;,
        Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;
    }
.end annotation


# static fields
.field private static final ATTR_ACCOUNT_SHA_256:Ljava/lang/String; = "account-sha-256"

.field private static final ATTR_DIGEST:Ljava/lang/String; = "digest"

.field private static final ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final PENDING_RESTORE_TIMEOUT_MILLIS:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "AccountManagerBackupHelper"

.field private static final TAG_PERMISSION:Ljava/lang/String; = "permission"

.field private static final TAG_PERMISSIONS:Ljava/lang/String; = "permissions"


# instance fields
.field private final mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

.field private final mAccountManagerService:Lcom/android/server/accounts/AccountManagerService;

.field private final mLock:Ljava/lang/Object;

.field private mRestoreCancelCommand:Ljava/lang/Runnable;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mRestorePackageMonitor:Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mRestorePendingAppPermissions:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/AccountManagerInternal;)V
    .locals 1
    .param p1, "accountManagerService"    # Lcom/android/server/accounts/AccountManagerService;
    .param p2, "accountManagerInternal"    # Landroid/accounts/AccountManagerInternal;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mLock:Ljava/lang/Object;

    .line 83
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerService:Lcom/android/server/accounts/AccountManagerService;

    .line 84
    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/accounts/AccountManagerBackupHelper;)Lcom/android/server/accounts/AccountManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerBackupHelper;

    .line 56
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerService:Lcom/android/server/accounts/AccountManagerService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/accounts/AccountManagerBackupHelper;)Landroid/accounts/AccountManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerBackupHelper;

    .line 56
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerBackupHelper;

    .line 56
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerBackupHelper;

    .line 56
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestorePendingAppPermissions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/accounts/AccountManagerBackupHelper;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerBackupHelper;
    .param p1, "x1"    # Ljava/util/List;

    .line 56
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestorePendingAppPermissions:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerBackupHelper;

    .line 56
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestoreCancelCommand:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/accounts/AccountManagerBackupHelper;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerBackupHelper;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .line 56
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestoreCancelCommand:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/accounts/AccountManagerBackupHelper;)Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerBackupHelper;

    .line 56
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestorePackageMonitor:Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/accounts/AccountManagerBackupHelper;Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;)Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerBackupHelper;
    .param p1, "x1"    # Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;

    .line 56
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestorePackageMonitor:Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;

    return-object p1
.end method


# virtual methods
.method public backupAccountAccessPermissions(I)[B
    .locals 20
    .param p1, "userId"    # I

    .line 155
    move-object/from16 v1, p0

    move/from16 v2, p1

    iget-object v0, v1, Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerService:Lcom/android/server/accounts/AccountManagerService;

    .line 156
    invoke-virtual {v0, v2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v3

    .line 157
    .local v3, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v4, v3, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v4

    .line 158
    :try_start_0
    iget-object v5, v3, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 159
    :try_start_1
    iget-object v0, v3, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 160
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->findAllAccountGrants()Ljava/util/List;

    move-result-object v0

    move-object v6, v0

    .line 161
    .local v6, "allAccountGrants":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    .line 162
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v7

    .line 213
    .end local v6    # "allAccountGrants":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :catchall_0
    move-exception v0

    move-object/from16 v17, v3

    goto/16 :goto_5

    .line 212
    :catchall_1
    move-exception v0

    move-object/from16 v17, v3

    goto/16 :goto_4

    .line 165
    .restart local v6    # "allAccountGrants":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_0
    :try_start_4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v8, v0

    .line 166
    .local v8, "dataStream":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    move-object v9, v0

    .line 167
    .local v9, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 168
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v9, v7, v0}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 169
    const-string/jumbo v0, "permissions"

    invoke-interface {v9, v7, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 171
    iget-object v0, v1, Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerService:Lcom/android/server/accounts/AccountManagerService;

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 172
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object v10, v0

    .line 173
    .local v10, "packageManager":Landroid/content/pm/PackageManager;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    move-object v12, v0

    .line 174
    .local v12, "grant":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v0, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    move-object v13, v0

    .line 175
    .local v13, "accountName":Ljava/lang/String;
    iget-object v0, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v14, v0

    .line 177
    .local v14, "uid":I
    invoke-virtual {v10, v14}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .line 178
    .local v15, "packageNames":[Ljava/lang/String;
    if-nez v15, :cond_1

    .line 179
    goto :goto_0

    .line 182
    :cond_1
    array-length v7, v15

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v7, :cond_3

    aget-object v0, v15, v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v16, v0

    .line 185
    .local v16, "packageName":Ljava/lang/String;
    const/16 v0, 0x40

    move-object/from16 v17, v3

    move-object/from16 v3, v16

    .end local v16    # "packageName":Ljava/lang/String;
    .local v3, "packageName":Ljava/lang/String;
    .local v17, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :try_start_5
    invoke-virtual {v10, v3, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 191
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    nop

    .line 192
    :try_start_6
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v2}, Landroid/util/PackageUtils;->computeSignaturesSha256Digest([Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "digest":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 195
    move-object/from16 v16, v0

    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    .local v16, "packageInfo":Landroid/content/pm/PackageInfo;
    const-string/jumbo v0, "permission"
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object/from16 v18, v6

    const/4 v6, 0x0

    .end local v6    # "allAccountGrants":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .local v18, "allAccountGrants":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :try_start_7
    invoke-interface {v9, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 196
    const-string v0, "account-sha-256"

    .line 197
    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, Landroid/util/PackageUtils;->computeSha256Digest([B)Ljava/lang/String;

    move-result-object v6

    .line 196
    move/from16 v19, v7

    const/4 v7, 0x0

    invoke-interface {v9, v7, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 198
    const-string/jumbo v0, "package"

    invoke-interface {v9, v7, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 199
    const-string v0, "digest"

    invoke-interface {v9, v7, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 200
    const-string/jumbo v0, "permission"

    invoke-interface {v9, v7, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2

    .line 194
    .end local v16    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v18    # "allAccountGrants":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .restart local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v6    # "allAccountGrants":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_2
    move-object/from16 v16, v0

    move-object/from16 v18, v6

    move/from16 v19, v7

    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "allAccountGrants":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .restart local v16    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v18    # "allAccountGrants":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    goto :goto_2

    .line 208
    .end local v2    # "digest":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v8    # "dataStream":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v10    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v12    # "grant":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v13    # "accountName":Ljava/lang/String;
    .end local v14    # "uid":I
    .end local v15    # "packageNames":[Ljava/lang/String;
    .end local v16    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v18    # "allAccountGrants":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .restart local v6    # "allAccountGrants":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :catch_0
    move-exception v0

    move-object/from16 v18, v6

    .end local v6    # "allAccountGrants":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .restart local v18    # "allAccountGrants":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    goto :goto_3

    .line 187
    .end local v18    # "allAccountGrants":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v6    # "allAccountGrants":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .restart local v8    # "dataStream":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v10    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v12    # "grant":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v13    # "accountName":Ljava/lang/String;
    .restart local v14    # "uid":I
    .restart local v15    # "packageNames":[Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object/from16 v18, v6

    move/from16 v19, v7

    move-object v2, v0

    .end local v6    # "allAccountGrants":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .restart local v18    # "allAccountGrants":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    move-object v0, v2

    .line 188
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "AccountManagerBackupHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping backup of account access grant for non-existing package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    nop

    .line 182
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "packageName":Ljava/lang/String;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    move/from16 v2, p1

    move-object/from16 v3, v17

    move-object/from16 v6, v18

    move/from16 v7, v19

    goto :goto_1

    .end local v17    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v18    # "allAccountGrants":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .local v3, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local v6    # "allAccountGrants":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_3
    move-object/from16 v17, v3

    move-object/from16 v18, v6

    .line 203
    .end local v3    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v6    # "allAccountGrants":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v12    # "grant":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v13    # "accountName":Ljava/lang/String;
    .end local v14    # "uid":I
    .end local v15    # "packageNames":[Ljava/lang/String;
    .restart local v17    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local v18    # "allAccountGrants":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    const/4 v7, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p1

    goto/16 :goto_0

    .line 204
    .end local v17    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v18    # "allAccountGrants":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .restart local v3    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local v6    # "allAccountGrants":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_4
    move-object/from16 v17, v3

    move-object/from16 v18, v6

    .end local v3    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v6    # "allAccountGrants":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .restart local v17    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local v18    # "allAccountGrants":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    const-string/jumbo v0, "permissions"

    const/4 v1, 0x0

    invoke-interface {v9, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 205
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 206
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 207
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    return-object v0

    .line 208
    .end local v8    # "dataStream":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v10    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_2
    move-exception v0

    goto :goto_3

    .end local v17    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v18    # "allAccountGrants":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .restart local v3    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local v6    # "allAccountGrants":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :catch_3
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v18, v6

    .line 209
    .end local v3    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v6    # "allAccountGrants":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .local v0, "e":Ljava/io/IOException;
    .restart local v17    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local v18    # "allAccountGrants":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :goto_3
    :try_start_a
    const-string v1, "AccountManagerBackupHelper"

    const-string v2, "Error backing up account access grants"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    const/4 v1, 0x0

    return-object v1

    .line 212
    .end local v0    # "e":Ljava/io/IOException;
    .end local v17    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v18    # "allAccountGrants":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .restart local v3    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_2
    move-exception v0

    move-object/from16 v17, v3

    .end local v3    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local v17    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :goto_4
    :try_start_c
    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .end local v17    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local p0    # "this":Lcom/android/server/accounts/AccountManagerBackupHelper;
    .end local p1    # "userId":I
    :try_start_d
    throw v0

    .restart local v17    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local p0    # "this":Lcom/android/server/accounts/AccountManagerBackupHelper;
    .restart local p1    # "userId":I
    :catchall_3
    move-exception v0

    goto :goto_4

    .line 213
    .end local v17    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local v3    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_4
    move-exception v0

    move-object/from16 v17, v3

    .end local v3    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local v17    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :goto_5
    monitor-exit v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    throw v0

    :catchall_5
    move-exception v0

    goto :goto_5
.end method

.method public restoreAccountAccessPermissions([BI)V
    .locals 16
    .param p1, "data"    # [B
    .param p2, "userId"    # I

    move-object/from16 v7, p0

    .line 218
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v8, p1

    :try_start_1
    invoke-direct {v0, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v9, v0

    .line 219
    .local v9, "dataStream":Ljava/io/ByteArrayInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v10, v0

    .line 220
    .local v10, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v9, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 221
    iget-object v0, v7, Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerService:Lcom/android/server/accounts/AccountManagerService;

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object v11, v0

    .line 223
    .local v11, "packageManager":Landroid/content/pm/PackageManager;
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    move v12, v0

    .line 224
    .local v12, "permissionsOuterDepth":I
    :goto_0
    invoke-static {v10, v12}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v0

    const/4 v13, 0x0

    if-eqz v0, :cond_9

    .line 225
    const-string/jumbo v0, "permissions"

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    goto :goto_0

    .line 228
    :cond_0
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    move v14, v0

    .line 229
    .local v14, "permissionOuterDepth":I
    :goto_1
    invoke-static {v10, v14}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 230
    const-string/jumbo v0, "permission"

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 231
    goto :goto_1

    .line 233
    :cond_1
    const-string v0, "account-sha-256"

    invoke-interface {v10, v13, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 234
    .local v3, "accountDigest":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 235
    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 237
    :cond_2
    const-string/jumbo v0, "package"

    invoke-interface {v10, v13, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 238
    .local v4, "packageName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 239
    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 241
    :cond_3
    const-string v0, "digest"

    invoke-interface {v10, v13, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 242
    .local v5, "digest":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 243
    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 246
    :cond_4
    new-instance v0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;

    move-object v1, v0

    move-object/from16 v2, p0

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;-><init>(Lcom/android/server/accounts/AccountManagerBackupHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v1, v0

    .line 249
    .local v1, "pendingAppPermission":Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;
    invoke-virtual {v1, v11}, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->apply(Landroid/content/pm/PackageManager;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 250
    iget-object v2, v7, Lcom/android/server/accounts/AccountManagerBackupHelper;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 252
    :try_start_2
    iget-object v0, v7, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestorePackageMonitor:Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;

    if-nez v0, :cond_5

    .line 253
    new-instance v0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;

    invoke-direct {v0, v7, v13}, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;-><init>(Lcom/android/server/accounts/AccountManagerBackupHelper;Lcom/android/server/accounts/AccountManagerBackupHelper$1;)V

    iput-object v0, v7, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestorePackageMonitor:Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;

    .line 254
    iget-object v0, v7, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestorePackageMonitor:Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;

    iget-object v6, v7, Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerService:Lcom/android/server/accounts/AccountManagerService;

    iget-object v6, v6, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    iget-object v15, v7, Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerService:Lcom/android/server/accounts/AccountManagerService;

    iget-object v15, v15, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    .line 255
    invoke-virtual {v15}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->getLooper()Landroid/os/Looper;

    move-result-object v15

    const/4 v13, 0x1

    .line 254
    invoke-virtual {v0, v6, v15, v13}, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 257
    :cond_5
    iget-object v0, v7, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestorePendingAppPermissions:Ljava/util/List;

    if-nez v0, :cond_6

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestorePendingAppPermissions:Ljava/util/List;

    .line 260
    :cond_6
    iget-object v0, v7, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestorePendingAppPermissions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local p0    # "this":Lcom/android/server/accounts/AccountManagerBackupHelper;
    .end local p1    # "data":[B
    .end local p2    # "userId":I
    :try_start_3
    throw v0

    .line 263
    .end local v1    # "pendingAppPermission":Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;
    .end local v3    # "accountDigest":Ljava/lang/String;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "digest":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/accounts/AccountManagerBackupHelper;
    .restart local p1    # "data":[B
    .restart local p2    # "userId":I
    :cond_7
    :goto_2
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 264
    .end local v14    # "permissionOuterDepth":I
    :cond_8
    goto/16 :goto_0

    .line 267
    :cond_9
    new-instance v0, Lcom/android/server/accounts/AccountManagerBackupHelper$CancelRestoreCommand;

    const/4 v1, 0x0

    invoke-direct {v0, v7, v1}, Lcom/android/server/accounts/AccountManagerBackupHelper$CancelRestoreCommand;-><init>(Lcom/android/server/accounts/AccountManagerBackupHelper;Lcom/android/server/accounts/AccountManagerBackupHelper$1;)V

    iput-object v0, v7, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestoreCancelCommand:Ljava/lang/Runnable;

    .line 268
    iget-object v0, v7, Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerService:Lcom/android/server/accounts/AccountManagerService;

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    iget-object v1, v7, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestoreCancelCommand:Ljava/lang/Runnable;

    const-wide/32 v2, 0x36ee80

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 272
    nop

    .end local v9    # "dataStream":Ljava/io/ByteArrayInputStream;
    .end local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v11    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v12    # "permissionsOuterDepth":I
    goto :goto_4

    .line 270
    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v8, p1

    .line 271
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    const-string v1, "AccountManagerBackupHelper"

    const-string v2, "Error restoring app permissions"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 273
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return-void
.end method
