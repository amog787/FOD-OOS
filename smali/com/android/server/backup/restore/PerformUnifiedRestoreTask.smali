.class public Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;
.super Ljava/lang/Object;
.source "PerformUnifiedRestoreTask.java"

# interfaces
.implements Lcom/android/server/backup/BackupRestoreTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;
    }
.end annotation


# instance fields
.field private backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field private mAcceptSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAgent:Landroid/app/IBackupAgent;

.field private final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field private mBackupData:Landroid/os/ParcelFileDescriptor;

.field private mBackupDataName:Ljava/io/File;

.field private mCount:I

.field private mCurrentPackage:Landroid/content/pm/PackageInfo;

.field private mDidLaunch:Z

.field private final mEphemeralOpToken:I

.field private mFinished:Z

.field private mIsSystemRestore:Z

.field private final mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

.field private mMonitor:Landroid/app/backup/IBackupManagerMonitor;

.field private mNewState:Landroid/os/ParcelFileDescriptor;

.field private mNewStateName:Ljava/io/File;

.field private mObserver:Landroid/app/backup/IRestoreObserver;

.field private mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

.field private mPmToken:I

.field private mRestoreDescription:Landroid/app/backup/RestoreDescription;

.field private mStageName:Ljava/io/File;

.field private mStartRealtime:J

.field private mState:Lcom/android/server/backup/restore/UnifiedRestoreState;

.field private mStateDir:Ljava/io/File;

.field private mStatus:I

.field private mTargetPackage:Landroid/content/pm/PackageInfo;

.field private mToken:J

.field private final mTransportClient:Lcom/android/server/backup/transport/TransportClient;

.field private final mTransportManager:Lcom/android/server/backup/TransportManager;

.field private final mUserId:I

