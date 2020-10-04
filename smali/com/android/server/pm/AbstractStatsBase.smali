.class public abstract Lcom/android/server/pm/AbstractStatsBase;
.super Ljava/lang/Object;
.source "AbstractStatsBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final WRITE_INTERVAL_MS:I


# instance fields
.field private final mBackgroundThreadName:Ljava/lang/String;

.field private final mBackgroundWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mFileLock:Ljava/lang/Object;

.field private final mFileName:Ljava/lang/String;

.field private final mLastTimeWritten:Ljava/util/concurrent/atomic/AtomicLong;

.field private final mLock:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_DEXOPT:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const v0, 0x1b7740

    :goto_0
    sput v0, Lcom/android/server/pm/AbstractStatsBase;->WRITE_INTERVAL_MS:I

    .line 41
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "threadName"    # Ljava/lang/String;
    .param p3, "lock"    # Z

    .line 50
    .local p0, "this":Lcom/android/server/pm/AbstractStatsBase;, "Lcom/android/server/pm/AbstractStatsBase<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AbstractStatsBase;->mFileLock:Ljava/lang/Object;

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/pm/AbstractStatsBase;->mLastTimeWritten:Ljava/util/concurrent/atomic/AtomicLong;

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/pm/AbstractStatsBase;->mBackgroundWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    iput-object p1, p0, Lcom/android/server/pm/AbstractStatsBase;->mFileName:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/android/server/pm/AbstractStatsBase;->mBackgroundThreadName:Ljava/lang/String;

    .line 53
    iput-boolean p3, p0, Lcom/android/server/pm/AbstractStatsBase;->mLock:Z

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/AbstractStatsBase;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/AbstractStatsBase;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 39
    invoke-direct {p0, p1}, Lcom/android/server/pm/AbstractStatsBase;->writeImpl(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/pm/AbstractStatsBase;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/AbstractStatsBase;

    .line 39
    iget-object v0, p0, Lcom/android/server/pm/AbstractStatsBase;->mLastTimeWritten:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/pm/AbstractStatsBase;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/AbstractStatsBase;

    .line 39
    iget-object v0, p0, Lcom/android/server/pm/AbstractStatsBase;->mBackgroundWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private writeImpl(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 93
    .local p0, "this":Lcom/android/server/pm/AbstractStatsBase;, "Lcom/android/server/pm/AbstractStatsBase<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lcom/android/server/pm/AbstractStatsBase;->mLock:Z

    if-eqz v0, :cond_0

    .line 94
    monitor-enter p1

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/AbstractStatsBase;->mFileLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 96
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/AbstractStatsBase;->writeInternal(Ljava/lang/Object;)V

    .line 97
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 97
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/server/pm/AbstractStatsBase;, "Lcom/android/server/pm/AbstractStatsBase<TT;>;"
    .end local p1    # "data":Ljava/lang/Object;, "TT;"
    :try_start_4
    throw v1

    .line 98
    .restart local p0    # "this":Lcom/android/server/pm/AbstractStatsBase;, "Lcom/android/server/pm/AbstractStatsBase<TT;>;"
    .restart local p1    # "data":Ljava/lang/Object;, "TT;"
    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/AbstractStatsBase;->mFileLock:Ljava/lang/Object;

    monitor-enter v0

    .line 101
    :try_start_5
    invoke-virtual {p0, p1}, Lcom/android/server/pm/AbstractStatsBase;->writeInternal(Ljava/lang/Object;)V

    .line 102
    monitor-exit v0

    .line 104
    :goto_0
    return-void

    .line 102
    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1
.end method


# virtual methods
.method protected getFile()Landroid/util/AtomicFile;
    .locals 4

    .line 57
    .local p0, "this":Lcom/android/server/pm/AbstractStatsBase;, "Lcom/android/server/pm/AbstractStatsBase<TT;>;"
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 58
    .local v0, "dataDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 59
    .local v1, "systemDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/pm/AbstractStatsBase;->mFileName:Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 60
    .local v2, "fname":Ljava/io/File;
    new-instance v3, Landroid/util/AtomicFile;

    invoke-direct {v3, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object v3
.end method

.method protected maybeWriteAsync(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 69
    .local p0, "this":Lcom/android/server/pm/AbstractStatsBase;, "Lcom/android/server/pm/AbstractStatsBase<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/pm/AbstractStatsBase;->mLastTimeWritten:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget v2, Lcom/android/server/pm/AbstractStatsBase;->WRITE_INTERVAL_MS:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gez v0, :cond_0

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_DEXOPT:Z

    if-nez v0, :cond_0

    .line 71
    return v1

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/AbstractStatsBase;->mBackgroundWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    new-instance v0, Lcom/android/server/pm/AbstractStatsBase$1;

    iget-object v1, p0, Lcom/android/server/pm/AbstractStatsBase;->mBackgroundThreadName:Ljava/lang/String;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/pm/AbstractStatsBase$1;-><init>(Lcom/android/server/pm/AbstractStatsBase;Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    invoke-virtual {v0}, Lcom/android/server/pm/AbstractStatsBase$1;->start()V

    .line 86
    return v2

    .line 89
    :cond_1
    return v1
.end method

.method protected read(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 109
    .local p0, "this":Lcom/android/server/pm/AbstractStatsBase;, "Lcom/android/server/pm/AbstractStatsBase<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lcom/android/server/pm/AbstractStatsBase;->mLock:Z

    if-eqz v0, :cond_0

    .line 110
    monitor-enter p1

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/AbstractStatsBase;->mFileLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 112
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/AbstractStatsBase;->readInternal(Ljava/lang/Object;)V

    .line 113
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/server/pm/AbstractStatsBase;, "Lcom/android/server/pm/AbstractStatsBase<TT;>;"
    .end local p1    # "data":Ljava/lang/Object;, "TT;"
    :try_start_4
    throw v1

    .line 114
    .restart local p0    # "this":Lcom/android/server/pm/AbstractStatsBase;, "Lcom/android/server/pm/AbstractStatsBase<TT;>;"
    .restart local p1    # "data":Ljava/lang/Object;, "TT;"
    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/AbstractStatsBase;->mFileLock:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_5
    invoke-virtual {p0, p1}, Lcom/android/server/pm/AbstractStatsBase;->readInternal(Ljava/lang/Object;)V

    .line 118
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 122
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/AbstractStatsBase;->mLastTimeWritten:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 123
    return-void

    .line 118
    :catchall_2
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1
.end method

.method protected abstract readInternal(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected abstract writeInternal(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected writeNow(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 64
    .local p0, "this":Lcom/android/server/pm/AbstractStatsBase;, "Lcom/android/server/pm/AbstractStatsBase<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Lcom/android/server/pm/AbstractStatsBase;->writeImpl(Ljava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lcom/android/server/pm/AbstractStatsBase;->mLastTimeWritten:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 66
    return-void
.end method
