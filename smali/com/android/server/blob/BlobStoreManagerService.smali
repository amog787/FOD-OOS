.class public Lcom/android/server/blob/BlobStoreManagerService;
.super Lcom/android/server/SystemService;
.source "BlobStoreManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/blob/BlobStoreManagerService$Injector;,
        Lcom/android/server/blob/BlobStoreManagerService$LocalService;,
        Lcom/android/server/blob/BlobStoreManagerService$StatsPullAtomCallbackImpl;,
        Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;,
        Lcom/android/server/blob/BlobStoreManagerService$Stub;,
        Lcom/android/server/blob/BlobStoreManagerService$UserActionReceiver;,
        Lcom/android/server/blob/BlobStoreManagerService$PackageChangedReceiver;,
        Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;,
        Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;
    }
.end annotation


# instance fields
.field private final mActiveBlobIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mBackgroundHandler:Landroid/os/Handler;

.field private final mBlobsLock:Ljava/lang/Object;

.field private final mBlobsMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Landroid/app/blob/BlobHandle;",
            "Lcom/android/server/blob/BlobMetadata;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentMaxSessionId:J

.field private final mHandler:Landroid/os/Handler;

.field private final mInjector:Lcom/android/server/blob/BlobStoreManagerService$Injector;

.field private final mKnownBlobIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field private final mRandom:Ljava/util/Random;

.field private final mSaveBlobsInfoRunnable:Ljava/lang/Runnable;

.field private final mSaveSessionsRunnable:Ljava/lang/Runnable;

.field private final mSessionStateChangeListener:Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;

.field private final mSessions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/LongSparseArray<",
            "Lcom/android/server/blob/BlobStoreSession;",
            ">;>;"
        }
    .end annotation
.end field

.field private mStatsCallbackImpl:Lcom/android/server/blob/BlobStoreManagerService$StatsPullAtomCallbackImpl;

