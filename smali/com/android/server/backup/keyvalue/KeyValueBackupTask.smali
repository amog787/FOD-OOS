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
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final PM_PACKAGE:Ljava/lang/String; = "@pm@"

.field public static final STAGING_FILE_SUFFIX:Ljava/lang/String; = ".data"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

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

.field private final mNonIncremental:Z

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

.field private final mTransportManager:Lcom/android/server/backup/TransportManager;

.field private final mUserId:I

.field private final mUserInitiated:Z


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 801
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 174
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
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

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

    .line 301
    .local p4, "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p8, "pendingFullBackups":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelAcknowledged:Landroid/os/ConditionVariable;

    .line 282
    iput-boolean v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelled:Z

    .line 302
    iput-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 303
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getTransportManager()Lcom/android/server/backup/TransportManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 304
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 305
    iput-object p2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    .line 306
    iput-object p4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mOriginalQueue:Ljava/util/List;

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    .line 309
    iput-object p5, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    .line 310
    iput-object p6, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    .line 311
    iput-object p7, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTaskFinishedListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 312
    iput-object p8, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingFullBackups:Ljava/util/List;

    .line 313
    iput-boolean p9, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mUserInitiated:Z

    .line 314
    iput-boolean p10, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNonIncremental:Z

    .line 315
    nop

    .line 317
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object v0

    .line 316
    const-string v1, "Timeout parameters cannot be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 319
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getBaseStateDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    .line 320
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getDataDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mDataDirectory:Ljava/io/File;

    .line 321
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result v0

    iput v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentOpToken:I

    .line 322
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueueLock:Ljava/lang/Object;

    .line 323
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    const-string v2, "blank_state"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBlankStateFile:Ljava/io/File;

    .line 324
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result v0

    iput v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mUserId:I

    .line 325
    return-void
.end method

