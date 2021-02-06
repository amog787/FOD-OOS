.class public Lcom/android/server/content/SyncJobService;
.super Landroid/app/job/JobService;
.source "SyncJobService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SyncManager"

.field private static sInstance:Lcom/android/server/content/SyncJobService;

.field private static final sJobParamsMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/job/JobParameters;",
            ">;"
        }
    .end annotation
.end field

.field private static final sJobStartUptimes:Landroid/util/SparseLongArray;

.field private static final sLock:Ljava/lang/Object;

.field private static final sLogger:Lcom/android/server/content/SyncLogger;

.field private static final sStartedSyncs:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/content/SyncJobService;->sLock:Ljava/lang/Object;

    .line 41
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/content/SyncJobService;->sJobParamsMap:Landroid/util/SparseArray;

    .line 44
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    sput-object v0, Lcom/android/server/content/SyncJobService;->sStartedSyncs:Landroid/util/SparseBooleanArray;

    .line 47
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    sput-object v0, Lcom/android/server/content/SyncJobService;->sJobStartUptimes:Landroid/util/SparseLongArray;

    .line 49
    invoke-static {}, Lcom/android/server/content/SyncLogger;->getInstance()Lcom/android/server/content/SyncLogger;

    move-result-object v0

    sput-object v0, Lcom/android/server/content/SyncJobService;->sLogger:Lcom/android/server/content/SyncLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static callJobFinished(IZLjava/lang/String;)V
    .locals 1
    .param p0, "jobId"    # I
    .param p1, "needsReschedule"    # Z
    .param p2, "why"    # Ljava/lang/String;

    .line 173
    invoke-static {}, Lcom/android/server/content/SyncJobService;->getInstance()Lcom/android/server/content/SyncJobService;

    move-result-object v0

    .line 174
    .local v0, "instance":Lcom/android/server/content/SyncJobService;
    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/content/SyncJobService;->callJobFinishedInner(IZLjava/lang/String;)V

    .line 177
    :cond_0
    return-void
.end method

.method private static getInstance()Lcom/android/server/content/SyncJobService;
    .locals 3

    .line 59
    sget-object v0, Lcom/android/server/content/SyncJobService;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 60
    :try_start_0
    sget-object v1, Lcom/android/server/content/SyncJobService;->sInstance:Lcom/android/server/content/SyncJobService;

    if-nez v1, :cond_0

    .line 61
    const-string v1, "SyncManager"

    const-string/jumbo v2, "sInstance == null"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    sget-object v1, Lcom/android/server/content/SyncJobService;->sInstance:Lcom/android/server/content/SyncJobService;

    monitor-exit v0

    return-object v1

    .line 64
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isReady()Z
    .locals 2

    .line 68
    sget-object v0, Lcom/android/server/content/SyncJobService;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 69
    :try_start_0
    sget-object v1, Lcom/android/server/content/SyncJobService;->sInstance:Lcom/android/server/content/SyncJobService;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 70
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static jobParametersToString(Landroid/app/job/JobParameters;)Ljava/lang/String;
    .locals 2
    .param p0, "params"    # Landroid/app/job/JobParameters;

    .line 203
    if-nez p0, :cond_0

    .line 204
    const-string/jumbo v0, "job:null"

    return-object v0

    .line 206
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "job:#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":sr=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getStopReason()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getDebugStopReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/content/SyncOperation;->maybeCreateFromJobExtras(Landroid/os/PersistableBundle;)Lcom/android/server/content/SyncOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    return-object v0
.end method