.field private mStatsManager:Landroid/app/StatsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 179
    new-instance v0, Lcom/android/server/blob/BlobStoreManagerService$Injector;

    invoke-direct {v0}, Lcom/android/server/blob/BlobStoreManagerService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/blob/BlobStoreManagerService;-><init>(Landroid/content/Context;Lcom/android/server/blob/BlobStoreManagerService$Injector;)V

    .line 180
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/blob/BlobStoreManagerService$Injector;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "injector"    # Lcom/android/server/blob/BlobStoreManagerService$Injector;

    .line 184
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 140
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    .line 143
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    .line 150
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/SparseArray;

    .line 154
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mActiveBlobIds:Landroid/util/ArraySet;

    .line 158
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mKnownBlobIds:Landroid/util/ArraySet;

    .line 162
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mRandom:Ljava/util/Random;

    .line 168
    new-instance v0, Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;

    invoke-direct {v0, p0}, Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;-><init>(Lcom/android/server/blob/BlobStoreManagerService;)V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessionStateChangeListener:Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;

    .line 173
    new-instance v0, Lcom/android/server/blob/BlobStoreManagerService$StatsPullAtomCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/blob/BlobStoreManagerService$StatsPullAtomCallbackImpl;-><init>(Lcom/android/server/blob/BlobStoreManagerService;Lcom/android/server/blob/BlobStoreManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mStatsCallbackImpl:Lcom/android/server/blob/BlobStoreManagerService$StatsPullAtomCallbackImpl;

    .line 175
    new-instance v0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$0WauOYQXWD9rogYgvnCLUb176wA;

    invoke-direct {v0, p0}, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$0WauOYQXWD9rogYgvnCLUb176wA;-><init>(Lcom/android/server/blob/BlobStoreManagerService;)V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSaveBlobsInfoRunnable:Ljava/lang/Runnable;

    .line 176
    new-instance v0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$TQmyogoz-iYWcrNcnMqwFDg6S5A;

    invoke-direct {v0, p0}, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$TQmyogoz-iYWcrNcnMqwFDg6S5A;-><init>(Lcom/android/server/blob/BlobStoreManagerService;)V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSaveSessionsRunnable:Ljava/lang/Runnable;

    .line 186
    iput-object p1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mContext:Landroid/content/Context;

    .line 187
    iput-object p2, p0, Lcom/android/server/blob/BlobStoreManagerService;->mInjector:Lcom/android/server/blob/BlobStoreManagerService$Injector;

    .line 188
    invoke-virtual {p2}, Lcom/android/server/blob/BlobStoreManagerService$Injector;->initializeMessageHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mHandler:Landroid/os/Handler;

    .line 189
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mInjector:Lcom/android/server/blob/BlobStoreManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/blob/BlobStoreManagerService$Injector;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBackgroundHandler:Landroid/os/Handler;

    .line 190
    return-void
.end method

.method private abandonSessionInternal(JILjava/lang/String;)V
    .locals 5
    .param p1, "sessionId"    # J
    .param p3, "callingUid"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .line 391
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 392
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/blob/BlobStoreManagerService;->openSessionInternal(JILjava/lang/String;)Lcom/android/server/blob/BlobStoreSession;

    move-result-object v1

    .line 394
    .local v1, "session":Lcom/android/server/blob/BlobStoreSession;
    invoke-virtual {v1}, Lcom/android/server/blob/BlobStoreSession;->open()V

    .line 395
    invoke-virtual {v1}, Lcom/android/server/blob/BlobStoreSession;->abandon()V

    .line 396
    sget-boolean v2, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    if-eqz v2, :cond_0

    .line 397
    const-string v2, "BlobStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Abandoned session with id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "; callingUid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", callingPackage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_0
    invoke-direct {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobSessionsAsync()V

    .line 401
    .end local v1    # "session":Lcom/android/server/blob/BlobStoreSession;
    monitor-exit v0

    .line 402
    return-void

    .line 401
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic access$1000(Lcom/android/server/blob/BlobStoreManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/blob/BlobStoreManagerService;
    .param p1, "x1"    # I

    .line 138
    invoke-direct {p0, p1}, Lcom/android/server/blob/BlobStoreManagerService;->handleUserRemoved(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/blob/BlobStoreManagerService;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/blob/BlobStoreManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 138
    invoke-direct {p0, p1, p2}, Lcom/android/server/blob/BlobStoreManagerService;->verifyCallingPackage(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/blob/BlobStoreManagerService;)Landroid/content/pm/PackageManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/blob/BlobStoreManagerService;

    .line 138
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/blob/BlobStoreManagerService;Landroid/app/blob/BlobHandle;ILjava/lang/String;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/blob/BlobStoreManagerService;
    .param p1, "x1"    # Landroid/app/blob/BlobHandle;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .line 138
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/blob/BlobStoreManagerService;->createSessionInternal(Landroid/app/blob/BlobHandle;ILjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/android/server/blob/BlobStoreManagerService;JILjava/lang/String;)Lcom/android/server/blob/BlobStoreSession;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/blob/BlobStoreManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # Ljava/lang/String;

    .line 138
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/blob/BlobStoreManagerService;->openSessionInternal(JILjava/lang/String;)Lcom/android/server/blob/BlobStoreSession;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/blob/BlobStoreManagerService;JILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/blob/BlobStoreManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # Ljava/lang/String;

    .line 138
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/blob/BlobStoreManagerService;->abandonSessionInternal(JILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/blob/BlobStoreManagerService;Landroid/app/blob/BlobHandle;ILjava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/blob/BlobStoreManagerService;
    .param p1, "x1"    # Landroid/app/blob/BlobHandle;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/blob/BlobStoreManagerService;->openBlobInternal(Landroid/app/blob/BlobHandle;ILjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/blob/BlobStoreManagerService;Landroid/app/blob/BlobHandle;ILjava/lang/CharSequence;JILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/blob/BlobStoreManagerService;
    .param p1, "x1"    # Landroid/app/blob/BlobHandle;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/CharSequence;
    .param p4, "x4"    # J
    .param p6, "x5"    # I
    .param p7, "x6"    # Ljava/lang/String;

    .line 138
    invoke-direct/range {p0 .. p7}, Lcom/android/server/blob/BlobStoreManagerService;->acquireLeaseInternal(Landroid/app/blob/BlobHandle;ILjava/lang/CharSequence;JILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/blob/BlobStoreManagerService;Landroid/app/blob/BlobHandle;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/blob/BlobStoreManagerService;
    .param p1, "x1"    # Landroid/app/blob/BlobHandle;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .line 138
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/blob/BlobStoreManagerService;->releaseLeaseInternal(Landroid/app/blob/BlobHandle;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/blob/BlobStoreManagerService;ILjava/lang/String;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/blob/BlobStoreManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 138
    invoke-direct {p0, p1, p2}, Lcom/android/server/blob/BlobStoreManagerService;->getRemainingLeaseQuotaBytesInternal(ILjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2000(Lcom/android/server/blob/BlobStoreManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/blob/BlobStoreManagerService;

    .line 138
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/blob/BlobStoreManagerService;I)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/blob/BlobStoreManagerService;
    .param p1, "x1"    # I

    .line 138
    invoke-direct {p0, p1}, Lcom/android/server/blob/BlobStoreManagerService;->queryBlobsForUserInternal(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/blob/BlobStoreManagerService;JI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/blob/BlobStoreManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .line 138
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/blob/BlobStoreManagerService;->deleteBlobInternal(JI)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/blob/BlobStoreManagerService;ILjava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/blob/BlobStoreManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 138
    invoke-direct {p0, p1, p2}, Lcom/android/server/blob/BlobStoreManagerService;->getLeasedBlobsInternal(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/blob/BlobStoreManagerService;Landroid/app/blob/BlobHandle;ILjava/lang/String;)Landroid/app/blob/LeaseInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/blob/BlobStoreManagerService;
    .param p1, "x1"    # Landroid/app/blob/BlobHandle;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .line 138
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/blob/BlobStoreManagerService;->getLeaseInfoInternal(Landroid/app/blob/BlobHandle;ILjava/lang/String;)Landroid/app/blob/LeaseInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/blob/BlobStoreManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/blob/BlobStoreManagerService;

    .line 138
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/blob/BlobStoreManagerService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/blob/BlobStoreManagerService;

    .line 138
    iget-wide v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mCurrentMaxSessionId:J

    return-wide v0
.end method

.method static synthetic access$2800(Lcom/android/server/blob/BlobStoreManagerService;Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/blob/BlobStoreManagerService;
    .param p1, "x1"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "x2"    # Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;

    .line 138
    invoke-direct {p0, p1, p2}, Lcom/android/server/blob/BlobStoreManagerService;->dumpSessionsLocked(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/blob/BlobStoreManagerService;Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/blob/BlobStoreManagerService;
    .param p1, "x1"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "x2"    # Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;

    .line 138
    invoke-direct {p0, p1, p2}, Lcom/android/server/blob/BlobStoreManagerService;->dumpBlobsLocked(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/blob/BlobStoreManagerService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/blob/BlobStoreManagerService;

    .line 138
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBackgroundHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/blob/BlobStoreManagerService;ILjava/util/List;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/blob/BlobStoreManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/List;

    .line 138
    invoke-direct {p0, p1, p2}, Lcom/android/server/blob/BlobStoreManagerService;->pullBlobData(ILjava/util/List;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3200()Landroid/os/Handler;
    .locals 1

    .line 138
    invoke-static {}, Lcom/android/server/blob/BlobStoreManagerService;->initializeMessageHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/blob/BlobStoreManagerService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/blob/BlobStoreManagerService;

    .line 138
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/blob/BlobStoreManagerService;Lcom/android/server/blob/BlobStoreSession;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/blob/BlobStoreManagerService;
    .param p1, "x1"    # Lcom/android/server/blob/BlobStoreSession;

    .line 138
    invoke-direct {p0, p1}, Lcom/android/server/blob/BlobStoreManagerService;->onStateChangedInternal(Lcom/android/server/blob/BlobStoreSession;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/blob/BlobStoreManagerService;Ljava/util/function/Consumer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/blob/BlobStoreManagerService;
    .param p1, "x1"    # Ljava/util/function/Consumer;
    .param p2, "x2"    # I

    .line 138
    invoke-direct {p0, p1, p2}, Lcom/android/server/blob/BlobStoreManagerService;->forEachSessionInUser(Ljava/util/function/Consumer;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/blob/BlobStoreManagerService;Ljava/util/function/Consumer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/blob/BlobStoreManagerService;
    .param p1, "x1"    # Ljava/util/function/Consumer;
    .param p2, "x2"    # I

    .line 138
    invoke-direct {p0, p1, p2}, Lcom/android/server/blob/BlobStoreManagerService;->forEachBlobInUser(Ljava/util/function/Consumer;I)V

    return-void
.end method

.method private acquireLeaseInternal(Landroid/app/blob/BlobHandle;ILjava/lang/CharSequence;JILjava/lang/String;)V
    .locals 14
    .param p1, "blobHandle"    # Landroid/app/blob/BlobHandle;
    .param p2, "descriptionResId"    # I
    .param p3, "description"    # Ljava/lang/CharSequence;
    .param p4, "leaseExpiryTimeMillis"    # J
    .param p6, "callingUid"    # I
    .param p7, "callingPackage"    # Ljava/lang/String;

    .line 459
    move-object v1, p0

    move-object v2, p1

    move/from16 v10, p6

    move-object/from16 v11, p7

    iget-object v12, v1, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v12

    .line 460
    :try_start_0
    invoke-direct {p0, v10, v11}, Lcom/android/server/blob/BlobStoreManagerService;->getLeasedBlobsCountLocked(ILjava/lang/String;)I

    move-result v0

    .line 461
    .local v0, "leasesCount":I
    invoke-static {}, Lcom/android/server/blob/BlobStoreConfig;->getMaxLeasedBlobs()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 468
    invoke-static/range {p6 .. p6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/blob/BlobStoreManagerService;->getUserBlobsLocked(I)Landroid/util/ArrayMap;

    move-result-object v3

    .line 469
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/blob/BlobMetadata;

    move-object v13, v3

    .line 470
    .local v13, "blobMetadata":Lcom/android/server/blob/BlobMetadata;
    if-eqz v13, :cond_5

    invoke-virtual {v13, v11, v10}, Lcom/android/server/blob/BlobMetadata;->isAccessAllowedForCaller(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 484
    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v5, p4, v3

    if-eqz v5, :cond_2

    iget-wide v5, v2, Landroid/app/blob/BlobHandle;->expiryTimeMillis:J

    cmp-long v3, v5, v3

    if-eqz v3, :cond_2

    iget-wide v3, v2, Landroid/app/blob/BlobHandle;->expiryTimeMillis:J

    cmp-long v3, p4, v3

    if-gtz v3, :cond_1

    goto :goto_0

    .line 487
    :cond_1
    const/16 v3, 0x12b

    .line 488
    invoke-virtual {v13}, Lcom/android/server/blob/BlobMetadata;->getBlobId()J

    move-result-wide v5

    invoke-virtual {v13}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    move-result-wide v7

    const/4 v9, 0x4

    .line 487
    move/from16 v4, p6

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJI)V

    .line 490
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Lease expiry cannot be later than blobs expiry time"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/blob/BlobStoreManagerService;
    .end local p1    # "blobHandle":Landroid/app/blob/BlobHandle;
    .end local p2    # "descriptionResId":I
    .end local p3    # "description":Ljava/lang/CharSequence;
    .end local p4    # "leaseExpiryTimeMillis":J
    .end local p6    # "callingUid":I
    .end local p7    # "callingPackage":Ljava/lang/String;
    throw v3

    .line 493
    .restart local p0    # "this":Lcom/android/server/blob/BlobStoreManagerService;
    .restart local p1    # "blobHandle":Landroid/app/blob/BlobHandle;
    .restart local p2    # "descriptionResId":I
    .restart local p3    # "description":Ljava/lang/CharSequence;
    .restart local p4    # "leaseExpiryTimeMillis":J
    .restart local p6    # "callingUid":I
    .restart local p7    # "callingPackage":Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-virtual {v13}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    move-result-wide v3

    .line 494
    invoke-direct {p0, v10, v11}, Lcom/android/server/blob/BlobStoreManagerService;->getRemainingLeaseQuotaBytesInternal(ILjava/lang/String;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_4

    .line 503
    const/16 v3, 0x12b

    .line 504
    invoke-virtual {v13}, Lcom/android/server/blob/BlobMetadata;->getBlobId()J

    move-result-wide v5

    invoke-virtual {v13}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    move-result-wide v7

    const/4 v9, 0x1

    .line 503
    move/from16 v4, p6

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJI)V

    .line 507
    move-object v3, v13

    move-object/from16 v4, p7

    move/from16 v5, p6

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/blob/BlobMetadata;->addOrReplaceLeasee(Ljava/lang/String;IILjava/lang/CharSequence;J)V

    .line 509
    sget-boolean v3, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    if-eqz v3, :cond_3

    .line 510
    const-string v3, "BlobStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Acquired lease on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "; callingUid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", callingPackage="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_3
    invoke-direct {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobsInfoAsync()V

    .line 514
    .end local v0    # "leasesCount":I
    .end local v13    # "blobMetadata":Lcom/android/server/blob/BlobMetadata;
    monitor-exit v12

    .line 515
    return-void

    .line 496
    .restart local v0    # "leasesCount":I
    .restart local v13    # "blobMetadata":Lcom/android/server/blob/BlobMetadata;
    :cond_4
    const/16 v3, 0x12b

    .line 497
    invoke-virtual {v13}, Lcom/android/server/blob/BlobMetadata;->getBlobId()J

    move-result-wide v5

    invoke-virtual {v13}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    move-result-wide v7

    const/4 v9, 0x5

    .line 496
    move/from16 v4, p6

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJI)V

    .line 499
    new-instance v3, Landroid/os/LimitExceededException;

    const-string v4, "Total amount of data with an active lease is exceeding the max limit"

    invoke-direct {v3, v4}, Landroid/os/LimitExceededException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/blob/BlobStoreManagerService;
    .end local p1    # "blobHandle":Landroid/app/blob/BlobHandle;
    .end local p2    # "descriptionResId":I
    .end local p3    # "description":Ljava/lang/CharSequence;
    .end local p4    # "leaseExpiryTimeMillis":J
    .end local p6    # "callingUid":I
    .end local p7    # "callingPackage":Ljava/lang/String;
    throw v3

    .line 472
    .restart local p0    # "this":Lcom/android/server/blob/BlobStoreManagerService;
    .restart local p1    # "blobHandle":Landroid/app/blob/BlobHandle;
    .restart local p2    # "descriptionResId":I
    .restart local p3    # "description":Ljava/lang/CharSequence;
    .restart local p4    # "leaseExpiryTimeMillis":J
    .restart local p6    # "callingUid":I
    .restart local p7    # "callingPackage":Ljava/lang/String;
    :cond_5
    :goto_1
    if-nez v13, :cond_6

    .line 473
    const/16 v3, 0x12b

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x2

    move/from16 v4, p6

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJI)V

    goto :goto_2

    .line 477
    :cond_6
    const/16 v3, 0x12b

    .line 478
    invoke-virtual {v13}, Lcom/android/server/blob/BlobMetadata;->getBlobId()J

    move-result-wide v5

    invoke-virtual {v13}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    move-result-wide v7

    const/4 v9, 0x3

    .line 477
    move/from16 v4, p6

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJI)V

    .line 481
    :goto_2
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caller not allowed to access "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "; callingUid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", callingPackage="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/blob/BlobStoreManagerService;
    .end local p1    # "blobHandle":Landroid/app/blob/BlobHandle;
    .end local p2    # "descriptionResId":I
    .end local p3    # "description":Ljava/lang/CharSequence;
    .end local p4    # "leaseExpiryTimeMillis":J
    .end local p6    # "callingUid":I
    .end local p7    # "callingPackage":Ljava/lang/String;
    throw v3

    .line 462
    .end local v13    # "blobMetadata":Lcom/android/server/blob/BlobMetadata;
    .restart local p0    # "this":Lcom/android/server/blob/BlobStoreManagerService;
    .restart local p1    # "blobHandle":Landroid/app/blob/BlobHandle;
    .restart local p2    # "descriptionResId":I
    .restart local p3    # "description":Ljava/lang/CharSequence;
    .restart local p4    # "leaseExpiryTimeMillis":J
    .restart local p6    # "callingUid":I
    .restart local p7    # "callingPackage":Ljava/lang/String;
    :cond_7
    const/16 v3, 0x12b

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x6

    move/from16 v4, p6

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJI)V

    .line 465
    new-instance v3, Landroid/os/LimitExceededException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Too many leased blobs for the caller: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/LimitExceededException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/blob/BlobStoreManagerService;
    .end local p1    # "blobHandle":Landroid/app/blob/BlobHandle;
    .end local p2    # "descriptionResId":I
    .end local p3    # "description":Ljava/lang/CharSequence;
    .end local p4    # "leaseExpiryTimeMillis":J
    .end local p6    # "callingUid":I
    .end local p7    # "callingPackage":Ljava/lang/String;
    throw v3

    .line 514
    .end local v0    # "leasesCount":I
    .restart local p0    # "this":Lcom/android/server/blob/BlobStoreManagerService;
    .restart local p1    # "blobHandle":Landroid/app/blob/BlobHandle;
    .restart local p2    # "descriptionResId":I
    .restart local p3    # "description":Ljava/lang/CharSequence;
    .restart local p4    # "leaseExpiryTimeMillis":J
    .restart local p6    # "callingUid":I
    .restart local p7    # "callingPackage":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private addActiveBlobIdLocked(J)V
    .locals 2
    .param p1, "id"    # J

    .line 335
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mActiveBlobIds:Landroid/util/ArraySet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 336
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mKnownBlobIds:Landroid/util/ArraySet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 337
    return-void
.end method

.method private addBlobForUserLocked(Lcom/android/server/blob/BlobMetadata;I)V
    .locals 1
    .param p1, "blobMetadata"    # Lcom/android/server/blob/BlobMetadata;
    .param p2, "userId"    # I

    .line 323
    invoke-direct {p0, p2}, Lcom/android/server/blob/BlobStoreManagerService;->getUserBlobsLocked(I)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/blob/BlobStoreManagerService;->addBlobForUserLocked(Lcom/android/server/blob/BlobMetadata;Landroid/util/ArrayMap;)V

    .line 324
    return-void
.end method

.method private addBlobForUserLocked(Lcom/android/server/blob/BlobMetadata;Landroid/util/ArrayMap;)V
    .locals 2
    .param p1, "blobMetadata"    # Lcom/android/server/blob/BlobMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/blob/BlobMetadata;",
            "Landroid/util/ArrayMap<",
            "Landroid/app/blob/BlobHandle;",
            "Lcom/android/server/blob/BlobMetadata;",
            ">;)V"
        }
    .end annotation

    .line 329
    .local p2, "userBlobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/blob/BlobHandle;Lcom/android/server/blob/BlobMetadata;>;"
    invoke-virtual {p1}, Lcom/android/server/blob/BlobMetadata;->getBlobHandle()Landroid/app/blob/BlobHandle;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    invoke-virtual {p1}, Lcom/android/server/blob/BlobMetadata;->getBlobId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/blob/BlobStoreManagerService;->addActiveBlobIdLocked(J)V

    .line 331
    return-void
.end method

.method private addSessionForUserLocked(Lcom/android/server/blob/BlobStoreSession;I)V
    .locals 3
    .param p1, "session"    # Lcom/android/server/blob/BlobStoreSession;
    .param p2, "userId"    # I

    .line 317
    invoke-direct {p0, p2}, Lcom/android/server/blob/BlobStoreManagerService;->getUserSessionsLocked(I)Landroid/util/LongSparseArray;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/blob/BlobStoreSession;->getSessionId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 318
    invoke-virtual {p1}, Lcom/android/server/blob/BlobStoreSession;->getSessionId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/blob/BlobStoreManagerService;->addActiveBlobIdLocked(J)V

    .line 319
    return-void
.end method

.method private createSessionInternal(Landroid/app/blob/BlobHandle;ILjava/lang/String;)J
    .locals 16
    .param p1, "blobHandle"    # Landroid/app/blob/BlobHandle;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 353
    move-object/from16 v1, p0

    move/from16 v10, p2

    move-object/from16 v11, p3

    iget-object v12, v1, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v12

    .line 354
    :try_start_0
    invoke-direct {v1, v10, v11}, Lcom/android/server/blob/BlobStoreManagerService;->getSessionsCountLocked(ILjava/lang/String;)I

    move-result v0

    .line 355
    .local v0, "sessionsCount":I
    invoke-static {}, Lcom/android/server/blob/BlobStoreConfig;->getMaxActiveSessions()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 360
    invoke-direct/range {p0 .. p0}, Lcom/android/server/blob/BlobStoreManagerService;->generateNextSessionIdLocked()J

    move-result-wide v2

    move-wide v13, v2

    .line 361
    .local v13, "sessionId":J
    new-instance v15, Lcom/android/server/blob/BlobStoreSession;

    iget-object v3, v1, Lcom/android/server/blob/BlobStoreManagerService;->mContext:Landroid/content/Context;

    iget-object v9, v1, Lcom/android/server/blob/BlobStoreManagerService;->mSessionStateChangeListener:Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;

    move-object v2, v15

    move-wide v4, v13

    move-object/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v2 .. v9}, Lcom/android/server/blob/BlobStoreSession;-><init>(Landroid/content/Context;JLandroid/app/blob/BlobHandle;ILjava/lang/String;Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;)V

    move-object v2, v15

    .line 364
    .local v2, "session":Lcom/android/server/blob/BlobStoreSession;
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/blob/BlobStoreManagerService;->addSessionForUserLocked(Lcom/android/server/blob/BlobStoreSession;I)V

    .line 365
    sget-boolean v3, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    if-eqz v3, :cond_0

    .line 366
    const-string v3, "BlobStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Created session for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v5, p1

    :try_start_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "; callingUid="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", callingPackage="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 365
    :cond_0
    move-object/from16 v5, p1

    .line 369
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobSessionsAsync()V

    .line 370
    monitor-exit v12

    return-wide v13

    .line 356
    .end local v2    # "session":Lcom/android/server/blob/BlobStoreSession;
    .end local v13    # "sessionId":J
    :cond_1
    move-object/from16 v5, p1

    new-instance v2, Landroid/os/LimitExceededException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Too many active sessions for the caller: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/LimitExceededException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/blob/BlobStoreManagerService;
    .end local p1    # "blobHandle":Landroid/app/blob/BlobHandle;
    .end local p2    # "callingUid":I
    .end local p3    # "callingPackage":Ljava/lang/String;
    throw v2

    .line 371
    .end local v0    # "sessionsCount":I
    .restart local p0    # "this":Lcom/android/server/blob/BlobStoreManagerService;
    .restart local p1    # "blobHandle":Landroid/app/blob/BlobHandle;
    .restart local p2    # "callingUid":I
    .restart local p3    # "callingPackage":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object/from16 v5, p1

    :goto_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private deleteBlobInternal(JI)V
    .locals 4
    .param p1, "blobId"    # J
    .param p3, "callingUid"    # I

    .line 610
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 611
    nop

    .line 612
    :try_start_0
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 611
    invoke-direct {p0, v1}, Lcom/android/server/blob/BlobStoreManagerService;->getUserBlobsLocked(I)Landroid/util/ArrayMap;

    move-result-object v1

    .line 613
    .local v1, "userBlobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/blob/BlobHandle;Lcom/android/server/blob/BlobMetadata;>;"
    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    new-instance v3, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$Mr19cV2OEeKTtbpkiW3uytTABZY;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$Mr19cV2OEeKTtbpkiW3uytTABZY;-><init>(Lcom/android/server/blob/BlobStoreManagerService;J)V

    invoke-interface {v2, v3}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 621
    invoke-direct {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobsInfoAsync()V

    .line 622
    .end local v1    # "userBlobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/blob/BlobHandle;Lcom/android/server/blob/BlobMetadata;>;"
    monitor-exit v0

    .line 623
    return-void

    .line 622
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private deleteBlobLocked(Lcom/android/server/blob/BlobMetadata;)V
    .locals 3
    .param p1, "blobMetadata"    # Lcom/android/server/blob/BlobMetadata;

    .line 1171
    invoke-virtual {p1}, Lcom/android/server/blob/BlobMetadata;->destroy()V

    .line 1172
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mActiveBlobIds:Landroid/util/ArraySet;

    invoke-virtual {p1}, Lcom/android/server/blob/BlobMetadata;->getBlobId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1173
    return-void
.end method

.method private deleteSessionLocked(Lcom/android/server/blob/BlobStoreSession;)V
    .locals 3
    .param p1, "blobStoreSession"    # Lcom/android/server/blob/BlobStoreSession;

    .line 1165
    invoke-virtual {p1}, Lcom/android/server/blob/BlobStoreSession;->destroy()V

    .line 1166
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mActiveBlobIds:Landroid/util/ArraySet;

    invoke-virtual {p1}, Lcom/android/server/blob/BlobStoreSession;->getSessionId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1167
    return-void
.end method

.method private dumpBlobsLocked(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;)V
    .locals 10
    .param p1, "fout"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "dumpArgs"    # Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;

    .line 1277
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .local v1, "userCount":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 1278
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1279
    .local v2, "userId":I
    invoke-virtual {p2, v2}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->shouldDumpUser(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1280
    goto :goto_3

    .line 1282
    :cond_0
    iget-object v3, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 1283
    .local v3, "userBlobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/blob/BlobHandle;Lcom/android/server/blob/BlobMetadata;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "List of blobs in user #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1284
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1283
    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1285
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1286
    const/4 v4, 0x0

    .local v4, "j":I
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .local v5, "blobsCount":I
    :goto_1
    if-ge v4, v5, :cond_2

    .line 1287
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/blob/BlobMetadata;

    .line 1288
    .local v6, "blobMetadata":Lcom/android/server/blob/BlobMetadata;
    invoke-virtual {v6}, Lcom/android/server/blob/BlobMetadata;->getBlobId()J

    move-result-wide v7

    invoke-virtual {p2, v7, v8}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->shouldDumpBlob(J)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1289
    goto :goto_2

    .line 1291
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Blob #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/server/blob/BlobMetadata;->getBlobId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1292
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1293
    invoke-virtual {v6, p1, p2}, Lcom/android/server/blob/BlobMetadata;->dump(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;)V

    .line 1294
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1286
    .end local v6    # "blobMetadata":Lcom/android/server/blob/BlobMetadata;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1296
    .end local v4    # "j":I
    .end local v5    # "blobsCount":I
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1277
    .end local v2    # "userId":I
    .end local v3    # "userBlobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/blob/BlobHandle;Lcom/android/server/blob/BlobMetadata;>;"
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1298
    .end local v0    # "i":I
    .end local v1    # "userCount":I
    :cond_3
    return-void
.end method

.method private dumpSessionsLocked(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;)V
    .locals 13
    .param p1, "fout"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "dumpArgs"    # Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;

    .line 1250
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .local v1, "userCount":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 1251
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1252
    .local v2, "userId":I
    invoke-virtual {p2, v2}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->shouldDumpUser(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1253
    goto/16 :goto_3

    .line 1255
    :cond_0
    iget-object v3, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/LongSparseArray;

    .line 1256
    .local v3, "userSessions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/server/blob/BlobStoreSession;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "List of sessions in user #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1257
    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1256
    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1258
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1259
    const/4 v4, 0x0

    .local v4, "j":I
    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v5

    .local v5, "sessionsCount":I
    :goto_1
    if-ge v4, v5, :cond_2

    .line 1260
    invoke-virtual {v3, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    .line 1261
    .local v6, "sessionId":J
    invoke-virtual {v3, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/blob/BlobStoreSession;

    .line 1262
    .local v8, "session":Lcom/android/server/blob/BlobStoreSession;
    invoke-virtual {v8}, Lcom/android/server/blob/BlobStoreSession;->getOwnerPackageName()Ljava/lang/String;

    move-result-object v9

    .line 1263
    invoke-virtual {v8}, Lcom/android/server/blob/BlobStoreSession;->getOwnerUid()I

    move-result v10

    invoke-virtual {v8}, Lcom/android/server/blob/BlobStoreSession;->getSessionId()J

    move-result-wide v11

    .line 1262
    invoke-virtual {p2, v9, v10, v11, v12}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->shouldDumpSession(Ljava/lang/String;IJ)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1264
    goto :goto_2

    .line 1266
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Session #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1267
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1268
    invoke-virtual {v8, p1, p2}, Lcom/android/server/blob/BlobStoreSession;->dump(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;)V

    .line 1269
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1259
    .end local v6    # "sessionId":J
    .end local v8    # "session":Lcom/android/server/blob/BlobStoreSession;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1271
    .end local v4    # "j":I
    .end local v5    # "sessionsCount":I
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1250
    .end local v2    # "userId":I
    .end local v3    # "userSessions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/server/blob/BlobStoreSession;>;"
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1273
    .end local v0    # "i":I
    .end local v1    # "userCount":I
    :cond_3
    return-void
.end method

.method private forEachBlobInUser(Ljava/util/function/Consumer;I)V
    .locals 5
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/blob/BlobMetadata;",
            ">;I)V"
        }
    .end annotation

    .line 1356
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/blob/BlobMetadata;>;"
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1357
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/blob/BlobStoreManagerService;->getUserBlobsLocked(I)Landroid/util/ArrayMap;

    move-result-object v1

    .line 1358
    .local v1, "userBlobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/blob/BlobHandle;Lcom/android/server/blob/BlobMetadata;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .local v3, "count":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 1359
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/blob/BlobMetadata;

    .line 1360
    .local v4, "blobMetadata":Lcom/android/server/blob/BlobMetadata;
    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1358
    .end local v4    # "blobMetadata":Lcom/android/server/blob/BlobMetadata;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1362
    .end local v1    # "userBlobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/blob/BlobHandle;Lcom/android/server/blob/BlobMetadata;>;"
    .end local v2    # "i":I
    .end local v3    # "count":I
    :cond_0
    monitor-exit v0

    .line 1363
    return-void

    .line 1362
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private forEachSessionInUser(Ljava/util/function/Consumer;I)V
    .locals 5
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/blob/BlobStoreSession;",
            ">;I)V"
        }
    .end annotation

    .line 1346
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/blob/BlobStoreSession;>;"
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1347
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/blob/BlobStoreManagerService;->getUserSessionsLocked(I)Landroid/util/LongSparseArray;

    move-result-object v1

    .line 1348
    .local v1, "userSessions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/server/blob/BlobStoreSession;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    .local v3, "count":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 1349
    invoke-virtual {v1, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/blob/BlobStoreSession;

    .line 1350
    .local v4, "session":Lcom/android/server/blob/BlobStoreSession;
    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1348
    .end local v4    # "session":Lcom/android/server/blob/BlobStoreSession;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1352
    .end local v1    # "userSessions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/server/blob/BlobStoreSession;>;"
    .end local v2    # "i":I
    .end local v3    # "count":I
    :cond_0
    monitor-exit v0

    .line 1353
    return-void

    .line 1352
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private generateNextSessionIdLocked()J
    .locals 9

    .line 232
    const/4 v0, 0x0

    .line 235
    .local v0, "n":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mRandom:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    .line 236
    .local v1, "randomLong":J
    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v3, v1, v3

    const-wide/16 v4, 0x0

    if-nez v3, :cond_0

    move-wide v6, v4

    goto :goto_1

    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    .line 237
    .local v6, "sessionId":J
    :goto_1
    iget-object v3, p0, Lcom/android/server/blob/BlobStoreManagerService;->mKnownBlobIds:Landroid/util/ArraySet;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_1

    cmp-long v3, v6, v4

    if-eqz v3, :cond_1

    .line 238
    return-wide v6

    .line 240
    .end local v1    # "randomLong":J
    :cond_1
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "n":I
    .local v1, "n":I
    const/16 v2, 0x20

    if-ge v0, v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 241
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to allocate session ID"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getAllPackages()Landroid/util/SparseArray;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 989
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 990
    .local v0, "allPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    const-class v1, Landroid/os/UserManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManagerInternal;

    invoke-virtual {v1}, Landroid/os/UserManagerInternal;->getUserIds()[I

    move-result-object v1

    .line 991
    .local v1, "allUsers":[I
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    .line 992
    .local v4, "userId":I
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 993
    .local v5, "userPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 994
    iget-object v6, p0, Lcom/android/server/blob/BlobStoreManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const v7, 0xc2000

    .line 998
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    .line 995
    invoke-virtual {v6, v7, v4, v8}, Landroid/content/pm/PackageManagerInternal;->getInstalledApplications(III)Ljava/util/List;

    move-result-object v6

    .line 999
    .local v6, "applicationInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    .local v8, "count":I
    :goto_1
    if-ge v7, v8, :cond_0

    .line 1000
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ApplicationInfo;

    .line 1001
    .local v9, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v10, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v11, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 999
    .end local v9    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 991
    .end local v4    # "userId":I
    .end local v5    # "userPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v6    # "applicationInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v7    # "i":I
    .end local v8    # "count":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1004
    :cond_1
    return-object v0
.end method

.method private getCommittedBlobsCountLocked(ILjava/lang/String;)I
    .locals 3
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 435
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 436
    .local v0, "blobsCount":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v1, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$shuup-g9zPirCAR3mwbzlpwbvzg;

    invoke-direct {v1, p2, p1, v0}, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$shuup-g9zPirCAR3mwbzlpwbvzg;-><init>(Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicInteger;)V

    .line 440
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 436
    invoke-direct {p0, v1, v2}, Lcom/android/server/blob/BlobStoreManagerService;->forEachBlobInUser(Ljava/util/function/Consumer;I)V

    .line 441
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    return v1
.end method

.method private getLeaseInfoInternal(Landroid/app/blob/BlobHandle;ILjava/lang/String;)Landroid/app/blob/LeaseInfo;
    .locals 5
    .param p1, "blobHandle"    # Landroid/app/blob/BlobHandle;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 638
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 639
    :try_start_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/blob/BlobStoreManagerService;->getUserBlobsLocked(I)Landroid/util/ArrayMap;

    move-result-object v1

    .line 640
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/blob/BlobMetadata;

    .line 641
    .local v1, "blobMetadata":Lcom/android/server/blob/BlobMetadata;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p3, p2}, Lcom/android/server/blob/BlobMetadata;->isAccessAllowedForCaller(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 646
    invoke-virtual {v1, p3, p2}, Lcom/android/server/blob/BlobMetadata;->getLeaseInfo(Ljava/lang/String;I)Landroid/app/blob/LeaseInfo;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 643
    :cond_0
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caller not allowed to access "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "; callingUid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", callingPackage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/blob/BlobStoreManagerService;
    .end local p1    # "blobHandle":Landroid/app/blob/BlobHandle;
    .end local p2    # "callingUid":I
    .end local p3    # "callingPackage":Ljava/lang/String;
    throw v2

    .line 647
    .end local v1    # "blobMetadata":Lcom/android/server/blob/BlobMetadata;
    .restart local p0    # "this":Lcom/android/server/blob/BlobStoreManagerService;
    .restart local p1    # "blobHandle":Landroid/app/blob/BlobHandle;
    .restart local p2    # "callingUid":I
    .restart local p3    # "callingPackage":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getLeasedBlobsCountLocked(ILjava/lang/String;)I
    .locals 3
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 447
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 448
    .local v0, "blobsCount":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v1, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$ueUCJvv_tifFj4N2TVHvG9LPJDc;

    invoke-direct {v1, p2, p1, v0}, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$ueUCJvv_tifFj4N2TVHvG9LPJDc;-><init>(Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicInteger;)V

    .line 452
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 448
    invoke-direct {p0, v1, v2}, Lcom/android/server/blob/BlobStoreManagerService;->forEachBlobInUser(Ljava/util/function/Consumer;I)V

    .line 453
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    return v1
.end method

.method private getLeasedBlobsInternal(ILjava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "callingUid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/blob/BlobHandle;",
            ">;"
        }
    .end annotation

    .line 627
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 628
    .local v0, "leasedBlobs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/blob/BlobHandle;>;"
    new-instance v1, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$b9RctA3_v-s-QYN6fm28pdpoNOw;

    invoke-direct {v1, p2, p1, v0}, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$b9RctA3_v-s-QYN6fm28pdpoNOw;-><init>(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 632
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 628
    invoke-direct {p0, v1, v2}, Lcom/android/server/blob/BlobStoreManagerService;->forEachBlobInUser(Ljava/util/function/Consumer;I)V

    .line 633
    return-object v0
.end method

.method private getPackageUid(Ljava/lang/String;I)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 981
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const v1, 0xc2000

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    .line 985
    .local v0, "uid":I
    return v0
.end method

.method private getRemainingLeaseQuotaBytesInternal(ILjava/lang/String;)J
    .locals 6
    .param p1, "callingUid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 566
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 567
    :try_start_0
    invoke-static {}, Lcom/android/server/blob/BlobStoreConfig;->getAppDataBytesLimit()J

    move-result-wide v1

    .line 568
    invoke-virtual {p0, p1, p2}, Lcom/android/server/blob/BlobStoreManagerService;->getTotalUsageBytesLocked(ILjava/lang/String;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 569
    .local v1, "remainingQuota":J
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    move-wide v3, v1

    :cond_0
    monitor-exit v0

    return-wide v3

    .line 570
    .end local v1    # "remainingQuota":J
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getSessionsCountLocked(ILjava/lang/String;)I
    .locals 3
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 342
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 343
    .local v0, "sessionsCount":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v1, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$iguqWcdQtO7XSEFCDVTzkcChqjE;

    invoke-direct {v1, p1, p2, v0}, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$iguqWcdQtO7XSEFCDVTzkcChqjE;-><init>(ILjava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 347
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 343
    invoke-direct {p0, v1, v2}, Lcom/android/server/blob/BlobStoreManagerService;->forEachSessionInUser(Ljava/util/function/Consumer;I)V

    .line 348
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    return v1
.end method

.method private getUserBlobsLocked(I)Landroid/util/ArrayMap;
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap<",
            "Landroid/app/blob/BlobHandle;",
            "Lcom/android/server/blob/BlobMetadata;",
            ">;"
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 271
    .local v0, "userBlobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/blob/BlobHandle;Lcom/android/server/blob/BlobMetadata;>;"
    if-nez v0, :cond_0

    .line 272
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    .line 273
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 275
    :cond_0
    return-object v0
.end method

.method private getUserSessionsLocked(I)Landroid/util/LongSparseArray;
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/LongSparseArray<",
            "Lcom/android/server/blob/BlobStoreSession;",
            ">;"
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    .line 261
    .local v0, "userSessions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/server/blob/BlobStoreSession;>;"
    if-nez v0, :cond_0

    .line 262
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    move-object v0, v1

    .line 263
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 265
    :cond_0
    return-object v0
.end method

.method private handleUserRemoved(I)V
    .locals 6
    .param p1, "userId"    # I

    .line 1067
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1068
    :try_start_0
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    .line 1069
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LongSparseArray;

    .line 1070
    .local v1, "userSessions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/server/blob/BlobStoreSession;>;"
    if-eqz v1, :cond_0

    .line 1071
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    .local v3, "count":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 1072
    invoke-virtual {v1, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/blob/BlobStoreSession;

    .line 1073
    .local v4, "session":Lcom/android/server/blob/BlobStoreSession;
    invoke-direct {p0, v4}, Lcom/android/server/blob/BlobStoreManagerService;->deleteSessionLocked(Lcom/android/server/blob/BlobStoreSession;)V

    .line 1071
    .end local v4    # "session":Lcom/android/server/blob/BlobStoreSession;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1077
    .end local v2    # "i":I
    .end local v3    # "count":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/SparseArray;

    .line 1078
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 1079
    .local v2, "userBlobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/blob/BlobHandle;Lcom/android/server/blob/BlobMetadata;>;"
    if-eqz v2, :cond_1

    .line 1080
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .local v4, "count":I
    :goto_1
    if-ge v3, v4, :cond_1

    .line 1081
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/blob/BlobMetadata;

    .line 1082
    .local v5, "blobMetadata":Lcom/android/server/blob/BlobMetadata;
    invoke-direct {p0, v5}, Lcom/android/server/blob/BlobStoreManagerService;->deleteBlobLocked(Lcom/android/server/blob/BlobMetadata;)V

    .line 1080
    .end local v5    # "blobMetadata":Lcom/android/server/blob/BlobMetadata;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1085
    .end local v3    # "i":I
    .end local v4    # "count":I
    :cond_1
    sget-boolean v3, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    if-eqz v3, :cond_2

    .line 1086
    const-string v3, "BlobStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removed blobs data in user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    .end local v1    # "userSessions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/server/blob/BlobStoreSession;>;"
    .end local v2    # "userBlobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/blob/BlobHandle;Lcom/android/server/blob/BlobMetadata;>;"
    :cond_2
    monitor-exit v0

    .line 1089
    return-void

    .line 1088
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static initializeMessageHandler()Landroid/os/Handler;
    .locals 4

    .line 193
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "BlobStore"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 195
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 196
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 197
    .local v1, "handler":Landroid/os/Handler;
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;)V

    .line 198
    return-object v1
.end method

.method public static synthetic lambda$0WauOYQXWD9rogYgvnCLUb176wA(Lcom/android/server/blob/BlobStoreManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobsInfo()V

    return-void
.end method

.method public static synthetic lambda$TQmyogoz-iYWcrNcnMqwFDg6S5A(Lcom/android/server/blob/BlobStoreManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobSessions()V

    return-void
.end method

.method static synthetic lambda$getCommittedBlobsCountLocked$1(Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicInteger;Lcom/android/server/blob/BlobMetadata;)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "uid"    # I
    .param p2, "blobsCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p3, "blobMetadata"    # Lcom/android/server/blob/BlobMetadata;

    .line 437
    invoke-virtual {p3, p0, p1}, Lcom/android/server/blob/BlobMetadata;->isACommitter(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 440
    :cond_0
    return-void
.end method

.method static synthetic lambda$getLeasedBlobsCountLocked$2(Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicInteger;Lcom/android/server/blob/BlobMetadata;)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "uid"    # I
    .param p2, "blobsCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p3, "blobMetadata"    # Lcom/android/server/blob/BlobMetadata;

    .line 449
    invoke-virtual {p3, p0, p1}, Lcom/android/server/blob/BlobMetadata;->isALeasee(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 452
    :cond_0
    return-void
.end method

.method static synthetic lambda$getLeasedBlobsInternal$9(Ljava/lang/String;ILjava/util/ArrayList;Lcom/android/server/blob/BlobMetadata;)V
    .locals 1
    .param p0, "callingPackage"    # Ljava/lang/String;
    .param p1, "callingUid"    # I
    .param p2, "leasedBlobs"    # Ljava/util/ArrayList;
    .param p3, "blobMetadata"    # Lcom/android/server/blob/BlobMetadata;

    .line 629
    invoke-virtual {p3, p0, p1}, Lcom/android/server/blob/BlobMetadata;->isALeasee(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    invoke-virtual {p3}, Lcom/android/server/blob/BlobMetadata;->getBlobHandle()Landroid/app/blob/BlobHandle;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    :cond_0
    return-void
.end method

.method static synthetic lambda$getSessionsCountLocked$0(ILjava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/android/server/blob/BlobStoreSession;)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "sessionsCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p3, "session"    # Lcom/android/server/blob/BlobStoreSession;

    .line 344
    invoke-virtual {p3}, Lcom/android/server/blob/BlobStoreSession;->getOwnerUid()I

    move-result v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p3}, Lcom/android/server/blob/BlobStoreSession;->getOwnerPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 347
    :cond_0
    return-void
.end method

.method static synthetic lambda$getTotalUsageBytesLocked$3(Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicLong;Lcom/android/server/blob/BlobMetadata;)V
    .locals 2
    .param p0, "callingPackage"    # Ljava/lang/String;
    .param p1, "callingUid"    # I
    .param p2, "totalBytes"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p3, "blobMetadata"    # Lcom/android/server/blob/BlobMetadata;

    .line 522
    invoke-virtual {p3, p0, p1}, Lcom/android/server/blob/BlobMetadata;->isALeasee(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    invoke-virtual {p3}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    .line 525
    :cond_0
    return-void
.end method

.method static synthetic lambda$queryBlobsForUserInternal$6(Ljava/util/function/Function;Landroid/app/blob/BlobHandle;Ljava/util/ArrayList;Lcom/android/server/blob/BlobMetadata$Leasee;)V
    .locals 7
    .param p0, "resourcesGetter"    # Ljava/util/function/Function;
    .param p1, "blobHandle"    # Landroid/app/blob/BlobHandle;
    .param p2, "leaseInfos"    # Ljava/util/ArrayList;
    .param p3, "leasee"    # Lcom/android/server/blob/BlobMetadata$Leasee;

    .line 589
    invoke-virtual {p3}, Lcom/android/server/blob/BlobMetadata$Leasee;->isStillValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 590
    return-void

    .line 592
    :cond_0
    iget-object v0, p3, Lcom/android/server/blob/BlobMetadata$Leasee;->descriptionResEntryName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 593
    const/4 v0, 0x0

    move v5, v0

    goto :goto_0

    .line 594
    :cond_1
    iget-object v0, p3, Lcom/android/server/blob/BlobMetadata$Leasee;->packageName:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    iget-object v1, p3, Lcom/android/server/blob/BlobMetadata$Leasee;->descriptionResEntryName:Ljava/lang/String;

    iget-object v2, p3, Lcom/android/server/blob/BlobMetadata$Leasee;->packageName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/server/blob/BlobStoreUtils;->getDescriptionResourceId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    move v5, v0

    :goto_0
    nop

    .line 596
    .local v5, "descriptionResId":I
    iget-wide v0, p3, Lcom/android/server/blob/BlobMetadata$Leasee;->expiryTimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 597
    invoke-virtual {p1}, Landroid/app/blob/BlobHandle;->getExpiryTimeMillis()J

    move-result-wide v0

    goto :goto_1

    :cond_2
    iget-wide v0, p3, Lcom/android/server/blob/BlobMetadata$Leasee;->expiryTimeMillis:J

    :goto_1
    move-wide v3, v0

    .line 598
    .local v3, "expiryTimeMs":J
    new-instance v0, Landroid/app/blob/LeaseInfo;

    iget-object v2, p3, Lcom/android/server/blob/BlobMetadata$Leasee;->packageName:Ljava/lang/String;

    iget-object v6, p3, Lcom/android/server/blob/BlobMetadata$Leasee;->description:Ljava/lang/CharSequence;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/app/blob/LeaseInfo;-><init>(Ljava/lang/String;JILjava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    return-void
.end method

.method static synthetic lambda$queryBlobsForUserInternal$7(Ljava/util/function/Function;Ljava/util/ArrayList;Landroid/app/blob/BlobHandle;Lcom/android/server/blob/BlobMetadata;)V
    .locals 11
    .param p0, "resourcesGetter"    # Ljava/util/function/Function;
    .param p1, "blobInfos"    # Ljava/util/ArrayList;
    .param p2, "blobHandle"    # Landroid/app/blob/BlobHandle;
    .param p3, "blobMetadata"    # Lcom/android/server/blob/BlobMetadata;

    .line 587
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 588
    .local v0, "leaseInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/blob/LeaseInfo;>;"
    new-instance v1, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$BUTOhgP9JLOMPxsEmHKh1cRuMiU;

    invoke-direct {v1, p0, p2, v0}, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$BUTOhgP9JLOMPxsEmHKh1cRuMiU;-><init>(Ljava/util/function/Function;Landroid/app/blob/BlobHandle;Ljava/util/ArrayList;)V

    invoke-virtual {p3, v1}, Lcom/android/server/blob/BlobMetadata;->forEachLeasee(Ljava/util/function/Consumer;)V

    .line 601
    new-instance v10, Landroid/app/blob/BlobInfo;

    invoke-virtual {p3}, Lcom/android/server/blob/BlobMetadata;->getBlobId()J

    move-result-wide v2

    .line 602
    invoke-virtual {p2}, Landroid/app/blob/BlobHandle;->getExpiryTimeMillis()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/app/blob/BlobHandle;->getLabel()Ljava/lang/CharSequence;

    move-result-object v6

    .line 603
    invoke-virtual {p3}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    move-result-wide v7

    move-object v1, v10

    move-object v9, v0

    invoke-direct/range {v1 .. v9}, Landroid/app/blob/BlobInfo;-><init>(JJLjava/lang/CharSequence;JLjava/util/List;)V

    .line 601
    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 604
    return-void
.end method

.method private onStateChangedInternal(Lcom/android/server/blob/BlobStoreSession;)V
    .locals 22
    .param p1, "session"    # Lcom/android/server/blob/BlobStoreSession;

    .line 667
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getState()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_9

    const/4 v3, 0x3

    if-eq v0, v3, :cond_8

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    const/4 v3, 0x5

    if-eq v0, v3, :cond_9

    .line 756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid session state: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getState()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/blob/BlobStoreSession;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 756
    const-string v3, "BlobStore"

    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 687
    :cond_0
    iget-object v3, v1, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 688
    nop

    .line 689
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getOwnerUid()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getOwnerPackageName()Ljava/lang/String;

    move-result-object v4

    .line 688
    invoke-direct {v1, v0, v4}, Lcom/android/server/blob/BlobStoreManagerService;->getCommittedBlobsCountLocked(ILjava/lang/String;)I

    move-result v0

    move v4, v0

    .line 690
    .local v4, "committedBlobsCount":I
    invoke-static {}, Lcom/android/server/blob/BlobStoreConfig;->getMaxCommittedBlobs()I

    move-result v0

    const/4 v5, 0x1

    if-lt v4, v0, :cond_1

    .line 691
    const-string v0, "BlobStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to commit: too many committed blobs. count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "; blob: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    invoke-virtual {v2, v5}, Lcom/android/server/blob/BlobStoreSession;->sendCommitCallbackResult(I)V

    .line 694
    invoke-direct/range {p0 .. p1}, Lcom/android/server/blob/BlobStoreManagerService;->deleteSessionLocked(Lcom/android/server/blob/BlobStoreSession;)V

    .line 695
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getOwnerUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {v1, v0}, Lcom/android/server/blob/BlobStoreManagerService;->getUserSessionsLocked(I)Landroid/util/LongSparseArray;

    move-result-object v0

    .line 696
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getSessionId()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Landroid/util/LongSparseArray;->remove(J)V

    .line 697
    const/16 v7, 0x12a

    .line 698
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getOwnerUid()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getSessionId()J

    move-result-wide v9

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getSize()J

    move-result-wide v11

    const/4 v13, 0x4

    .line 697
    invoke-static/range {v7 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJI)V

    .line 700
    monitor-exit v3

    goto/16 :goto_4

    .line 702
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getOwnerUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    move v12, v0

    .line 703
    .local v12, "userId":I
    invoke-direct {v1, v12}, Lcom/android/server/blob/BlobStoreManagerService;->getUserBlobsLocked(I)Landroid/util/ArrayMap;

    move-result-object v0

    move-object v13, v0

    .line 705
    .local v13, "userBlobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/blob/BlobHandle;Lcom/android/server/blob/BlobMetadata;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getBlobHandle()Landroid/app/blob/BlobHandle;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/blob/BlobMetadata;

    .line 706
    .local v0, "blob":Lcom/android/server/blob/BlobMetadata;
    if-nez v0, :cond_2

    .line 707
    new-instance v14, Lcom/android/server/blob/BlobMetadata;

    iget-object v7, v1, Lcom/android/server/blob/BlobStoreManagerService;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getSessionId()J

    move-result-wide v8

    .line 708
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getBlobHandle()Landroid/app/blob/BlobHandle;

    move-result-object v10

    move-object v6, v14

    move v11, v12

    invoke-direct/range {v6 .. v11}, Lcom/android/server/blob/BlobMetadata;-><init>(Landroid/content/Context;JLandroid/app/blob/BlobHandle;I)V

    move-object v0, v14

    .line 709
    invoke-direct {v1, v0, v13}, Lcom/android/server/blob/BlobStoreManagerService;->addBlobForUserLocked(Lcom/android/server/blob/BlobMetadata;Landroid/util/ArrayMap;)V

    move-object v6, v0

    goto :goto_0

    .line 706
    :cond_2
    move-object v6, v0

    .line 711
    .end local v0    # "blob":Lcom/android/server/blob/BlobMetadata;
    .local v6, "blob":Lcom/android/server/blob/BlobMetadata;
    :goto_0
    nop

    .line 712
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getOwnerPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getOwnerUid()I

    move-result v7

    .line 711
    invoke-virtual {v6, v0, v7}, Lcom/android/server/blob/BlobMetadata;->getExistingCommitter(Ljava/lang/String;I)Lcom/android/server/blob/BlobMetadata$Committer;

    move-result-object v0

    move-object v7, v0

    .line 714
    .local v7, "existingCommitter":Lcom/android/server/blob/BlobMetadata$Committer;
    if-nez v7, :cond_3

    const-wide/16 v8, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {v7}, Lcom/android/server/blob/BlobMetadata$Committer;->getCommitTimeMs()J

    move-result-wide v8

    .line 715
    .local v8, "existingCommitTimeMs":J
    :goto_1
    new-instance v0, Lcom/android/server/blob/BlobMetadata$Committer;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getOwnerPackageName()Ljava/lang/String;

    move-result-object v15

    .line 716
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getOwnerUid()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getBlobAccessMode()Lcom/android/server/blob/BlobAccessMode;

    move-result-object v17

    .line 718
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 717
    invoke-static {v8, v9, v10, v11}, Lcom/android/server/blob/BlobStoreConfig;->getAdjustedCommitTimeMs(JJ)J

    move-result-wide v18

    move-object v14, v0

    invoke-direct/range {v14 .. v19}, Lcom/android/server/blob/BlobMetadata$Committer;-><init>(Ljava/lang/String;ILcom/android/server/blob/BlobAccessMode;J)V

    move-object v10, v0

    .line 719
    .local v10, "newCommitter":Lcom/android/server/blob/BlobMetadata$Committer;
    invoke-virtual {v6, v10}, Lcom/android/server/blob/BlobMetadata;->addOrReplaceCommitter(Lcom/android/server/blob/BlobMetadata$Committer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 721
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobsInfoLocked()V

    .line 722
    const/16 v14, 0x12a

    .line 723
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getOwnerUid()I

    move-result v15

    invoke-virtual {v6}, Lcom/android/server/blob/BlobMetadata;->getBlobId()J

    move-result-wide v16

    invoke-virtual {v6}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    move-result-wide v18

    const/16 v20, 0x1

    .line 722
    invoke-static/range {v14 .. v20}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJI)V

    .line 725
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/android/server/blob/BlobStoreSession;->sendCommitCallbackResult(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 743
    goto :goto_3

    .line 726
    :catch_0
    move-exception v0

    .line 727
    .local v0, "e":Ljava/lang/Exception;
    if-nez v7, :cond_4

    .line 728
    :try_start_2
    invoke-virtual {v6, v10}, Lcom/android/server/blob/BlobMetadata;->removeCommitter(Lcom/android/server/blob/BlobMetadata$Committer;)V

    goto :goto_2

    .line 730
    :cond_4
    invoke-virtual {v6, v7}, Lcom/android/server/blob/BlobMetadata;->addOrReplaceCommitter(Lcom/android/server/blob/BlobMetadata$Committer;)V

    .line 732
    :goto_2
    const-string v11, "BlobStore"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error committing the blob: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 733
    const/16 v15, 0x12a

    .line 734
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getOwnerUid()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getSessionId()J

    move-result-wide v17

    invoke-virtual {v6}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    move-result-wide v19

    const/16 v21, 0x2

    .line 733
    invoke-static/range {v15 .. v21}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJI)V

    .line 736
    invoke-virtual {v2, v5}, Lcom/android/server/blob/BlobStoreSession;->sendCommitCallbackResult(I)V

    .line 739
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getSessionId()J

    move-result-wide v14

    invoke-virtual {v6}, Lcom/android/server/blob/BlobMetadata;->getBlobId()J

    move-result-wide v16

    cmp-long v5, v14, v16

    if-nez v5, :cond_5

    .line 740
    invoke-direct {v1, v6}, Lcom/android/server/blob/BlobStoreManagerService;->deleteBlobLocked(Lcom/android/server/blob/BlobMetadata;)V

    .line 741
    invoke-virtual {v6}, Lcom/android/server/blob/BlobMetadata;->getBlobHandle()Landroid/app/blob/BlobHandle;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getSessionId()J

    move-result-wide v14

    invoke-virtual {v6}, Lcom/android/server/blob/BlobMetadata;->getBlobId()J

    move-result-wide v16

    cmp-long v0, v14, v16

    if-eqz v0, :cond_6

    .line 746
    invoke-direct/range {p0 .. p1}, Lcom/android/server/blob/BlobStoreManagerService;->deleteSessionLocked(Lcom/android/server/blob/BlobStoreSession;)V

    .line 748
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getOwnerUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {v1, v0}, Lcom/android/server/blob/BlobStoreManagerService;->getUserSessionsLocked(I)Landroid/util/LongSparseArray;

    move-result-object v0

    .line 749
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getSessionId()J

    move-result-wide v14

    invoke-virtual {v0, v14, v15}, Landroid/util/LongSparseArray;->remove(J)V

    .line 750
    sget-boolean v0, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    if-eqz v0, :cond_7

    .line 751
    const-string v0, "BlobStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Successfully committed session "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    .end local v4    # "committedBlobsCount":I
    .end local v6    # "blob":Lcom/android/server/blob/BlobMetadata;
    .end local v7    # "existingCommitter":Lcom/android/server/blob/BlobMetadata$Committer;
    .end local v8    # "existingCommitTimeMs":J
    .end local v10    # "newCommitter":Lcom/android/server/blob/BlobMetadata$Committer;
    .end local v12    # "userId":I
    .end local v13    # "userBlobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/blob/BlobHandle;Lcom/android/server/blob/BlobMetadata;>;"
    :cond_7
    monitor-exit v3

    .line 754
    goto :goto_4

    .line 753
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 680
    :cond_8
    iget-object v0, v1, Lcom/android/server/blob/BlobStoreManagerService;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$Fcg_31mLLd_1djDPJSdIyLHQXJY;

    invoke-direct {v3, v1, v2}, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$Fcg_31mLLd_1djDPJSdIyLHQXJY;-><init>(Lcom/android/server/blob/BlobStoreManagerService;Lcom/android/server/blob/BlobStoreSession;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 685
    goto :goto_4

    .line 670
    :cond_9
    iget-object v3, v1, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 671
    :try_start_3
    invoke-direct/range {p0 .. p1}, Lcom/android/server/blob/BlobStoreManagerService;->deleteSessionLocked(Lcom/android/server/blob/BlobStoreSession;)V

    .line 672
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getOwnerUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {v1, v0}, Lcom/android/server/blob/BlobStoreManagerService;->getUserSessionsLocked(I)Landroid/util/LongSparseArray;

    move-result-object v0

    .line 673
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getSessionId()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->remove(J)V

    .line 674
    sget-boolean v0, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    if-eqz v0, :cond_a

    .line 675
    const-string v0, "BlobStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Session is invalid; deleted "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_a
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 678
    nop

    .line 759
    :goto_4
    iget-object v4, v1, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 761
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobSessionsLocked()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 764
    goto :goto_5

    .line 765
    :catchall_1
    move-exception v0

    goto :goto_6

    .line 762
    :catch_1
    move-exception v0

    .line 765
    :goto_5
    :try_start_5
    monitor-exit v4

    .line 766
    return-void

    .line 765
    :goto_6
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 677
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0
.end method

.method private openBlobInternal(Landroid/app/blob/BlobHandle;ILjava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 10
    .param p1, "blobHandle"    # Landroid/app/blob/BlobHandle;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 406
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 407
    :try_start_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/blob/BlobStoreManagerService;->getUserBlobsLocked(I)Landroid/util/ArrayMap;

    move-result-object v1

    .line 408
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/blob/BlobMetadata;

    .line 409
    .local v1, "blobMetadata":Lcom/android/server/blob/BlobMetadata;
    if-eqz v1, :cond_1

    invoke-virtual {v1, p3, p2}, Lcom/android/server/blob/BlobMetadata;->isAccessAllowedForCaller(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 424
    :cond_0
    const/16 v3, 0x12c

    .line 425
    invoke-virtual {v1}, Lcom/android/server/blob/BlobMetadata;->getBlobId()J

    move-result-wide v5

    invoke-virtual {v1}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    move-result-wide v7

    const/4 v9, 0x1

    .line 424
    move v4, p2

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJI)V

    .line 428
    invoke-virtual {v1, p3}, Lcom/android/server/blob/BlobMetadata;->openForRead(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 411
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 412
    const/16 v2, 0x12c

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x2

    move v3, p2

    invoke-static/range {v2 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJI)V

    goto :goto_1

    .line 416
    :cond_2
    const/16 v2, 0x12c

    .line 417
    invoke-virtual {v1}, Lcom/android/server/blob/BlobMetadata;->getBlobId()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    move-result-wide v6

    const/4 v8, 0x3

    .line 416
    move v3, p2

    invoke-static/range {v2 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJI)V

    .line 420
    :goto_1
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caller not allowed to access "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "; callingUid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", callingPackage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/blob/BlobStoreManagerService;
    .end local p1    # "blobHandle":Landroid/app/blob/BlobHandle;
    .end local p2    # "callingUid":I
    .end local p3    # "callingPackage":Ljava/lang/String;
    throw v2

    .line 429
    .end local v1    # "blobMetadata":Lcom/android/server/blob/BlobMetadata;
    .restart local p0    # "this":Lcom/android/server/blob/BlobStoreManagerService;
    .restart local p1    # "blobHandle":Landroid/app/blob/BlobHandle;
    .restart local p2    # "callingUid":I
    .restart local p3    # "callingPackage":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private openSessionInternal(JILjava/lang/String;)Lcom/android/server/blob/BlobStoreSession;
    .locals 5
    .param p1, "sessionId"    # J
    .param p3, "callingUid"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .line 377
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 378
    nop

    .line 379
    :try_start_0
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 378
    invoke-direct {p0, v1}, Lcom/android/server/blob/BlobStoreManagerService;->getUserSessionsLocked(I)Landroid/util/LongSparseArray;

    move-result-object v1

    .line 379
    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/blob/BlobStoreSession;

    .line 380
    .local v1, "session":Lcom/android/server/blob/BlobStoreSession;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p3, p4}, Lcom/android/server/blob/BlobStoreSession;->hasAccess(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 381
    invoke-virtual {v1}, Lcom/android/server/blob/BlobStoreSession;->isFinalized()Z

    move-result v2

    if-nez v2, :cond_0

    .line 384
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    invoke-virtual {v1}, Lcom/android/server/blob/BlobStoreSession;->open()V

    .line 386
    return-object v1

    .line 382
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Session not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/blob/BlobStoreManagerService;
    .end local p1    # "sessionId":J
    .end local p3    # "callingUid":I
    .end local p4    # "callingPackage":Ljava/lang/String;
    throw v2

    .line 384
    .end local v1    # "session":Lcom/android/server/blob/BlobStoreSession;
    .restart local p0    # "this":Lcom/android/server/blob/BlobStoreManagerService;
    .restart local p1    # "sessionId":J
    .restart local p3    # "callingUid":I
    .restart local p4    # "callingPackage":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private pullBlobData(ILjava/util/List;)I
    .locals 8
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 1886
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1887
    const/4 v1, 0x0

    .local v1, "i":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .local v2, "userCount":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1888
    iget-object v3, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 1889
    .local v3, "userBlobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/blob/BlobHandle;Lcom/android/server/blob/BlobMetadata;>;"
    const/4 v4, 0x0

    .local v4, "j":I
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .local v5, "blobsCount":I
    :goto_1
    if-ge v4, v5, :cond_0

    .line 1890
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/blob/BlobMetadata;

    .line 1891
    .local v6, "blob":Lcom/android/server/blob/BlobMetadata;
    invoke-virtual {v6, p1}, Lcom/android/server/blob/BlobMetadata;->dumpAsStatsEvent(I)Landroid/util/StatsEvent;

    move-result-object v7

    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1889
    nop

    .end local v6    # "blob":Lcom/android/server/blob/BlobMetadata;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1887
    .end local v3    # "userBlobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/blob/BlobHandle;Lcom/android/server/blob/BlobMetadata;>;"
    .end local v4    # "j":I
    .end local v5    # "blobsCount":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1894
    .end local v1    # "i":I
    .end local v2    # "userCount":I
    :cond_1
    monitor-exit v0

    .line 1895
    const/4 v0, 0x0

    return v0

    .line 1894
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private queryBlobsForUserInternal(I)Ljava/util/List;
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/blob/BlobInfo;",
            ">;"
        }
    .end annotation

    .line 574
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 575
    .local v0, "blobInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/blob/BlobInfo;>;"
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 576
    :try_start_0
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 577
    .local v2, "resources":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;>;"
    new-instance v3, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$dS4fzn6rXwz2QRynrQJnomB_CcU;

    invoke-direct {v3, p0, v2, p1}, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$dS4fzn6rXwz2QRynrQJnomB_CcU;-><init>(Lcom/android/server/blob/BlobStoreManagerService;Landroid/util/ArrayMap;I)V

    .line 586
    .local v3, "resourcesGetter":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Landroid/content/res/Resources;>;"
    invoke-direct {p0, p1}, Lcom/android/server/blob/BlobStoreManagerService;->getUserBlobsLocked(I)Landroid/util/ArrayMap;

    move-result-object v4

    new-instance v5, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$vLEQSKdoEZ9cTJdF33Gj6FReI8k;

    invoke-direct {v5, v3, v0}, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$vLEQSKdoEZ9cTJdF33Gj6FReI8k;-><init>(Ljava/util/function/Function;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 605
    .end local v2    # "resources":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;>;"
    .end local v3    # "resourcesGetter":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Landroid/content/res/Resources;>;"
    monitor-exit v1

    .line 606
    return-object v0

    .line 605
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private readBlobSessionsLocked(Landroid/util/SparseArray;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 809
    .local p1, "allPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    invoke-static {}, Lcom/android/server/blob/BlobStoreConfig;->getBlobStoreRootDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 810
    return-void

    .line 812
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService;->prepareSessionsIndexFile()Landroid/util/AtomicFile;

    move-result-object v0

    .line 813
    .local v0, "sessionsIndexFile":Landroid/util/AtomicFile;
    const-string v1, "BlobStore"

    if-nez v0, :cond_1

    .line 814
    const-string v2, "Error creating sessions index file"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    return-void

    .line 816
    :cond_1
    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 817
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sessions index file not available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    return-void

    .line 821
    :cond_2
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 822
    :try_start_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 823
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 824
    .local v3, "in":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 825
    const-string/jumbo v4, "ss"

    invoke-static {v3, v4}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 826
    const-string/jumbo v4, "v"

    invoke-static {v3, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v4

    .line 828
    .local v4, "version":I
    :cond_3
    :goto_0
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 829
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    .line 830
    nop

    .line 853
    sget-boolean v5, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    if-eqz v5, :cond_4

    .line 854
    const-string v5, "Finished reading sessions data"

    invoke-static {v1, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 856
    .end local v3    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "version":I
    :cond_4
    if-eqz v2, :cond_5

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 858
    .end local v2    # "fis":Ljava/io/FileInputStream;
    :cond_5
    goto :goto_3

    .line 833
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "version":I
    :cond_6
    :try_start_3
    const-string/jumbo v5, "s"

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 834
    iget-object v5, p0, Lcom/android/server/blob/BlobStoreManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessionStateChangeListener:Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;

    invoke-static {v3, v4, v5, v6}, Lcom/android/server/blob/BlobStoreSession;->createFromXml(Lorg/xmlpull/v1/XmlPullParser;ILandroid/content/Context;Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;)Lcom/android/server/blob/BlobStoreSession;

    move-result-object v5

    .line 836
    .local v5, "session":Lcom/android/server/blob/BlobStoreSession;
    if-nez v5, :cond_7

    .line 837
    goto :goto_0

    .line 839
    :cond_7
    nop

    .line 840
    invoke-virtual {v5}, Lcom/android/server/blob/BlobStoreSession;->getOwnerUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 839
    invoke-virtual {p1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    .line 841
    .local v6, "userPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-eqz v6, :cond_8

    .line 842
    invoke-virtual {v5}, Lcom/android/server/blob/BlobStoreSession;->getOwnerPackageName()Ljava/lang/String;

    move-result-object v7

    .line 843
    invoke-virtual {v5}, Lcom/android/server/blob/BlobStoreSession;->getOwnerUid()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 842
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 844
    nop

    .line 845
    invoke-virtual {v5}, Lcom/android/server/blob/BlobStoreSession;->getOwnerUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 844
    invoke-direct {p0, v5, v7}, Lcom/android/server/blob/BlobStoreManagerService;->addSessionForUserLocked(Lcom/android/server/blob/BlobStoreSession;I)V

    goto :goto_1

    .line 848
    :cond_8
    invoke-virtual {v5}, Lcom/android/server/blob/BlobStoreSession;->getSessionFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 850
    :goto_1
    iget-wide v7, p0, Lcom/android/server/blob/BlobStoreManagerService;->mCurrentMaxSessionId:J

    invoke-virtual {v5}, Lcom/android/server/blob/BlobStoreSession;->getSessionId()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/blob/BlobStoreManagerService;->mCurrentMaxSessionId:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 851
    .end local v5    # "session":Lcom/android/server/blob/BlobStoreSession;
    .end local v6    # "userPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    goto :goto_0

    .line 822
    .end local v3    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "version":I
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_9

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v4

    :try_start_5
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "sessionsIndexFile":Landroid/util/AtomicFile;
    .end local p0    # "this":Lcom/android/server/blob/BlobStoreManagerService;
    .end local p1    # "allPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    :cond_9
    :goto_2
    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 856
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "sessionsIndexFile":Landroid/util/AtomicFile;
    .restart local p0    # "this":Lcom/android/server/blob/BlobStoreManagerService;
    .restart local p1    # "allPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    :catch_0
    move-exception v2

    .line 857
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Error reading sessions data"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 859
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method private readBlobsInfoLocked(Landroid/util/SparseArray;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 901
    .local p1, "allPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    invoke-static {}, Lcom/android/server/blob/BlobStoreConfig;->getBlobStoreRootDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 902
    return-void

    .line 904
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService;->prepareBlobsIndexFile()Landroid/util/AtomicFile;

    move-result-object v0

    .line 905
    .local v0, "blobsIndexFile":Landroid/util/AtomicFile;
    const-string v1, "BlobStore"

    if-nez v0, :cond_1

    .line 906
    const-string v2, "Error creating blobs index file"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    return-void

    .line 908
    :cond_1
    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 909
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Blobs index file not available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    return-void

    .line 913
    :cond_2
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 914
    :try_start_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 915
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 916
    .local v3, "in":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 917
    const-string v4, "bs"

    invoke-static {v3, v4}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 918
    const-string/jumbo v4, "v"

    invoke-static {v3, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v4

    .line 920
    .local v4, "version":I
    :cond_3
    :goto_0
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 921
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    .line 922
    nop

    .line 940
    sget-boolean v5, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    if-eqz v5, :cond_4

    .line 941
    const-string v5, "Finished reading blobs data"

    invoke-static {v1, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 943
    .end local v3    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "version":I
    :cond_4
    if-eqz v2, :cond_5

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 945
    .end local v2    # "fis":Ljava/io/FileInputStream;
    :cond_5
    goto :goto_3

    .line 925
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "version":I
    :cond_6
    :try_start_3
    const-string v5, "b"

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 926
    iget-object v5, p0, Lcom/android/server/blob/BlobStoreManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3, v4, v5}, Lcom/android/server/blob/BlobMetadata;->createFromXml(Lorg/xmlpull/v1/XmlPullParser;ILandroid/content/Context;)Lcom/android/server/blob/BlobMetadata;

    move-result-object v5

    .line 928
    .local v5, "blobMetadata":Lcom/android/server/blob/BlobMetadata;
    nop

    .line 929
    invoke-virtual {v5}, Lcom/android/server/blob/BlobMetadata;->getUserId()I

    move-result v6

    .line 928
    invoke-virtual {p1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    .line 930
    .local v6, "userPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-nez v6, :cond_7

    .line 931
    invoke-virtual {v5}, Lcom/android/server/blob/BlobMetadata;->getBlobFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 933
    :cond_7
    invoke-virtual {v5}, Lcom/android/server/blob/BlobMetadata;->getUserId()I

    move-result v7

    invoke-direct {p0, v5, v7}, Lcom/android/server/blob/BlobStoreManagerService;->addBlobForUserLocked(Lcom/android/server/blob/BlobMetadata;I)V

    .line 934
    invoke-virtual {v5, v6}, Lcom/android/server/blob/BlobMetadata;->removeCommittersFromUnknownPkgs(Landroid/util/SparseArray;)V

    .line 935
    invoke-virtual {v5, v6}, Lcom/android/server/blob/BlobMetadata;->removeLeaseesFromUnknownPkgs(Landroid/util/SparseArray;)V

    .line 937
    :goto_1
    iget-wide v7, p0, Lcom/android/server/blob/BlobStoreManagerService;->mCurrentMaxSessionId:J

    invoke-virtual {v5}, Lcom/android/server/blob/BlobMetadata;->getBlobId()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/blob/BlobStoreManagerService;->mCurrentMaxSessionId:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 938
    .end local v5    # "blobMetadata":Lcom/android/server/blob/BlobMetadata;
    .end local v6    # "userPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    goto :goto_0

    .line 914
    .end local v3    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "version":I
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_8

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v4

    :try_start_5
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "blobsIndexFile":Landroid/util/AtomicFile;
    .end local p0    # "this":Lcom/android/server/blob/BlobStoreManagerService;
    .end local p1    # "allPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    :cond_8
    :goto_2
    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 943
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "blobsIndexFile":Landroid/util/AtomicFile;
    .restart local p0    # "this":Lcom/android/server/blob/BlobStoreManagerService;
    .restart local p1    # "allPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    :catch_0
    move-exception v2

    .line 944
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Error reading blobs data"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 946
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method private registerBlobStorePuller()V
    .locals 5

    .line 1865
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mStatsManager:Landroid/app/StatsManager;

    .line 1868
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService;->mStatsCallbackImpl:Lcom/android/server/blob/BlobStoreManagerService$StatsPullAtomCallbackImpl;

    .line 1865
    const/16 v3, 0x2761

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1871
    return-void
.end method

.method private registerReceivers()V
    .locals 14

    .line 245
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 246
    .local v0, "packageChangedFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 247
    const-string v1, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 248
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/blob/BlobStoreManagerService$PackageChangedReceiver;

    const/4 v7, 0x0

    invoke-direct {v2, p0, v7}, Lcom/android/server/blob/BlobStoreManagerService$PackageChangedReceiver;-><init>(Lcom/android/server/blob/BlobStoreManagerService;Lcom/android/server/blob/BlobStoreManagerService$1;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v6, p0, Lcom/android/server/blob/BlobStoreManagerService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 252
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 253
    .local v1, "userActionFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    iget-object v8, p0, Lcom/android/server/blob/BlobStoreManagerService;->mContext:Landroid/content/Context;

    new-instance v9, Lcom/android/server/blob/BlobStoreManagerService$UserActionReceiver;

    invoke-direct {v9, p0, v7}, Lcom/android/server/blob/BlobStoreManagerService$UserActionReceiver;-><init>(Lcom/android/server/blob/BlobStoreManagerService;Lcom/android/server/blob/BlobStoreManagerService$1;)V

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v13, p0, Lcom/android/server/blob/BlobStoreManagerService;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x0

    move-object v11, v1

    invoke-virtual/range {v8 .. v13}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 256
    return-void
.end method

.method private releaseLeaseInternal(Landroid/app/blob/BlobHandle;ILjava/lang/String;)V
    .locals 7
    .param p1, "blobHandle"    # Landroid/app/blob/BlobHandle;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 531
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 532
    nop

    .line 533
    :try_start_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/blob/BlobStoreManagerService;->getUserBlobsLocked(I)Landroid/util/ArrayMap;

    move-result-object v1

    .line 534
    .local v1, "userBlobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/blob/BlobHandle;Lcom/android/server/blob/BlobMetadata;>;"
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/blob/BlobMetadata;

    .line 535
    .local v2, "blobMetadata":Lcom/android/server/blob/BlobMetadata;
    if-eqz v2, :cond_2

    invoke-virtual {v2, p3, p2}, Lcom/android/server/blob/BlobMetadata;->isAccessAllowedForCaller(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 540
    invoke-virtual {v2, p3, p2}, Lcom/android/server/blob/BlobMetadata;->removeLeasee(Ljava/lang/String;I)V

    .line 541
    sget-boolean v3, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    if-eqz v3, :cond_0

    .line 542
    const-string v3, "BlobStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Released lease on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "; callingUid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", callingPackage="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/blob/BlobMetadata;->hasValidLeases()Z

    move-result v3

    if-nez v3, :cond_1

    .line 546
    iget-object v3, p0, Lcom/android/server/blob/BlobStoreManagerService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$B6INu6yYNZbmMBINR4KMMCBToN4;

    invoke-direct {v4, p0, v1, p1, v2}, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$B6INu6yYNZbmMBINR4KMMCBToN4;-><init>(Lcom/android/server/blob/BlobStoreManagerService;Landroid/util/ArrayMap;Landroid/app/blob/BlobHandle;Lcom/android/server/blob/BlobMetadata;)V

    .line 559
    invoke-static {}, Lcom/android/server/blob/BlobStoreConfig;->getDeletionOnLastLeaseDelayMs()J

    move-result-wide v5

    .line 546
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 561
    :cond_1
    invoke-direct {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobsInfoAsync()V

    .line 562
    .end local v1    # "userBlobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/blob/BlobHandle;Lcom/android/server/blob/BlobMetadata;>;"
    .end local v2    # "blobMetadata":Lcom/android/server/blob/BlobMetadata;
    monitor-exit v0

    .line 563
    return-void

    .line 537
    .restart local v1    # "userBlobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/blob/BlobHandle;Lcom/android/server/blob/BlobMetadata;>;"
    .restart local v2    # "blobMetadata":Lcom/android/server/blob/BlobMetadata;
    :cond_2
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caller not allowed to access "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "; callingUid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", callingPackage="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/blob/BlobStoreManagerService;
    .end local p1    # "blobHandle":Landroid/app/blob/BlobHandle;
    .end local p2    # "callingUid":I
    .end local p3    # "callingPackage":Ljava/lang/String;
    throw v3

    .line 562
    .end local v1    # "userBlobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/blob/BlobHandle;Lcom/android/server/blob/BlobMetadata;>;"
    .end local v2    # "blobMetadata":Lcom/android/server/blob/BlobMetadata;
    .restart local p0    # "this":Lcom/android/server/blob/BlobStoreManagerService;
    .restart local p1    # "blobHandle":Landroid/app/blob/BlobHandle;
    .restart local p2    # "callingUid":I
    .restart local p3    # "callingPackage":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private verifyCallingPackage(ILjava/lang/String;)V
    .locals 3
    .param p1, "callingUid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 651
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 652
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 651
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 656
    return-void

    .line 653
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Specified calling package ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] does not match the calling uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeBlobSessions()V
    .locals 2

    .line 965
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 967
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobSessionsLocked()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 970
    goto :goto_0

    .line 971
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 968
    :catch_0
    move-exception v1

    .line 971
    :goto_0
    :try_start_1
    monitor-exit v0

    .line 972
    return-void

    .line 971
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private writeBlobSessionsAsync()V
    .locals 2

    .line 975
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSaveSessionsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 976
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSaveSessionsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 978
    :cond_0
    return-void
.end method

.method private writeBlobSessionsLocked()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 770
    const-string/jumbo v0, "s"

    const-string/jumbo v1, "ss"

    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService;->prepareSessionsIndexFile()Landroid/util/AtomicFile;

    move-result-object v2

    .line 771
    .local v2, "sessionsIndexFile":Landroid/util/AtomicFile;
    const-string v3, "BlobStore"

    if-nez v2, :cond_0

    .line 772
    const-string v0, "Error creating sessions index file"

    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    return-void

    .line 775
    :cond_0
    const/4 v4, 0x0

    .line 777
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Landroid/util/AtomicFile;->startWrite(J)Ljava/io/FileOutputStream;

    move-result-object v5

    move-object v4, v5

    .line 778
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 779
    .local v5, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 780
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 781
    invoke-interface {v5, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 782
    const-string/jumbo v6, "v"

    const/4 v8, 0x5

    invoke-static {v5, v6, v8}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 784
    const/4 v6, 0x0

    .local v6, "i":I
    iget-object v8, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    .local v8, "userCount":I
    :goto_0
    if-ge v6, v8, :cond_2

    .line 785
    iget-object v9, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    .line 786
    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/LongSparseArray;

    .line 787
    .local v9, "userSessions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/server/blob/BlobStoreSession;>;"
    const/4 v10, 0x0

    .local v10, "j":I
    invoke-virtual {v9}, Landroid/util/LongSparseArray;->size()I

    move-result v11

    .local v11, "sessionsCount":I
    :goto_1
    if-ge v10, v11, :cond_1

    .line 788
    invoke-interface {v5, v7, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 789
    invoke-virtual {v9, v10}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/blob/BlobStoreSession;

    invoke-virtual {v12, v5}, Lcom/android/server/blob/BlobStoreSession;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 790
    invoke-interface {v5, v7, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 787
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 784
    .end local v9    # "userSessions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/server/blob/BlobStoreSession;>;"
    .end local v10    # "j":I
    .end local v11    # "sessionsCount":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 794
    .end local v6    # "i":I
    .end local v8    # "userCount":I
    :cond_2
    invoke-interface {v5, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 795
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 796
    invoke-virtual {v2, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 797
    sget-boolean v0, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    if-eqz v0, :cond_3

    .line 798
    const-string v0, "Finished persisting sessions data"

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 804
    .end local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_3
    nop

    .line 805
    return-void

    .line 800
    :catch_0
    move-exception v0

    .line 801
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v2, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 802
    const-string v1, "Error writing sessions data"

    invoke-static {v3, v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 803
    throw v0
.end method

.method private writeBlobsInfo()V
    .locals 2

    .line 949
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 951
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobsInfoLocked()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 954
    goto :goto_0

    .line 955
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 952
    :catch_0
    move-exception v1

    .line 955
    :goto_0
    :try_start_1
    monitor-exit v0

    .line 956
    return-void

    .line 955
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private writeBlobsInfoAsync()V
    .locals 2

    .line 959
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSaveBlobsInfoRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 960
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSaveBlobsInfoRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 962
    :cond_0
    return-void
.end method

.method private writeBlobsInfoLocked()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 863
    const-string v0, "b"

    const-string v1, "bs"

    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService;->prepareBlobsIndexFile()Landroid/util/AtomicFile;

    move-result-object v2

    .line 864
    .local v2, "blobsIndexFile":Landroid/util/AtomicFile;
    const-string v3, "BlobStore"

    if-nez v2, :cond_0

    .line 865
    const-string v0, "Error creating blobs index file"

    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    return-void

    .line 868
    :cond_0
    const/4 v4, 0x0

    .line 870
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Landroid/util/AtomicFile;->startWrite(J)Ljava/io/FileOutputStream;

    move-result-object v5

    move-object v4, v5

    .line 871
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 872
    .local v5, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 873
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 874
    invoke-interface {v5, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 875
    const-string/jumbo v6, "v"

    const/4 v8, 0x5

    invoke-static {v5, v6, v8}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 877
    const/4 v6, 0x0

    .local v6, "i":I
    iget-object v8, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    .local v8, "userCount":I
    :goto_0
    if-ge v6, v8, :cond_2

    .line 878
    iget-object v9, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/SparseArray;

    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/ArrayMap;

    .line 879
    .local v9, "userBlobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/blob/BlobHandle;Lcom/android/server/blob/BlobMetadata;>;"
    const/4 v10, 0x0

    .local v10, "j":I
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v11

    .local v11, "blobsCount":I
    :goto_1
    if-ge v10, v11, :cond_1

    .line 880
    invoke-interface {v5, v7, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 881
    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/blob/BlobMetadata;

    invoke-virtual {v12, v5}, Lcom/android/server/blob/BlobMetadata;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 882
    invoke-interface {v5, v7, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 879
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 877
    .end local v9    # "userBlobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/blob/BlobHandle;Lcom/android/server/blob/BlobMetadata;>;"
    .end local v10    # "j":I
    .end local v11    # "blobsCount":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 886
    .end local v6    # "i":I
    .end local v8    # "userCount":I
    :cond_2
    invoke-interface {v5, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 887
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 888
    invoke-virtual {v2, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 889
    sget-boolean v0, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    if-eqz v0, :cond_3

    .line 890
    const-string v0, "Finished persisting blobs data"

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 896
    .end local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_3
    nop

    .line 897
    return-void

    .line 892
    :catch_0
    move-exception v0

    .line 893
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v2, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 894
    const-string v1, "Error writing blobs data"

    invoke-static {v3, v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 895
    throw v0
.end method


# virtual methods
.method varargs addActiveIdsForTest([J)V
    .locals 5
    .param p1, "activeIds"    # [J

    .line 294
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 295
    :try_start_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, p1, v2

    .line 296
    .local v3, "id":J
    invoke-direct {p0, v3, v4}, Lcom/android/server/blob/BlobStoreManagerService;->addActiveBlobIdLocked(J)V

    .line 295
    .end local v3    # "id":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 298
    :cond_0
    monitor-exit v0

    .line 299
    return-void

    .line 298
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method addUserBlobsForTest(Landroid/util/ArrayMap;I)V
    .locals 2
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Landroid/app/blob/BlobHandle;",
            "Lcom/android/server/blob/BlobMetadata;",
            ">;I)V"
        }
    .end annotation

    .line 287
    .local p1, "userBlobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/blob/BlobHandle;Lcom/android/server/blob/BlobMetadata;>;"
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 288
    :try_start_0
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 289
    monitor-exit v0

    .line 290
    return-void

    .line 289
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method addUserSessionsForTest(Landroid/util/LongSparseArray;I)V
    .locals 2
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Lcom/android/server/blob/BlobStoreSession;",
            ">;I)V"
        }
    .end annotation

    .line 280
    .local p1, "userSessions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/server/blob/BlobStoreSession;>;"
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 281
    :try_start_0
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 282
    monitor-exit v0

    .line 283
    return-void

    .line 282
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method deleteBlob(Landroid/app/blob/BlobHandle;I)V
    .locals 3
    .param p1, "blobHandle"    # Landroid/app/blob/BlobHandle;
    .param p2, "userId"    # I

    .line 1218
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1219
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/blob/BlobStoreManagerService;->getUserBlobsLocked(I)Landroid/util/ArrayMap;

    move-result-object v1

    .line 1220
    .local v1, "userBlobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/blob/BlobHandle;Lcom/android/server/blob/BlobMetadata;>;"
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/blob/BlobMetadata;

    .line 1221
    .local v2, "blobMetadata":Lcom/android/server/blob/BlobMetadata;
    if-nez v2, :cond_0

    .line 1222
    monitor-exit v0

    return-void

    .line 1224
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/server/blob/BlobStoreManagerService;->deleteBlobLocked(Lcom/android/server/blob/BlobMetadata;)V

    .line 1225
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1226
    invoke-direct {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobsInfoAsync()V

    .line 1227
    .end local v1    # "userBlobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/blob/BlobHandle;Lcom/android/server/blob/BlobMetadata;>;"
    .end local v2    # "blobMetadata":Lcom/android/server/blob/BlobMetadata;
    monitor-exit v0

    .line 1228
    return-void

    .line 1227
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getActiveIdsForTest()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 304
    :try_start_0
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mActiveBlobIds:Landroid/util/ArraySet;

    monitor-exit v0

    return-object v1

    .line 305
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getKnownIdsForTest()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 311
    :try_start_0
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mKnownBlobIds:Landroid/util/ArraySet;

    monitor-exit v0

    return-object v1

    .line 312
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getTotalUsageBytesLocked(ILjava/lang/String;)J
    .locals 3
    .param p1, "callingUid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 520
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 521
    .local v0, "totalBytes":Ljava/util/concurrent/atomic/AtomicLong;
    new-instance v1, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$4X5X-d6CkyxPjpme-NpFgH7rQX0;

    invoke-direct {v1, p2, p1, v0}, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$4X5X-d6CkyxPjpme-NpFgH7rQX0;-><init>(Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicLong;)V

    .line 525
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 521
    invoke-direct {p0, v1, v2}, Lcom/android/server/blob/BlobStoreManagerService;->forEachBlobInUser(Ljava/util/function/Consumer;I)V

    .line 526
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    return-wide v1
.end method

.method handleIdleMaintenanceLocked()V
    .locals 12

    .line 1095
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1096
    .local v0, "deletedBlobIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1097
    .local v1, "filesToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-static {}, Lcom/android/server/blob/BlobStoreConfig;->getBlobsDir()Ljava/io/File;

    move-result-object v2

    .line 1098
    .local v2, "blobsDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const-string v4, "BlobStore"

    if-eqz v3, :cond_2

    .line 1099
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v5, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v3, v6

    .line 1101
    .local v7, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 1102
    .local v8, "id":J
    iget-object v10, p0, Lcom/android/server/blob/BlobStoreManagerService;->mActiveBlobIds:Landroid/util/ArraySet;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v10

    if-gez v10, :cond_0

    .line 1103
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1104
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1109
    .end local v8    # "id":J
    :cond_0
    goto :goto_1

    .line 1106
    :catch_0
    move-exception v8

    .line 1107
    .local v8, "e":Ljava/lang/NumberFormatException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error parsing the file name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1108
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1099
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1111
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, "count":I
    :goto_2
    if-ge v3, v5, :cond_2

    .line 1112
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 1111
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1117
    .end local v3    # "i":I
    .end local v5    # "count":I
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "i":I
    iget-object v5, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    .local v5, "userCount":I
    :goto_3
    if-ge v3, v5, :cond_3

    .line 1118
    iget-object v6, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    .line 1119
    .local v6, "userBlobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/blob/BlobHandle;Lcom/android/server/blob/BlobMetadata;>;"
    invoke-virtual {v6}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    new-instance v8, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$18b1f2qn0MZ0gTodRtOLK4DIxak;

    invoke-direct {v8, p0, v0}, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$18b1f2qn0MZ0gTodRtOLK4DIxak;-><init>(Lcom/android/server/blob/BlobStoreManagerService;Ljava/util/ArrayList;)V

    invoke-interface {v7, v8}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1117
    .end local v6    # "userBlobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/blob/BlobHandle;Lcom/android/server/blob/BlobMetadata;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1133
    .end local v3    # "i":I
    .end local v5    # "userCount":I
    :cond_3
    invoke-direct {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobsInfoAsync()V

    .line 1136
    const/4 v3, 0x0

    .restart local v3    # "i":I
    iget-object v5, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    .restart local v5    # "userCount":I
    :goto_4
    if-ge v3, v5, :cond_4

    .line 1137
    iget-object v6, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/LongSparseArray;

    .line 1138
    .local v6, "userSessions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/server/blob/BlobStoreSession;>;"
    new-instance v7, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$fjs0udzhS9kvgrvbBIWUr85tCdc;

    invoke-direct {v7, p0, v0}, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$fjs0udzhS9kvgrvbBIWUr85tCdc;-><init>(Lcom/android/server/blob/BlobStoreManagerService;Ljava/util/ArrayList;)V

    invoke-virtual {v6, v7}, Landroid/util/LongSparseArray;->removeIf(Lcom/android/internal/util/function/LongObjPredicate;)V

    .line 1136
    .end local v6    # "userSessions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/server/blob/BlobStoreSession;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1158
    .end local v3    # "i":I
    .end local v5    # "userCount":I
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Completed idle maintenance; deleted "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1159
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1158
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    invoke-direct {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobSessionsAsync()V

    .line 1161
    return-void
.end method

.method handlePackageRemoved(Ljava/lang/String;I)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1025
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1027
    nop

    .line 1028
    :try_start_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/blob/BlobStoreManagerService;->getUserSessionsLocked(I)Landroid/util/LongSparseArray;

    move-result-object v1

    .line 1029
    .local v1, "userSessions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/server/blob/BlobStoreSession;>;"
    new-instance v2, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$2ZHpH5ZDRRSHuy_N3z9hPQwEx90;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$2ZHpH5ZDRRSHuy_N3z9hPQwEx90;-><init>(Lcom/android/server/blob/BlobStoreManagerService;ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/util/LongSparseArray;->removeIf(Lcom/android/internal/util/function/LongObjPredicate;)V

    .line 1037
    invoke-direct {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobSessionsAsync()V

    .line 1040
    nop

    .line 1041
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/blob/BlobStoreManagerService;->getUserBlobsLocked(I)Landroid/util/ArrayMap;

    move-result-object v2

    .line 1042
    .local v2, "userBlobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/blob/BlobHandle;Lcom/android/server/blob/BlobMetadata;>;"
    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    new-instance v4, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$TWF0Bwo734bxw9tNMpkLhvdMMSU;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$TWF0Bwo734bxw9tNMpkLhvdMMSU;-><init>(Lcom/android/server/blob/BlobStoreManagerService;Ljava/lang/String;I)V

    invoke-interface {v3, v4}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1057
    invoke-direct {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobsInfoAsync()V

    .line 1059
    sget-boolean v3, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    if-eqz v3, :cond_0

    .line 1060
    const-string v3, "BlobStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removed blobs data associated with pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    .end local v1    # "userSessions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/server/blob/BlobStoreSession;>;"
    .end local v2    # "userBlobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/blob/BlobHandle;Lcom/android/server/blob/BlobMetadata;>;"
    :cond_0
    monitor-exit v0

    .line 1064
    return-void

    .line 1063
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isBlobAvailable(JI)Z
    .locals 6
    .param p1, "blobId"    # J
    .param p3, "userId"    # I

    .line 1237
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1238
    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/server/blob/BlobStoreManagerService;->getUserBlobsLocked(I)Landroid/util/ArrayMap;

    move-result-object v1

    .line 1239
    .local v1, "userBlobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/blob/BlobHandle;Lcom/android/server/blob/BlobMetadata;>;"
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/blob/BlobMetadata;

    .line 1240
    .local v3, "blobMetadata":Lcom/android/server/blob/BlobMetadata;
    invoke-virtual {v3}, Lcom/android/server/blob/BlobMetadata;->getBlobId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    .line 1241
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 1243
    .end local v3    # "blobMetadata":Lcom/android/server/blob/BlobMetadata;
    :cond_0
    goto :goto_0

    .line 1244
    :cond_1
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1245
    .end local v1    # "userBlobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/blob/BlobHandle;Lcom/android/server/blob/BlobMetadata;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$deleteBlobInternal$8$BlobStoreManagerService(JLjava/util/Map$Entry;)Z
    .locals 3
    .param p1, "blobId"    # J
    .param p3, "entry"    # Ljava/util/Map$Entry;

    .line 614
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/blob/BlobMetadata;

    .line 615
    .local v0, "blobMetadata":Lcom/android/server/blob/BlobMetadata;
    invoke-virtual {v0}, Lcom/android/server/blob/BlobMetadata;->getBlobId()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 616
    invoke-direct {p0, v0}, Lcom/android/server/blob/BlobStoreManagerService;->deleteBlobLocked(Lcom/android/server/blob/BlobMetadata;)V

    .line 617
    const/4 v1, 0x1

    return v1

    .line 619
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public synthetic lambda$handleIdleMaintenanceLocked$13$BlobStoreManagerService(Ljava/util/ArrayList;Ljava/util/Map$Entry;)Z
    .locals 4
    .param p1, "deletedBlobIds"    # Ljava/util/ArrayList;
    .param p2, "entry"    # Ljava/util/Map$Entry;

    .line 1120
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/blob/BlobMetadata;

    .line 1123
    .local v0, "blobMetadata":Lcom/android/server/blob/BlobMetadata;
    invoke-virtual {v0}, Lcom/android/server/blob/BlobMetadata;->removeExpiredLeases()V

    .line 1125
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/blob/BlobMetadata;->shouldBeDeleted(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1126
    invoke-direct {p0, v0}, Lcom/android/server/blob/BlobStoreManagerService;->deleteBlobLocked(Lcom/android/server/blob/BlobMetadata;)V

    .line 1127
    invoke-virtual {v0}, Lcom/android/server/blob/BlobMetadata;->getBlobId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1128
    return v1

    .line 1130
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public synthetic lambda$handleIdleMaintenanceLocked$14$BlobStoreManagerService(Ljava/util/ArrayList;JLcom/android/server/blob/BlobStoreSession;)Z
    .locals 3
    .param p1, "deletedBlobIds"    # Ljava/util/ArrayList;
    .param p2, "sessionId"    # J
    .param p4, "blobStoreSession"    # Lcom/android/server/blob/BlobStoreSession;

    .line 1139
    const/4 v0, 0x0

    .line 1142
    .local v0, "shouldRemove":Z
    invoke-virtual {p4}, Lcom/android/server/blob/BlobStoreSession;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1143
    const/4 v0, 0x1

    .line 1147
    :cond_0
    invoke-virtual {p4}, Lcom/android/server/blob/BlobStoreSession;->getBlobHandle()Landroid/app/blob/BlobHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/blob/BlobHandle;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1148
    const/4 v0, 0x1

    .line 1151
    :cond_1
    if-eqz v0, :cond_2

    .line 1152
    invoke-direct {p0, p4}, Lcom/android/server/blob/BlobStoreManagerService;->deleteSessionLocked(Lcom/android/server/blob/BlobStoreSession;)V

    .line 1153
    invoke-virtual {p4}, Lcom/android/server/blob/BlobStoreSession;->getSessionId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1155
    :cond_2
    return v0
.end method

.method public synthetic lambda$handlePackageRemoved$11$BlobStoreManagerService(ILjava/lang/String;JLcom/android/server/blob/BlobStoreSession;)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "sessionId"    # J
    .param p5, "blobStoreSession"    # Lcom/android/server/blob/BlobStoreSession;

    .line 1030
    invoke-virtual {p5}, Lcom/android/server/blob/BlobStoreSession;->getOwnerUid()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 1031
    invoke-virtual {p5}, Lcom/android/server/blob/BlobStoreSession;->getOwnerPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1032
    invoke-direct {p0, p5}, Lcom/android/server/blob/BlobStoreManagerService;->deleteSessionLocked(Lcom/android/server/blob/BlobStoreSession;)V

    .line 1033
    const/4 v0, 0x1

    return v0

    .line 1035
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$handlePackageRemoved$12$BlobStoreManagerService(Ljava/lang/String;ILjava/util/Map$Entry;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "entry"    # Ljava/util/Map$Entry;

    .line 1043
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/blob/BlobMetadata;

    .line 1044
    .local v0, "blobMetadata":Lcom/android/server/blob/BlobMetadata;
    invoke-virtual {v0, p1, p2}, Lcom/android/server/blob/BlobMetadata;->isACommitter(Ljava/lang/String;I)Z

    move-result v1

    .line 1045
    .local v1, "isACommitter":Z
    if-eqz v1, :cond_0

    .line 1046
    invoke-virtual {v0, p1, p2}, Lcom/android/server/blob/BlobMetadata;->removeCommitter(Ljava/lang/String;I)V

    .line 1048
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/server/blob/BlobMetadata;->removeLeasee(Ljava/lang/String;I)V

    .line 1051
    invoke-virtual {v0, v1}, Lcom/android/server/blob/BlobMetadata;->shouldBeDeleted(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1052
    invoke-direct {p0, v0}, Lcom/android/server/blob/BlobStoreManagerService;->deleteBlobLocked(Lcom/android/server/blob/BlobMetadata;)V

    .line 1053
    const/4 v2, 0x1

    return v2

    .line 1055
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public synthetic lambda$onStateChangedInternal$10$BlobStoreManagerService(Lcom/android/server/blob/BlobStoreSession;)V
    .locals 2
    .param p1, "session"    # Lcom/android/server/blob/BlobStoreSession;

    .line 681
    invoke-virtual {p1}, Lcom/android/server/blob/BlobStoreSession;->computeDigest()V

    .line 682
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/blob/-$$Lambda$DjzaYeVYvBfdcKdI4aXi7MQOjzc;->INSTANCE:Lcom/android/server/blob/-$$Lambda$DjzaYeVYvBfdcKdI4aXi7MQOjzc;

    invoke-static {v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/Consumer;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 683
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 682
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 684
    return-void
.end method

.method public synthetic lambda$queryBlobsForUserInternal$5$BlobStoreManagerService(Landroid/util/ArrayMap;ILjava/lang/String;)Landroid/content/res/Resources;
    .locals 3
    .param p1, "resources"    # Landroid/util/ArrayMap;
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 578
    invoke-virtual {p1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 579
    .local v0, "resourcesRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Resources;

    .line 580
    .local v1, "packageResources":Landroid/content/res/Resources;
    :goto_0
    if-nez v1, :cond_1

    .line 581
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2, p3, p2}, Lcom/android/server/blob/BlobStoreUtils;->getPackageResources(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v1

    .line 582
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, p3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    :cond_1
    return-object v1
.end method

.method public synthetic lambda$releaseLeaseInternal$4$BlobStoreManagerService(Landroid/util/ArrayMap;Landroid/app/blob/BlobHandle;Lcom/android/server/blob/BlobMetadata;)V
    .locals 2
    .param p1, "userBlobs"    # Landroid/util/ArrayMap;
    .param p2, "blobHandle"    # Landroid/app/blob/BlobHandle;
    .param p3, "blobMetadata"    # Lcom/android/server/blob/BlobMetadata;

    .line 547
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 550
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 551
    monitor-exit v0

    return-void

    .line 553
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Lcom/android/server/blob/BlobMetadata;->shouldBeDeleted(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 554
    invoke-direct {p0, p3}, Lcom/android/server/blob/BlobStoreManagerService;->deleteBlobLocked(Lcom/android/server/blob/BlobMetadata;)V

    .line 555
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    :cond_1
    invoke-direct {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobsInfoAsync()V

    .line 558
    monitor-exit v0

    .line 559
    return-void

    .line 558
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    .line 215
    const/16 v0, 0x226

    if-ne p1, v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/blob/BlobStoreConfig;->initialize(Landroid/content/Context;)V

    goto :goto_0

    .line 217
    :cond_0
    const/16 v0, 0x258

    if-ne p1, v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 219
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/blob/BlobStoreManagerService;->getAllPackages()Landroid/util/SparseArray;

    move-result-object v1

    .line 220
    .local v1, "allPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    invoke-direct {p0, v1}, Lcom/android/server/blob/BlobStoreManagerService;->readBlobSessionsLocked(Landroid/util/SparseArray;)V

    .line 221
    invoke-direct {p0, v1}, Lcom/android/server/blob/BlobStoreManagerService;->readBlobsInfoLocked(Landroid/util/SparseArray;)V

    .line 222
    .end local v1    # "allPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    invoke-direct {p0}, Lcom/android/server/blob/BlobStoreManagerService;->registerBlobStorePuller()V

    goto :goto_0

    .line 222
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 224
    :cond_1
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_2

    .line 225
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/blob/BlobStoreIdleJobService;->schedule(Landroid/content/Context;)V

    .line 227
    :cond_2
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 203
    new-instance v0, Lcom/android/server/blob/BlobStoreManagerService$Stub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/blob/BlobStoreManagerService$Stub;-><init>(Lcom/android/server/blob/BlobStoreManagerService;Lcom/android/server/blob/BlobStoreManagerService$1;)V

    const-string v2, "blob_store"

    invoke-virtual {p0, v2, v0}, Lcom/android/server/blob/BlobStoreManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 204
    const-class v0, Lcom/android/server/blob/BlobStoreManagerInternal;

    new-instance v2, Lcom/android/server/blob/BlobStoreManagerService$LocalService;

    invoke-direct {v2, p0, v1}, Lcom/android/server/blob/BlobStoreManagerService$LocalService;-><init>(Lcom/android/server/blob/BlobStoreManagerService;Lcom/android/server/blob/BlobStoreManagerService$1;)V

    invoke-static {v0, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 206
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 207
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/app/StatsManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatsManager;

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mStatsManager:Landroid/app/StatsManager;

    .line 208
    invoke-direct {p0}, Lcom/android/server/blob/BlobStoreManagerService;->registerReceivers()V

    .line 209
    const-class v0, Lcom/android/server/usage/StorageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/StorageStatsManagerInternal;

    new-instance v2, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;

    invoke-direct {v2, p0, v1}, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;-><init>(Lcom/android/server/blob/BlobStoreManagerService;Lcom/android/server/blob/BlobStoreManagerService$1;)V

    .line 210
    const-string v1, "BlobStore"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/usage/StorageStatsManagerInternal;->registerStorageStatsAugmenter(Lcom/android/server/usage/StorageStatsManagerInternal$StorageStatsAugmenter;Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method prepareBlobsIndexFile()Landroid/util/AtomicFile;
    .locals 3

    .line 1016
    invoke-static {}, Lcom/android/server/blob/BlobStoreConfig;->prepareBlobsIndexFile()Ljava/io/File;

    move-result-object v0

    .line 1017
    .local v0, "file":Ljava/io/File;
    if-nez v0, :cond_0

    .line 1018
    const/4 v1, 0x0

    return-object v1

    .line 1020
    :cond_0
    new-instance v1, Landroid/util/AtomicFile;

    const-string v2, "blobs_index"

    invoke-direct {v1, v0, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method prepareSessionsIndexFile()Landroid/util/AtomicFile;
    .locals 3

    .line 1008
    invoke-static {}, Lcom/android/server/blob/BlobStoreConfig;->prepareSessionIndexFile()Ljava/io/File;

    move-result-object v0

    .line 1009
    .local v0, "file":Ljava/io/File;
    if-nez v0, :cond_0

    .line 1010
    const/4 v1, 0x0

    return-object v1

    .line 1012
    :cond_0
    new-instance v1, Landroid/util/AtomicFile;

    const-string/jumbo v2, "session_index"

    invoke-direct {v1, v0, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method runClearAllBlobs(I)V
    .locals 10
    .param p1, "userId"    # I

    .line 1197
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1198
    const/4 v1, 0x0

    .local v1, "i":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .local v2, "userCount":I
    :goto_0
    const/4 v3, -0x1

    if-ge v1, v2, :cond_2

    .line 1199
    iget-object v4, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 1200
    .local v4, "blobUserId":I
    if-eq p1, v3, :cond_0

    if-eq p1, v4, :cond_0

    .line 1201
    goto :goto_2

    .line 1203
    :cond_0
    iget-object v3, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 1204
    .local v3, "userBlobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/blob/BlobHandle;Lcom/android/server/blob/BlobMetadata;>;"
    const/4 v5, 0x0

    .local v5, "j":I
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .local v6, "blobsCount":I
    :goto_1
    if-ge v5, v6, :cond_1

    .line 1205
    iget-object v7, p0, Lcom/android/server/blob/BlobStoreManagerService;->mActiveBlobIds:Landroid/util/ArraySet;

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/blob/BlobMetadata;

    invoke-virtual {v8}, Lcom/android/server/blob/BlobMetadata;->getBlobId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1204
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1198
    .end local v3    # "userBlobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/blob/BlobHandle;Lcom/android/server/blob/BlobMetadata;>;"
    .end local v4    # "blobUserId":I
    .end local v5    # "j":I
    .end local v6    # "blobsCount":I
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1208
    .end local v1    # "i":I
    .end local v2    # "userCount":I
    :cond_2
    if-ne p1, v3, :cond_3

    .line 1209
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    goto :goto_3

    .line 1211
    :cond_3
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1213
    :goto_3
    invoke-direct {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobsInfoAsync()V

    .line 1214
    monitor-exit v0

    .line 1215
    return-void

    .line 1214
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method runClearAllSessions(I)V
    .locals 10
    .param p1, "userId"    # I

    .line 1176
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1177
    const/4 v1, 0x0

    .local v1, "i":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .local v2, "userCount":I
    :goto_0
    const/4 v3, -0x1

    if-ge v1, v2, :cond_2

    .line 1178
    iget-object v4, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 1179
    .local v4, "sessionUserId":I
    if-eq p1, v3, :cond_0

    if-eq p1, v4, :cond_0

    .line 1180
    goto :goto_2

    .line 1182
    :cond_0
    iget-object v3, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/LongSparseArray;

    .line 1183
    .local v3, "userSessions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/server/blob/BlobStoreSession;>;"
    const/4 v5, 0x0

    .local v5, "j":I
    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v6

    .local v6, "sessionsCount":I
    :goto_1
    if-ge v5, v6, :cond_1

    .line 1184
    iget-object v7, p0, Lcom/android/server/blob/BlobStoreManagerService;->mActiveBlobIds:Landroid/util/ArraySet;

    invoke-virtual {v3, v5}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/blob/BlobStoreSession;

    invoke-virtual {v8}, Lcom/android/server/blob/BlobStoreSession;->getSessionId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1183
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1177
    .end local v3    # "userSessions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/server/blob/BlobStoreSession;>;"
    .end local v4    # "sessionUserId":I
    .end local v5    # "j":I
    .end local v6    # "sessionsCount":I
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1187
    .end local v1    # "i":I
    .end local v2    # "userCount":I
    :cond_2
    if-ne p1, v3, :cond_3

    .line 1188
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    goto :goto_3

    .line 1190
    :cond_3
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1192
    :goto_3
    invoke-direct {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobSessionsAsync()V

    .line 1193
    monitor-exit v0

    .line 1194
    return-void

    .line 1193
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method runIdleMaintenance()V
    .locals 2

    .line 1231
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1232
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService;->handleIdleMaintenanceLocked()V

    .line 1233
    monitor-exit v0

    .line 1234
    return-void

    .line 1233
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