.field private mWidgetData:[B


# direct methods
.method constructor <init>(Lcom/android/server/backup/UserBackupManagerService;)V
    .locals 1
    .param p1, "backupManagerService"    # Lcom/android/server/backup/UserBackupManagerService;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 169
    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 170
    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    .line 171
    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 172
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mEphemeralOpToken:I

    .line 173
    iput v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mUserId:I

    .line 174
    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 175
    return-void
.end method

.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportClient;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;IZ[Ljava/lang/String;Lcom/android/server/backup/internal/OnTaskFinishedListener;)V
    .locals 16
    .param p1, "backupManagerService"    # Lcom/android/server/backup/UserBackupManagerService;
    .param p2, "transportClient"    # Lcom/android/server/backup/transport/TransportClient;
    .param p3, "observer"    # Landroid/app/backup/IRestoreObserver;
    .param p4, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p5, "restoreSetToken"    # J
    .param p7, "targetPackage"    # Landroid/content/pm/PackageInfo;
    .param p8, "pmToken"    # I
    .param p9, "isFullSystemRestore"    # Z
    .param p10, "filterSet"    # [Ljava/lang/String;
    .param p11, "listener"    # Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 189
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p7

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object v2, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 191
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result v0

    iput v0, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mUserId:I

    .line 192
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/UserBackupManagerService;->getTransportManager()Lcom/android/server/backup/TransportManager;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 193
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result v0

    iput v0, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mEphemeralOpToken:I

    .line 194
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->INITIAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    iput-object v0, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mState:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 195
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStartRealtime:J

    .line 197
    move-object/from16 v4, p2

    iput-object v4, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    .line 198
    move-object/from16 v5, p3

    iput-object v5, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    .line 199
    move-object/from16 v6, p4

    iput-object v6, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 200
    move-wide/from16 v7, p5

    iput-wide v7, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mToken:J

    .line 201
    move/from16 v9, p8

    iput v9, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mPmToken:I

    .line 202
    iput-object v3, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    .line 203
    move/from16 v10, p9

    iput-boolean v10, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mIsSystemRestore:Z

    .line 204
    const/4 v11, 0x0

    iput-boolean v11, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mFinished:Z

    .line 205
    iput-boolean v11, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mDidLaunch:Z

    .line 206
    move-object/from16 v12, p11

    iput-object v12, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 207
    nop

    .line 208
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/UserBackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object v0

    .line 207
    const-string v13, "Timeout parameters cannot be null"

    invoke-static {v0, v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object v0, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 211
    if-eqz v3, :cond_0

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    .line 214
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v13, p10

    goto/16 :goto_4

    .line 217
    :cond_0
    if-nez p10, :cond_1

    .line 219
    nop

    .line 221
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget v13, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mUserId:I

    .line 220
    invoke-static {v0, v13}, Lcom/android/server/backup/PackageManagerBackupAgent;->getStorableApplications(Landroid/content/pm/PackageManager;I)Ljava/util/List;

    move-result-object v0

    .line 222
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-direct {v1, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->packagesToNames(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v13

    .line 224
    .end local p10    # "filterSet":[Ljava/lang/String;
    .local v13, "filterSet":[Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Full restore; asking about "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v15, v13

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " apps"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "BackupManagerService"

    invoke-static {v15, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 217
    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v13    # "filterSet":[Ljava/lang/String;
    .restart local p10    # "filterSet":[Ljava/lang/String;
    :cond_1
    move-object/from16 v13, p10

    .line 228
    .end local p10    # "filterSet":[Ljava/lang/String;
    .restart local v13    # "filterSet":[Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v14, v13

    invoke-direct {v0, v14}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, "hasSystem":Z
    const/4 v14, 0x0

    .line 235
    .local v14, "hasSettings":Z
    const/4 v15, 0x0

    move v11, v15

    move v15, v14

    move v14, v0

    .end local v0    # "hasSystem":Z
    .local v11, "i":I
    .local v14, "hasSystem":Z
    .local v15, "hasSettings":Z
    :goto_1
    array-length v0, v13

    const-string v3, "com.android.providers.settings"

    const-string v4, "android"

    if-ge v11, v0, :cond_5

    .line 237
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 238
    .local v0, "pm":Landroid/content/pm/PackageManager;
    aget-object v5, v13, v11

    iget v6, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mUserId:I

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v7, v6}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 239
    .local v5, "info":Landroid/content/pm/PackageInfo;
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 240
    const/4 v3, 0x1

    .line 241
    .end local v14    # "hasSystem":Z
    .local v3, "hasSystem":Z
    move v14, v3

    goto :goto_2

    .line 243
    .end local v3    # "hasSystem":Z
    .restart local v14    # "hasSystem":Z
    :cond_2
    iget-object v4, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 244
    const/4 v3, 0x1

    .line 245
    .end local v15    # "hasSettings":Z
    .local v3, "hasSettings":Z
    move v15, v3

    goto :goto_2

    .line 248
    .end local v3    # "hasSettings":Z
    .restart local v15    # "hasSettings":Z
    :cond_3
    iget-object v3, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mUserId:I

    invoke-static {v3, v4}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 249
    iget-object v3, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "info":Landroid/content/pm/PackageInfo;
    :cond_4
    goto :goto_2

    .line 251
    :catch_0
    move-exception v0

    .line 235
    :goto_2
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    move-object/from16 v3, p7

    goto :goto_1

    .line 255
    .end local v11    # "i":I
    :cond_5
    if-eqz v14, :cond_6

    .line 257
    :try_start_1
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget v6, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mUserId:I

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7, v6}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v4

    invoke-interface {v0, v7, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 261
    goto :goto_3

    .line 259
    :catch_1
    move-exception v0

    .line 263
    :cond_6
    :goto_3
    if-eqz v15, :cond_7

    .line 265
    :try_start_2
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget v5, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mUserId:I

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6, v5}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 269
    goto :goto_4

    .line 267
    :catch_2
    move-exception v0

    .line 273
    .end local v14    # "hasSystem":Z
    .end local v15    # "hasSettings":Z
    :cond_7
    :goto_4
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    invoke-virtual {v2, v0}, Lcom/android/server/backup/UserBackupManagerService;->filterUserFacingPackages(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    .line 281
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/UserBackupManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 83
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 83
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/app/backup/IBackupManagerMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 83
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Landroid/app/backup/IBackupManagerMonitor;)Landroid/app/backup/IBackupManagerMonitor;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;
    .param p1, "x1"    # Landroid/app/backup/IBackupManagerMonitor;

    .line 83
    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/transport/TransportClient;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 83
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;
    .param p1, "x1"    # Z

    .line 83
    iput-boolean p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mDidLaunch:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Landroid/app/IBackupAgent;)Landroid/app/IBackupAgent;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;
    .param p1, "x1"    # Landroid/app/IBackupAgent;

    .line 83
    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;
    .param p1, "x1"    # [B

    .line 83
    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mWidgetData:[B

    return-object p1
.end method

.method private dispatchNextRestore()V
    .locals 18

    .line 487
    move-object/from16 v1, p0

    const-string v2, "BackupManagerService"

    sget-object v3, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 489
    .local v3, "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    const/16 v4, 0xb0f

    const/4 v5, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    const-string v6, "PerformUnifiedRestoreTask.dispatchNextRestore()"

    .line 490
    invoke-virtual {v0, v6}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    move-object v6, v0

    .line 492
    .local v6, "transport":Lcom/android/internal/backup/IBackupTransport;
    invoke-interface {v6}, Lcom/android/internal/backup/IBackupTransport;->nextRestorePackage()Landroid/app/backup/RestoreDescription;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    .line 493
    const/4 v7, 0x0

    if-eqz v0, :cond_0

    .line 494
    invoke-virtual {v0}, Landroid/app/backup/RestoreDescription;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v7

    :goto_0
    move-object v8, v0

    .line 495
    .local v8, "pkgName":Ljava/lang/String;
    if-nez v8, :cond_1

    .line 496
    const-string v0, "Failure getting next package name"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {v4, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 498
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 614
    .end local v3    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .local v0, "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    invoke-virtual {v1, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 499
    return-void

    .line 500
    .end local v0    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v3    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    :cond_1
    :try_start_1
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    sget-object v9, Landroid/app/backup/RestoreDescription;->NO_MORE_PACKAGES:Landroid/app/backup/RestoreDescription;

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-ne v0, v9, :cond_2

    .line 503
    const-string v0, "No more packages; finishing restore"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    iget-wide v14, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStartRealtime:J

    sub-long/2addr v12, v14

    long-to-int v0, v12

    .line 506
    .local v0, "millis":I
    const/16 v7, 0xb12

    new-array v9, v10, [Ljava/lang/Object;

    iget v10, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCount:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v7, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 507
    sget-object v2, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 614
    .end local v3    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .local v2, "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    invoke-virtual {v1, v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 508
    return-void

    .line 512
    .end local v0    # "millis":I
    .end local v2    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v3    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Next restore package: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    invoke-virtual {v1, v8}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->sendOnRestorePackage(Ljava/lang/String;)V

    .line 516
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-virtual {v0, v8}, Lcom/android/server/backup/PackageManagerBackupAgent;->getRestoredMetadata(Ljava/lang/String;)Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    move-result-object v0

    move-object v9, v0

    .line 517
    .local v9, "metaInfo":Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;
    const/16 v12, 0xb10

    if-nez v9, :cond_3

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No metadata for "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    new-array v0, v10, [Ljava/lang/Object;

    aput-object v8, v0, v5

    const-string v7, "Package metadata missing"

    aput-object v7, v0, v11

    invoke-static {v12, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 521
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 614
    .end local v3    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .local v0, "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    invoke-virtual {v1, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 522
    return-void

    .line 526
    .end local v0    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v3    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    :cond_3
    const/4 v13, 0x3

    :try_start_3
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v14, 0x8000000

    iget v15, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mUserId:I

    invoke-virtual {v0, v8, v14, v15}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 541
    nop

    .line 543
    :try_start_4
    iget-wide v14, v9, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:J

    iget-object v0, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v16

    cmp-long v0, v14, v16

    if-lez v0, :cond_5

    .line 547
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/high16 v14, 0x20000

    and-int/2addr v0, v14

    const/16 v14, 0x1b

    const-string v15, "android.app.backup.extra.LOG_RESTORE_ANYWAY"

    const-string v4, "android.app.backup.extra.LOG_RESTORE_VERSION"

    const-string v12, " > installed version "

    const-string v11, "Source version "

    if-nez v0, :cond_4

    .line 549
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v9, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:J

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 550
    invoke-virtual {v10}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 551
    .local v0, "message":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-wide v10, v9, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:J

    invoke-static {v7, v4, v10, v11}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v4

    .line 555
    .local v4, "monitoringExtras":Landroid/os/Bundle;
    invoke-static {v4, v15, v5}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v7

    move-object v4, v7

    .line 558
    iget-object v7, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    iget-object v10, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-static {v7, v14, v10, v13, v4}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v7

    iput-object v7, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 563
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v8, v7, v5

    const/4 v10, 0x1

    aput-object v0, v7, v10

    const/16 v10, 0xb10

    invoke-static {v10, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 565
    sget-object v2, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 614
    .end local v3    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v2    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    invoke-virtual {v1, v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 566
    return-void

    .line 569
    .end local v0    # "message":Ljava/lang/String;
    .end local v2    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .end local v4    # "monitoringExtras":Landroid/os/Bundle;
    .restart local v3    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    :cond_4
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v9, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:J

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 570
    invoke-virtual {v10}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " but restoreAnyVersion"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 569
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-wide v10, v9, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:J

    invoke-static {v7, v4, v10, v11}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v0

    .line 576
    .local v0, "monitoringExtras":Landroid/os/Bundle;
    const/4 v4, 0x1

    invoke-static {v0, v15, v4}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v10

    move-object v0, v10

    .line 579
    iget-object v4, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    iget-object v10, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-static {v4, v14, v10, v13, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 595
    .end local v0    # "monitoringExtras":Landroid/os/Bundle;
    :cond_5
    iput-object v7, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mWidgetData:[B

    .line 596
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    invoke-virtual {v0}, Landroid/app/backup/RestoreDescription;->getDataType()I

    move-result v0

    .line 597
    .local v0, "type":I
    const/4 v4, 0x1

    if-ne v0, v4, :cond_6

    .line 598
    sget-object v2, Lcom/android/server/backup/restore/UnifiedRestoreState;->RESTORE_KEYVALUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .end local v3    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v2    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    goto :goto_1

    .line 599
    .end local v2    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v3    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    :cond_6
    const/4 v4, 0x2

    if-ne v0, v4, :cond_7

    .line 600
    sget-object v2, Lcom/android/server/backup/restore/UnifiedRestoreState;->RESTORE_FULL:Lcom/android/server/backup/restore/UnifiedRestoreState;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 614
    .end local v0    # "type":I
    .end local v3    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .end local v6    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v9    # "metaInfo":Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;
    .restart local v2    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 615
    nop

    .line 616
    return-void

    .line 603
    .end local v2    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v0    # "type":I
    .restart local v3    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v6    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v8    # "pkgName":Ljava/lang/String;
    .restart local v9    # "metaInfo":Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;
    :cond_7
    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unrecognized restore type "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    sget-object v2, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 614
    .end local v3    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v2    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    invoke-virtual {v1, v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 605
    return-void

    .line 528
    .end local v0    # "type":I
    .end local v2    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v3    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    :catch_0
    move-exception v0

    .line 531
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package not present: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object v4, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v10, 0x1a

    iget-object v11, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-static {v4, v10, v11, v13, v7}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 537
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v8, v4, v5

    const-string v7, "Package missing on device"

    const/4 v10, 0x1

    aput-object v7, v4, v10

    const/16 v7, 0xb10

    invoke-static {v7, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 539
    sget-object v2, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 614
    .end local v3    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v2    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    invoke-virtual {v1, v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 540
    return-void

    .line 614
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .end local v6    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v9    # "metaInfo":Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;
    .restart local v3    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 607
    :catch_1
    move-exception v0

    .line 608
    .local v0, "e":Ljava/lang/Exception;
    :try_start_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t get next restore target from transport; halting: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 608
    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    new-array v2, v5, [Ljava/lang/Object;

    const/16 v4, 0xb0f

    invoke-static {v4, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 611
    sget-object v2, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 614
    .end local v3    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v2    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    invoke-virtual {v1, v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 612
    return-void

    .line 614
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v3    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    :goto_2
    invoke-virtual {v1, v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 615
    throw v0
.end method

.method private finalizeRestore()V
    .locals 6

    .line 1084
    const-string v0, "PerformUnifiedRestoreTask.finalizeRestore()"

    .line 1086
    .local v0, "callerLogString":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    .line 1087
    invoke-virtual {v1, v0}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v1

    .line 1088
    .local v1, "transport":Lcom/android/internal/backup/IBackupTransport;
    invoke-interface {v1}, Lcom/android/internal/backup/IBackupTransport;->finishRestore()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1091
    .end local v1    # "transport":Lcom/android/internal/backup/IBackupTransport;
    goto :goto_0

    .line 1089
    :catch_0
    move-exception v1

    .line 1090
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BackupManagerService"

    const-string v3, "Error finishing restore"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1094
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    if-eqz v1, :cond_0

    .line 1096
    :try_start_1
    iget v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStatus:I

    invoke-interface {v1, v2}, Landroid/app/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1099
    goto :goto_1

    .line 1097
    :catch_1
    move-exception v1

    .line 1098
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "BackupManagerService"

    const-string v3, "Restore observer died at restoreFinished"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1107
    iget v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mPmToken:I

    if-lez v1, :cond_1

    .line 1112
    :try_start_2
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManagerBinder()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mPmToken:I

    iget-boolean v3, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mDidLaunch:Z

    invoke-interface {v1, v2, v3}, Landroid/content/pm/IPackageManager;->finishPackageInstall(IZ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 1114
    :catch_2
    move-exception v1

    :goto_2
    goto :goto_3

    .line 1118
    :cond_1
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreAgentTimeoutMillis()J

    move-result-wide v3

    .line 1119
    .local v3, "restoreAgentTimeoutMillis":J
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1125
    .end local v3    # "restoreAgentTimeoutMillis":J
    :goto_3
    iget v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mUserId:I

    invoke-static {v1}, Lcom/android/server/AppWidgetBackupBridge;->restoreFinished(I)V

    .line 1129
    iget-boolean v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mIsSystemRestore:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    if-eqz v1, :cond_2

    .line 1130
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/PackageManagerBackupAgent;->getRestoredPackages()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/backup/UserBackupManagerService;->setAncestralPackages(Ljava/util/Set;)V

    .line 1131
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-wide v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mToken:J

    invoke-virtual {v1, v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->setAncestralToken(J)V

    .line 1132
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->writeRestoreTokens()V

    .line 1135
    :cond_2
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getPendingRestores()Ljava/util/Queue;

    move-result-object v1

    monitor-enter v1

    .line 1136
    :try_start_3
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getPendingRestores()Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 1138
    const-string v2, "BackupManagerService"

    const-string v3, "Starting next pending restore."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getPendingRestores()Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 1141
    .local v2, "task":Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1142
    invoke-virtual {v4}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x14

    invoke-virtual {v4, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1141
    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1145
    nop

    .end local v2    # "task":Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;
    goto :goto_4

    .line 1146
    :cond_3
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->setRestoreInProgress(Z)V

    .line 1151
    :goto_4
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1153
    const-string v1, "BackupManagerService"

    const-string v2, "Restore complete."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    invoke-interface {v1, v0}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 1155
    return-void

    .line 1151
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2
.end method

.method private initiateOneRestore(Landroid/content/pm/PackageInfo;J)V
    .locals 25
    .param p1, "app"    # Landroid/content/pm/PackageInfo;
    .param p2, "appVersionCode"    # J

    .line 685
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-object v9, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 688
    .local v9, "packageName":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "initiateOneRestore packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "BackupManagerService"

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    new-instance v0, Ljava/io/File;

    iget-object v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getDataDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".restore"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    .line 693
    new-instance v0, Ljava/io/File;

    iget-object v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getDataDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".stage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStageName:Ljava/io/File;

    .line 694
    new-instance v0, Ljava/io/File;

    iget-object v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStateDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".new"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mNewStateName:Ljava/io/File;

    .line 696
    invoke-virtual {v7, v9}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->shouldStageBackupData(Ljava/lang/String;)Z

    move-result v11

    .line 698
    .local v11, "staging":Z
    if-eqz v11, :cond_0

    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStageName:Ljava/io/File;

    goto :goto_0

    :cond_0
    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    :goto_0
    move-object v12, v0

    .line 699
    .local v12, "downloadFile":Ljava/io/File;
    const/4 v13, 0x0

    .line 702
    .local v13, "startedAgentRestore":Z
    const/4 v14, 0x0

    :try_start_0
    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    const-string v1, "PerformUnifiedRestoreTask.initiateOneRestore()"

    .line 703
    invoke-virtual {v0, v1}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    .line 707
    .local v0, "transport":Lcom/android/internal/backup/IBackupTransport;
    const/high16 v1, 0x3c000000    # 0.0078125f

    invoke-static {v12, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 712
    .local v2, "stage":Landroid/os/ParcelFileDescriptor;
    invoke-interface {v0, v2}, Lcom/android/internal/backup/IBackupTransport;->getRestoreData(Landroid/os/ParcelFileDescriptor;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 715
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error getting restore data for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    const/16 v1, 0xb0f

    new-array v3, v14, [Ljava/lang/Object;

    invoke-static {v1, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 717
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 718
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 719
    sget-object v1, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {v7, v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 720
    return-void

    .line 726
    :cond_1
    const/high16 v3, 0x10000000

    if-eqz v11, :cond_2

    .line 727
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 728
    invoke-static {v12, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    move-object v2, v4

    .line 731
    iget-object v4, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    invoke-static {v4, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    iput-object v4, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 736
    new-instance v4, Landroid/app/backup/BackupDataInput;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V

    .line 737
    .local v4, "in":Landroid/app/backup/BackupDataInput;
    new-instance v5, Landroid/app/backup/BackupDataOutput;

    iget-object v6, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    .line 738
    .local v5, "out":Landroid/app/backup/BackupDataOutput;
    invoke-virtual {v7, v9, v4, v5}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->filterExcludedKeys(Ljava/lang/String;Landroid/app/backup/BackupDataInput;Landroid/app/backup/BackupDataOutput;)V

    .line 740
    iget-object v6, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V

    move-object v15, v2

    goto :goto_1

    .line 726
    .end local v4    # "in":Landroid/app/backup/BackupDataInput;
    .end local v5    # "out":Landroid/app/backup/BackupDataOutput;
    :cond_2
    move-object v15, v2

    .line 744
    .end local v2    # "stage":Landroid/os/ParcelFileDescriptor;
    .local v15, "stage":Landroid/os/ParcelFileDescriptor;
    :goto_1
    invoke-virtual {v15}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 746
    iget-object v2, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 749
    iget-object v2, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mNewStateName:Ljava/io/File;

    invoke-static {v2, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    .line 757
    iget-object v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreAgentTimeoutMillis()J

    move-result-wide v3

    .line 758
    .local v3, "restoreAgentTimeoutMillis":J
    iget-object v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget v2, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mEphemeralOpToken:I

    const/4 v6, 0x1

    move-object/from16 v5, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/backup/UserBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    .line 760
    const/4 v13, 0x1

    .line 761
    iget-object v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    iget-object v2, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    iget-object v5, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    iget v6, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mEphemeralOpToken:I

    iget-object v14, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 762
    invoke-virtual {v14}, Lcom/android/server/backup/UserBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v22

    new-instance v14, Ljava/util/ArrayList;

    .line 763
    move-object/from16 v24, v0

    .end local v0    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .local v24, "transport":Lcom/android/internal/backup/IBackupTransport;
    invoke-virtual {v7, v9}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->getExcludedKeysForPackage(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 761
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-wide/from16 v18, p2

    move-object/from16 v20, v5

    move/from16 v21, v6

    move-object/from16 v23, v14

    invoke-interface/range {v16 .. v23}, Landroid/app/IBackupAgent;->doRestoreWithExcludedKeys(Landroid/os/ParcelFileDescriptor;JLandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 775
    .end local v3    # "restoreAgentTimeoutMillis":J
    .end local v24    # "transport":Lcom/android/internal/backup/IBackupTransport;
    goto :goto_2

    .line 764
    .end local v15    # "stage":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 765
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to call app for restore: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 766
    const/16 v1, 0xb10

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v9, v2, v3

    const/4 v3, 0x1

    .line 767
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 766
    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 769
    invoke-virtual {v7, v13}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->keyValueAgentErrorCleanup(Z)V

    .line 774
    sget-object v1, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {v7, v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 776
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method private packagesToNames(Ljava/util/List;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 284
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 285
    .local v0, "N":I
    new-array v1, v0, [Ljava/lang/String;

    .line 286
    .local v1, "names":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 287
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 286
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 289
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method private restoreFinished()V
    .locals 8

    .line 861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "restoreFinished packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 865
    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreAgentFinishedTimeoutMillis()J

    move-result-wide v4

    .line 866
    .local v4, "restoreAgentFinishedTimeoutMillis":J
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget v3, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mEphemeralOpToken:I

    const/4 v7, 0x1

    .line 867
    move-object v6, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/backup/UserBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    .line 870
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    iget v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mEphemeralOpToken:I

    iget-object v3, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 871
    invoke-virtual {v3}, Lcom/android/server/backup/UserBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v3

    .line 870
    invoke-interface {v0, v2, v3}, Landroid/app/IBackupAgent;->doRestoreFinished(ILandroid/app/backup/IBackupManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 881
    .end local v4    # "restoreAgentFinishedTimeoutMillis":J
    goto :goto_0

    .line 874
    :catch_0
    move-exception v0

    .line 875
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 876
    .local v2, "packageName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to finalize restore of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    const/16 v1, 0xb10

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    .line 878
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 877
    invoke-static {v1, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 879
    invoke-virtual {p0, v5}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->keyValueAgentErrorCleanup(Z)V

    .line 880
    sget-object v1, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {p0, v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 882
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "packageName":Ljava/lang/String;
    :goto_0
    return-void
.end method

.method private restoreFull()V
    .locals 3

    .line 840
    :try_start_0
    new-instance v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;

    invoke-direct {v0, p0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;-><init>(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)V

    .line 845
    .local v0, "feeder":Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;
    new-instance v1, Ljava/lang/Thread;

    const-string/jumbo v2, "unified-stream-feeder"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 855
    .end local v0    # "feeder":Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;
    goto :goto_0

    .line 849
    :catch_0
    move-exception v0

    .line 853
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "BackupManagerService"

    const-string v2, "Unable to construct pipes for stream restore!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    sget-object v1, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {p0, v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 856
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private restoreKeyValue()V
    .locals 12

    .line 623
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 626
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    const/16 v2, 0xb10

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 627
    const-string v7, ""

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 641
    :cond_0
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/PackageManagerBackupAgent;->getRestoredMetadata(Ljava/lang/String;)Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    move-result-object v1

    .line 642
    .local v1, "metaInfo":Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;
    const-class v7, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageManagerInternal;

    .line 643
    .local v7, "pmi":Landroid/content/pm/PackageManagerInternal;
    iget-object v8, v1, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->sigHashes:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-static {v8, v9, v7}, Lcom/android/server/backup/BackupUtils;->signaturesMatch(Ljava/util/ArrayList;Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManagerInternal;)Z

    move-result v8

    const/4 v9, 0x3

    const-string v10, "BackupManagerService"

    if-nez v8, :cond_1

    .line 644
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Signature mismatch restoring "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v8, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v10, 0x1d

    iget-object v11, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-static {v8, v10, v11, v9, v3}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 648
    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v6

    const-string v4, "Signature mismatch"

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 650
    sget-object v2, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {p0, v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 651
    return-void

    .line 655
    :cond_1
    iget-object v8, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v11, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v11, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, v11, v6}, Lcom/android/server/backup/UserBackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    .line 658
    if-nez v8, :cond_2

    .line 659
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Can\'t find backup agent for "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    iget-object v8, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v10, 0x1e

    iget-object v11, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-static {v8, v10, v11, v9, v3}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 663
    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v6

    const-string v4, "Restore agent missing"

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 665
    sget-object v2, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {p0, v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 666
    return-void

    .line 670
    :cond_2
    iput-boolean v5, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mDidLaunch:Z

    .line 674
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-wide v3, v1, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:J

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->initiateOneRestore(Landroid/content/pm/PackageInfo;J)V

    .line 675
    iget v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCount:I

    add-int/2addr v2, v5

    iput v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 680
    goto :goto_0

    .line 676
    :catch_0
    move-exception v2

    .line 677
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error when attempting restore: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    invoke-virtual {p0, v6}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->keyValueAgentErrorCleanup(Z)V

    .line 679
    sget-object v3, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {p0, v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 681
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 632
    .end local v1    # "metaInfo":Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;
    .end local v7    # "pmi":Landroid/content/pm/PackageManagerInternal;
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v7, 0x1c

    iget-object v8, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-static {v1, v7, v8, v4, v3}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 635
    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v6

    const-string v3, "Package has no agent"

    aput-object v3, v1, v5

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 637
    sget-object v1, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {p0, v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 638
    return-void
.end method

.method private startRestore()V
    .locals 15

    .line 374
    move-object v1, p0

    const-string v0, "@pm@"

    const-string v2, "BackupManagerService"

    iget-object v3, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->sendStartRestore(I)V

    .line 377
    iget-boolean v3, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mIsSystemRestore:Z

    if-eqz v3, :cond_0

    .line 378
    iget v3, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mUserId:I

    invoke-static {v3}, Lcom/android/server/AppWidgetBackupBridge;->restoreStarting(I)V

    .line 382
    :cond_0
    const/16 v5, -0x3e8

    const/4 v6, 0x0

    :try_start_0
    iget-object v7, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    iget-object v8, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    .line 383
    invoke-virtual {v8}, Lcom/android/server/backup/transport/TransportClient;->getTransportComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/backup/TransportManager;->getTransportDirName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v7

    .line 384
    .local v7, "transportDirName":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    iget-object v9, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v9}, Lcom/android/server/backup/UserBackupManagerService;->getBaseStateDir()Ljava/io/File;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v8, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStateDir:Ljava/io/File;

    .line 387
    new-instance v8, Landroid/content/pm/PackageInfo;

    invoke-direct {v8}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 388
    .local v8, "pmPackage":Landroid/content/pm/PackageInfo;
    iput-object v0, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 389
    iget-object v9, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v9, v10, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 391
    iget-object v9, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    new-array v11, v10, [Landroid/content/pm/PackageInfo;

    invoke-interface {v9, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/content/pm/PackageInfo;

    .line 393
    .local v9, "packages":[Landroid/content/pm/PackageInfo;
    iget-object v11, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    const-string v12, "PerformUnifiedRestoreTask.startRestore()"

    .line 394
    invoke-virtual {v11, v12}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v11

    .line 396
    .local v11, "transport":Lcom/android/internal/backup/IBackupTransport;
    iget-wide v12, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mToken:J

    invoke-interface {v11, v12, v13, v9}, Lcom/android/internal/backup/IBackupTransport;->startRestore(J[Landroid/content/pm/PackageInfo;)I

    move-result v12

    iput v12, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStatus:I

    .line 397
    if-eqz v12, :cond_1

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Transport error "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStatus:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "; no restore possible"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iput v5, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStatus:I

    .line 400
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 401
    return-void

    .line 404
    :cond_1
    invoke-interface {v11}, Lcom/android/internal/backup/IBackupTransport;->nextRestorePackage()Landroid/app/backup/RestoreDescription;

    move-result-object v12

    .line 405
    .local v12, "desc":Landroid/app/backup/RestoreDescription;
    const/4 v13, 0x3

    if-nez v12, :cond_2

    .line 406
    const-string v0, "No restore metadata available; halting"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v10, 0x16

    iget-object v14, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-static {v0, v10, v14, v13, v6}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 411
    iput v5, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStatus:I

    .line 412
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 413
    return-void

    .line 415
    :cond_2
    nop

    .line 416
    invoke-virtual {v12}, Landroid/app/backup/RestoreDescription;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 415
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Required package metadata but got "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual {v12}, Landroid/app/backup/RestoreDescription;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 417
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v10, 0x17

    iget-object v14, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-static {v0, v10, v14, v13, v6}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 423
    iput v5, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStatus:I

    .line 424
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 425
    return-void

    .line 429
    :cond_3
    new-instance v14, Landroid/content/pm/PackageInfo;

    invoke-direct {v14}, Landroid/content/pm/PackageInfo;-><init>()V

    iput-object v14, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 430
    iput-object v0, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 431
    iget-object v14, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v14, v6}, Lcom/android/server/backup/UserBackupManagerService;->makeMetadataAgent(Ljava/util/List;)Lcom/android/server/backup/PackageManagerBackupAgent;

    move-result-object v14

    iput-object v14, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    .line 432
    invoke-virtual {v14}, Lcom/android/server/backup/PackageManagerBackupAgent;->onBind()Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    move-result-object v14

    iput-object v14, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    .line 436
    iget-object v14, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const-wide/16 v3, 0x0

    invoke-direct {p0, v14, v3, v4}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->initiateOneRestore(Landroid/content/pm/PackageInfo;J)V

    .line 444
    iget-object v3, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 450
    iget-object v3, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-virtual {v3}, Lcom/android/server/backup/PackageManagerBackupAgent;->hasMetadata()Z

    move-result v3

    if-nez v3, :cond_4

    .line 451
    const-string v3, "PM agent has no metadata, so not restoring"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v3, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v4, 0x18

    iget-object v14, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-static {v3, v4, v14, v13, v6}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 456
    const/16 v3, 0xb10

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v10

    const-string v0, "Package manager restore metadata missing"

    const/4 v10, 0x1

    aput-object v0, v4, v10

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 459
    iput v5, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStatus:I

    .line 460
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v3, 0x14

    invoke-virtual {v0, v3, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 462
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    return-void

    .line 481
    .end local v7    # "transportDirName":Ljava/lang/String;
    .end local v8    # "pmPackage":Landroid/content/pm/PackageInfo;
    .end local v9    # "packages":[Landroid/content/pm/PackageInfo;
    .end local v11    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v12    # "desc":Landroid/app/backup/RestoreDescription;
    :cond_4
    nop

    .line 482
    return-void

    .line 469
    :catch_0
    move-exception v0

    .line 471
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to contact transport for restore: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v2, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v3, 0x19

    const/4 v4, 0x1

    invoke-static {v2, v3, v6, v4, v6}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 476
    iput v5, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStatus:I

    .line 477
    iget-object v2, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x14

    invoke-virtual {v2, v3, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 479
    sget-object v2, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {p0, v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 480
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .line 298
    sget-object v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$1;->$SwitchMap$com$android$server$backup$restore$UnifiedRestoreState:[I

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mState:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {v1}, Lcom/android/server/backup/restore/UnifiedRestoreState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 320
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mFinished:Z

    if-nez v0, :cond_0

    .line 321
    invoke-direct {p0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->finalizeRestore()V

    goto :goto_0

    .line 323
    :cond_0
    const-string v0, "BackupManagerService"

    const-string v1, "Duplicate finish"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mFinished:Z

    goto :goto_1

    .line 316
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->restoreFinished()V

    .line 317
    goto :goto_1

    .line 312
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->restoreFull()V

    .line 313
    goto :goto_1

    .line 308
    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->restoreKeyValue()V

    .line 309
    goto :goto_1

    .line 304
    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->dispatchNextRestore()V

    .line 305
    goto :goto_1

    .line 300
    :pswitch_5
    invoke-direct {p0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->startRestore()V

    .line 301
    nop

    .line 328
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V
    .locals 2
    .param p1, "nextState"    # Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 1333
    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mState:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 1334
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1336
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1337
    return-void
.end method

.method filterExcludedKeys(Ljava/lang/String;Landroid/app/backup/BackupDataInput;Landroid/app/backup/BackupDataOutput;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "in"    # Landroid/app/backup/BackupDataInput;
    .param p3, "out"    # Landroid/app/backup/BackupDataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 797
    invoke-virtual {p0, p1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->getExcludedKeysForPackage(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 799
    .local v0, "excludedKeysForPackage":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 800
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {p2}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 801
    invoke-virtual {p2}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 802
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v3

    .line 804
    .local v3, "size":I
    const-string v4, "BackupManagerService"

    if-eqz v0, :cond_0

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 805
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping blocked key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    invoke-virtual {p2}, Landroid/app/backup/BackupDataInput;->skipEntityData()V

    .line 807
    goto :goto_0

    .line 811
    :cond_0
    const-string/jumbo v5, "\uffed\uffedwidget"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 813
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Restoring widget state for "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    new-array v4, v3, [B

    iput-object v4, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mWidgetData:[B

    .line 816
    invoke-virtual {p2, v4, v6, v3}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    goto :goto_1

    .line 818
    :cond_1
    array-length v4, v1

    if-le v3, v4, :cond_2

    .line 819
    new-array v1, v3, [B

    .line 821
    :cond_2
    invoke-virtual {p2, v1, v6, v3}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 822
    invoke-virtual {p3, v2, v3}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 823
    invoke-virtual {p3, v1, v3}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    .line 825
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "size":I
    :goto_1
    goto :goto_0

    .line 826
    :cond_3
    return-void
.end method

.method getExcludedKeysForPackage(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 791
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/UserBackupManagerService;->getExcludedRestoreKeys(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public handleCancel(Z)V
    .locals 5
    .param p1, "cancelAll"    # Z

    .line 1316
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mEphemeralOpToken:I

    invoke-virtual {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->removeOperation(I)V

    .line 1317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timeout restoring application "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const/16 v2, 0x1f

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v2, v1, v3, v4}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 1321
    new-array v0, v3, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "restore timeout"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0xb10

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1324
    invoke-virtual {p0, v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->keyValueAgentErrorCleanup(Z)V

    .line 1325
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 1326
    return-void
.end method

.method keyValueAgentCleanup()V
    .locals 5

    .line 1174
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1175
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStageName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1177
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 1178
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1181
    :cond_0
    goto :goto_0

    .line 1180
    :catch_0
    move-exception v0

    .line 1183
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1

    .line 1184
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1187
    :cond_1
    goto :goto_1

    .line 1186
    :catch_1
    move-exception v0

    .line 1188
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 1203
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mNewStateName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1206
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_5

    .line 1209
    :try_start_2
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getActivityManager()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 1225
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1226
    .local v0, "appFlags":I
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1227
    invoke-static {v1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    .line 1228
    invoke-virtual {v1}, Landroid/app/backup/RestoreDescription;->getDataType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 1232
    .local v1, "killAfterRestore":Z
    :goto_2
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    if-nez v2, :cond_4

    if-eqz v1, :cond_4

    .line 1234
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restore complete, killing host process of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getActivityManager()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v2, v3, v4}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1243
    .end local v0    # "appFlags":I
    .end local v1    # "killAfterRestore":Z
    :cond_4
    goto :goto_3

    .line 1241
    :catch_2
    move-exception v0

    .line 1248
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1249
    return-void
.end method

.method keyValueAgentErrorCleanup(Z)V
    .locals 2
    .param p1, "clearAppData"    # Z

    .line 1162
    if-eqz p1, :cond_0

    .line 1166
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->clearApplicationDataAfterRestoreFailure(Ljava/lang/String;)V

    .line 1169
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->keyValueAgentCleanup()V

    .line 1170
    return-void
.end method

.method public operationComplete(J)V
    .locals 6
    .param p1, "unusedResult"    # J

    .line 1253
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mEphemeralOpToken:I

    invoke-virtual {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->removeOperation(I)V

    .line 1261
    sget-object v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$1;->$SwitchMap$com$android$server$backup$restore$UnifiedRestoreState:[I

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mState:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {v1}, Lcom/android/server/backup/restore/UnifiedRestoreState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    .line 1303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected restore callback into state "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mState:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BackupManagerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    invoke-virtual {p0, v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->keyValueAgentErrorCleanup(Z)V

    .line 1305
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .local v0, "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    goto :goto_0

    .line 1281
    .end local v0    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v0, v2

    .line 1282
    .local v0, "size":I
    const/16 v2, 0xb11

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 1283
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    .line 1282
    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1286
    invoke-virtual {p0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->keyValueAgentCleanup()V

    .line 1291
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mWidgetData:[B

    if-eqz v1, :cond_1

    .line 1292
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mWidgetData:[B

    invoke-virtual {v1, v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->restoreWidgetData(Ljava/lang/String;[B)V

    .line 1296
    :cond_1
    sget-object v1, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 1297
    .local v1, "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    move-object v0, v1

    goto :goto_0

    .line 1274
    .end local v0    # "size":I
    .end local v1    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    :cond_2
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 1275
    .local v0, "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    goto :goto_0

    .line 1266
    .end local v0    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    :cond_3
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 1267
    .restart local v0    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    nop

    .line 1310
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 1311
    return-void
.end method

.method sendEndRestore()V
    .locals 3

    .line 1363
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    if-eqz v0, :cond_0

    .line 1365
    :try_start_0
    iget v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStatus:I

    invoke-interface {v0, v1}, Landroid/app/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1369
    goto :goto_0

    .line 1366
    :catch_0
    move-exception v0

    .line 1367
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "Restore observer went away: endRestore"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    .line 1371
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method sendOnRestorePackage(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 1352
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    if-eqz v0, :cond_0

    .line 1354
    :try_start_0
    iget v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCount:I

    invoke-interface {v0, v1, p1}, Landroid/app/backup/IRestoreObserver;->onUpdate(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1358
    goto :goto_0

    .line 1355
    :catch_0
    move-exception v0

    .line 1356
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "Restore observer died in onUpdate"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    .line 1360
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method sendStartRestore(I)V
    .locals 3
    .param p1, "numPackages"    # I

    .line 1341
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    if-eqz v0, :cond_0

    .line 1343
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/backup/IRestoreObserver;->restoreStarting(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1347
    goto :goto_0

    .line 1344
    :catch_0
    move-exception v0

    .line 1345
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "Restore observer went away: startRestore"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    .line 1349
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method shouldStageBackupData(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 785
    const-string v0, "android"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 786
    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->getExcludedKeysForPackage(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 785
    :goto_1
    return v0
.end method
