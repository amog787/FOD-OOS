.class public Lcom/android/server/backup/utils/AppBackupUtils;
.super Ljava/lang/Object;
.source "AppBackupUtils.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final systemPackagesWhitelistedForAllUsers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    const-string v0, "@pm@"

    const-string v1, "android"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/backup/utils/AppBackupUtils;->systemPackagesWhitelistedForAllUsers:Ljava/util/Set;

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z
    .locals 3
    .param p0, "pkg"    # Landroid/content/pm/PackageInfo;

    .line 192
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x4000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 198
    :cond_1
    return v1
.end method

.method static appIsDisabled(Landroid/content/pm/ApplicationInfo;I)Z
    .locals 1
    .param p0, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "userId"    # I

    .line 151
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p0, v0, p1}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsDisabled(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManagerInternal;I)Z

    move-result v0

    return v0
.end method

.method static appIsDisabled(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManagerInternal;I)Z
    .locals 3
    .param p0, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "packageManager"    # Landroid/content/pm/PackageManagerInternal;
    .param p2, "userId"    # I

    .line 157
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Landroid/content/pm/PackageManagerInternal;->getApplicationEnabledState(Ljava/lang/String;I)I

    move-result v0

    .line 159
    .local v0, "enabledSetting":I
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    .line 167
    const/4 v1, 0x0

    return v1

    .line 163
    :cond_0
    return v1

    .line 165
    :cond_1
    iget-boolean v2, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    xor-int/2addr v1, v2

    return v1
.end method

.method public static appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;I)Z
    .locals 1
    .param p0, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "userId"    # I

    .line 68
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 69
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 68
    invoke-static {p0, v0, p1}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManagerInternal;I)Z

    move-result v0

    return v0
.end method

.method static appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManagerInternal;I)Z
    .locals 3
    .param p0, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "packageManager"    # Landroid/content/pm/PackageManagerInternal;
    .param p2, "userId"    # I

    .line 76
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 77
    return v1

    .line 81
    :cond_0
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    if-eqz p2, :cond_1

    sget-object v0, Lcom/android/server/backup/utils/AppBackupUtils;->systemPackagesWhitelistedForAllUsers:Ljava/util/Set;

    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 84
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 85
    return v1

    .line 89
    :cond_1
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 90
    return v1

    .line 95
    :cond_2
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.android.sharedstoragebackup"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 96
    return v1

    .line 100
    :cond_3
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 101
    return v1

    .line 104
    :cond_4
    invoke-static {p0, p1, p2}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsDisabled(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManagerInternal;I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static appIsKeyValueOnly(Landroid/content/pm/PackageInfo;)Z
    .locals 1
    .param p0, "pkg"    # Landroid/content/pm/PackageInfo;

    .line 206
    invoke-static {p0}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static appIsRunningAndEligibleForBackupWithTransport(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;Landroid/content/pm/PackageManager;I)Z
    .locals 7
    .param p0, "transportClient"    # Lcom/android/server/backup/transport/TransportClient;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "userId"    # I

    .line 123
    const/high16 v0, 0x8000000

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p2, p1, v0, p3}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 125
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 126
    .local v2, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-static {v2, p3}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 127
    invoke-static {v2}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsStopped(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 128
    invoke-static {v2, p3}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsDisabled(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    if-eqz p0, :cond_1

    .line 133
    :try_start_1
    const-string v3, "AppBackupUtils.appIsRunningAndEligibleForBackupWithTransport"

    .line 134
    invoke-virtual {p0, v3}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v3

    .line 136
    .local v3, "transport":Lcom/android/internal/backup/IBackupTransport;
    nop

    .line 137
    invoke-static {v0}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    .line 136
    invoke-interface {v3, v0, v4}, Lcom/android/internal/backup/IBackupTransport;->isAppEligibleForBackup(Landroid/content/pm/PackageInfo;Z)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    .line 138
    .end local v3    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catch_0
    move-exception v3

    .line 139
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to ask about eligibility: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 143
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 129
    :cond_2
    :goto_0
    return v1

    .line 144
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v0

    .line 145
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v1
.end method

.method public static appIsStopped(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2
    .param p0, "app"    # Landroid/content/pm/ApplicationInfo;

    .line 184
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManagerInternal;)Z
    .locals 11
    .param p0, "storedSigs"    # [Landroid/content/pm/Signature;
    .param p1, "target"    # Landroid/content/pm/PackageInfo;
    .param p2, "pmi"    # Landroid/content/pm/PackageManagerInternal;

    .line 229
    const/4 v0, 0x0

    if-eqz p1, :cond_9

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_3

    .line 238
    :cond_0
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 242
    return v2

    .line 246
    :cond_1
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 247
    return v0

    .line 250
    :cond_2
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 251
    .local v1, "signingInfo":Landroid/content/pm/SigningInfo;
    if-nez v1, :cond_3

    .line 252
    const-string v2, "BackupManagerService"

    const-string/jumbo v3, "signingInfo is empty, app was either unsigned or the flag PackageManager#GET_SIGNING_CERTIFICATES was not specified"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return v0

    .line 262
    :cond_3
    array-length v3, p0

    .line 263
    .local v3, "nStored":I
    if-ne v3, v2, :cond_4

    .line 269
    aget-object v0, p0, v0

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0, v2}, Landroid/content/pm/PackageManagerInternal;->isDataRestoreSafe(Landroid/content/pm/Signature;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 274
    :cond_4
    invoke-virtual {v1}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v4

    .line 275
    .local v4, "deviceSigs":[Landroid/content/pm/Signature;
    array-length v5, v4

    .line 278
    .local v5, "nDevice":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v3, :cond_8

    .line 279
    const/4 v7, 0x0

    .line 280
    .local v7, "match":Z
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    if-ge v8, v5, :cond_6

    .line 281
    aget-object v9, p0, v6

    aget-object v10, v4, v8

    invoke-virtual {v9, v10}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 282
    const/4 v7, 0x1

    .line 283
    goto :goto_2

    .line 280
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 286
    .end local v8    # "j":I
    :cond_6
    :goto_2
    if-nez v7, :cond_7

    .line 287
    return v0

    .line 278
    .end local v7    # "match":Z
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 291
    .end local v6    # "i":I
    :cond_8
    return v2

    .line 230
    .end local v1    # "signingInfo":Landroid/content/pm/SigningInfo;
    .end local v3    # "nStored":I
    .end local v4    # "deviceSigs":[Landroid/content/pm/Signature;
    .end local v5    # "nDevice":I
    :cond_9
    :goto_3
    return v0
.end method