.method public static markSyncStarted(I)V
    .locals 3
    .param p0, "jobId"    # I

    .line 197
    sget-object v0, Lcom/android/server/content/SyncJobService;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_0
    sget-object v1, Lcom/android/server/content/SyncJobService;->sStartedSyncs:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 199
    monitor-exit v0

    .line 200
    return-void

    .line 199
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateInstance()V
    .locals 2

    .line 52
    const-class v0, Lcom/android/server/content/SyncJobService;

    monitor-enter v0

    .line 53
    :try_start_0
    sput-object p0, Lcom/android/server/content/SyncJobService;->sInstance:Lcom/android/server/content/SyncJobService;

    .line 54
    monitor-exit v0

    .line 55
    return-void

    .line 54
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static wtf(Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .line 213
    sget-object v0, Lcom/android/server/content/SyncJobService;->sLogger:Lcom/android/server/content/SyncLogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 214
    const-string v0, "SyncManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return-void
.end method


# virtual methods
.method public callJobFinishedInner(IZLjava/lang/String;)V
    .locals 6
    .param p1, "jobId"    # I
    .param p2, "needsReschedule"    # Z
    .param p3, "why"    # Ljava/lang/String;

    .line 180
    sget-object v0, Lcom/android/server/content/SyncJobService;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 181
    :try_start_0
    sget-object v1, Lcom/android/server/content/SyncJobService;->sJobParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobParameters;

    .line 182
    .local v1, "params":Landroid/app/job/JobParameters;
    sget-object v2, Lcom/android/server/content/SyncJobService;->sLogger:Lcom/android/server/content/SyncLogger;

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "callJobFinished()"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, " jobid="

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 183
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, " needsReschedule="

    aput-object v5, v3, v4

    const/4 v4, 0x4

    .line 184
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, " "

    aput-object v5, v3, v4

    const/4 v4, 0x6

    sget-object v5, Lcom/android/server/content/SyncJobService;->sLogger:Lcom/android/server/content/SyncLogger;

    .line 185
    invoke-virtual {v5, v1}, Lcom/android/server/content/SyncLogger;->jobParametersToString(Landroid/app/job/JobParameters;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, " why="

    aput-object v5, v3, v4

    const/16 v4, 0x8

    aput-object p3, v3, v4

    .line 182
    invoke-virtual {v2, v3}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 187
    if-eqz v1, :cond_0

    .line 188
    invoke-virtual {p0, v1, p2}, Lcom/android/server/content/SyncJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 189
    sget-object v2, Lcom/android/server/content/SyncJobService;->sJobParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    .line 191
    :cond_0
    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Job params not found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .end local v1    # "params":Landroid/app/job/JobParameters;
    :goto_0
    monitor-exit v0

    .line 194
    return-void

    .line 193
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 9
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 75
    invoke-direct {p0}, Lcom/android/server/content/SyncJobService;->updateInstance()V

    .line 77
    sget-object v0, Lcom/android/server/content/SyncJobService;->sLogger:Lcom/android/server/content/SyncLogger;

    invoke-virtual {v0}, Lcom/android/server/content/SyncLogger;->purgeOldLogs()V

    .line 79
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/content/SyncOperation;->maybeCreateFromJobExtras(Landroid/os/PersistableBundle;)Lcom/android/server/content/SyncOperation;

    move-result-object v0

    .line 81
    .local v0, "op":Lcom/android/server/content/SyncOperation;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got invalid job "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SyncManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return v1

    .line 86
    :cond_0
    iget-object v2, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-static {v2}, Lcom/android/server/content/SyncManager;->readyToSync(I)Z

    move-result v2

    .line 88
    .local v2, "readyToSync":Z
    sget-object v3, Lcom/android/server/content/SyncJobService;->sLogger:Lcom/android/server/content/SyncLogger;

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "onStartJob() jobid="

    aput-object v5, v4, v1

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const-string v1, " op="

    const/4 v6, 0x2

    aput-object v1, v4, v6

    const/4 v1, 0x3

    aput-object v0, v4, v1

    const/4 v1, 0x4

    const-string v7, " readyToSync"

    aput-object v7, v4, v1

    const/4 v1, 0x5

    .line 89
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v4, v1

    .line 88
    invoke-virtual {v3, v4}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 91
    if-nez v2, :cond_1

    .line 95
    iget-boolean v1, v0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    xor-int/2addr v1, v5

    .line 96
    .local v1, "wantsReschedule":Z
    invoke-virtual {p0, p1, v1}, Lcom/android/server/content/SyncJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 97
    return v5

    .line 100
    .end local v1    # "wantsReschedule":Z
    :cond_1
    const-string v1, "SyncManager"

    invoke-static {v1, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    .line 101
    .local v1, "isLoggable":Z
    sget-object v3, Lcom/android/server/content/SyncJobService;->sLock:Ljava/lang/Object;

    monitor-enter v3

    .line 102
    :try_start_0
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v4

    .line 103
    .local v4, "jobId":I
    sget-object v6, Lcom/android/server/content/SyncJobService;->sJobParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 105
    sget-object v6, Lcom/android/server/content/SyncJobService;->sStartedSyncs:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 106
    sget-object v6, Lcom/android/server/content/SyncJobService;->sJobStartUptimes:Landroid/util/SparseLongArray;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v4, v7, v8}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 107
    .end local v4    # "jobId":I
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 109
    .local v3, "m":Landroid/os/Message;
    const/16 v4, 0xa

    iput v4, v3, Landroid/os/Message;->what:I

    .line 110
    if-eqz v1, :cond_2

    .line 111
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got start job message "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "SyncManager"

    invoke-static {v6, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_2
    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 114
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->sendMessage(Landroid/os/Message;)V

    .line 115
    return v5

    .line 107
    .end local v3    # "m":Landroid/os/Message;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 17
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 120
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStopJob called "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", reason: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobParameters;->getStopReason()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    const-string v2, "SyncManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/content/SyncOperation;->maybeCreateFromJobExtras(Landroid/os/PersistableBundle;)Lcom/android/server/content/SyncOperation;

    move-result-object v2

    .line 125
    .local v2, "op":Lcom/android/server/content/SyncOperation;
    const/4 v0, 0x0

    if-nez v2, :cond_1

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got invalid job "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SyncManager"

    invoke-static {v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return v0

    .line 130
    :cond_1
    iget-object v3, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-static {v3}, Lcom/android/server/content/SyncManager;->readyToSync(I)Z

    move-result v3

    .line 132
    .local v3, "readyToSync":Z
    sget-object v4, Lcom/android/server/content/SyncJobService;->sLogger:Lcom/android/server/content/SyncLogger;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "onStopJob() "

    aput-object v6, v5, v0

    move-object/from16 v6, p1

    invoke-virtual {v4, v6}, Lcom/android/server/content/SyncLogger;->jobParametersToString(Landroid/app/job/JobParameters;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v5, v8

    const-string v7, " readyToSync="

    aput-object v7, v5, v1

    .line 133
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v7, 0x3

    aput-object v1, v5, v7

    .line 132
    invoke-virtual {v4, v5}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 135
    sget-object v1, Lcom/android/server/content/SyncJobService;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 136
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v4

    .line 137
    .local v4, "jobId":I
    sget-object v5, Lcom/android/server/content/SyncJobService;->sJobParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 139
    sget-object v5, Lcom/android/server/content/SyncJobService;->sJobStartUptimes:Landroid/util/SparseLongArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v9

    .line 140
    .local v9, "startUptime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 141
    .local v11, "nowUptime":J
    sub-long v13, v11, v9

    .line 144
    .local v13, "runtime":J
    const-wide/32 v15, 0xea60

    cmp-long v5, v13, v15

    if-lez v5, :cond_2

    .line 148
    if-eqz v3, :cond_2

    sget-object v5, Lcom/android/server/content/SyncJobService;->sStartedSyncs:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 149
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Job "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " didn\'t start:  startUptime="

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, " nowUptime="

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, " params="

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-static/range {p1 .. p1}, Lcom/android/server/content/SyncJobService;->jobParametersToString(Landroid/app/job/JobParameters;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 149
    invoke-static {v5}, Lcom/android/server/content/SyncJobService;->wtf(Ljava/lang/String;)V

    .line 156
    :cond_2
    sget-object v5, Lcom/android/server/content/SyncJobService;->sStartedSyncs:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 157
    sget-object v5, Lcom/android/server/content/SyncJobService;->sJobStartUptimes:Landroid/util/SparseLongArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseLongArray;->delete(I)V

    .line 158
    .end local v4    # "jobId":I
    .end local v9    # "startUptime":J
    .end local v11    # "nowUptime":J
    .end local v13    # "runtime":J
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 160
    .local v1, "m":Landroid/os/Message;
    const/16 v4, 0xb

    iput v4, v1, Landroid/os/Message;->what:I

    .line 161
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 164
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobParameters;->getStopReason()I

    move-result v4

    if-eqz v4, :cond_3

    move v4, v8

    goto :goto_0

    :cond_3
    move v4, v0

    :goto_0
    iput v4, v1, Landroid/os/Message;->arg1:I

    .line 166
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobParameters;->getStopReason()I

    move-result v4

    if-ne v4, v7, :cond_4

    goto :goto_1

    :cond_4
    move v8, v0

    :goto_1
    iput v8, v1, Landroid/os/Message;->arg2:I

    .line 168
    invoke-static {v1}, Lcom/android/server/content/SyncManager;->sendMessage(Landroid/os/Message;)V

    .line 169
    return v0

    .line 158
    .end local v1    # "m":Landroid/os/Message;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
