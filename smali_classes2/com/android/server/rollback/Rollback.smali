.class Lcom/android/server/rollback/Rollback;
.super Ljava/lang/Object;
.source "Rollback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/rollback/Rollback$RollbackState;
    }
.end annotation


# static fields
.field static final ROLLBACK_STATE_AVAILABLE:I = 0x1

.field static final ROLLBACK_STATE_COMMITTED:I = 0x3

.field static final ROLLBACK_STATE_DELETED:I = 0x4

.field static final ROLLBACK_STATE_ENABLING:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RollbackManager"


# instance fields
.field public final info:Landroid/content/rollback/RollbackInfo;

.field private mApkSessionId:I

.field private final mBackupDir:Ljava/io/File;

.field private final mExtensionVersions:Landroid/util/SparseIntArray;

.field public final mInstallerPackageName:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private mNumPackageSessionsWithSuccess:I

.field private final mPackageSessionIds:[I

.field private mRestoreUserDataInProgress:Z

.field private final mStagedSessionId:I

.field private mState:I

.field private mTimestamp:Ljava/time/Instant;

.field public final mUserId:I


# direct methods
.method constructor <init>(ILjava/io/File;IILjava/lang/String;)V
    .locals 8
    .param p1, "rollbackId"    # I
    .param p2, "backupDir"    # Ljava/io/File;
    .param p3, "stagedSessionId"    # I
    .param p4, "userId"    # I
    .param p5, "installerPackageName"    # Ljava/lang/String;

    .line 219
    new-instance v7, Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    invoke-direct {v7, v0}, Landroid/util/SparseIntArray;-><init>(I)V

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/rollback/Rollback;-><init>(ILjava/io/File;IILjava/lang/String;[ILandroid/util/SparseIntArray;)V

    .line 221
    return-void
.end method

.method constructor <init>(ILjava/io/File;IILjava/lang/String;[ILandroid/util/SparseIntArray;)V
    .locals 11
    .param p1, "rollbackId"    # I
    .param p2, "backupDir"    # Ljava/io/File;
    .param p3, "stagedSessionId"    # I
    .param p4, "userId"    # I
    .param p5, "installerPackageName"    # Ljava/lang/String;
    .param p6, "packageSessionIds"    # [I
    .param p7, "extensionVersions"    # Landroid/util/SparseIntArray;

    .line 201
    move-object v0, p0

    move v1, p3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    const/4 v2, -0x1

    iput v2, v0, Lcom/android/server/rollback/Rollback;->mApkSessionId:I

    .line 146
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    .line 152
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    .line 202
    new-instance v4, Landroid/content/rollback/RollbackInfo;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-eq v1, v2, :cond_0

    const/4 v2, 0x1

    move v8, v2

    goto :goto_0

    :cond_0
    move v8, v3

    :goto_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, -0x1

    move-object v5, v4

    move v6, p1

    invoke-direct/range {v5 .. v10}, Landroid/content/rollback/RollbackInfo;-><init>(ILjava/util/List;ZLjava/util/List;I)V

    iput-object v4, v0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 207
    move v2, p4

    iput v2, v0, Lcom/android/server/rollback/Rollback;->mUserId:I

    .line 208
    move-object/from16 v4, p5

    iput-object v4, v0, Lcom/android/server/rollback/Rollback;->mInstallerPackageName:Ljava/lang/String;

    .line 209
    move-object v5, p2

    iput-object v5, v0, Lcom/android/server/rollback/Rollback;->mBackupDir:Ljava/io/File;

    .line 210
    iput v1, v0, Lcom/android/server/rollback/Rollback;->mStagedSessionId:I

    .line 211
    iput v3, v0, Lcom/android/server/rollback/Rollback;->mState:I

    .line 212
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/rollback/Rollback;->mTimestamp:Ljava/time/Instant;

    .line 213
    if-eqz p6, :cond_1

    move-object/from16 v3, p6

    goto :goto_1

    :cond_1
    new-array v3, v3, [I

    :goto_1
    iput-object v3, v0, Lcom/android/server/rollback/Rollback;->mPackageSessionIds:[I

    .line 214
    invoke-static/range {p7 .. p7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, p7

    check-cast v3, Landroid/util/SparseIntArray;

    iput-object v3, v0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    .line 215
    return-void
.end method

.method constructor <init>(Landroid/content/rollback/RollbackInfo;Ljava/io/File;Ljava/time/Instant;IIIZILjava/lang/String;Landroid/util/SparseIntArray;)V
    .locals 2
    .param p1, "info"    # Landroid/content/rollback/RollbackInfo;
    .param p2, "backupDir"    # Ljava/io/File;
    .param p3, "timestamp"    # Ljava/time/Instant;
    .param p4, "stagedSessionId"    # I
    .param p5, "state"    # I
    .param p6, "apkSessionId"    # I
    .param p7, "restoreUserDataInProgress"    # Z
    .param p8, "userId"    # I
    .param p9, "installerPackageName"    # Ljava/lang/String;
    .param p10, "extensionVersions"    # Landroid/util/SparseIntArray;

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/rollback/Rollback;->mApkSessionId:I

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    .line 152
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    .line 229
    iput-object p1, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 230
    iput p8, p0, Lcom/android/server/rollback/Rollback;->mUserId:I

    .line 231
    iput-object p9, p0, Lcom/android/server/rollback/Rollback;->mInstallerPackageName:Ljava/lang/String;

    .line 232
    iput-object p2, p0, Lcom/android/server/rollback/Rollback;->mBackupDir:Ljava/io/File;

    .line 233
    iput-object p3, p0, Lcom/android/server/rollback/Rollback;->mTimestamp:Ljava/time/Instant;

    .line 234
    iput p4, p0, Lcom/android/server/rollback/Rollback;->mStagedSessionId:I

    .line 235
    iput p5, p0, Lcom/android/server/rollback/Rollback;->mState:I

    .line 236
    iput p6, p0, Lcom/android/server/rollback/Rollback;->mApkSessionId:I

    .line 237
    iput-boolean p7, p0, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    .line 238
    invoke-static {p10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p10

    check-cast v1, Landroid/util/SparseIntArray;

    iput-object v1, p0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    .line 243
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/rollback/Rollback;->mPackageSessionIds:[I

    .line 244
    return-void
.end method

.method private containsApex()Z
    .locals 3

    .line 905
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/rollback/PackageRollbackInfo;

    .line 906
    .local v1, "pkgInfo":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->isApex()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 907
    const/4 v0, 0x1

    return v0

    .line 909
    .end local v1    # "pkgInfo":Landroid/content/rollback/PackageRollbackInfo;
    :cond_0
    goto :goto_0

    .line 910
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static extensionVersionReductionWouldViolateConstraint(Landroid/util/SparseIntArray;Landroid/content/pm/PackageManagerInternal;)Z
    .locals 8
    .param p0, "rollbackExtVers"    # Landroid/util/SparseIntArray;
    .param p1, "pmi"    # Landroid/content/pm/PackageManagerInternal;

    .line 870
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 871
    return v1

    .line 873
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/PackageManagerInternal;->getPackageList()Lcom/android/server/pm/PackageList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageList;->getPackageNames()Ljava/util/List;

    move-result-object v0

    .line 874
    .local v0, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 875
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    .line 876
    .local v3, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getMinExtensionVersions()Landroid/util/SparseIntArray;

    move-result-object v4

    .line 877
    .local v4, "minExtVers":Landroid/util/SparseIntArray;
    if-nez v4, :cond_1

    .line 878
    goto :goto_2

    .line 880
    :cond_1
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 881
    invoke-virtual {p0, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    const/4 v7, -0x1

    invoke-virtual {v4, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    .line 882
    .local v6, "minExt":I
    invoke-virtual {p0, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    if-ge v7, v6, :cond_2

    .line 883
    const/4 v1, 0x1

    return v1

    .line 880
    .end local v6    # "minExt":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 874
    .end local v3    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v4    # "minExtVers":Landroid/util/SparseIntArray;
    .end local v5    # "j":I
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 887
    .end local v2    # "i":I
    :cond_4
    return v1
.end method

.method static rollbackStateFromString(Ljava/lang/String;)I
    .locals 5
    .param p0, "state"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 849
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x58e10884

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_3

    const v1, -0x2bbe7537

    if-eq v0, v1, :cond_2

    const v1, 0x61e1ed80

    if-eq v0, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v0, "enabling"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :cond_2
    const-string v0, "available"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :cond_3
    const-string v0, "committed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v4, :cond_5

    if-ne v0, v2, :cond_4

    .line 852
    const/4 v0, 0x3

    return v0

    .line 854
    :cond_4
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid rollback state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 851
    :cond_5
    return v4

    .line 850
    :cond_6
    return v3
.end method

.method static rollbackStateToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "state"    # I

    .line 839
    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 842
    const-string v0, "committed"

    return-object v0

    .line 844
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid rollback state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 841
    :cond_1
    const-string v0, "available"

    return-object v0

    .line 840
    :cond_2
    const-string v0, "enabling"

    return-object v0
.end method

.method private wasCreatedAtLowerExtensionVersion()Z
    .locals 3

    .line 895
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 896
    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/ext/SdkExtensions;->getExtensionVersion(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    .line 897
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    if-le v1, v2, :cond_0

    .line 898
    const/4 v1, 0x1

    return v1

    .line 895
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 901
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method allPackagesEnabled()Z
    .locals 5

    .line 827
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 828
    const/4 v1, 0x0

    .line 829
    .local v1, "packagesWithoutApkInApex":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/rollback/PackageRollbackInfo;

    .line 830
    .local v3, "rollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual {v3}, Landroid/content/rollback/PackageRollbackInfo;->isApkInApex()Z

    move-result v4

    if-nez v4, :cond_0

    .line 831
    add-int/lit8 v1, v1, 0x1

    .line 833
    .end local v3    # "rollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    :cond_0
    goto :goto_0

    .line 834
    :cond_1
    iget-object v2, p0, Lcom/android/server/rollback/Rollback;->mPackageSessionIds:[I

    array-length v2, v2

    if-ne v1, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    monitor-exit v0

    return v2

    .line 835
    .end local v1    # "packagesWithoutApkInApex":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method commit(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Landroid/content/IntentSender;)V
    .locals 30
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "callerPackageName"    # Ljava/lang/String;
    .param p4, "statusReceiver"    # Landroid/content/IntentSender;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/IntentSender;",
            ")V"
        }
    .end annotation

    .line 471
    .local p2, "causePackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    iget-object v4, v1, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 472
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/rollback/Rollback;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 473
    const/4 v0, 0x2

    const-string v5, "Rollback unavailable"

    invoke-static {v2, v3, v0, v5}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V

    .line 476
    monitor-exit v4

    return-void

    .line 479
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/rollback/Rollback;->containsApex()Z

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/rollback/Rollback;->wasCreatedAtLowerExtensionVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 480
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 481
    .local v0, "pmi":Landroid/content/pm/PackageManagerInternal;
    iget-object v6, v1, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    invoke-static {v6, v0}, Lcom/android/server/rollback/Rollback;->extensionVersionReductionWouldViolateConstraint(Landroid/util/SparseIntArray;Landroid/content/pm/PackageManagerInternal;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 482
    const-string v6, "Rollback may violate a minExtensionVersion constraint"

    invoke-static {v2, v3, v5, v6}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V

    .line 484
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    return-void

    .line 491
    .end local v0    # "pmi":Landroid/content/pm/PackageManagerInternal;
    :cond_1
    :try_start_1
    iget v0, v1, Lcom/android/server/rollback/Rollback;->mUserId:I

    .line 492
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 491
    const/4 v6, 0x0

    move-object/from16 v7, p3

    invoke-virtual {v2, v7, v6, v0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object v8, v0

    .line 497
    .local v8, "pkgContext":Landroid/content/Context;
    nop

    .line 499
    :try_start_2
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object v9, v0

    .line 501
    .local v9, "pm":Landroid/content/pm/PackageManager;
    :try_start_3
    invoke-virtual {v9}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    move-object v10, v0

    .line 502
    .local v10, "packageInstaller":Landroid/content/pm/PackageInstaller;
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-direct {v0, v5}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    move-object v11, v0

    .line 504
    .local v11, "parentParams":Landroid/content/pm/PackageInstaller$SessionParams;
    invoke-virtual {v11, v5}, Landroid/content/pm/PackageInstaller$SessionParams;->setRequestDowngrade(Z)V

    .line 505
    invoke-virtual {v11}, Landroid/content/pm/PackageInstaller$SessionParams;->setMultiPackage()V

    .line 506
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/rollback/Rollback;->isStaged()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 507
    invoke-virtual {v11}, Landroid/content/pm/PackageInstaller$SessionParams;->setStaged()V

    .line 509
    :cond_2
    const/4 v0, 0x5

    invoke-virtual {v11, v0}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallReason(I)V

    .line 511
    invoke-virtual {v10, v11}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v0

    move v12, v0

    .line 512
    .local v12, "parentSessionId":I
    invoke-virtual {v10, v12}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v0

    move-object v13, v0

    .line 515
    .local v13, "parentSession":Landroid/content/pm/PackageInstaller$Session;
    iget-object v0, v1, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/rollback/PackageRollbackInfo;

    .line 516
    .local v14, "pkgRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual {v14}, Landroid/content/rollback/PackageRollbackInfo;->isApkInApex()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 519
    goto :goto_0

    .line 521
    :cond_3
    new-instance v15, Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-direct {v15, v5}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 523
    .local v15, "params":Landroid/content/pm/PackageInstaller$SessionParams;
    iget-object v6, v1, Lcom/android/server/rollback/Rollback;->mInstallerPackageName:Ljava/lang/String;

    .line 524
    .local v6, "installerPackageName":Ljava/lang/String;
    iget-object v5, v1, Lcom/android/server/rollback/Rollback;->mInstallerPackageName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 525
    nop

    .line 526
    invoke-virtual {v14}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 525
    invoke-virtual {v9, v5}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .line 528
    :cond_4
    if-eqz v6, :cond_5

    .line 529
    invoke-virtual {v15, v6}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallerPackageName(Ljava/lang/String;)V

    .line 531
    :cond_5
    const/4 v5, 0x1

    invoke-virtual {v15, v5}, Landroid/content/pm/PackageInstaller$SessionParams;->setRequestDowngrade(Z)V

    .line 532
    nop

    .line 533
    invoke-virtual {v14}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    move-result-object v5

    move-object/from16 v16, v6

    .end local v6    # "installerPackageName":Ljava/lang/String;
    .local v16, "installerPackageName":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v5

    .line 532
    invoke-virtual {v15, v5, v6}, Landroid/content/pm/PackageInstaller$SessionParams;->setRequiredInstalledVersionCode(J)V

    .line 534
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/rollback/Rollback;->isStaged()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 535
    invoke-virtual {v15}, Landroid/content/pm/PackageInstaller$SessionParams;->setStaged()V

    .line 537
    :cond_6
    invoke-virtual {v14}, Landroid/content/rollback/PackageRollbackInfo;->isApex()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 538
    invoke-virtual {v15}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallAsApex()V

    .line 540
    :cond_7
    invoke-virtual {v10, v15}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v5

    .line 541
    .local v5, "sessionId":I
    invoke-virtual {v10, v5}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v17

    .line 542
    .local v17, "session":Landroid/content/pm/PackageInstaller$Session;
    nop

    .line 543
    invoke-virtual {v14}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 542
    invoke-static {v1, v6}, Lcom/android/server/rollback/RollbackStore;->getPackageCodePaths(Lcom/android/server/rollback/Rollback;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v6

    .line 544
    .local v6, "packageCodePaths":[Ljava/io/File;
    if-nez v6, :cond_8

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Backup copy of package: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    invoke-virtual {v14}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is inaccessible"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 545
    const/4 v7, 0x1

    invoke-static {v2, v3, v7, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 548
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    return-void

    .line 551
    :cond_8
    :try_start_5
    array-length v7, v6

    move-object/from16 v24, v0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v7, :cond_b

    aget-object v18, v6, v0

    move-object/from16 v25, v18

    .line 552
    .local v25, "packageCodePath":Ljava/io/File;
    move-object/from16 v26, v6

    .end local v6    # "packageCodePaths":[Ljava/io/File;
    .local v26, "packageCodePaths":[Ljava/io/File;
    const/high16 v6, 0x10000000

    move/from16 v27, v7

    move-object/from16 v7, v25

    .end local v25    # "packageCodePath":Ljava/io/File;
    .local v7, "packageCodePath":Ljava/io/File;
    invoke-static {v7, v6}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v6
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 554
    .local v6, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-wide/from16 v28, v18

    .line 556
    .local v28, "token":J
    :try_start_7
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    const-wide/16 v19, 0x0

    .line 557
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v21

    .line 556
    move-object/from16 v23, v6

    invoke-virtual/range {v17 .. v23}, Landroid/content/pm/PackageInstaller$Session;->write(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 560
    :try_start_8
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 561
    nop

    .line 562
    .end local v28    # "token":J
    if-eqz v6, :cond_9

    :try_start_9
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 551
    .end local v6    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v7    # "packageCodePath":Ljava/io/File;
    :cond_9
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v6, v26

    move/from16 v7, v27

    goto :goto_1

    .line 560
    .restart local v6    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v7    # "packageCodePath":Ljava/io/File;
    .restart local v28    # "token":J
    :catchall_0
    move-exception v0

    :try_start_a
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 561
    nop

    .end local v5    # "sessionId":I
    .end local v6    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v7    # "packageCodePath":Ljava/io/File;
    .end local v8    # "pkgContext":Landroid/content/Context;
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    .end local v10    # "packageInstaller":Landroid/content/pm/PackageInstaller;
    .end local v11    # "parentParams":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v12    # "parentSessionId":I
    .end local v13    # "parentSession":Landroid/content/pm/PackageInstaller$Session;
    .end local v14    # "pkgRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    .end local v15    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v16    # "installerPackageName":Ljava/lang/String;
    .end local v17    # "session":Landroid/content/pm/PackageInstaller$Session;
    .end local v26    # "packageCodePaths":[Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/rollback/Rollback;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "causePackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    .end local p3    # "callerPackageName":Ljava/lang/String;
    .end local p4    # "statusReceiver":Landroid/content/IntentSender;
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 552
    .end local v28    # "token":J
    .restart local v5    # "sessionId":I
    .restart local v6    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v7    # "packageCodePath":Ljava/io/File;
    .restart local v8    # "pkgContext":Landroid/content/Context;
    .restart local v9    # "pm":Landroid/content/pm/PackageManager;
    .restart local v10    # "packageInstaller":Landroid/content/pm/PackageInstaller;
    .restart local v11    # "parentParams":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v12    # "parentSessionId":I
    .restart local v13    # "parentSession":Landroid/content/pm/PackageInstaller$Session;
    .restart local v14    # "pkgRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    .restart local v15    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v16    # "installerPackageName":Ljava/lang/String;
    .restart local v17    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v26    # "packageCodePaths":[Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/rollback/Rollback;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "causePackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    .restart local p3    # "callerPackageName":Ljava/lang/String;
    .restart local p4    # "statusReceiver":Landroid/content/IntentSender;
    :catchall_1
    move-exception v0

    move-object/from16 v18, v7

    move-object v7, v0

    .end local v7    # "packageCodePath":Ljava/io/File;
    .local v18, "packageCodePath":Ljava/io/File;
    if-eqz v6, :cond_a

    :try_start_b
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-object/from16 v19, v6

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object/from16 v19, v6

    move-object v6, v0

    .end local v6    # "fd":Landroid/os/ParcelFileDescriptor;
    .local v19, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_c
    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v19    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v6    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_a
    move-object/from16 v19, v6

    .end local v6    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v8    # "pkgContext":Landroid/content/Context;
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    .end local p0    # "this":Lcom/android/server/rollback/Rollback;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "causePackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    .end local p3    # "callerPackageName":Ljava/lang/String;
    .end local p4    # "statusReceiver":Landroid/content/IntentSender;
    .restart local v19    # "fd":Landroid/os/ParcelFileDescriptor;
    :goto_2
    throw v7

    .line 564
    .end local v18    # "packageCodePath":Ljava/io/File;
    .end local v19    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v26    # "packageCodePaths":[Ljava/io/File;
    .local v6, "packageCodePaths":[Ljava/io/File;
    .restart local v8    # "pkgContext":Landroid/content/Context;
    .restart local v9    # "pm":Landroid/content/pm/PackageManager;
    .restart local p0    # "this":Lcom/android/server/rollback/Rollback;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "causePackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    .restart local p3    # "callerPackageName":Ljava/lang/String;
    .restart local p4    # "statusReceiver":Landroid/content/IntentSender;
    :cond_b
    move-object/from16 v26, v6

    .end local v6    # "packageCodePaths":[Ljava/io/File;
    .restart local v26    # "packageCodePaths":[Ljava/io/File;
    invoke-virtual {v13, v5}, Landroid/content/pm/PackageInstaller$Session;->addChildSessionId(I)V

    .line 565
    .end local v5    # "sessionId":I
    .end local v14    # "pkgRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    .end local v15    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v16    # "installerPackageName":Ljava/lang/String;
    .end local v17    # "session":Landroid/content/pm/PackageInstaller$Session;
    .end local v26    # "packageCodePaths":[Ljava/io/File;
    move-object/from16 v7, p3

    move-object/from16 v0, v24

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto/16 :goto_0

    .line 567
    :cond_c
    new-instance v0, Lcom/android/server/rollback/LocalIntentReceiver;

    new-instance v5, Lcom/android/server/rollback/-$$Lambda$Rollback$EvT1BaUrjWsJaVTizSu77MCfRBs;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    move-object/from16 v6, p2

    :try_start_d
    invoke-direct {v5, v1, v2, v3, v6}, Lcom/android/server/rollback/-$$Lambda$Rollback$EvT1BaUrjWsJaVTizSu77MCfRBs;-><init>(Lcom/android/server/rollback/Rollback;Landroid/content/Context;Landroid/content/IntentSender;Ljava/util/List;)V

    invoke-direct {v0, v5}, Lcom/android/server/rollback/LocalIntentReceiver;-><init>(Ljava/util/function/Consumer;)V

    .line 625
    .local v0, "receiver":Lcom/android/server/rollback/LocalIntentReceiver;
    const/4 v5, 0x3

    iput v5, v1, Lcom/android/server/rollback/Rollback;->mState:I

    .line 626
    iget-object v5, v1, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v5, v12}, Landroid/content/rollback/RollbackInfo;->setCommittedSessionId(I)V

    .line 627
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    .line 628
    invoke-virtual {v0}, Lcom/android/server/rollback/LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 633
    .end local v0    # "receiver":Lcom/android/server/rollback/LocalIntentReceiver;
    .end local v10    # "packageInstaller":Landroid/content/pm/PackageInstaller;
    .end local v11    # "parentParams":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v12    # "parentSessionId":I
    .end local v13    # "parentSession":Landroid/content/pm/PackageInstaller$Session;
    goto :goto_4

    .line 629
    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v6, p2

    .line 630
    .local v0, "e":Ljava/io/IOException;
    :goto_3
    :try_start_e
    const-string v5, "RollbackManager"

    const-string v7, "Rollback failed"

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 631
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 631
    const/4 v7, 0x1

    invoke-static {v2, v3, v7, v5}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V

    .line 634
    .end local v0    # "e":Ljava/io/IOException;
    .end local v8    # "pkgContext":Landroid/content/Context;
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    :goto_4
    monitor-exit v4

    .line 635
    return-void

    .line 493
    :catch_2
    move-exception v0

    move-object/from16 v6, p2

    .line 494
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "Invalid callerPackageName"

    const/4 v7, 0x1

    invoke-static {v2, v3, v7, v5}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V

    .line 496
    monitor-exit v4

    return-void

    .line 634
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_3
    move-exception v0

    move-object/from16 v6, p2

    :goto_5
    monitor-exit v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_5
.end method

.method commitPendingBackupAndRestoreForUser(ILcom/android/server/rollback/AppDataRollbackHelper;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "dataHelper"    # Lcom/android/server/rollback/AppDataRollbackHelper;

    .line 442
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 443
    :try_start_0
    invoke-virtual {p2, p1, p0}, Lcom/android/server/rollback/AppDataRollbackHelper;->commitPendingBackupAndRestoreForUser(ILcom/android/server/rollback/Rollback;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 444
    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;)V

    .line 446
    :cond_0
    monitor-exit v0

    .line 447
    return-void

    .line 446
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method containsSessionId(I)Z
    .locals 5
    .param p1, "packageSessionId"    # I

    .line 802
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mPackageSessionIds:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    .line 803
    .local v4, "id":I
    if-ne v4, p1, :cond_0

    .line 804
    const/4 v0, 0x1

    return v0

    .line 802
    .end local v4    # "id":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 807
    :cond_1
    return v2
.end method

.method delete(Lcom/android/server/rollback/AppDataRollbackHelper;)V
    .locals 8
    .param p1, "dataHelper"    # Lcom/android/server/rollback/AppDataRollbackHelper;

    .line 675
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 676
    const/4 v1, 0x0

    .line 677
    .local v1, "containsApex":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/rollback/PackageRollbackInfo;

    .line 678
    .local v3, "pkgInfo":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual {v3}, Landroid/content/rollback/PackageRollbackInfo;->isApex()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 679
    const/4 v1, 0x1

    goto :goto_2

    .line 681
    :cond_0
    invoke-virtual {v3}, Landroid/content/rollback/PackageRollbackInfo;->getSnapshottedUsers()Landroid/util/IntArray;

    move-result-object v4

    .line 682
    .local v4, "snapshottedUsers":Landroid/util/IntArray;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v4}, Landroid/util/IntArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 684
    invoke-virtual {v4, v5}, Landroid/util/IntArray;->get(I)I

    move-result v6

    .line 686
    .local v6, "userId":I
    iget-object v7, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v7}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v7

    invoke-virtual {p1, v7, v3, v6}, Lcom/android/server/rollback/AppDataRollbackHelper;->destroyAppDataSnapshot(ILandroid/content/rollback/PackageRollbackInfo;I)V

    .line 682
    .end local v6    # "userId":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 689
    .end local v3    # "pkgInfo":Landroid/content/rollback/PackageRollbackInfo;
    .end local v4    # "snapshottedUsers":Landroid/util/IntArray;
    .end local v5    # "i":I
    :cond_1
    :goto_2
    goto :goto_0

    .line 690
    :cond_2
    if-eqz v1, :cond_3

    .line 691
    iget-object v2, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/server/rollback/AppDataRollbackHelper;->destroyApexDeSnapshots(I)V

    .line 694
    :cond_3
    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->deleteRollback(Lcom/android/server/rollback/Rollback;)V

    .line 695
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/server/rollback/Rollback;->mState:I

    .line 696
    .end local v1    # "containsApex":Z
    monitor-exit v0

    .line 697
    return-void

    .line 696
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 6
    .param p1, "ipw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 914
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 915
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 916
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 917
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getStateAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 918
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-timestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getTimestamp()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 919
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getStagedSessionId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 920
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-stagedSessionId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getStagedSessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 922
    :cond_0
    const-string v1, "-packages:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 923
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 924
    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/rollback/PackageRollbackInfo;

    .line 925
    .local v2, "pkg":Landroid/content/rollback/PackageRollbackInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    invoke-virtual {v2}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 927
    invoke-virtual {v2}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackTo()Landroid/content/pm/VersionedPackage;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 925
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 928
    .end local v2    # "pkg":Landroid/content/rollback/PackageRollbackInfo;
    goto :goto_0

    .line 929
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 930
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->isCommitted()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 931
    const-string v1, "-causePackages:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 932
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 933
    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getCausePackages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/VersionedPackage;

    .line 934
    .local v2, "cPkg":Landroid/content/pm/VersionedPackage;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 935
    .end local v2    # "cPkg":Landroid/content/pm/VersionedPackage;
    goto :goto_1

    .line 936
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 937
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-committedSessionId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getCommittedSessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 939
    :cond_3
    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 940
    const-string v1, "-extensionVersions:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 941
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 942
    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 943
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 945
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 946
    monitor-exit v0

    .line 947
    return-void

    .line 946
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method enableForPackage(Ljava/lang/String;JJZLjava/lang/String;[Ljava/lang/String;I)Z
    .locals 17
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newVersion"    # J
    .param p4, "installedVersion"    # J
    .param p6, "isApex"    # Z
    .param p7, "sourceDir"    # Ljava/lang/String;
    .param p8, "splitSourceDirs"    # [Ljava/lang/String;
    .param p9, "rollbackDataPolicy"    # I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p8

    .line 363
    const/4 v4, 0x0

    move-object/from16 v5, p7

    :try_start_0
    invoke-static {v1, v2, v5}, Lcom/android/server/rollback/RollbackStore;->backupPackageCodePath(Lcom/android/server/rollback/Rollback;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-static/range {p8 .. p8}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 365
    array-length v0, v3

    move v6, v4

    :goto_0
    if-ge v6, v0, :cond_0

    aget-object v7, v3, v6

    .line 366
    .local v7, "dir":Ljava/lang/String;
    invoke-static {v1, v2, v7}, Lcom/android/server/rollback/RollbackStore;->backupPackageCodePath(Lcom/android/server/rollback/Rollback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    .end local v7    # "dir":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 372
    :cond_0
    nop

    .line 374
    new-instance v0, Landroid/content/rollback/PackageRollbackInfo;

    new-instance v8, Landroid/content/pm/VersionedPackage;

    move-wide/from16 v14, p2

    invoke-direct {v8, v2, v14, v15}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    new-instance v9, Landroid/content/pm/VersionedPackage;

    move-wide/from16 v12, p4

    invoke-direct {v9, v2, v12, v13}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    new-instance v10, Landroid/util/IntArray;

    invoke-direct {v10}, Landroid/util/IntArray;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    new-instance v6, Landroid/util/IntArray;

    invoke-direct {v6}, Landroid/util/IntArray;-><init>()V

    new-instance v16, Landroid/util/SparseLongArray;

    invoke-direct/range {v16 .. v16}, Landroid/util/SparseLongArray;-><init>()V

    move-object v7, v0

    move/from16 v12, p6

    move v13, v4

    move-object v14, v6

    move-object/from16 v15, v16

    move/from16 v16, p9

    invoke-direct/range {v7 .. v16}, Landroid/content/rollback/PackageRollbackInfo;-><init>(Landroid/content/pm/VersionedPackage;Landroid/content/pm/VersionedPackage;Landroid/util/IntArray;Ljava/util/ArrayList;ZZLandroid/util/IntArray;Landroid/util/SparseLongArray;I)V

    move-object v6, v0

    .line 381
    .local v6, "packageRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    iget-object v7, v1, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 382
    :try_start_1
    iget-object v0, v1, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    monitor-exit v7

    .line 385
    const/4 v0, 0x1

    return v0

    .line 383
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 369
    .end local v6    # "packageRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to copy package for rollback for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "RollbackManager"

    invoke-static {v7, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 371
    return v4
.end method

.method enableForPackageInApex(Ljava/lang/String;JI)Z
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "installedVersion"    # J
    .param p4, "rollbackDataPolicy"    # I

    .line 400
    new-instance v10, Landroid/content/rollback/PackageRollbackInfo;

    new-instance v1, Landroid/content/pm/VersionedPackage;

    const/4 v0, 0x0

    invoke-direct {v1, p1, v0}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    new-instance v2, Landroid/content/pm/VersionedPackage;

    invoke-direct {v2, p1, p2, p3}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    new-instance v3, Landroid/util/IntArray;

    invoke-direct {v3}, Landroid/util/IntArray;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Landroid/util/IntArray;

    invoke-direct {v7}, Landroid/util/IntArray;-><init>()V

    new-instance v8, Landroid/util/SparseLongArray;

    invoke-direct {v8}, Landroid/util/SparseLongArray;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, v10

    move v9, p4

    invoke-direct/range {v0 .. v9}, Landroid/content/rollback/PackageRollbackInfo;-><init>(Landroid/content/pm/VersionedPackage;Landroid/content/pm/VersionedPackage;Landroid/util/IntArray;Ljava/util/ArrayList;ZZLandroid/util/IntArray;Landroid/util/SparseLongArray;I)V

    .line 406
    .local v0, "packageRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 407
    :try_start_0
    iget-object v2, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    monitor-exit v1

    .line 409
    const/4 v1, 0x1

    return v1

    .line 408
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method getApexPackageNames()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 787
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 788
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 789
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/rollback/PackageRollbackInfo;

    .line 790
    .local v3, "pkgRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual {v3}, Landroid/content/rollback/PackageRollbackInfo;->isApex()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 791
    invoke-virtual {v3}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 793
    .end local v3    # "pkgRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    :cond_0
    goto :goto_0

    .line 794
    :cond_1
    monitor-exit v0

    return-object v1

    .line 795
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getApkSessionId()I
    .locals 2

    .line 703
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 704
    :try_start_0
    iget v1, p0, Lcom/android/server/rollback/Rollback;->mApkSessionId:I

    monitor-exit v0

    return v1

    .line 705
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getBackupDir()Ljava/io/File;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mBackupDir:Ljava/io/File;

    return-object v0
.end method

.method getExtensionVersions()Landroid/util/SparseIntArray;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method getInstallerPackageName()Ljava/lang/String;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mInstallerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method getPackageNames()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 774
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 775
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 776
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/rollback/PackageRollbackInfo;

    .line 777
    .local v3, "pkgRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual {v3}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 778
    nop

    .end local v3    # "pkgRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    goto :goto_0

    .line 779
    :cond_0
    monitor-exit v0

    return-object v1

    .line 780
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getStagedSessionId()I
    .locals 1

    .line 284
    iget v0, p0, Lcom/android/server/rollback/Rollback;->mStagedSessionId:I

    return v0
.end method

.method getStateAsString()Ljava/lang/String;
    .locals 2

    .line 858
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 859
    :try_start_0
    iget v1, p0, Lcom/android/server/rollback/Rollback;->mState:I

    invoke-static {v1}, Lcom/android/server/rollback/Rollback;->rollbackStateToString(I)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 860
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getTimestamp()Ljava/time/Instant;
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 265
    :try_start_0
    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->mTimestamp:Ljava/time/Instant;

    monitor-exit v0

    return-object v1

    .line 266
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getUserId()I
    .locals 1

    .line 291
    iget v0, p0, Lcom/android/server/rollback/Rollback;->mUserId:I

    return v0
.end method

.method includesPackage(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 743
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 744
    :try_start_0
    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/rollback/PackageRollbackInfo;

    .line 745
    .local v2, "packageRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual {v2}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 746
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 748
    .end local v2    # "packageRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    :cond_0
    goto :goto_0

    .line 749
    :cond_1
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 750
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method includesPackageWithDifferentVersion(Ljava/lang/String;J)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # J

    .line 758
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 759
    :try_start_0
    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/rollback/PackageRollbackInfo;

    .line 760
    .local v2, "pkgRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual {v2}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 761
    invoke-virtual {v2}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v3

    cmp-long v3, v3, p2

    if-eqz v3, :cond_0

    .line 763
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 765
    .end local v2    # "pkgRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    :cond_0
    goto :goto_0

    .line 766
    :cond_1
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 767
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isAvailable()Z
    .locals 3

    .line 323
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 324
    :try_start_0
    iget v1, p0, Lcom/android/server/rollback/Rollback;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 325
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isCommitted()Z
    .locals 3

    .line 332
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 333
    :try_start_0
    iget v1, p0, Lcom/android/server/rollback/Rollback;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 334
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isDeleted()Z
    .locals 3

    .line 341
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 342
    :try_start_0
    iget v1, p0, Lcom/android/server/rollback/Rollback;->mState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 343
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isEnabling()Z
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 315
    :try_start_0
    iget v1, p0, Lcom/android/server/rollback/Rollback;->mState:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 316
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isRestoreUserDataInProgress()Z
    .locals 2

    .line 723
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 724
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    monitor-exit v0

    return v1

    .line 725
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isStaged()Z
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->isStaged()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$commit$0$Rollback(Landroid/content/Context;Landroid/content/IntentSender;Ljava/util/List;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "statusReceiver"    # Landroid/content/IntentSender;
    .param p3, "causePackages"    # Ljava/util/List;
    .param p4, "result"    # Landroid/content/Intent;

    .line 569
    const-string v0, "android.content.pm.extra.STATUS"

    const/4 v1, 0x1

    invoke-virtual {p4, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 571
    .local v0, "status":I
    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 579
    iget-object v3, p0, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 580
    :try_start_0
    iput v1, p0, Lcom/android/server/rollback/Rollback;->mState:I

    .line 581
    iput-boolean v2, p0, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    .line 582
    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/content/rollback/RollbackInfo;->setCommittedSessionId(I)V

    .line 583
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 584
    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rollback downgrade install failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    const-string v3, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {p4, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 584
    invoke-static {p1, p2, v1, v2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V

    .line 589
    return-void

    .line 583
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 592
    :cond_0
    iget-object v3, p0, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 593
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->isStaged()Z

    move-result v4

    if-nez v4, :cond_1

    .line 596
    iput-boolean v2, p0, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    .line 599
    :cond_1
    iget-object v4, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v4}, Landroid/content/rollback/RollbackInfo;->getCausePackages()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 600
    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->deletePackageCodePaths(Lcom/android/server/rollback/Rollback;)V

    .line 601
    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;)V

    .line 602
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 606
    :try_start_3
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 607
    .local v3, "fillIn":Landroid/content/Intent;
    const-string v4, "android.content.rollback.extra.STATUS"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 610
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p2

    move-object v5, p1

    move-object v7, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_3
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_3 .. :try_end_3} :catch_0

    .line 613
    .end local v3    # "fillIn":Landroid/content/Intent;
    goto :goto_0

    .line 611
    :catch_0
    move-exception v2

    .line 615
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.ROLLBACK_COMMITTED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 617
    .local v2, "broadcast":Landroid/content/Intent;
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 618
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    nop

    .line 619
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    .line 618
    const-string v5, "android.permission.MANAGE_ROLLBACKS"

    invoke-virtual {p1, v2, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 621
    .end local v3    # "userInfo":Landroid/content/pm/UserInfo;
    goto :goto_1

    .line 622
    :cond_2
    return-void

    .line 602
    .end local v2    # "broadcast":Landroid/content/Intent;
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method makeAvailable()V
    .locals 3

    .line 455
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 456
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->isDeleted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 457
    const-string v1, "RollbackManager"

    const-string v2, "Cannot make deleted rollback available."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    monitor-exit v0

    return-void

    .line 460
    :cond_0
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/rollback/Rollback;->mState:I

    .line 461
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/rollback/Rollback;->mTimestamp:Ljava/time/Instant;

    .line 462
    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;)V

    .line 463
    monitor-exit v0

    .line 464
    return-void

    .line 463
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method notifySessionWithSuccess()Z
    .locals 4

    .line 816
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 817
    :try_start_0
    iget v1, p0, Lcom/android/server/rollback/Rollback;->mNumPackageSessionsWithSuccess:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/rollback/Rollback;->mNumPackageSessionsWithSuccess:I

    iget-object v3, p0, Lcom/android/server/rollback/Rollback;->mPackageSessionIds:[I

    array-length v3, v3

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 818
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method restoreUserDataForPackageIfInProgress(Ljava/lang/String;[IILjava/lang/String;Lcom/android/server/rollback/AppDataRollbackHelper;)Z
    .locals 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I
    .param p3, "appId"    # I
    .param p4, "seInfo"    # Ljava/lang/String;
    .param p5, "dataHelper"    # Lcom/android/server/rollback/AppDataRollbackHelper;

    .line 646
    move-object v1, p0

    move-object/from16 v2, p2

    iget-object v3, v1, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 647
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->isRestoreUserDataInProgress()Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 648
    monitor-exit v3

    return v4

    .line 651
    :cond_0
    const/4 v0, 0x0

    .line 652
    .local v0, "foundPackage":Z
    iget-object v5, v1, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v5}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Landroid/content/rollback/PackageRollbackInfo;

    .line 653
    .local v9, "pkgRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual {v9}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v13, p1

    :try_start_1
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 654
    const/4 v0, 0x1

    .line 655
    const/4 v5, 0x0

    .line 656
    .local v5, "changedRollback":Z
    array-length v6, v2

    :goto_1
    if-ge v4, v6, :cond_1

    aget v10, v2, v4

    .line 657
    .local v10, "userId":I
    iget-object v7, v1, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 658
    invoke-virtual {v7}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v8

    .line 657
    move-object/from16 v7, p5

    move/from16 v11, p3

    move-object/from16 v12, p4

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/rollback/AppDataRollbackHelper;->restoreAppData(ILandroid/content/rollback/PackageRollbackInfo;IILjava/lang/String;)Z

    move-result v7

    or-int/2addr v5, v7

    .line 656
    .end local v10    # "userId":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 661
    :cond_1
    if-eqz v5, :cond_4

    .line 662
    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;)V

    goto :goto_2

    .line 666
    .end local v5    # "changedRollback":Z
    .end local v9    # "pkgRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    :cond_2
    goto :goto_0

    .line 652
    :cond_3
    move-object v13, p1

    .line 667
    :cond_4
    :goto_2
    monitor-exit v3

    return v0

    .line 668
    .end local v0    # "foundPackage":Z
    :catchall_0
    move-exception v0

    move-object v13, p1

    :goto_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3
.end method

.method saveRollback()V
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 351
    :try_start_0
    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;)V

    .line 352
    monitor-exit v0

    .line 353
    return-void

    .line 352
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setApkSessionId(I)V
    .locals 2
    .param p1, "apkSessionId"    # I

    .line 712
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 713
    :try_start_0
    iput p1, p0, Lcom/android/server/rollback/Rollback;->mApkSessionId:I

    .line 714
    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;)V

    .line 715
    monitor-exit v0

    .line 716
    return-void

    .line 715
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setRestoreUserDataInProgress(Z)V
    .locals 2
    .param p1, "restoreUserDataInProgress"    # Z

    .line 733
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 734
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    .line 735
    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;)V

    .line 736
    monitor-exit v0

    .line 737
    return-void

    .line 736
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setTimestamp(Ljava/time/Instant;)V
    .locals 2
    .param p1, "timestamp"    # Ljava/time/Instant;

    .line 273
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 274
    :try_start_0
    iput-object p1, p0, Lcom/android/server/rollback/Rollback;->mTimestamp:Ljava/time/Instant;

    .line 275
    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;)V

    .line 276
    monitor-exit v0

    .line 277
    return-void

    .line 276
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method snapshotUserData(Ljava/lang/String;[ILcom/android/server/rollback/AppDataRollbackHelper;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I
    .param p3, "dataHelper"    # Lcom/android/server/rollback/AppDataRollbackHelper;

    .line 417
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 418
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->isEnabling()Z

    move-result v1

    if-nez v1, :cond_0

    .line 419
    monitor-exit v0

    return-void

    .line 422
    :cond_0
    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/rollback/PackageRollbackInfo;

    .line 423
    .local v2, "pkgRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual {v2}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 424
    invoke-virtual {v2}, Landroid/content/rollback/PackageRollbackInfo;->getRollbackDataPolicy()I

    move-result v1

    if-nez v1, :cond_2

    .line 426
    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v1

    invoke-virtual {p3, v1, v2, p2}, Lcom/android/server/rollback/AppDataRollbackHelper;->snapshotAppData(ILandroid/content/rollback/PackageRollbackInfo;[I)V

    .line 427
    invoke-virtual {v2}, Landroid/content/rollback/PackageRollbackInfo;->getSnapshottedUsers()Landroid/util/IntArray;

    move-result-object v1

    invoke-static {p2}, Landroid/util/IntArray;->wrap([I)Landroid/util/IntArray;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/IntArray;->addAll(Landroid/util/IntArray;)V

    .line 428
    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;)V

    goto :goto_1

    .line 432
    .end local v2    # "pkgRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    :cond_1
    goto :goto_0

    .line 433
    :cond_2
    :goto_1
    monitor-exit v0

    .line 434
    return-void

    .line 433
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
