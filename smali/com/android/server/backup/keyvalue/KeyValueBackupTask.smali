.class public Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
.super Ljava/lang/Object;
.source "KeyValueBackupTask.java"

# interfaces
.implements Lcom/android/server/backup/BackupRestoreTask;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/keyvalue/KeyValueBackupTask$StateTransaction;
    }
.end annotation


# static fields
.field private static final BLANK_STATE_FILE_NAME:Ljava/lang/String; = "blank_state"

.field public static final NEW_STATE_FILE_SUFFIX:Ljava/lang/String; = ".new"

.field static final NO_DATA_END_SENTINEL:Ljava/lang/String; = "@end@"

.field private static final PM_PACKAGE:Ljava/lang/String; = "@pm@"

.field public static final STAGING_FILE_SUFFIX:Ljava/lang/String; = ".data"

.field private static final SUCCESS_STATE_SUBDIR:Ljava/lang/String; = "backing-up"

.field private static final TAG:Ljava/lang/String; = "KVBT"

.field private static final THREAD_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final THREAD_PRIORITY:I = 0xa


# instance fields
.field private mAgent:Landroid/app/IBackupAgent;

.field private final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field private mBackupData:Landroid/os/ParcelFileDescriptor;

.field private mBackupDataFile:Ljava/io/File;

.field private final mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field private final mBlankStateFile:Ljava/io/File;

.field private final mCancelAcknowledged:Landroid/os/ConditionVariable;

.field private volatile mCancelled:Z

.field private final mCurrentOpToken:I

.field private mCurrentPackage:Landroid/content/pm/PackageInfo;

.field private final mDataDirectory:Ljava/io/File;

.field private mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

.field private mHasDataToBackup:Z

.field private final mJournal:Lcom/android/server/backup/DataChangedJournal;

.field private mNewState:Landroid/os/ParcelFileDescriptor;

.field private mNewStateFile:Ljava/io/File;

.field private mNonIncremental:Z

.field private final mOriginalQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private volatile mPendingCall:Lcom/android/server/backup/remote/RemoteCall;

.field private final mPendingFullBackups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mQueueLock:Ljava/lang/Object;

.field private final mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

.field private mSavedState:Landroid/os/ParcelFileDescriptor;

.field private mSavedStateFile:Ljava/io/File;

.field private final mStateDirectory:Ljava/io/File;

.field private final mTaskFinishedListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

.field private final mTransportClient:Lcom/android/server/backup/transport/TransportClient;

.field private final mUserId:I

.field private final mUserInitiated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 182
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->THREAD_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;Ljava/util/List;Lcom/android/server/backup/DataChangedJournal;Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;Lcom/android/server/backup/internal/OnTaskFinishedListener;Ljava/util/List;ZZ)V
    .locals 3
    .param p1, "backupManagerService"    # Lcom/android/server/backup/UserBackupManagerService;
    .param p2, "transportClient"    # Lcom/android/server/backup/transport/TransportClient;
    .param p3, "transportDirName"    # Ljava/lang/String;
    .param p5, "journal"    # Lcom/android/server/backup/DataChangedJournal;
    .param p6, "reporter"    # Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;
    .param p7, "taskFinishedListener"    # Lcom/android/server/backup/internal/OnTaskFinishedListener;
    .param p9, "userInitiated"    # Z
    .param p10, "nonIncremental"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/backup/UserBackupManagerService;",
            "Lcom/android/server/backup/transport/TransportClient;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/backup/DataChangedJournal;",
            "Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;",
            "Lcom/android/server/backup/internal/OnTaskFinishedListener;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .line 310
    .local p4, "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p8, "pendingFullBackups":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelAcknowledged:Landroid/os/ConditionVariable;

    .line 291
    iput-boolean v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelled:Z

    .line 311
    iput-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 312
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 313
    iput-object p2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    .line 314
    iput-object p4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mOriginalQueue:Ljava/util/List;

    .line 316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    .line 317
    iput-object p5, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    .line 318
    iput-object p6, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    .line 319
    iput-object p7, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTaskFinishedListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 320
    iput-object p8, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingFullBackups:Ljava/util/List;

    .line 321
    iput-boolean p9, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mUserInitiated:Z

    .line 322
    iput-boolean p10, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNonIncremental:Z

    .line 323
    nop

    .line 325
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object v0

    .line 324
    const-string v1, "Timeout parameters cannot be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 327
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getBaseStateDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    .line 328
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getDataDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mDataDirectory:Ljava/io/File;

    .line 329
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result v0

    iput v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentOpToken:I

    .line 330
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueueLock:Ljava/lang/Object;

    .line 331
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    const-string v2, "blank_state"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBlankStateFile:Ljava/io/File;

    .line 332
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result v0

    iput v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mUserId:I

    .line 333
    return-void
.end method