.method private SHA1Checksum([B)Ljava/lang/String;
    .locals 6
    .param p1, "input"    # [B

    .line 763
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 764
    .local v0, "md":Ljava/security/MessageDigest;
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 768
    .local v0, "checksum":[B
    nop

    .line 770
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 771
    .local v1, "string":Ljava/lang/StringBuilder;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v4, v0, v3

    .line 772
    .local v4, "item":B
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    .end local v4    # "item":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 774
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 765
    .end local v0    # "checksum":[B
    .end local v1    # "string":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 766
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onDigestError(Ljava/security/NoSuchAlgorithmException;)V

    .line 767
    const-string v1, "00"

    return-object v1
.end method

.method private agentDoQuotaExceeded(Landroid/app/IBackupAgent;Ljava/lang/String;J)V
    .locals 8
    .param p1, "agent"    # Landroid/app/IBackupAgent;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "size"    # J

    .line 905
    if-eqz p1, :cond_0

    .line 907
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    const-string v1, "KVBT.agentDoQuotaExceeded()"

    .line 908
    invoke-virtual {v0, v1}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    .line 909
    .local v0, "transport":Lcom/android/internal/backup/IBackupTransport;
    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Lcom/android/internal/backup/IBackupTransport;->getBackupQuota(Ljava/lang/String;Z)J

    move-result-wide v6

    .line 910
    .local v6, "quota":J
    new-instance v1, Lcom/android/server/backup/keyvalue/-$$Lambda$KeyValueBackupTask$XyLNsBl81S-JjG_2y6Nb3ueV0ZY;

    move-object v2, v1

    move-object v3, p1

    move-wide v4, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/backup/keyvalue/-$$Lambda$KeyValueBackupTask$XyLNsBl81S-JjG_2y6Nb3ueV0ZY;-><init>(Landroid/app/IBackupAgent;JJ)V

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 912
    invoke-virtual {v2}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getQuotaExceededTimeoutMillis()J

    move-result-wide v2

    const-string v4, "doQuotaExceeded()"

    .line 910
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->remoteCall(Lcom/android/server/backup/remote/RemoteCallable;JLjava/lang/String;)Lcom/android/server/backup/remote/RemoteResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 916
    nop

    .end local v0    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v6    # "quota":J
    goto :goto_0

    .line 914
    :catch_0
    move-exception v0

    .line 915
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentDoQuotaExceededError(Ljava/lang/Exception;)V

    .line 918
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private agentFail(Landroid/app/IBackupAgent;Ljava/lang/String;)V
    .locals 3
    .param p1, "agent"    # Landroid/app/IBackupAgent;
    .param p2, "message"    # Ljava/lang/String;

    .line 753
    :try_start_0
    invoke-interface {p1, p2}, Landroid/app/IBackupAgent;->fail(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 756
    goto :goto_0

    .line 754
    :catch_0
    move-exception v0

    .line 755
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onFailAgentError(Ljava/lang/String;)V

    .line 757
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private applyStateTransaction(I)V
    .locals 3
    .param p1, "stateTransaction"    # I

    .line 1072
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1082
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedStateFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1083
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewStateFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1084
    goto :goto_0

    .line 1086
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

    .line 1077
    :cond_1
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewStateFile:Ljava/io/File;

    if-eqz v0, :cond_3

    .line 1078
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 1074
    :cond_2
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewStateFile:Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedStateFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1075
    nop

    .line 1088
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

    .line 468
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onStartPackageBackup(Ljava/lang/String;)V

    .line 469
    invoke-direct {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->getPackageForBackup(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 472
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-direct {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->extractAgentData(Landroid/content/pm/PackageInfo;)V

    .line 473
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-direct {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->sendDataToTransport(Landroid/content/pm/PackageInfo;)I

    move-result v0

    .line 474
    .local v0, "status":I
    invoke-direct {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->cleanUpAgentForTransportStatus(I)V
    :try_end_0
    .catch Lcom/android/server/backup/keyvalue/AgentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/server/backup/keyvalue/TaskException; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    .end local v0    # "status":I
    nop

    .line 479
    return-void

    .line 475
    :catch_0
    move-exception v0

    .line 476
    .local v0, "e":Lcom/android/server/backup/keyvalue/BackupException;
    invoke-direct {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->cleanUpAgentForError(Lcom/android/server/backup/keyvalue/BackupException;)V

    .line 477
    throw v0
.end method

.method private backupPm()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/keyvalue/TaskException;
        }
    .end annotation

    .line 451
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    const-string v1, "@pm@"

    invoke-virtual {v0, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onStartPackageBackup(Ljava/lang/String;)V

    .line 452
    new-instance v0, Landroid/content/pm/PackageInfo;

    invoke-direct {v0}, Landroid/content/pm/PackageInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 453
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 456
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->extractPmAgentData(Landroid/content/pm/PackageInfo;)V

    .line 457
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-direct {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->sendDataToTransport(Landroid/content/pm/PackageInfo;)I

    move-result v0

    .line 458
    .local v0, "status":I
    invoke-direct {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->cleanUpAgentForTransportStatus(I)V
    :try_end_0
    .catch Lcom/android/server/backup/keyvalue/AgentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/server/backup/keyvalue/TaskException; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    .end local v0    # "status":I
    nop

    .line 465
    return-void

    .line 459
    :catch_0
    move-exception v0

    .line 460
    .local v0, "e":Lcom/android/server/backup/keyvalue/BackupException;
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onExtractPmAgentDataError(Ljava/lang/Exception;)V

    .line 461
    invoke-direct {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->cleanUpAgentForError(Lcom/android/server/backup/keyvalue/BackupException;)V

    .line 463
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

    .line 508
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 511
    .local v0, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v3, 0x0

    .line 512
    invoke-virtual {v1, v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v1

    .line 514
    .local v1, "agent":Landroid/app/IBackupAgent;
    if-eqz v1, :cond_0

    .line 521
    nop

    .line 522
    return-object v1

    .line 515
    :cond_0
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v2, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentError(Ljava/lang/String;)V

    .line 516
    invoke-static {}, Lcom/android/server/backup/keyvalue/AgentException;->transitory()Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object v2

    .end local v0    # "packageName":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    .end local p1    # "packageInfo":Landroid/content/pm/PackageInfo;
    throw v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    .end local v1    # "agent":Landroid/app/IBackupAgent;
    .restart local v0    # "packageName":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    .restart local p1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 519
    .local v1, "e":Ljava/lang/SecurityException;
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onBindAgentError(Ljava/lang/String;Ljava/lang/SecurityException;)V

    .line 520
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

    .line 728
    sget-object v0, Lcom/android/server/backup/remote/RemoteResult;->FAILED_THREAD_INTERRUPTED:Lcom/android/server/backup/remote/RemoteResult;

    const/4 v1, 0x1

    if-eq p2, v0, :cond_4

    .line 734
    sget-object v0, Lcom/android/server/backup/remote/RemoteResult;->FAILED_CANCELLED:Lcom/android/server/backup/remote/RemoteResult;

    if-eq p2, v0, :cond_3

    .line 738
    sget-object v0, Lcom/android/server/backup/remote/RemoteResult;->FAILED_TIMED_OUT:Lcom/android/server/backup/remote/RemoteResult;

    if-eq p2, v0, :cond_2

    .line 742
    invoke-virtual {p2}, Lcom/android/server/backup/remote/RemoteResult;->isPresent()Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 743
    invoke-virtual {p2}, Lcom/android/server/backup/remote/RemoteResult;->get()J

    move-result-wide v2

    .line 744
    .local v2, "resultCode":J
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 748
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 749
    return-void

    .line 745
    :cond_1
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentResultError(Landroid/content/pm/PackageInfo;)V

    .line 746
    invoke-static {}, Lcom/android/server/backup/keyvalue/AgentException;->transitory()Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object v0

    throw v0

    .line 739
    .end local v2    # "resultCode":J
    :cond_2
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentTimedOut(Landroid/content/pm/PackageInfo;)V

    .line 740
    invoke-static {}, Lcom/android/server/backup/keyvalue/AgentException;->transitory()Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object v0

    throw v0

    .line 735
    :cond_3
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentCancelled(Landroid/content/pm/PackageInfo;)V

    .line 736
    invoke-static {}, Lcom/android/server/backup/keyvalue/TaskException;->create()Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object v0

    throw v0

    .line 730
    :cond_4
    iput-boolean v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelled:Z

    .line 731
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentCancelled(Landroid/content/pm/PackageInfo;)V

    .line 732
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

    .line 926
    if-eqz p1, :cond_5

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    goto :goto_2

    .line 930
    :cond_0
    const/high16 v0, 0x10000000

    .line 931
    invoke-static {p2, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 930
    .local v0, "backupData":Landroid/os/ParcelFileDescriptor;
    const/4 v1, 0x0

    .line 932
    :try_start_0
    new-instance v2, Landroid/app/backup/BackupDataInput;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V

    .line 933
    .local v2, "backupDataInput":Landroid/app/backup/BackupDataInput;
    :goto_0
    invoke-virtual {v2}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 934
    invoke-virtual {v2}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 935
    .local v3, "key":Ljava/lang/String;
    if-eqz v3, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v5, 0xff00

    if-ge v4, v5, :cond_1

    goto :goto_1

    .line 936
    :cond_1
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-virtual {v1, v4, v3}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentIllegalKey(Landroid/content/pm/PackageInfo;Ljava/lang/String;)V

    .line 938
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgent:Landroid/app/IBackupAgent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal backup key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->agentFail(Landroid/app/IBackupAgent;Ljava/lang/String;)V

    .line 939
    invoke-static {}, Lcom/android/server/backup/keyvalue/AgentException;->permanent()Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object v1

    .end local v0    # "backupData":Landroid/os/ParcelFileDescriptor;
    .end local p0    # "this":Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    .end local p1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local p2    # "backupDataFile":Ljava/io/File;
    throw v1

    .line 941
    .restart local v0    # "backupData":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    .restart local p1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local p2    # "backupDataFile":Ljava/io/File;
    :cond_2
    :goto_1
    invoke-virtual {v2}, Landroid/app/backup/BackupDataInput;->skipEntityData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 942
    .end local v3    # "key":Ljava/lang/String;
    goto :goto_0

    .line 943
    .end local v2    # "backupDataInput":Landroid/app/backup/BackupDataInput;
    :cond_3
    invoke-static {v1, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 944
    .end local v0    # "backupData":Landroid/os/ParcelFileDescriptor;
    return-void

    .line 930
    .restart local v0    # "backupData":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v1

    .end local v0    # "backupData":Landroid/os/ParcelFileDescriptor;
    .end local p0    # "this":Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    .end local p1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local p2    # "backupDataFile":Ljava/io/File;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 943
    .restart local v0    # "backupData":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    .restart local p1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local p2    # "backupDataFile":Ljava/io/File;
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_4

    invoke-static {v1, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_4
    throw v2

    .line 928
    .end local v0    # "backupData":Landroid/os/ParcelFileDescriptor;
    :cond_5
    :goto_2
    return-void
.end method

.method private cleanUpAgent(I)V
    .locals 3
    .param p1, "stateTransaction"    # I

    .line 1049
    invoke-direct {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->applyStateTransaction(I)V

    .line 1050
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 1051
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1053
    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBlankStateFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1054
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedStateFile:Ljava/io/File;

    .line 1055
    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    .line 1056
    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewStateFile:Ljava/io/File;

    .line 1057
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    const-string/jumbo v2, "old state"

    invoke-direct {p0, v1, v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->tryCloseFileDescriptor(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 1058
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    const-string v2, "backup data"

    invoke-direct {p0, v1, v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->tryCloseFileDescriptor(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 1059
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    const-string/jumbo v2, "new state"

    invoke-direct {p0, v1, v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->tryCloseFileDescriptor(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 1060
    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    .line 1061
    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 1062
    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    .line 1065
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_1

    .line 1066
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->unbindAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 1068
    :cond_1
    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgent:Landroid/app/IBackupAgent;

    .line 1069
    return-void
.end method

.method private cleanUpAgentForError(Lcom/android/server/backup/keyvalue/BackupException;)V
    .locals 1
    .param p1, "exception"    # Lcom/android/server/backup/keyvalue/BackupException;

    .line 1027
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->cleanUpAgent(I)V

    .line 1028
    return-void
.end method

.method private cleanUpAgentForTransportStatus(I)V
    .locals 1
    .param p1, "status"    # I

    .line 1035
    const/16 v0, -0x3ee

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_0

    .line 1037
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->cleanUpAgent(I)V

    .line 1038
    goto :goto_0

    .line 1044
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1040
    :cond_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->cleanUpAgent(I)V

    .line 1041
    nop

    .line 1046
    :goto_0
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

    .line 436
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v12, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    .line 440
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

    .line 444
    invoke-virtual {v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->getObserver()Landroid/app/backup/IBackupObserver;

    move-result-object v8

    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    .line 445
    invoke-virtual {v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->getMonitor()Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTaskFinishedListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    iget-boolean v11, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mUserInitiated:Z

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportClient;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;Z)V

    .line 436
    return-object v12
.end method

.method private deletePmStateFile()V
    .locals 3

    .line 623
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    const-string v2, "@pm@"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 624
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

    .line 645
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    new-instance v1, Landroid/os/WorkSource;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v1, v2}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->setWorkSource(Landroid/os/WorkSource;)V

    .line 647
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->bindAgent(Landroid/content/pm/PackageInfo;)Landroid/app/IBackupAgent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgent:Landroid/app/IBackupAgent;

    .line 648
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgent:Landroid/app/IBackupAgent;

    invoke-direct {p0, p1, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->extractAgentData(Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 650
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/UserBackupManagerService;->setWorkSource(Landroid/os/WorkSource;)V

    .line 651
    nop

    .line 652
    return-void

    .line 650
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/backup/UserBackupManagerService;->setWorkSource(Landroid/os/WorkSource;)V

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

    .line 668
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 669
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onExtractAgentData(Ljava/lang/String;)V

    .line 671
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedStateFile:Ljava/io/File;

    .line 672
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

    .line 673
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

    .line 674
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentFilesReady(Ljava/io/File;)V

    .line 676
    const/4 v1, 0x0

    .line 679
    .local v1, "callingAgent":Z
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNonIncremental:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBlankStateFile:Ljava/io/File;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedStateFile:Ljava/io/File;

    .line 681
    .local v2, "savedStateFileForAgent":Ljava/io/File;
    :goto_0
    const/high16 v3, 0x18000000

    .line 682
    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    .line 683
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    .line 684
    const/high16 v4, 0x3c000000    # 0.0078125f

    invoke-static {v3, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 686
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewStateFile:Ljava/io/File;

    .line 687
    invoke-static {v3, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    .line 692
    iget v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mUserId:I

    if-nez v3, :cond_1

    .line 693
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    invoke-static {v3}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 694
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onRestoreconFailed(Ljava/io/File;)V

    .line 698
    :cond_1
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    const-string v4, "KVBT.extractAgentData()"

    invoke-virtual {v3, v4}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v3

    .line 699
    .local v3, "transport":Lcom/android/internal/backup/IBackupTransport;
    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Lcom/android/internal/backup/IBackupTransport;->getBackupQuota(Ljava/lang/String;Z)J

    move-result-wide v8

    .line 700
    .local v8, "quota":J
    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->getTransportFlags()I

    move-result v10

    .line 702
    .local v10, "transportFlags":I
    const/4 v1, 0x1

    .line 703
    new-instance v4, Lcom/android/server/backup/keyvalue/-$$Lambda$KeyValueBackupTask$NN2H32cNizGxrUxqHgqPqGldNsA;

    move-object v5, v4

    move-object v6, p0

    move-object v7, p2

    invoke-direct/range {v5 .. v10}, Lcom/android/server/backup/keyvalue/-$$Lambda$KeyValueBackupTask$NN2H32cNizGxrUxqHgqPqGldNsA;-><init>(Lcom/android/server/backup/keyvalue/KeyValueBackupTask;Landroid/app/IBackupAgent;JI)V

    iget-object v5, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 713
    invoke-virtual {v5}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getKvBackupAgentTimeoutMillis()J

    move-result-wide v5

    const-string v7, "doBackup()"

    .line 704
    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->remoteCall(Lcom/android/server/backup/remote/RemoteCallable;JLjava/lang/String;)Lcom/android/server/backup/remote/RemoteResult;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 722
    .end local v3    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v8    # "quota":J
    .end local v10    # "transportFlags":I
    .local v2, "agentResult":Lcom/android/server/backup/remote/RemoteResult;
    nop

    .line 723
    invoke-direct {p0, p1, v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->checkAgentResult(Landroid/content/pm/PackageInfo;Lcom/android/server/backup/remote/RemoteResult;)V

    .line 724
    return-void

    .line 715
    .end local v2    # "agentResult":Lcom/android/server/backup/remote/RemoteResult;
    :catch_0
    move-exception v2

    .line 716
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onCallAgentDoBackupError(Ljava/lang/String;ZLjava/lang/Exception;)V

    .line 717
    if-eqz v1, :cond_2

    .line 718
    invoke-static {v2}, Lcom/android/server/backup/keyvalue/AgentException;->transitory(Ljava/lang/Exception;)Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object v3

    throw v3

    .line 720
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

    .line 628
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v1, "@pm@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 629
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->makeMetadataAgent()Landroid/app/backup/BackupAgent;

    move-result-object v0

    .line 630
    .local v0, "pmAgent":Landroid/app/backup/BackupAgent;
    invoke-virtual {v0}, Landroid/app/backup/BackupAgent;->onBind()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgent:Landroid/app/IBackupAgent;

    .line 631
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgent:Landroid/app/IBackupAgent;

    invoke-direct {p0, p1, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->extractAgentData(Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;)V

    .line 632
    return-void
.end method

.method private finishTask(I)V
    .locals 7
    .param p1, "status"    # I

    .line 527
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

    .line 528
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    .line 529
    .end local v1    # "packageName":Ljava/lang/String;
    goto :goto_0

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/backup/DataChangedJournal;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 534
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onJournalDeleteFailed(Lcom/android/server/backup/DataChangedJournal;)V

    .line 537
    :cond_1
    const-string v0, "KVBT.finishTask()"

    .line 541
    .local v0, "callerLogString":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getCurrentToken()J

    move-result-wide v1

    .line 542
    .local v1, "currentToken":J
    iget-boolean v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mHasDataToBackup:Z

    if-eqz v3, :cond_2

    if-nez p1, :cond_2

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_2

    .line 544
    :try_start_0
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    invoke-virtual {v3, v0}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v3

    .line 545
    .local v3, "transport":Lcom/android/internal/backup/IBackupTransport;
    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->getCurrentRestoreSet()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/android/server/backup/UserBackupManagerService;->setCurrentToken(J)V

    .line 546
    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/UserBackupManagerService;->writeRestoreTokens()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    .end local v3    # "transport":Lcom/android/internal/backup/IBackupTransport;
    goto :goto_1

    .line 547
    :catch_0
    move-exception v3

    .line 549
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v4, v3}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onSetCurrentTokenError(Ljava/lang/Exception;)V

    .line 553
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueueLock:Ljava/lang/Object;

    monitor-enter v3

    .line 554
    :try_start_1
    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->setBackupRunning(Z)V

    .line 555
    const/16 v4, -0x3e9

    if-ne p1, v4, :cond_3

    .line 556
    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v4}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onTransportNotInitialized()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 558
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->triggerTransportInitializationLocked()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 562
    goto :goto_2

    .line 559
    :catch_1
    move-exception v4

    .line 560
    .local v4, "e":Ljava/lang/Exception;
    :try_start_3
    iget-object v5, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v5, v4}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPendingInitializeTransportError(Ljava/lang/Exception;)V

    .line 561
    const/16 p1, -0x3e8

    .line 564
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 566
    invoke-direct {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->unregisterTask()V

    .line 567
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v3}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onTaskFinished()V

    .line 569
    iget-boolean v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelled:Z

    if-eqz v3, :cond_4

    .line 572
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelAcknowledged:Landroid/os/ConditionVariable;

    invoke-virtual {v3}, Landroid/os/ConditionVariable;->open()V

    .line 575
    :cond_4
    iget-boolean v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelled:Z

    if-nez v3, :cond_5

    if-nez p1, :cond_5

    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingFullBackups:Ljava/util/List;

    .line 578
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 579
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingFullBackups:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onStartFullBackup(Ljava/util/List;)V

    .line 584
    new-instance v3, Ljava/lang/Thread;

    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    const-string v5, "full-transport-requested"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 585
    return-void

    .line 588
    :cond_5
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    if-eqz v3, :cond_6

    .line 589
    invoke-virtual {v3}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 591
    :cond_6
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTaskFinishedListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    invoke-interface {v3, v0}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 592
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-boolean v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelled:Z

    invoke-direct {p0, v4, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->getBackupFinishedStatus(ZI)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onBackupFinished(I)V

    .line 593
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 594
    return-void

    .line 564
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4
.end method

.method private getBackupFinishedStatus(ZI)I
    .locals 1
    .param p1, "cancelled"    # Z
    .param p2, "transportStatus"    # I

    .line 597
    if-eqz p1, :cond_0

    .line 598
    const/16 v0, -0x7d3

    return v0

    .line 600
    :cond_0
    const/16 v0, -0x3ed

    if-eq p2, v0, :cond_1

    const/16 v0, -0x3ea

    if-eq p2, v0, :cond_1

    if-eqz p2, :cond_1

    .line 608
    const/16 v0, -0x3e8

    return v0

    .line 604
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

    .line 484
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v1, 0x8000000

    iget v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mUserId:I

    .line 485
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    nop

    .line 491
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 492
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 496
    invoke-static {v0}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 500
    invoke-static {v1}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsStopped(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 504
    return-object v0

    .line 501
    :cond_0
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v2, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPackageStopped(Ljava/lang/String;)V

    .line 502
    invoke-static {}, Lcom/android/server/backup/keyvalue/AgentException;->permanent()Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object v2

    throw v2

    .line 497
    :cond_1
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v2, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPackageEligibleForFullBackup(Ljava/lang/String;)V

    .line 498
    invoke-static {}, Lcom/android/server/backup/keyvalue/AgentException;->permanent()Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object v2

    throw v2

    .line 493
    :cond_2
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v2, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPackageNotEligibleForBackup(Ljava/lang/String;)V

    .line 494
    invoke-static {}, Lcom/android/server/backup/keyvalue/AgentException;->permanent()Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object v2

    throw v2

    .line 487
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 488
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v1, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentUnknown(Ljava/lang/String;)V

    .line 489
    invoke-static {v0}, Lcom/android/server/backup/keyvalue/AgentException;->permanent(Ljava/lang/Exception;)Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object v1

    throw v1
.end method

.method private getPerformBackupFlags(ZZ)I
    .locals 3
    .param p1, "userInitiated"    # Z
    .param p2, "nonIncremental"    # Z

    .line 947
    move v0, p1

    .line 949
    .local v0, "userInitiatedFlag":I
    if-eqz p2, :cond_0

    .line 950
    const/4 v1, 0x4

    goto :goto_0

    .line 951
    :cond_0
    const/4 v1, 0x2

    :goto_0
    nop

    .line 952
    .local v1, "incrementalFlag":I
    or-int v2, v0, v1

    return v2
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

    .line 880
    if-nez p1, :cond_0

    .line 881
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPackageBackupComplete(Ljava/lang/String;J)V

    .line 882
    return-void

    .line 884
    :cond_0
    const/16 v0, -0x3ee

    if-ne p1, v0, :cond_1

    .line 885
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPackageBackupNonIncrementalRequired(Landroid/content/pm/PackageInfo;)V

    .line 887
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 888
    return-void

    .line 890
    :cond_1
    const/16 v0, -0x3ea

    if-eq p1, v0, :cond_3

    .line 894
    const/16 v0, -0x3ed

    if-ne p1, v0, :cond_2

    .line 895
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0, p2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPackageBackupQuotaExceeded(Ljava/lang/String;)V

    .line 896
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgent:Landroid/app/IBackupAgent;

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->agentDoQuotaExceeded(Landroid/app/IBackupAgent;Ljava/lang/String;J)V

    .line 897
    invoke-static {}, Lcom/android/server/backup/keyvalue/AgentException;->permanent()Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object v0

    throw v0

    .line 900
    :cond_2
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0, p2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPackageBackupTransportFailure(Ljava/lang/String;)V

    .line 901
    invoke-static {p1}, Lcom/android/server/backup/keyvalue/TaskException;->forStatus(I)Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object v0

    throw v0

    .line 891
    :cond_3
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0, p2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPackageBackupRejected(Ljava/lang/String;)V

    .line 892
    invoke-static {}, Lcom/android/server/backup/keyvalue/AgentException;->permanent()Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object v0

    throw v0
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

    .line 911
    invoke-interface/range {p0 .. p5}, Landroid/app/IBackupAgent;->doQuotaExceeded(JJLandroid/app/backup/IBackupCallback;)V

    return-void
.end method

.method private registerTask()V
    .locals 5

    .line 328
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentOpToken:I

    new-instance v2, Lcom/android/server/backup/internal/Operation;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v2, v3, p0, v4}, Lcom/android/server/backup/internal/Operation;-><init>(ILcom/android/server/backup/BackupRestoreTask;I)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->putOperation(ILcom/android/server/backup/internal/Operation;)V

    .line 330
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

    .line 1103
    .local p1, "remoteCallable":Lcom/android/server/backup/remote/RemoteCallable;, "Lcom/android/server/backup/remote/RemoteCallable<Landroid/app/backup/IBackupCallback;>;"
    new-instance v0, Lcom/android/server/backup/remote/RemoteCall;

    iget-boolean v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelled:Z

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/android/server/backup/remote/RemoteCall;-><init>(ZLcom/android/server/backup/remote/RemoteCallable;J)V

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingCall:Lcom/android/server/backup/remote/RemoteCall;

    .line 1104
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingCall:Lcom/android/server/backup/remote/RemoteCall;

    invoke-virtual {v0}, Lcom/android/server/backup/remote/RemoteCall;->call()Lcom/android/server/backup/remote/RemoteResult;

    move-result-object v0

    .line 1105
    .local v0, "result":Lcom/android/server/backup/remote/RemoteResult;
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v1, v0, p4}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onRemoteCallReturned(Lcom/android/server/backup/remote/RemoteResult;Ljava/lang/String;)V

    .line 1106
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingCall:Lcom/android/server/backup/remote/RemoteCall;

    .line 1107
    return-object v0
.end method

.method private revertTask()V
    .locals 5

    .line 1000
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onRevertTask()V

    .line 1003
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    const-string v1, "KVBT.revertTask()"

    .line 1004
    invoke-virtual {v0, v1}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    .line 1005
    .local v0, "transport":Lcom/android/internal/backup/IBackupTransport;
    invoke-interface {v0}, Lcom/android/internal/backup/IBackupTransport;->requestBackupTime()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v1

    .line 1010
    .local v0, "delay":J
    goto :goto_0

    .line 1006
    .end local v0    # "delay":J
    :catch_0
    move-exception v0

    .line 1007
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onTransportRequestBackupTimeError(Ljava/lang/Exception;)V

    .line 1009
    const-wide/16 v0, 0x0

    .line 1011
    .local v0, "delay":J
    :goto_0
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1012
    invoke-virtual {v3}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/UserBackupManagerService;->getConstants()Lcom/android/server/backup/BackupManagerConstants;

    move-result-object v4

    .line 1011
    invoke-static {v2, v3, v0, v1, v4}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(ILandroid/content/Context;JLcom/android/server/backup/BackupManagerConstants;)V

    .line 1014
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

    .line 1015
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v4, v3}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    .line 1016
    .end local v3    # "packageName":Ljava/lang/String;
    goto :goto_1

    .line 1017
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

    .line 829
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

    .line 830
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    invoke-direct {p0, v0, v3}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->checkBackupData(Landroid/content/pm/ApplicationInfo;Ljava/io/File;)V

    .line 832
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 833
    .local v0, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->writeWidgetPayloadIfAppropriate(Ljava/io/FileDescriptor;Ljava/lang/String;)V

    .line 835
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedStateFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 836
    .local v1, "nonIncremental":Z
    :goto_1
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->transportPerformBackup(Landroid/content/pm/PackageInfo;Ljava/io/File;Z)I

    move-result v2

    .line 837
    .local v2, "status":I
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-direct {p0, v2, v0, v3, v4}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->handleTransportStatus(ILjava/lang/String;J)V

    .line 838
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

    .line 374
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->sendDataToTransport()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentDataError(Ljava/lang/String;Ljava/io/IOException;)V

    .line 377
    invoke-static {v0}, Lcom/android/server/backup/keyvalue/TaskException;->causedBy(Ljava/lang/Exception;)Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object v1

    throw v1
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

    .line 214
    .local p3, "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p8, "pendingFullBackups":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    move-object v11, p0

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    invoke-direct {v6, p0, v12, v13}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;-><init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;)V

    .line 216
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

    .line 228
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

    .line 229
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 230
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onNewThread(Ljava/lang/String;)V

    .line 231
    return-object v0
.end method

.method private startTask()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/keyvalue/TaskException;
        }
    .end annotation

    .line 388
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->isBackupOperationInProgress()Z

    move-result v0

    if-nez v0, :cond_6

    .line 395
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingFullBackups:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->createFullBackupTask(Ljava/util/List;)Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 396
    invoke-direct {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->registerTask()V

    .line 398
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingFullBackups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onEmptyQueueAtStart()V

    .line 400
    return-void

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    const-string v1, "@pm@"

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNonIncremental:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 404
    .local v0, "backupPm":Z
    :goto_1
    if-eqz v0, :cond_3

    .line 405
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    invoke-interface {v3, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 407
    :cond_3
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onSkipPm()V

    .line 410
    :goto_2
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onQueueReady(Ljava/util/List;)V

    .line 411
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v2

    .line 413
    .local v1, "pmState":Ljava/io/File;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    const-string v3, "KVBT.startTask()"

    invoke-virtual {v2, v3}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    .line 414
    .local v2, "transport":Lcom/android/internal/backup/IBackupTransport;
    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->name()Ljava/lang/String;

    move-result-object v3

    .line 415
    .local v3, "transportName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v4, v3}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onTransportReady(Ljava/lang/String;)V

    .line 418
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_5

    .line 419
    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v4, v3}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onInitializeTransport(Ljava/lang/String;)V

    .line 420
    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v5, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    invoke-virtual {v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->resetBackupState(Ljava/io/File;)V

    .line 421
    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->initializeDevice()I

    move-result v4

    .line 422
    .local v4, "status":I
    iget-object v5, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v5, v4}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onTransportInitialized(I)V

    .line 423
    if-nez v4, :cond_4

    goto :goto_3

    .line 424
    :cond_4
    invoke-static {}, Lcom/android/server/backup/keyvalue/TaskException;->stateCompromised()Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object v5

    .end local v0    # "backupPm":Z
    .end local v1    # "pmState":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    throw v5
    :try_end_0
    .catch Lcom/android/server/backup/keyvalue/TaskException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    .end local v2    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v3    # "transportName":Ljava/lang/String;
    .end local v4    # "status":I
    .restart local v0    # "backupPm":Z
    .restart local v1    # "pmState":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    :cond_5
    :goto_3
    nop

    .line 433
    return-void

    .line 429
    :catch_0
    move-exception v2

    .line 430
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v3, v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onInitializeTransportError(Ljava/lang/Exception;)V

    .line 431
    invoke-static {}, Lcom/android/server/backup/keyvalue/TaskException;->stateCompromised()Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object v3

    throw v3

    .line 427
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 428
    .local v2, "e":Lcom/android/server/backup/keyvalue/TaskException;
    throw v2

    .line 389
    .end local v0    # "backupPm":Z
    .end local v1    # "pmState":Ljava/io/File;
    .end local v2    # "e":Lcom/android/server/backup/keyvalue/TaskException;
    :cond_6
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onSkipBackup()V

    .line 390
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

    .line 844
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 845
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 846
    .local v1, "size":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_0

    .line 847
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v3, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onEmptyData(Landroid/content/pm/PackageInfo;)V

    .line 848
    const/4 v3, 0x0

    return v3

    .line 851
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mHasDataToBackup:Z

    .line 854
    const/high16 v3, 0x10000000

    .line 855
    :try_start_0
    invoke-static {p2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 854
    .local v3, "backupData":Landroid/os/ParcelFileDescriptor;
    const/4 v4, 0x0

    .line 856
    :try_start_1
    iget-object v5, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    const-string v6, "KVBT.transportPerformBackup()"

    .line 857
    invoke-virtual {v5, v6}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v5

    .line 858
    .local v5, "transport":Lcom/android/internal/backup/IBackupTransport;
    iget-object v6, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v6, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onTransportPerformBackup(Ljava/lang/String;)V

    .line 859
    iget-boolean v6, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mUserInitiated:Z

    invoke-direct {p0, v6, p3}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->getPerformBackupFlags(ZZ)I

    move-result v6

    .line 861
    .local v6, "flags":I
    invoke-interface {v5, p1, v3, v6}, Lcom/android/internal/backup/IBackupTransport;->performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I

    move-result v7

    .line 862
    .local v7, "status":I
    if-nez v7, :cond_1

    .line 863
    invoke-interface {v5}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v7, v8

    .line 865
    .end local v5    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v6    # "flags":I
    :cond_1
    if-eqz v3, :cond_2

    :try_start_2
    invoke-static {v4, v3}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 868
    .end local v3    # "backupData":Landroid/os/ParcelFileDescriptor;
    :cond_2
    nop

    .line 870
    if-eqz p3, :cond_4

    const/16 v3, -0x3ee

    if-eq v7, v3, :cond_3

    goto :goto_0

    .line 871
    :cond_3
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v3, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPackageBackupNonIncrementalAndNonIncrementalRequired(Ljava/lang/String;)V

    .line 872
    invoke-static {}, Lcom/android/server/backup/keyvalue/TaskException;->create()Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object v3

    throw v3

    .line 875
    :cond_4
    :goto_0
    return v7

    .line 854
    .end local v7    # "status":I
    .restart local v3    # "backupData":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v4

    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "size":J
    .end local v3    # "backupData":Landroid/os/ParcelFileDescriptor;
    .end local p0    # "this":Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    .end local p1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local p2    # "backupDataFile":Ljava/io/File;
    .end local p3    # "nonIncremental":Z
    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 865
    .restart local v0    # "packageName":Ljava/lang/String;
    .restart local v1    # "size":J
    .restart local v3    # "backupData":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    .restart local p1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local p2    # "backupDataFile":Ljava/io/File;
    .restart local p3    # "nonIncremental":Z
    :catchall_1
    move-exception v5

    if-eqz v3, :cond_5

    :try_start_4
    invoke-static {v4, v3}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "size":J
    .end local p0    # "this":Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    .end local p1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local p2    # "backupDataFile":Ljava/io/File;
    .end local p3    # "nonIncremental":Z
    :cond_5
    throw v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .end local v3    # "backupData":Landroid/os/ParcelFileDescriptor;
    .restart local v0    # "packageName":Ljava/lang/String;
    .restart local v1    # "size":J
    .restart local p0    # "this":Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    .restart local p1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local p2    # "backupDataFile":Ljava/io/File;
    .restart local p3    # "nonIncremental":Z
    :catch_0
    move-exception v3

    .line 866
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v4, v0, v3}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPackageBackupTransportError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 867
    invoke-static {v3}, Lcom/android/server/backup/keyvalue/TaskException;->causedBy(Ljava/lang/Exception;)Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object v4

    throw v4
.end method

.method private triggerTransportInitializationLocked()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mQueueLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 614
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    .line 615
    const-string v1, "KVBT.triggerTransportInitializationLocked"

    invoke-virtual {v0, v1}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    .line 616
    .local v0, "transport":Lcom/android/internal/backup/IBackupTransport;
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getPendingInits()Landroid/util/ArraySet;

    move-result-object v1

    invoke-interface {v0}, Lcom/android/internal/backup/IBackupTransport;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 617
    invoke-direct {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->deletePmStateFile()V

    .line 618
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->backupNow()V

    .line 619
    return-void
.end method

.method private tryCloseFileDescriptor(Ljava/io/Closeable;Ljava/lang/String;)V
    .locals 2
    .param p1, "closeable"    # Ljava/io/Closeable;
    .param p2, "logName"    # Ljava/lang/String;

    .line 1091
    if-eqz p1, :cond_0

    .line 1093
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1096
    goto :goto_0

    .line 1094
    :catch_0
    move-exception v0

    .line 1095
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v1, p2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onCloseFileDescriptorError(Ljava/lang/String;)V

    .line 1098
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method private unregisterTask()V
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentOpToken:I

    invoke-virtual {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->removeOperation(I)V

    .line 334
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

    .line 779
    iget v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mUserId:I

    invoke-static {p2, v0}, Lcom/android/server/AppWidgetBackupBridge;->getWidgetState(Ljava/lang/String;I)[B

    move-result-object v0

    .line 780
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

    .line 781
    .local v1, "widgetFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    .line 782
    .local v2, "priorStateExists":Z
    if-nez v2, :cond_0

    if-nez v0, :cond_0

    .line 783
    return-void

    .line 785
    :cond_0
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v3, v2, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onWriteWidgetData(Z[B)V

    .line 791
    const/4 v3, 0x0

    .line 792
    .local v3, "newChecksum":Ljava/lang/String;
    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 793
    invoke-direct {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->SHA1Checksum([B)Ljava/lang/String;

    move-result-object v3

    .line 794
    if-eqz v2, :cond_1

    .line 797
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 796
    .local v5, "fin":Ljava/io/FileInputStream;
    nop

    .line 798
    :try_start_0
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 796
    .local v6, "in":Ljava/io/DataInputStream;
    nop

    .line 800
    :try_start_1
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 801
    .local v7, "priorChecksum":Ljava/lang/String;
    :try_start_2
    invoke-static {v4, v6}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .end local v6    # "in":Ljava/io/DataInputStream;
    invoke-static {v4, v5}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 802
    .end local v5    # "fin":Ljava/io/FileInputStream;
    invoke-static {v3, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 804
    return-void

    .line 796
    .end local v7    # "priorChecksum":Ljava/lang/String;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    :catchall_0
    move-exception v4

    .end local v0    # "widgetState":[B
    .end local v1    # "widgetFile":Ljava/io/File;
    .end local v2    # "priorStateExists":Z
    .end local v3    # "newChecksum":Ljava/lang/String;
    .end local v5    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "in":Ljava/io/DataInputStream;
    .end local p0    # "this":Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pkgName":Ljava/lang/String;
    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 801
    .restart local v0    # "widgetState":[B
    .restart local v1    # "widgetFile":Ljava/io/File;
    .restart local v2    # "priorStateExists":Z
    .restart local v3    # "newChecksum":Ljava/lang/String;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    .restart local p0    # "this":Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pkgName":Ljava/lang/String;
    :catchall_1
    move-exception v7

    :try_start_4
    invoke-static {v4, v6}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local v0    # "widgetState":[B
    .end local v1    # "widgetFile":Ljava/io/File;
    .end local v2    # "priorStateExists":Z
    .end local v3    # "newChecksum":Ljava/lang/String;
    .end local v5    # "fin":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pkgName":Ljava/lang/String;
    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 796
    .end local v6    # "in":Ljava/io/DataInputStream;
    .restart local v0    # "widgetState":[B
    .restart local v1    # "widgetFile":Ljava/io/File;
    .restart local v2    # "priorStateExists":Z
    .restart local v3    # "newChecksum":Ljava/lang/String;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pkgName":Ljava/lang/String;
    :catchall_2
    move-exception v4

    .end local v0    # "widgetState":[B
    .end local v1    # "widgetFile":Ljava/io/File;
    .end local v2    # "priorStateExists":Z
    .end local v3    # "newChecksum":Ljava/lang/String;
    .end local v5    # "fin":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pkgName":Ljava/lang/String;
    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 801
    .restart local v0    # "widgetState":[B
    .restart local v1    # "widgetFile":Ljava/io/File;
    .restart local v2    # "priorStateExists":Z
    .restart local v3    # "newChecksum":Ljava/lang/String;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pkgName":Ljava/lang/String;
    :catchall_3
    move-exception v6

    invoke-static {v4, v5}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v6

    .line 809
    .end local v5    # "fin":Ljava/io/FileInputStream;
    :cond_1
    new-instance v5, Landroid/app/backup/BackupDataOutput;

    invoke-direct {v5, p1}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    .line 810
    .local v5, "out":Landroid/app/backup/BackupDataOutput;
    const-string/jumbo v6, "\uffed\uffedwidget"

    if-eqz v0, :cond_2

    .line 812
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 811
    .local v7, "fout":Ljava/io/FileOutputStream;
    nop

    .line 813
    :try_start_6
    new-instance v8, Ljava/io/DataOutputStream;

    invoke-direct {v8, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 811
    .local v8, "stateOut":Ljava/io/DataOutputStream;
    nop

    .line 815
    :try_start_7
    invoke-virtual {v8, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 816
    :try_start_8
    invoke-static {v4, v8}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .end local v8    # "stateOut":Ljava/io/DataOutputStream;
    invoke-static {v4, v7}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 818
    .end local v7    # "fout":Ljava/io/FileOutputStream;
    array-length v4, v0

    invoke-virtual {v5, v6, v4}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 819
    array-length v4, v0

    invoke-virtual {v5, v0, v4}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    goto :goto_0

    .line 811
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v8    # "stateOut":Ljava/io/DataOutputStream;
    :catchall_4
    move-exception v4

    .end local v0    # "widgetState":[B
    .end local v1    # "widgetFile":Ljava/io/File;
    .end local v2    # "priorStateExists":Z
    .end local v3    # "newChecksum":Ljava/lang/String;
    .end local v5    # "out":Landroid/app/backup/BackupDataOutput;
    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .end local v8    # "stateOut":Ljava/io/DataOutputStream;
    .end local p0    # "this":Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pkgName":Ljava/lang/String;
    :try_start_9
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 816
    .restart local v0    # "widgetState":[B
    .restart local v1    # "widgetFile":Ljava/io/File;
    .restart local v2    # "priorStateExists":Z
    .restart local v3    # "newChecksum":Ljava/lang/String;
    .restart local v5    # "out":Landroid/app/backup/BackupDataOutput;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v8    # "stateOut":Ljava/io/DataOutputStream;
    .restart local p0    # "this":Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pkgName":Ljava/lang/String;
    :catchall_5
    move-exception v6

    :try_start_a
    invoke-static {v4, v8}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local v0    # "widgetState":[B
    .end local v1    # "widgetFile":Ljava/io/File;
    .end local v2    # "priorStateExists":Z
    .end local v3    # "newChecksum":Ljava/lang/String;
    .end local v5    # "out":Landroid/app/backup/BackupDataOutput;
    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .end local p0    # "this":Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pkgName":Ljava/lang/String;
    throw v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 811
    .end local v8    # "stateOut":Ljava/io/DataOutputStream;
    .restart local v0    # "widgetState":[B
    .restart local v1    # "widgetFile":Ljava/io/File;
    .restart local v2    # "priorStateExists":Z
    .restart local v3    # "newChecksum":Ljava/lang/String;
    .restart local v5    # "out":Landroid/app/backup/BackupDataOutput;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pkgName":Ljava/lang/String;
    :catchall_6
    move-exception v4

    .end local v0    # "widgetState":[B
    .end local v1    # "widgetFile":Ljava/io/File;
    .end local v2    # "priorStateExists":Z
    .end local v3    # "newChecksum":Ljava/lang/String;
    .end local v5    # "out":Landroid/app/backup/BackupDataOutput;
    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .end local p0    # "this":Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pkgName":Ljava/lang/String;
    :try_start_b
    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 816
    .restart local v0    # "widgetState":[B
    .restart local v1    # "widgetFile":Ljava/io/File;
    .restart local v2    # "priorStateExists":Z
    .restart local v3    # "newChecksum":Ljava/lang/String;
    .restart local v5    # "out":Landroid/app/backup/BackupDataOutput;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pkgName":Ljava/lang/String;
    :catchall_7
    move-exception v6

    invoke-static {v4, v7}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v6

    .line 822
    .end local v7    # "fout":Ljava/io/FileOutputStream;
    :cond_2
    const/4 v4, -0x1

    invoke-virtual {v5, v6, v4}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 823
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 825
    :goto_0
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 0

    .line 382
    return-void
.end method

.method public handleCancel(Z)V
    .locals 1
    .param p1, "cancelAll"    # Z

    .line 977
    const-string v0, "Can\'t partially cancel a key-value backup task"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 978
    invoke-virtual {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->markCancel()V

    .line 979
    invoke-virtual {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->waitCancel()V

    .line 980
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

    .line 706
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
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 985
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onCancel()V

    .line 986
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelled:Z

    .line 987
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingCall:Lcom/android/server/backup/remote/RemoteCall;

    .line 988
    .local v0, "pendingCall":Lcom/android/server/backup/remote/RemoteCall;
    if-eqz v0, :cond_0

    .line 989
    invoke-virtual {v0}, Lcom/android/server/backup/remote/RemoteCall;->cancel()V

    .line 991
    :cond_0
    return-void
.end method

.method public operationComplete(J)V
    .locals 0
    .param p1, "unusedResult"    # J

    .line 385
    return-void
.end method

.method public run()V
    .locals 5

    .line 338
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 340
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mHasDataToBackup:Z

    .line 342
    const/4 v1, 0x0

    .line 344
    .local v1, "status":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->startTask()V

    .line 345
    :goto_0
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelled:Z

    if-nez v2, :cond_2

    .line 346
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/backup/keyvalue/TaskException; {:try_start_0 .. :try_end_0} :catch_1

    .line 348
    .local v2, "packageName":Ljava/lang/String;
    :try_start_1
    const-string v3, "@pm@"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 349
    invoke-direct {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->backupPm()V

    goto :goto_1

    .line 351
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->backupPackage(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/server/backup/keyvalue/AgentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/backup/keyvalue/TaskException; {:try_start_1 .. :try_end_1} :catch_1

    .line 358
    :goto_1
    goto :goto_2

    .line 353
    :catch_0
    move-exception v3

    .line 354
    .local v3, "e":Lcom/android/server/backup/keyvalue/AgentException;
    :try_start_2
    invoke-virtual {v3}, Lcom/android/server/backup/keyvalue/AgentException;->isTransitory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 356
    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v4, v2}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/android/server/backup/keyvalue/TaskException; {:try_start_2 .. :try_end_2} :catch_1

    .line 359
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "e":Lcom/android/server/backup/keyvalue/AgentException;
    :cond_1
    :goto_2
    goto :goto_0

    .line 366
    :cond_2
    goto :goto_3

    .line 360
    :catch_1
    move-exception v0

    .line 361
    .local v0, "e":Lcom/android/server/backup/keyvalue/TaskException;
    invoke-virtual {v0}, Lcom/android/server/backup/keyvalue/TaskException;->isStateCompromised()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 362
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->resetBackupState(Ljava/io/File;)V

    .line 364
    :cond_3
    invoke-direct {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->revertTask()V

    .line 365
    invoke-virtual {v0}, Lcom/android/server/backup/keyvalue/TaskException;->getStatus()I

    move-result v1

    .line 367
    .end local v0    # "e":Lcom/android/server/backup/keyvalue/TaskException;
    :goto_3
    invoke-direct {p0, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->finishTask(I)V

    .line 368
    return-void
.end method

.method public waitCancel()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 996
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelAcknowledged:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 997
    return-void
.end method