.method private SHA1Checksum([B)Ljava/lang/String;
    .locals 6
    .param p1, "input"    # [B

    .line 963
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 964
    .local v0, "md":Ljava/security/MessageDigest;
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 968
    .local v0, "checksum":[B
    nop

    .line 970
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 971
    .local v1, "string":Ljava/lang/StringBuilder;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v4, v0, v3

    .line 972
    .local v4, "item":B
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 971
    .end local v4    # "item":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 974
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 965
    .end local v0    # "checksum":[B
    .end local v1    # "string":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 966
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onDigestError(Ljava/security/NoSuchAlgorithmException;)V

    .line 967
    const-string v1, "00"

    return-object v1
.end method

.method private agentDoQuotaExceeded(Landroid/app/IBackupAgent;Ljava/lang/String;J)V
    .locals 8
    .param p1, "agent"    # Landroid/app/IBackupAgent;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "size"    # J

    .line 1107
    if-eqz p1, :cond_0

    .line 1109
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    const-string v1, "KVBT.agentDoQuotaExceeded()"

    .line 1110
    invoke-virtual {v0, v1}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    .line 1111
    .local v0, "transport":Lcom/android/internal/backup/IBackupTransport;
    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Lcom/android/internal/backup/IBackupTransport;->getBackupQuota(Ljava/lang/String;Z)J

    move-result-wide v6

    .line 1112
    .local v6, "quota":J
    new-instance v1, Lcom/android/server/backup/keyvalue/-$$Lambda$KeyValueBackupTask$XyLNsBl81S-JjG_2y6Nb3ueV0ZY;

    move-object v2, v1

    move-object v3, p1

    move-wide v4, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/backup/keyvalue/-$$Lambda$KeyValueBackupTask$XyLNsBl81S-JjG_2y6Nb3ueV0ZY;-><init>(Landroid/app/IBackupAgent;JJ)V

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 1114
    invoke-virtual {v2}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getQuotaExceededTimeoutMillis()J

    move-result-wide v2

    const-string v4, "doQuotaExceeded()"

    .line 1112
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->remoteCall(Lcom/android/server/backup/remote/RemoteCallable;JLjava/lang/String;)Lcom/android/server/backup/remote/RemoteResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1118
    nop

    .end local v0    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v6    # "quota":J
    goto :goto_0

    .line 1116
    :catch_0
    move-exception v0

    .line 1117
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentDoQuotaExceededError(Ljava/lang/Exception;)V

    .line 1120
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private agentFail(Landroid/app/IBackupAgent;Ljava/lang/String;)V
    .locals 3
    .param p1, "agent"    # Landroid/app/IBackupAgent;
    .param p2, "message"    # Ljava/lang/String;

    .line 953
    :try_start_0
    invoke-interface {p1, p2}, Landroid/app/IBackupAgent;->fail(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 956
    goto :goto_0

    .line 954
    :catch_0
    move-exception v0

    .line 955
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onFailAgentError(Ljava/lang/String;)V

    .line 957
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private applyStateTransaction(I)V
    .locals 3
    .param p1, "stateTransaction"    # I

    .line 1274
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1284
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedStateFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1285
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewStateFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1286
    goto :goto_0

    .line 1288
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state transaction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1279
    :cond_1
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewStateFile:Ljava/io/File;

    if-eqz v0, :cond_3

    .line 1280
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 1276
    :cond_2
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewStateFile:Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedStateFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1277
    nop

    .line 1290
    :cond_3
    :goto_0
    return-void
.end method

.method private backupPackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/keyvalue/AgentException;,
            Lcom/android/server/backup/keyvalue/TaskException;
        }
    .end annotation

    .line 666
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onStartPackageBackup(Ljava/lang/String;)V

    .line 667
    invoke-direct {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->getPackageForBackup(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 670
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->extractAgentData(Landroid/content/pm/PackageInfo;)V

    .line 671
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-direct {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->sendDataToTransport(Landroid/content/pm/PackageInfo;)I

    move-result v0

    .line 672
    .local v0, "status":I
    invoke-direct {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->cleanUpAgentForTransportStatus(I)V
    :try_end_0
    .catch Lcom/android/server/backup/keyvalue/AgentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/server/backup/keyvalue/TaskException; {:try_start_0 .. :try_end_0} :catch_0

    .line 676
    .end local v0    # "status":I
    nop

    .line 677
    return-void

    .line 673
    :catch_0
    move-exception v0

    .line 674
    .local v0, "e":Lcom/android/server/backup/keyvalue/BackupException;
    invoke-direct {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->cleanUpAgentForError(Lcom/android/server/backup/keyvalue/BackupException;)V

    .line 675
    throw v0
.end method

.method private backupPm()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/keyvalue/TaskException;
        }
    .end annotation

    .line 649
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    const-string v1, "@pm@"

    invoke-virtual {v0, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onStartPackageBackup(Ljava/lang/String;)V

    .line 650
    new-instance v0, Landroid/content/pm/PackageInfo;

    invoke-direct {v0}, Landroid/content/pm/PackageInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 651
    iput-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 654
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-direct {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->extractPmAgentData(Landroid/content/pm/PackageInfo;)V

    .line 655
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-direct {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->sendDataToTransport(Landroid/content/pm/PackageInfo;)I

    move-result v0

    .line 656
    .local v0, "status":I
    invoke-direct {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->cleanUpAgentForTransportStatus(I)V
    :try_end_0
    .catch Lcom/android/server/backup/keyvalue/AgentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/server/backup/keyvalue/TaskException; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    .end local v0    # "status":I
    nop

    .line 663
    return-void

    .line 657
    :catch_0
    move-exception v0

    .line 658
    .local v0, "e":Lcom/android/server/backup/keyvalue/BackupException;
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onExtractPmAgentDataError(Ljava/lang/Exception;)V

    .line 659
    invoke-direct {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->cleanUpAgentForError(Lcom/android/server/backup/keyvalue/BackupException;)V

    .line 661
    invoke-static {v0}, Lcom/android/server/backup/keyvalue/TaskException;->stateCompromised(Ljava/lang/Exception;)Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object v1

    throw v1
.end method

.method private bindAgent(Landroid/content/pm/PackageInfo;)Landroid/app/IBackupAgent;
    .locals 4
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/keyvalue/AgentException;
        }
    .end annotation

    .line 706
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 709
    .local v0, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v3, 0x0

    .line 710
    invoke-virtual {v1, v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v1

    .line 712
    .local v1, "agent":Landroid/app/IBackupAgent;
    if-eqz v1, :cond_0

    .line 719
    nop

    .line 720
    return-object v1

    .line 713
    :cond_0
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v2, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentError(Ljava/lang/String;)V

    .line 714
    invoke-static {}, Lcom/android/server/backup/keyvalue/AgentException;->transitory()Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object v2

    .end local v0    # "packageName":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    .end local p1    # "packageInfo":Landroid/content/pm/PackageInfo;
    throw v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 716
    .end local v1    # "agent":Landroid/app/IBackupAgent;
    .restart local v0    # "packageName":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    .restart local p1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 717
    .local v1, "e":Ljava/lang/SecurityException;
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onBindAgentError(Ljava/lang/String;Ljava/lang/SecurityException;)V

    .line 718
    invoke-static {v1}, Lcom/android/server/backup/keyvalue/AgentException;->transitory(Ljava/lang/Exception;)Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object v2

    throw v2
.end method

.method private checkAgentResult(Landroid/content/pm/PackageInfo;Lcom/android/server/backup/remote/RemoteResult;)V
    .locals 6
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "result"    # Lcom/android/server/backup/remote/RemoteResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/keyvalue/AgentException;,
            Lcom/android/server/backup/keyvalue/TaskException;
        }
    .end annotation

    .line 928
    sget-object v0, Lcom/android/server/backup/remote/RemoteResult;->FAILED_THREAD_INTERRUPTED:Lcom/android/server/backup/remote/RemoteResult;

    const/4 v1, 0x1

    if-eq p2, v0, :cond_4

    .line 934
    sget-object v0, Lcom/android/server/backup/remote/RemoteResult;->FAILED_CANCELLED:Lcom/android/server/backup/remote/RemoteResult;

    if-eq p2, v0, :cond_3

    .line 938
    sget-object v0, Lcom/android/server/backup/remote/RemoteResult;->FAILED_TIMED_OUT:Lcom/android/server/backup/remote/RemoteResult;

    if-eq p2, v0, :cond_2

    .line 942
    invoke-virtual {p2}, Lcom/android/server/backup/remote/RemoteResult;->isPresent()Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 943
    invoke-virtual {p2}, Lcom/android/server/backup/remote/RemoteResult;->get()J

    move-result-wide v2

    .line 944
    .local v2, "resultCode":J
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 948
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 949
    return-void

    .line 945
    :cond_1
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentResultError(Landroid/content/pm/PackageInfo;)V

    .line 946
    invoke-static {}, Lcom/android/server/backup/keyvalue/AgentException;->transitory()Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object v0

    throw v0

    .line 939
    .end local v2    # "resultCode":J
    :cond_2
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentTimedOut(Landroid/content/pm/PackageInfo;)V

    .line 940
    invoke-static {}, Lcom/android/server/backup/keyvalue/AgentException;->transitory()Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object v0

    throw v0

    .line 935
    :cond_3
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentCancelled(Landroid/content/pm/PackageInfo;)V

    .line 936
    invoke-static {}, Lcom/android/server/backup/keyvalue/TaskException;->create()Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object v0

    throw v0

    .line 930
    :cond_4
    iput-boolean v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelled:Z

    .line 931
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentCancelled(Landroid/content/pm/PackageInfo;)V

    .line 932
    invoke-static {}, Lcom/android/server/backup/keyvalue/TaskException;->create()Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object v0

    throw v0
.end method

.method private checkBackupData(Landroid/content/pm/ApplicationInfo;Ljava/io/File;)V
    .locals 6
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "backupDataFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/server/backup/keyvalue/AgentException;
        }
    .end annotation

    .line 1128
    if-eqz p1, :cond_6

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    goto :goto_3

    .line 1132
    :cond_0
    const/high16 v0, 0x10000000

    .line 1133
    invoke-static {p2, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 1134
    .local v0, "backupData":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    new-instance v1, Landroid/app/backup/BackupDataInput;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V

    .line 1135
    .local v1, "backupDataInput":Landroid/app/backup/BackupDataInput;
    :goto_0
    invoke-virtual {v1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1136
    invoke-virtual {v1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 1137
    .local v2, "key":Ljava/lang/String;
    if-eqz v2, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const v4, 0xff00

    if-ge v3, v4, :cond_1

    goto :goto_1

    .line 1138
    :cond_1
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-virtual {v3, v4, v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentIllegalKey(Landroid/content/pm/PackageInfo;Ljava/lang/String;)V

    .line 1140
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgent:Landroid/app/IBackupAgent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal backup key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->agentFail(Landroid/app/IBackupAgent;Ljava/lang/String;)V

    .line 1141
    invoke-static {}, Lcom/android/server/backup/keyvalue/AgentException;->permanent()Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object v3

    .end local v0    # "backupData":Landroid/os/ParcelFileDescriptor;
    .end local p0    # "this":Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    .end local p1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local p2    # "backupDataFile":Ljava/io/File;
    throw v3

    .line 1143
    .restart local v0    # "backupData":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    .restart local p1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local p2    # "backupDataFile":Ljava/io/File;
    :cond_2
    :goto_1
    invoke-virtual {v1}, Landroid/app/backup/BackupDataInput;->skipEntityData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1144
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 1145
    .end local v1    # "backupDataInput":Landroid/app/backup/BackupDataInput;
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 1146
    .end local v0    # "backupData":Landroid/os/ParcelFileDescriptor;
    :cond_4
    return-void

    .line 1132
    .restart local v0    # "backupData":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_5

    :try_start_1
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw v1

    .line 1130
    .end local v0    # "backupData":Landroid/os/ParcelFileDescriptor;
    :cond_6
    :goto_3
    return-void
.end method

.method private cleanUpAgent(I)V
    .locals 3
    .param p1, "stateTransaction"    # I

    .line 1251
    invoke-direct {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->applyStateTransaction(I)V

    .line 1252
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 1253
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1255
    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBlankStateFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1256
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedStateFile:Ljava/io/File;

    .line 1257
    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    .line 1258
    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewStateFile:Ljava/io/File;

    .line 1259
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    const-string/jumbo v2, "old state"

    invoke-direct {p0, v1, v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->tryCloseFileDescriptor(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 1260
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    const-string v2, "backup data"

    invoke-direct {p0, v1, v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->tryCloseFileDescriptor(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 1261
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    const-string/jumbo v2, "new state"

    invoke-direct {p0, v1, v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->tryCloseFileDescriptor(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 1262
    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    .line 1263
    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 1264
    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    .line 1267
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_1

    .line 1268
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->unbindAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 1270
    :cond_1
    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgent:Landroid/app/IBackupAgent;

    .line 1271
    return-void
.end method

.method private cleanUpAgentForError(Lcom/android/server/backup/keyvalue/BackupException;)V
    .locals 1
    .param p1, "exception"    # Lcom/android/server/backup/keyvalue/BackupException;

    .line 1229
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->cleanUpAgent(I)V

    .line 1230
    return-void
.end method

.method private cleanUpAgentForTransportStatus(I)V
    .locals 1
    .param p1, "status"    # I

    .line 1237
    const/16 v0, -0x3ee

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_0

    .line 1239
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->cleanUpAgent(I)V

    .line 1240
    goto :goto_0

    .line 1246
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1242
    :cond_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->cleanUpAgent(I)V

    .line 1243
    nop

    .line 1248
    :goto_0
    return-void
.end method

.method private clearStatus(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 530
    invoke-direct {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->getSuccessStateFileFor(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 531
    .local v0, "successStateFile":Ljava/io/File;
    if-nez v0, :cond_0

    .line 533
    return-void

    .line 535
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->clearStatus(Ljava/lang/String;Ljava/io/File;)V

    .line 536
    return-void
.end method

.method private clearStatus(Ljava/lang/String;Ljava/io/File;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "successStateFile"    # Ljava/io/File;

    .line 540
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to remove status file for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KVBT"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_0
    return-void
.end method

.method private createFullBackupTask(Ljava/util/List;)Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;"
        }
    .end annotation

    .line 634
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v12, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    .line 638
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [Ljava/lang/String;

    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v7, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    .line 642
    invoke-virtual {v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->getObserver()Landroid/app/backup/IBackupObserver;

    move-result-object v8

    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    .line 643
    invoke-virtual {v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->getMonitor()Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTaskFinishedListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    iget-boolean v11, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mUserInitiated:Z

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportClient;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;Z)V

    .line 634
    return-object v12
.end method

.method private deletePmStateFile()V
    .locals 3

    .line 823
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    const-string v2, "@pm@"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 824
    return-void
.end method

.method private extractAgentData(Landroid/content/pm/PackageInfo;)V
    .locals 3
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/keyvalue/AgentException;,
            Lcom/android/server/backup/keyvalue/TaskException;
        }
    .end annotation

    .line 845
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    new-instance v1, Landroid/os/WorkSource;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v1, v2}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->setWorkSource(Landroid/os/WorkSource;)V

    .line 847
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->bindAgent(Landroid/content/pm/PackageInfo;)Landroid/app/IBackupAgent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgent:Landroid/app/IBackupAgent;

    .line 848
    invoke-direct {p0, p1, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->extractAgentData(Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 850
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/UserBackupManagerService;->setWorkSource(Landroid/os/WorkSource;)V

    .line 851
    nop

    .line 852
    return-void

    .line 850
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/backup/UserBackupManagerService;->setWorkSource(Landroid/os/WorkSource;)V

    .line 851
    throw v1
.end method

.method private extractAgentData(Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;)V
    .locals 11
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "agent"    # Landroid/app/IBackupAgent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/keyvalue/AgentException;,
            Lcom/android/server/backup/keyvalue/TaskException;
        }
    .end annotation

    .line 868
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 869
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onExtractAgentData(Ljava/lang/String;)V

    .line 871
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedStateFile:Ljava/io/File;

    .line 872
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mDataDirectory:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    .line 873
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".new"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewStateFile:Ljava/io/File;

    .line 874
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentFilesReady(Ljava/io/File;)V

    .line 876
    const/4 v1, 0x0

    .line 879
    .local v1, "callingAgent":Z
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNonIncremental:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBlankStateFile:Ljava/io/File;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedStateFile:Ljava/io/File;

    .line 881
    .local v2, "savedStateFileForAgent":Ljava/io/File;
    :goto_0
    const/high16 v3, 0x18000000

    .line 882
    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    .line 883
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    .line 884
    const/high16 v4, 0x3c000000    # 0.0078125f

    invoke-static {v3, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 886
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewStateFile:Ljava/io/File;

    .line 887
    invoke-static {v3, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    .line 892
    iget v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mUserId:I

    if-nez v3, :cond_1

    .line 893
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    invoke-static {v3}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 894
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onRestoreconFailed(Ljava/io/File;)V

    .line 898
    :cond_1
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    const-string v4, "KVBT.extractAgentData()"

    invoke-virtual {v3, v4}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v3

    .line 899
    .local v3, "transport":Lcom/android/internal/backup/IBackupTransport;
    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Lcom/android/internal/backup/IBackupTransport;->getBackupQuota(Ljava/lang/String;Z)J

    move-result-wide v8

    .line 900
    .local v8, "quota":J
    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->getTransportFlags()I

    move-result v10

    .line 902
    .local v10, "transportFlags":I
    const/4 v1, 0x1

    .line 903
    new-instance v4, Lcom/android/server/backup/keyvalue/-$$Lambda$KeyValueBackupTask$NN2H32cNizGxrUxqHgqPqGldNsA;

    move-object v5, v4

    move-object v6, p0

    move-object v7, p2

    invoke-direct/range {v5 .. v10}, Lcom/android/server/backup/keyvalue/-$$Lambda$KeyValueBackupTask$NN2H32cNizGxrUxqHgqPqGldNsA;-><init>(Lcom/android/server/backup/keyvalue/KeyValueBackupTask;Landroid/app/IBackupAgent;JI)V

    iget-object v5, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 913
    invoke-virtual {v5}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getKvBackupAgentTimeoutMillis()J

    move-result-wide v5

    const-string v7, "doBackup()"

    .line 904
    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->remoteCall(Lcom/android/server/backup/remote/RemoteCallable;JLjava/lang/String;)Lcom/android/server/backup/remote/RemoteResult;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 922
    .end local v3    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v8    # "quota":J
    .end local v10    # "transportFlags":I
    .local v2, "agentResult":Lcom/android/server/backup/remote/RemoteResult;
    nop

    .line 923
    invoke-direct {p0, p1, v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->checkAgentResult(Landroid/content/pm/PackageInfo;Lcom/android/server/backup/remote/RemoteResult;)V

    .line 924
    return-void

    .line 915
    .end local v2    # "agentResult":Lcom/android/server/backup/remote/RemoteResult;
    :catch_0
    move-exception v2

    .line 916
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onCallAgentDoBackupError(Ljava/lang/String;ZLjava/lang/Exception;)V

    .line 917
    if-eqz v1, :cond_2

    .line 918
    invoke-static {v2}, Lcom/android/server/backup/keyvalue/AgentException;->transitory(Ljava/lang/Exception;)Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object v3

    throw v3

    .line 920
    :cond_2
    invoke-static {}, Lcom/android/server/backup/keyvalue/TaskException;->create()Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object v3

    throw v3
.end method

.method private extractPmAgentData(Landroid/content/pm/PackageInfo;)V
    .locals 2
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/keyvalue/AgentException;,
            Lcom/android/server/backup/keyvalue/TaskException;
        }
    .end annotation

    .line 828
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v1, "@pm@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 829
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->makeMetadataAgent()Landroid/app/backup/BackupAgent;

    move-result-object v0

    .line 830
    .local v0, "pmAgent":Landroid/app/backup/BackupAgent;
    invoke-virtual {v0}, Landroid/app/backup/BackupAgent;->onBind()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgent:Landroid/app/IBackupAgent;

    .line 831
    invoke-direct {p0, p1, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->extractAgentData(Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;)V

    .line 832
    return-void
.end method

.method private finishTask(I)V
    .locals 8
    .param p1, "status"    # I

    .line 725
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 726
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    .line 727
    .end local v1    # "packageName":Ljava/lang/String;
    goto :goto_0

    .line 731
    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/backup/DataChangedJournal;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 732
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onJournalDeleteFailed(Lcom/android/server/backup/DataChangedJournal;)V

    .line 735
    :cond_1
    const-string v0, "KVBT.finishTask()"

    .line 736
    .local v0, "callerLogString":Ljava/lang/String;
    const/4 v1, 0x0

    .line 740
    .local v1, "transportName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getCurrentToken()J

    move-result-wide v2

    .line 741
    .local v2, "currentToken":J
    iget-boolean v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mHasDataToBackup:Z

    if-eqz v4, :cond_2

    if-nez p1, :cond_2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_2

    .line 743
    :try_start_0
    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    invoke-virtual {v4, v0}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v4

    .line 744
    .local v4, "transport":Lcom/android/internal/backup/IBackupTransport;
    invoke-interface {v4}, Lcom/android/internal/backup/IBackupTransport;->name()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 745
    iget-object v5, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-interface {v4}, Lcom/android/internal/backup/IBackupTransport;->getCurrentRestoreSet()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/android/server/backup/UserBackupManagerService;->setCurrentToken(J)V

    .line 746
    iget-object v5, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/UserBackupManagerService;->writeRestoreTokens()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 750
    .end local v4    # "transport":Lcom/android/internal/backup/IBackupTransport;
    goto :goto_1

    .line 747
    :catch_0
    move-exception v4

    .line 749
    .local v4, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v5, v4}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onSetCurrentTokenError(Ljava/lang/Exception;)V

    .line 753
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueueLock:Ljava/lang/Object;

    monitor-enter v4

    .line 754
    :try_start_1
    iget-object v5, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/backup/UserBackupManagerService;->setBackupRunning(Z)V

    .line 755
    const/16 v5, -0x3e9

    if-ne p1, v5, :cond_3

    .line 756
    iget-object v5, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v5, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onTransportNotInitialized(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 758
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->triggerTransportInitializationLocked()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 762
    goto :goto_2

    .line 759
    :catch_1
    move-exception v5

    .line 760
    .local v5, "e":Ljava/lang/Exception;
    :try_start_3
    iget-object v6, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v6, v5}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPendingInitializeTransportError(Ljava/lang/Exception;)V

    .line 761
    const/16 p1, -0x3e8

    .line 764
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 766
    invoke-direct {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->unregisterTask()V

    .line 767
    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v4}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onTaskFinished()V

    .line 769
    iget-boolean v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelled:Z

    if-eqz v4, :cond_4

    .line 772
    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelAcknowledged:Landroid/os/ConditionVariable;

    invoke-virtual {v4}, Landroid/os/ConditionVariable;->open()V

    .line 775
    :cond_4
    iget-boolean v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelled:Z

    if-nez v4, :cond_5

    if-nez p1, :cond_5

    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingFullBackups:Ljava/util/List;

    .line 778
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 779
    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-object v5, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingFullBackups:Ljava/util/List;

    invoke-virtual {v4, v5}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onStartFullBackup(Ljava/util/List;)V

    .line 784
    new-instance v4, Ljava/lang/Thread;

    iget-object v5, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    const-string v6, "full-transport-requested"

    invoke-direct {v4, v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 785
    return-void

    .line 788
    :cond_5
    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    if-eqz v4, :cond_6

    .line 789
    invoke-virtual {v4}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 791
    :cond_6
    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTaskFinishedListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    invoke-interface {v4, v0}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 792
    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-boolean v5, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelled:Z

    invoke-direct {p0, v5, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->getBackupFinishedStatus(ZI)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onBackupFinished(I)V

    .line 793
    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 794
    return-void

    .line 764
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5
.end method

.method private getBackupFinishedStatus(ZI)I
    .locals 1
    .param p1, "cancelled"    # Z
    .param p2, "transportStatus"    # I

    .line 797
    if-eqz p1, :cond_0

    .line 798
    const/16 v0, -0x7d3

    return v0

    .line 800
    :cond_0
    const/16 v0, -0x3ed

    if-eq p2, v0, :cond_1

    const/16 v0, -0x3ea

    if-eq p2, v0, :cond_1

    if-eqz p2, :cond_1

    .line 808
    const/16 v0, -0x3e8

    return v0

    .line 804
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private getPackageForBackup(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/keyvalue/AgentException;
        }
    .end annotation

    .line 682
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v1, 0x8000000

    iget v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mUserId:I

    .line 683
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    nop

    .line 689
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 690
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 694
    invoke-static {v0}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 698
    invoke-static {v1}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsStopped(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 702
    return-object v0

    .line 699
    :cond_0
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v2, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPackageStopped(Ljava/lang/String;)V

    .line 700
    invoke-static {}, Lcom/android/server/backup/keyvalue/AgentException;->permanent()Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object v2

    throw v2

    .line 695
    :cond_1
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v2, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPackageEligibleForFullBackup(Ljava/lang/String;)V

    .line 696
    invoke-static {}, Lcom/android/server/backup/keyvalue/AgentException;->permanent()Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object v2

    throw v2

    .line 691
    :cond_2
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v2, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPackageNotEligibleForBackup(Ljava/lang/String;)V

    .line 692
    invoke-static {}, Lcom/android/server/backup/keyvalue/AgentException;->permanent()Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object v2

    throw v2

    .line 685
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 686
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v1, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentUnknown(Ljava/lang/String;)V

    .line 687
    invoke-static {v0}, Lcom/android/server/backup/keyvalue/AgentException;->permanent(Ljava/lang/Exception;)Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object v1

    throw v1
.end method

.method private getPerformBackupFlags(ZZ)I
    .locals 3
    .param p1, "userInitiated"    # Z
    .param p2, "nonIncremental"    # Z

    .line 1149
    move v0, p1

    .line 1151
    .local v0, "userInitiatedFlag":I
    if-eqz p2, :cond_0

    .line 1152
    const/4 v1, 0x4

    goto :goto_0

    .line 1153
    :cond_0
    const/4 v1, 0x2

    :goto_0
    nop

    .line 1154
    .local v1, "incrementalFlag":I
    or-int v2, v0, v1

    return v2
.end method

.method private getSucceedingPackages()[Ljava/lang/String;
    .locals 2

    .line 492
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->getTopLevelSuccessStateDirectory(Z)Ljava/io/File;

    move-result-object v0

    .line 493
    .local v0, "stateDirectory":Ljava/io/File;
    if-nez v0, :cond_0

    .line 495
    const/4 v1, 0x0

    return-object v1

    .line 498
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getSuccessStateFileFor(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 549
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->getTopLevelSuccessStateDirectory(Z)Ljava/io/File;

    move-result-object v0

    .line 550
    .local v0, "stateDirectory":Ljava/io/File;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    return-object v1
.end method

.method private getTopLevelSuccessStateDirectory(Z)Ljava/io/File;
    .locals 3
    .param p1, "createIfMissing"    # Z

    .line 555
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    const-string v2, "backing-up"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 556
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 557
    const-string v1, "KVBT"

    const-string v2, "Unable to create backing-up state directory"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const/4 v1, 0x0

    return-object v1

    .line 560
    :cond_0
    return-object v0
.end method

.method private handleTransportStatus(ILjava/lang/String;J)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/keyvalue/TaskException;,
            Lcom/android/server/backup/keyvalue/AgentException;
        }
    .end annotation

    .line 1082
    if-nez p1, :cond_0

    .line 1083
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPackageBackupComplete(Ljava/lang/String;J)V

    .line 1084
    return-void

    .line 1086
    :cond_0
    const/16 v0, -0x3ee

    if-ne p1, v0, :cond_1

    .line 1087
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPackageBackupNonIncrementalRequired(Landroid/content/pm/PackageInfo;)V

    .line 1089
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1090
    return-void

    .line 1092
    :cond_1
    const/16 v0, -0x3ea

    if-eq p1, v0, :cond_3

    .line 1096
    const/16 v0, -0x3ed

    if-ne p1, v0, :cond_2

    .line 1097
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0, p2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPackageBackupQuotaExceeded(Ljava/lang/String;)V

    .line 1098
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgent:Landroid/app/IBackupAgent;

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->agentDoQuotaExceeded(Landroid/app/IBackupAgent;Ljava/lang/String;J)V

    .line 1099
    invoke-static {}, Lcom/android/server/backup/keyvalue/AgentException;->permanent()Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object v0

    throw v0

    .line 1102
    :cond_2
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0, p2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPackageBackupTransportFailure(Ljava/lang/String;)V

    .line 1103
    invoke-static {p1}, Lcom/android/server/backup/keyvalue/TaskException;->forStatus(I)Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object v0

    throw v0

    .line 1093
    :cond_3
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0, p2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPackageBackupRejected(Ljava/lang/String;)V

    .line 1094
    invoke-static {}, Lcom/android/server/backup/keyvalue/AgentException;->permanent()Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object v0

    throw v0
.end method

.method private informTransportOfUnchangedApps(Ljava/util/Set;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 402
    .local p1, "appsBackedUp":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "KVBT"

    invoke-direct {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->getSucceedingPackages()[Ljava/lang/String;

    move-result-object v1

    .line 403
    .local v1, "succeedingPackages":[Ljava/lang/String;
    if-nez v1, :cond_0

    .line 405
    return-void

    .line 408
    :cond_0
    const/16 v2, 0x8

    .line 409
    .local v2, "flags":I
    iget-boolean v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mUserInitiated:Z

    if-eqz v3, :cond_1

    .line 410
    or-int/lit8 v2, v2, 0x1

    .line 413
    :cond_1
    const/4 v3, 0x0

    .line 415
    .local v3, "noDataPackageEncountered":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    const-string v5, "KVBT.informTransportOfEmptyBackups()"

    .line 416
    invoke-virtual {v4, v5}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v4

    .line 418
    .local v4, "transport":Lcom/android/internal/backup/IBackupTransport;
    array-length v5, v1

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_4

    aget-object v8, v1, v7

    .line 419
    .local v8, "packageName":Ljava/lang/String;
    invoke-interface {p1, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 420
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Skipping package which was backed up this time :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/backup/transport/TransportNotAvailableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 422
    goto :goto_1

    .line 427
    :cond_2
    :try_start_1
    iget-object v9, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v8, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 428
    .local v9, "packageInfo":Landroid/content/pm/PackageInfo;
    invoke-direct {p0, v9}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->isEligibleForNoDataCall(Landroid/content/pm/PackageInfo;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 431
    invoke-direct {p0, v8}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->clearStatus(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/backup/transport/TransportNotAvailableException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 432
    goto :goto_1

    .line 438
    :cond_3
    nop

    .line 440
    :try_start_2
    invoke-direct {p0, v4, v9, v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->sendNoDataChangedTo(Lcom/android/internal/backup/IBackupTransport;Landroid/content/pm/PackageInfo;I)V

    .line 441
    const/4 v3, 0x1

    goto :goto_1

    .line 434
    .end local v9    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v9

    .line 436
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-direct {p0, v8}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->clearStatus(Ljava/lang/String;)V

    .line 437
    nop

    .line 418
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 444
    :cond_4
    if-eqz v3, :cond_5

    .line 448
    new-instance v5, Landroid/content/pm/PackageInfo;

    invoke-direct {v5}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 449
    .local v5, "endSentinal":Landroid/content/pm/PackageInfo;
    const-string v6, "@end@"

    iput-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 450
    invoke-direct {p0, v4, v5, v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->sendNoDataChangedTo(Lcom/android/internal/backup/IBackupTransport;Landroid/content/pm/PackageInfo;I)V
    :try_end_2
    .catch Lcom/android/server/backup/transport/TransportNotAvailableException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 454
    .end local v4    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v5    # "endSentinal":Landroid/content/pm/PackageInfo;
    :cond_5
    goto :goto_2

    .line 452
    :catch_1
    move-exception v4

    .line 453
    .local v4, "e":Landroid/util/AndroidException;
    const-string v5, "Could not inform transport of all unchanged apps"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 455
    .end local v4    # "e":Landroid/util/AndroidException;
    :goto_2
    return-void
.end method

.method private isEligibleForNoDataCall(Landroid/content/pm/PackageInfo;)Z
    .locals 4
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 459
    invoke-static {p1}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsKeyValueOnly(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mUserId:I

    .line 460
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsRunningAndEligibleForBackupWithTransport(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;Landroid/content/pm/PackageManager;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 459
    :goto_0
    return v0
.end method

.method static synthetic lambda$agentDoQuotaExceeded$1(Landroid/app/IBackupAgent;JJLandroid/app/backup/IBackupCallback;)V
    .locals 0
    .param p0, "agent"    # Landroid/app/IBackupAgent;
    .param p1, "size"    # J
    .param p3, "quota"    # J
    .param p5, "callback"    # Landroid/app/backup/IBackupCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1113
    invoke-interface/range {p0 .. p5}, Landroid/app/IBackupAgent;->doQuotaExceeded(JJLandroid/app/backup/IBackupCallback;)V

    return-void
.end method

.method private registerTask()V
    .locals 5

    .line 336
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentOpToken:I

    new-instance v2, Lcom/android/server/backup/internal/Operation;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v2, v3, p0, v4}, Lcom/android/server/backup/internal/Operation;-><init>(ILcom/android/server/backup/BackupRestoreTask;I)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->putOperation(ILcom/android/server/backup/internal/Operation;)V

    .line 338
    return-void
.end method

.method private remoteCall(Lcom/android/server/backup/remote/RemoteCallable;JLjava/lang/String;)Lcom/android/server/backup/remote/RemoteResult;
    .locals 2
    .param p2, "timeoutMs"    # J
    .param p4, "logIdentifier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/backup/remote/RemoteCallable<",
            "Landroid/app/backup/IBackupCallback;",
            ">;J",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/backup/remote/RemoteResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1305
    .local p1, "remoteCallable":Lcom/android/server/backup/remote/RemoteCallable;, "Lcom/android/server/backup/remote/RemoteCallable<Landroid/app/backup/IBackupCallback;>;"
    new-instance v0, Lcom/android/server/backup/remote/RemoteCall;

    iget-boolean v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelled:Z

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/android/server/backup/remote/RemoteCall;-><init>(ZLcom/android/server/backup/remote/RemoteCallable;J)V

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingCall:Lcom/android/server/backup/remote/RemoteCall;

    .line 1306
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingCall:Lcom/android/server/backup/remote/RemoteCall;

    invoke-virtual {v0}, Lcom/android/server/backup/remote/RemoteCall;->call()Lcom/android/server/backup/remote/RemoteResult;

    move-result-object v0

    .line 1307
    .local v0, "result":Lcom/android/server/backup/remote/RemoteResult;
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v1, v0, p4}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onRemoteCallReturned(Lcom/android/server/backup/remote/RemoteResult;Ljava/lang/String;)V

    .line 1308
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingCall:Lcom/android/server/backup/remote/RemoteCall;

    .line 1309
    return-object v0
.end method

.method private revertTask()V
    .locals 5

    .line 1202
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onRevertTask()V

    .line 1205
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    const-string v1, "KVBT.revertTask()"

    .line 1206
    invoke-virtual {v0, v1}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    .line 1207
    .local v0, "transport":Lcom/android/internal/backup/IBackupTransport;
    invoke-interface {v0}, Lcom/android/internal/backup/IBackupTransport;->requestBackupTime()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v1

    .line 1212
    .local v0, "delay":J
    goto :goto_0

    .line 1208
    .end local v0    # "delay":J
    :catch_0
    move-exception v0

    .line 1209
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onTransportRequestBackupTimeError(Ljava/lang/Exception;)V

    .line 1211
    const-wide/16 v1, 0x0

    move-wide v0, v1

    .line 1213
    .local v0, "delay":J
    :goto_0
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1214
    invoke-virtual {v3}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/UserBackupManagerService;->getConstants()Lcom/android/server/backup/BackupManagerConstants;

    move-result-object v4

    .line 1213
    invoke-static {v2, v3, v0, v1, v4}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(ILandroid/content/Context;JLcom/android/server/backup/BackupManagerConstants;)V

    .line 1216
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mOriginalQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1217
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v4, v3}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    .line 1218
    .end local v3    # "packageName":Ljava/lang/String;
    goto :goto_1

    .line 1219
    :cond_0
    return-void
.end method

.method private sendDataToTransport()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/keyvalue/AgentException;,
            Lcom/android/server/backup/keyvalue/TaskException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1029
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1030
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    invoke-direct {p0, v0, v3}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->checkBackupData(Landroid/content/pm/ApplicationInfo;Ljava/io/File;)V

    .line 1032
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1033
    .local v0, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->writeWidgetPayloadIfAppropriate(Ljava/io/FileDescriptor;Ljava/lang/String;)V

    .line 1035
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedStateFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 1036
    .local v1, "nonIncremental":Z
    :goto_1
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->transportPerformBackup(Landroid/content/pm/PackageInfo;Ljava/io/File;Z)I

    move-result v2

    .line 1037
    .local v2, "status":I
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-direct {p0, v2, v0, v3, v4}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->handleTransportStatus(ILjava/lang/String;J)V

    .line 1038
    return v2
.end method

.method private sendDataToTransport(Landroid/content/pm/PackageInfo;)I
    .locals 3
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/keyvalue/AgentException;,
            Lcom/android/server/backup/keyvalue/TaskException;
        }
    .end annotation

    .line 567
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->sendDataToTransport()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 568
    :catch_0
    move-exception v0

    .line 569
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentDataError(Ljava/lang/String;Ljava/io/IOException;)V

    .line 570
    invoke-static {v0}, Lcom/android/server/backup/keyvalue/TaskException;->causedBy(Ljava/lang/Exception;)Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object v1

    throw v1
.end method

.method private sendNoDataChangedTo(Lcom/android/internal/backup/IBackupTransport;Landroid/content/pm/PackageInfo;I)V
    .locals 4
    .param p1, "transport"    # Lcom/android/internal/backup/IBackupTransport;
    .param p2, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 469
    const-string v0, "KVBT"

    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBlankStateFile:Ljava/io/File;

    const/high16 v2, 0x18000000

    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    nop

    .line 475
    :try_start_1
    invoke-interface {p1, p2, v1, p3}, Lcom/android/internal/backup/IBackupTransport;->performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I

    move-result v2

    .line 476
    .local v2, "result":I
    const/16 v3, -0x3e8

    if-eq v2, v3, :cond_1

    const/16 v3, -0x3e9

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 484
    :cond_0
    invoke-interface {p1}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 486
    nop

    .end local v2    # "result":I
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 487
    nop

    .line 488
    return-void

    .line 478
    .restart local v2    # "result":I
    :cond_1
    :goto_0
    :try_start_2
    const-string v3, "Aborting informing transport of unchanged apps, transport errored"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 486
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 481
    return-void

    .line 486
    .end local v2    # "result":I
    :catchall_0
    move-exception v0

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 487
    throw v0

    .line 470
    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v1

    .line 471
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v2, "Unable to find blank state file, aborting unchanged apps signal."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    return-void
.end method

.method private setSuccessState(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "success"    # Z

    .line 503
    const-string v0, "Unable to permanently record success for "

    const-string v1, "KVBT"

    invoke-direct {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->getSuccessStateFileFor(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 504
    .local v2, "successStateFile":Ljava/io/File;
    if-nez v2, :cond_0

    .line 506
    return-void

    .line 509
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eq v3, p2, :cond_3

    .line 511
    if-nez p2, :cond_1

    .line 513
    invoke-direct {p0, p1, v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->clearStatus(Ljava/lang/String;Ljava/io/File;)V

    .line 514
    return-void

    .line 519
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-nez v3, :cond_2

    .line 520
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    :cond_2
    goto :goto_0

    .line 522
    :catch_0
    move-exception v3

    .line 523
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 526
    .end local v3    # "e":Ljava/io/IOException;
    :cond_3
    :goto_0
    return-void
.end method

.method public static start(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;Ljava/util/List;Lcom/android/server/backup/DataChangedJournal;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;Ljava/util/List;ZZ)Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    .locals 15
    .param p0, "backupManagerService"    # Lcom/android/server/backup/UserBackupManagerService;
    .param p1, "transportClient"    # Lcom/android/server/backup/transport/TransportClient;
    .param p2, "transportDirName"    # Ljava/lang/String;
    .param p4, "dataChangedJournal"    # Lcom/android/server/backup/DataChangedJournal;
    .param p5, "observer"    # Landroid/app/backup/IBackupObserver;
    .param p6, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p7, "listener"    # Lcom/android/server/backup/internal/OnTaskFinishedListener;
    .param p9, "userInitiated"    # Z
    .param p10, "nonIncremental"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/backup/UserBackupManagerService;",
            "Lcom/android/server/backup/transport/TransportClient;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/backup/DataChangedJournal;",
            "Landroid/app/backup/IBackupObserver;",
            "Landroid/app/backup/IBackupManagerMonitor;",
            "Lcom/android/server/backup/internal/OnTaskFinishedListener;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Lcom/android/server/backup/keyvalue/KeyValueBackupTask;"
        }
    .end annotation

    .line 224
    .local p3, "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p8, "pendingFullBackups":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    move-object v11, p0

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    invoke-direct {v6, p0, v12, v13}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;-><init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;)V

    .line 226
    .local v6, "reporter":Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;
    new-instance v14, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;Ljava/util/List;Lcom/android/server/backup/DataChangedJournal;Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;Lcom/android/server/backup/internal/OnTaskFinishedListener;Ljava/util/List;ZZ)V

    .line 238
    .local v0, "task":Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "key-value-backup-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->THREAD_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 239
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 240
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onNewThread(Ljava/lang/String;)V

    .line 241
    return-object v0
.end method

.method private startTask()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/keyvalue/TaskException;
        }
    .end annotation

    .line 581
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->isBackupOperationInProgress()Z

    move-result v0

    if-nez v0, :cond_7

    .line 588
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingFullBackups:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->createFullBackupTask(Ljava/util/List;)Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 589
    invoke-direct {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->registerTask()V

    .line 591
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingFullBackups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onEmptyQueueAtStart()V

    .line 593
    return-void

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    const-string v1, "@pm@"

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNonIncremental:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v3

    .line 597
    .local v0, "backupPm":Z
    :goto_1
    if-eqz v0, :cond_3

    .line 598
    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    invoke-interface {v4, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 600
    :cond_3
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onSkipPm()V

    .line 603
    :goto_2
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    invoke-virtual {v2, v4}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onQueueReady(Ljava/util/List;)V

    .line 604
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    invoke-direct {v2, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v2

    .line 606
    .local v1, "pmState":Ljava/io/File;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    const-string v4, "KVBT.startTask()"

    invoke-virtual {v2, v4}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    .line 607
    .local v2, "transport":Lcom/android/internal/backup/IBackupTransport;
    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->name()Ljava/lang/String;

    move-result-object v4

    .line 608
    .local v4, "transportName":Ljava/lang/String;
    const-string v5, "EncryptedLocalTransport"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 610
    iput-boolean v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNonIncremental:Z

    .line 613
    :cond_4
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v3, v4}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onTransportReady(Ljava/lang/String;)V

    .line 616
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-gtz v3, :cond_6

    .line 617
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v3, v4}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onInitializeTransport(Ljava/lang/String;)V

    .line 618
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v5, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    invoke-virtual {v3, v5}, Lcom/android/server/backup/UserBackupManagerService;->resetBackupState(Ljava/io/File;)V

    .line 619
    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->initializeDevice()I

    move-result v3

    .line 620
    .local v3, "status":I
    iget-object v5, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v5, v3}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onTransportInitialized(I)V

    .line 621
    if-nez v3, :cond_5

    goto :goto_3

    .line 622
    :cond_5
    invoke-static {}, Lcom/android/server/backup/keyvalue/TaskException;->stateCompromised()Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object v5

    .end local v0    # "backupPm":Z
    .end local v1    # "pmState":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    throw v5
    :try_end_0
    .catch Lcom/android/server/backup/keyvalue/TaskException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    .end local v2    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v3    # "status":I
    .end local v4    # "transportName":Ljava/lang/String;
    .restart local v0    # "backupPm":Z
    .restart local v1    # "pmState":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    :cond_6
    :goto_3
    nop

    .line 631
    return-void

    .line 627
    :catch_0
    move-exception v2

    .line 628
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v3, v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onInitializeTransportError(Ljava/lang/Exception;)V

    .line 629
    invoke-static {}, Lcom/android/server/backup/keyvalue/TaskException;->stateCompromised()Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object v3

    throw v3

    .line 625
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 626
    .local v2, "e":Lcom/android/server/backup/keyvalue/TaskException;
    throw v2

    .line 582
    .end local v0    # "backupPm":Z
    .end local v1    # "pmState":Ljava/io/File;
    .end local v2    # "e":Lcom/android/server/backup/keyvalue/TaskException;
    :cond_7
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onSkipBackup()V

    .line 583
    invoke-static {}, Lcom/android/server/backup/keyvalue/TaskException;->create()Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object v0

    throw v0
.end method

.method private transportPerformBackup(Landroid/content/pm/PackageInfo;Ljava/io/File;Z)I
    .locals 9
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "backupDataFile"    # Ljava/io/File;
    .param p3, "nonIncremental"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/keyvalue/TaskException;
        }
    .end annotation

    .line 1044
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1045
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 1046
    .local v1, "size":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_0

    .line 1047
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v3, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onEmptyData(Landroid/content/pm/PackageInfo;)V

    .line 1048
    const/4 v3, 0x0

    return v3

    .line 1051
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mHasDataToBackup:Z

    .line 1054
    const/high16 v3, 0x10000000

    .line 1055
    :try_start_0
    invoke-static {p2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1056
    .local v3, "backupData":Landroid/os/ParcelFileDescriptor;
    :try_start_1
    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    const-string v5, "KVBT.transportPerformBackup()"

    .line 1057
    invoke-virtual {v4, v5}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v4

    .line 1058
    .local v4, "transport":Lcom/android/internal/backup/IBackupTransport;
    iget-object v5, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v5, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onTransportPerformBackup(Ljava/lang/String;)V

    .line 1059
    iget-boolean v5, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mUserInitiated:Z

    invoke-direct {p0, v5, p3}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->getPerformBackupFlags(ZZ)I

    move-result v5

    .line 1061
    .local v5, "flags":I
    invoke-interface {v4, p1, v3, v5}, Lcom/android/internal/backup/IBackupTransport;->performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I

    move-result v6

    .line 1062
    .local v6, "status":I
    if-nez v6, :cond_1

    .line 1063
    invoke-interface {v4}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I

    move-result v7

    move v6, v7

    goto :goto_0

    .line 1064
    :cond_1
    const/16 v7, -0x3e9

    if-ne v6, v7, :cond_2

    .line 1065
    iget-object v7, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-interface {v4}, Lcom/android/internal/backup/IBackupTransport;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onTransportNotInitialized(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1067
    .end local v4    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v5    # "flags":I
    :cond_2
    :goto_0
    if-eqz v3, :cond_3

    :try_start_2
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1070
    .end local v3    # "backupData":Landroid/os/ParcelFileDescriptor;
    :cond_3
    nop

    .line 1072
    if-eqz p3, :cond_5

    const/16 v3, -0x3ee

    if-eq v6, v3, :cond_4

    goto :goto_1

    .line 1073
    :cond_4
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v3, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPackageBackupNonIncrementalAndNonIncrementalRequired(Ljava/lang/String;)V

    .line 1074
    invoke-static {}, Lcom/android/server/backup/keyvalue/TaskException;->create()Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object v3

    throw v3

    .line 1077
    :cond_5
    :goto_1
    return v6

    .line 1054
    .end local v6    # "status":I
    .restart local v3    # "backupData":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_6

    :try_start_3
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v5

    :try_start_4
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "size":J
    .end local p0    # "this":Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    .end local p1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local p2    # "backupDataFile":Ljava/io/File;
    .end local p3    # "nonIncremental":Z
    :cond_6
    :goto_2
    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1067
    .end local v3    # "backupData":Landroid/os/ParcelFileDescriptor;
    .restart local v0    # "packageName":Ljava/lang/String;
    .restart local v1    # "size":J
    .restart local p0    # "this":Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    .restart local p1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local p2    # "backupDataFile":Ljava/io/File;
    .restart local p3    # "nonIncremental":Z
    :catch_0
    move-exception v3

    .line 1068
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v4, v0, v3}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPackageBackupTransportError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1069
    invoke-static {v3}, Lcom/android/server/backup/keyvalue/TaskException;->causedBy(Ljava/lang/Exception;)Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object v4

    throw v4
.end method

.method private triggerTransportInitializationLocked()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 814
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    .line 815
    const-string v1, "KVBT.triggerTransportInitializationLocked"

    invoke-virtual {v0, v1}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    .line 816
    .local v0, "transport":Lcom/android/internal/backup/IBackupTransport;
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getPendingInits()Landroid/util/ArraySet;

    move-result-object v1

    invoke-interface {v0}, Lcom/android/internal/backup/IBackupTransport;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 817
    invoke-direct {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->deletePmStateFile()V

    .line 818
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->backupNow()V

    .line 819
    return-void
.end method

.method private tryCloseFileDescriptor(Ljava/io/Closeable;Ljava/lang/String;)V
    .locals 2
    .param p1, "closeable"    # Ljava/io/Closeable;
    .param p2, "logName"    # Ljava/lang/String;

    .line 1293
    if-eqz p1, :cond_0

    .line 1295
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1298
    goto :goto_0

    .line 1296
    :catch_0
    move-exception v0

    .line 1297
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v1, p2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onCloseFileDescriptorError(Ljava/lang/String;)V

    .line 1300
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method private unregisterTask()V
    .locals 2

    .line 341
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentOpToken:I

    invoke-virtual {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->removeOperation(I)V

    .line 342
    return-void
.end method

.method private writeWidgetPayloadIfAppropriate(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 979
    iget v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mUserId:I

    invoke-static {p2, v0}, Lcom/android/server/AppWidgetBackupBridge;->getWidgetState(Ljava/lang/String;I)[B

    move-result-object v0

    .line 980
    .local v0, "widgetState":[B
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_widget"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 981
    .local v1, "widgetFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    .line 982
    .local v2, "priorStateExists":Z
    if-nez v2, :cond_0

    if-nez v0, :cond_0

    .line 983
    return-void

    .line 985
    :cond_0
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v3, v2, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onWriteWidgetData(Z[B)V

    .line 991
    const/4 v3, 0x0

    .line 992
    .local v3, "newChecksum":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 993
    invoke-direct {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->SHA1Checksum([B)Ljava/lang/String;

    move-result-object v3

    .line 994
    if-eqz v2, :cond_1

    .line 997
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 998
    .local v4, "fin":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1000
    .local v5, "in":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1001
    .local v6, "priorChecksum":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .end local v5    # "in":Ljava/io/DataInputStream;
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 1002
    .end local v4    # "fin":Ljava/io/FileInputStream;
    invoke-static {v3, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1004
    return-void

    .line 996
    .end local v6    # "priorChecksum":Ljava/lang/String;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "in":Ljava/io/DataInputStream;
    :catchall_0
    move-exception v6

    :try_start_3
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v7

    :try_start_4
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "widgetState":[B
    .end local v1    # "widgetFile":Ljava/io/File;
    .end local v2    # "priorStateExists":Z
    .end local v3    # "newChecksum":Ljava/lang/String;
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pkgName":Ljava/lang/String;
    :goto_0
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v5    # "in":Ljava/io/DataInputStream;
    .restart local v0    # "widgetState":[B
    .restart local v1    # "widgetFile":Ljava/io/File;
    .restart local v2    # "priorStateExists":Z
    .restart local v3    # "newChecksum":Ljava/lang/String;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pkgName":Ljava/lang/String;
    :catchall_2
    move-exception v5

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v6

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v5

    .line 1009
    .end local v4    # "fin":Ljava/io/FileInputStream;
    :cond_1
    new-instance v4, Landroid/app/backup/BackupDataOutput;

    invoke-direct {v4, p1}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    .line 1010
    .local v4, "out":Landroid/app/backup/BackupDataOutput;
    const-string/jumbo v5, "\uffed\uffedwidget"

    if-eqz v0, :cond_2

    .line 1012
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1013
    .local v6, "fout":Ljava/io/FileOutputStream;
    :try_start_6
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-direct {v7, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 1015
    .local v7, "stateOut":Ljava/io/DataOutputStream;
    :try_start_7
    invoke-virtual {v7, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 1016
    :try_start_8
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .end local v7    # "stateOut":Ljava/io/DataOutputStream;
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 1018
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    array-length v6, v0

    invoke-virtual {v4, v5, v6}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 1019
    array-length v5, v0

    invoke-virtual {v4, v0, v5}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    goto :goto_4

    .line 1011
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    .restart local v7    # "stateOut":Ljava/io/DataOutputStream;
    :catchall_4
    move-exception v5

    :try_start_9
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v8

    :try_start_a
    invoke-virtual {v5, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "widgetState":[B
    .end local v1    # "widgetFile":Ljava/io/File;
    .end local v2    # "priorStateExists":Z
    .end local v3    # "newChecksum":Ljava/lang/String;
    .end local v4    # "out":Landroid/app/backup/BackupDataOutput;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .end local p0    # "this":Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pkgName":Ljava/lang/String;
    :goto_2
    throw v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .end local v7    # "stateOut":Ljava/io/DataOutputStream;
    .restart local v0    # "widgetState":[B
    .restart local v1    # "widgetFile":Ljava/io/File;
    .restart local v2    # "priorStateExists":Z
    .restart local v3    # "newChecksum":Ljava/lang/String;
    .restart local v4    # "out":Landroid/app/backup/BackupDataOutput;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pkgName":Ljava/lang/String;
    :catchall_6
    move-exception v5

    :try_start_b
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    goto :goto_3

    :catchall_7
    move-exception v7

    invoke-virtual {v5, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v5

    .line 1022
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    :cond_2
    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 1023
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1025
    :goto_4
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 0

    .line 575
    return-void
.end method

.method public handleCancel(Z)V
    .locals 1
    .param p1, "cancelAll"    # Z

    .line 1179
    const-string v0, "Can\'t partially cancel a key-value backup task"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1180
    invoke-virtual {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->markCancel()V

    .line 1181
    invoke-virtual {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->waitCancel()V

    .line 1182
    return-void
.end method

.method public synthetic lambda$extractAgentData$0$KeyValueBackupTask(Landroid/app/IBackupAgent;JILandroid/app/backup/IBackupCallback;)V
    .locals 8
    .param p1, "agent"    # Landroid/app/IBackupAgent;
    .param p2, "quota"    # J
    .param p4, "transportFlags"    # I
    .param p5, "callback"    # Landroid/app/backup/IBackupCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 906
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    move-object v0, p1

    move-wide v4, p2

    move-object v6, p5

    move v7, p4

    invoke-interface/range {v0 .. v7}, Landroid/app/IBackupAgent;->doBackup(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;JLandroid/app/backup/IBackupCallback;I)V

    return-void
.end method

.method public markCancel()V
    .locals 1

    .line 1187
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onCancel()V

    .line 1188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelled:Z

    .line 1189
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingCall:Lcom/android/server/backup/remote/RemoteCall;

    .line 1190
    .local v0, "pendingCall":Lcom/android/server/backup/remote/RemoteCall;
    if-eqz v0, :cond_0

    .line 1191
    invoke-virtual {v0}, Lcom/android/server/backup/remote/RemoteCall;->cancel()V

    .line 1193
    :cond_0
    return-void
.end method

.method public operationComplete(J)V
    .locals 0
    .param p1, "unusedResult"    # J

    .line 578
    return-void
.end method

.method public run()V
    .locals 6

    .line 346
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 348
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mHasDataToBackup:Z

    .line 350
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 351
    .local v1, "backedUpApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 353
    .local v2, "status":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->startTask()V

    .line 354
    :goto_0
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelled:Z

    if-nez v3, :cond_2

    .line 355
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/backup/keyvalue/TaskException; {:try_start_0 .. :try_end_0} :catch_1

    .line 357
    .local v3, "packageName":Ljava/lang/String;
    :try_start_1
    const-string v4, "@pm@"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 358
    invoke-direct {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->backupPm()V

    goto :goto_1

    .line 360
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->backupPackage(Ljava/lang/String;)V

    .line 362
    :goto_1
    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->setSuccessState(Ljava/lang/String;Z)V

    .line 363
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/android/server/backup/keyvalue/AgentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/backup/keyvalue/TaskException; {:try_start_1 .. :try_end_1} :catch_1

    .line 370
    goto :goto_2

    .line 364
    :catch_0
    move-exception v4

    .line 365
    .local v4, "e":Lcom/android/server/backup/keyvalue/AgentException;
    :try_start_2
    invoke-direct {p0, v3, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->setSuccessState(Ljava/lang/String;Z)V

    .line 366
    invoke-virtual {v4}, Lcom/android/server/backup/keyvalue/AgentException;->isTransitory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 368
    iget-object v5, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v5, v3}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    .line 371
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "e":Lcom/android/server/backup/keyvalue/AgentException;
    :cond_1
    :goto_2
    goto :goto_0

    .line 373
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->informTransportOfUnchangedApps(Ljava/util/Set;)V
    :try_end_2
    .catch Lcom/android/server/backup/keyvalue/TaskException; {:try_start_2 .. :try_end_2} :catch_1

    .line 380
    goto :goto_3

    .line 374
    :catch_1
    move-exception v0

    .line 375
    .local v0, "e":Lcom/android/server/backup/keyvalue/TaskException;
    invoke-virtual {v0}, Lcom/android/server/backup/keyvalue/TaskException;->isStateCompromised()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 376
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    invoke-virtual {v3, v4}, Lcom/android/server/backup/UserBackupManagerService;->resetBackupState(Ljava/io/File;)V

    .line 378
    :cond_3
    invoke-direct {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->revertTask()V

    .line 379
    invoke-virtual {v0}, Lcom/android/server/backup/keyvalue/TaskException;->getStatus()I

    move-result v2

    .line 381
    .end local v0    # "e":Lcom/android/server/backup/keyvalue/TaskException;
    :goto_3
    invoke-direct {p0, v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->finishTask(I)V

    .line 382
    return-void
.end method

.method public waitCancel()V
    .locals 1

    .line 1198
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelAcknowledged:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 1199
    return-void
.end method
