.class Lcom/android/server/wm/PersisterQueue;
.super Ljava/lang/Object;
.source "PersisterQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;,
        Lcom/android/server/wm/PersisterQueue$Listener;,
        Lcom/android/server/wm/PersisterQueue$WriteQueueItem;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final EMPTY_ITEM:Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

.field private static final FLUSH_QUEUE:J = -0x1L

.field private static final INTER_WRITE_DELAY_MS:J = 0x1f4L

.field private static final MAX_WRITE_QUEUE_LENGTH:I = 0x6

.field private static final PRE_TASK_DELAY_MS:J = 0xbb8L

.field private static final TAG:Ljava/lang/String; = "PersisterQueue"


# instance fields
.field private final mInterWriteDelayMs:J

.field private final mLazyTaskWriterThread:Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/PersisterQueue$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mNextWriteTime:J

.field private final mPreTaskDelayMs:J

.field private final mWriteQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/PersisterQueue$WriteQueueItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    sget-object v0, Lcom/android/server/wm/-$$Lambda$PersisterQueue$HOTPBvinkMOqT3zxV3gRm6Y9Wi4;->INSTANCE:Lcom/android/server/wm/-$$Lambda$PersisterQueue$HOTPBvinkMOqT3zxV3gRm6Y9Wi4;

    sput-object v0, Lcom/android/server/wm/PersisterQueue;->EMPTY_ITEM:Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .line 73
    const-wide/16 v0, 0x1f4

    const-wide/16 v2, 0xbb8

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/wm/PersisterQueue;-><init>(JJ)V

    .line 74
    return-void
.end method

.method constructor <init>(JJ)V
    .locals 3
    .param p1, "interWriteDelayMs"    # J
    .param p3, "preTaskDelayMs"    # J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mWriteQueue:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mListeners:Ljava/util/ArrayList;

    .line 70
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    .line 79
    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    .line 84
    iput-wide p1, p0, Lcom/android/server/wm/PersisterQueue;->mInterWriteDelayMs:J

    .line 85
    iput-wide p3, p0, Lcom/android/server/wm/PersisterQueue;->mPreTaskDelayMs:J

    .line 86
    new-instance v0, Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;

    const/4 v1, 0x0

    const-string v2, "LazyTaskWriterThread"

    invoke-direct {v0, p0, v2, v1}, Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;-><init>(Lcom/android/server/wm/PersisterQueue;Ljava/lang/String;Lcom/android/server/wm/PersisterQueue$1;)V

    iput-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mLazyTaskWriterThread:Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;

    .line 87
    return-void

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Both inter-write delay and pre-task delay need tobe non-negative. inter-write delay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms pre-task delay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/PersisterQueue;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/PersisterQueue;

    .line 33
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mWriteQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/PersisterQueue;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/PersisterQueue;

    .line 33
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/PersisterQueue;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/PersisterQueue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Lcom/android/server/wm/PersisterQueue;->processNextItem()V

    return-void
.end method

.method static synthetic lambda$static$0()V
    .locals 0

    .line 54
    return-void
.end method

.method private processNextItem()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 205
    monitor-enter p0

    .line 206
    :try_start_0
    iget-wide v0, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 208
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wm/PersisterQueue;->mInterWriteDelayMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    .line 215
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 216
    iget-wide v0, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 217
    iput-wide v2, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    .line 218
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 222
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 226
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 223
    :cond_2
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    .end local p0    # "this":Lcom/android/server/wm/PersisterQueue;
    throw v0

    .line 230
    .restart local p0    # "this":Lcom/android/server/wm/PersisterQueue;
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mWriteQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    .line 232
    .local v0, "item":Lcom/android/server/wm/PersisterQueue$WriteQueueItem;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 237
    .local v1, "now":J
    :goto_1
    iget-wide v3, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_4

    .line 241
    iget-wide v3, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    sub-long/2addr v3, v1

    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 242
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    move-wide v1, v3

    goto :goto_1

    .line 246
    .end local v1    # "now":J
    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    invoke-interface {v0}, Lcom/android/server/wm/PersisterQueue$WriteQueueItem;->process()V

    .line 249
    return-void

    .line 246
    .end local v0    # "item":Lcom/android/server/wm/PersisterQueue$WriteQueueItem;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method declared-synchronized addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V
    .locals 4
    .param p1, "item"    # Lcom/android/server/wm/PersisterQueue$WriteQueueItem;
    .param p2, "flush"    # Z

    monitor-enter p0

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    iget-wide v0, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 114
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wm/PersisterQueue;->mPreTaskDelayMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    goto :goto_1

    .line 112
    .end local p0    # "this":Lcom/android/server/wm/PersisterQueue;
    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    .line 116
    :cond_2
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit p0

    return-void

    .line 108
    .end local p1    # "item":Lcom/android/server/wm/PersisterQueue$WriteQueueItem;
    .end local p2    # "flush":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method addListener(Lcom/android/server/wm/PersisterQueue$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/wm/PersisterQueue$Listener;

    .line 189
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    return-void
.end method

.method declared-synchronized findLastItem(Ljava/util/function/Predicate;Ljava/lang/Class;)Lcom/android/server/wm/PersisterQueue$WriteQueueItem;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/server/wm/PersisterQueue$WriteQueueItem;",
            ">(",
            "Ljava/util/function/Predicate<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-enter p0

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 121
    iget-object v1, p0, Lcom/android/server/wm/PersisterQueue;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    .line 122
    .local v1, "writeQueueItem":Lcom/android/server/wm/PersisterQueue$WriteQueueItem;
    invoke-virtual {p2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    invoke-virtual {p2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    .line 124
    .local v2, "item":Lcom/android/server/wm/PersisterQueue$WriteQueueItem;, "TT;"
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 125
    monitor-exit p0

    return-object v2

    .line 120
    .end local v1    # "writeQueueItem":Lcom/android/server/wm/PersisterQueue$WriteQueueItem;
    .end local v2    # "item":Lcom/android/server/wm/PersisterQueue$WriteQueueItem;, "TT;"
    .end local p0    # "this":Lcom/android/server/wm/PersisterQueue;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 130
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 119
    .end local p1    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    .end local p2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized flush()V
    .locals 4

    monitor-enter p0

    .line 166
    const-wide/16 v0, -0x1

    :try_start_0
    iput-wide v0, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    .line 167
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    goto :goto_0

    .line 171
    .end local p0    # "this":Lcom/android/server/wm/PersisterQueue;
    :catch_0
    move-exception v2

    .line 173
    :goto_0
    :try_start_2
    iget-wide v2, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 174
    monitor-exit p0

    return-void

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized removeItems(Ljava/util/function/Predicate;Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/server/wm/PersisterQueue$WriteQueueItem;",
            ">(",
            "Ljava/util/function/Predicate<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-enter p0

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 154
    iget-object v1, p0, Lcom/android/server/wm/PersisterQueue;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    .line 155
    .local v1, "writeQueueItem":Lcom/android/server/wm/PersisterQueue$WriteQueueItem;
    invoke-virtual {p2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    invoke-virtual {p2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    .line 157
    .local v2, "item":Lcom/android/server/wm/PersisterQueue$WriteQueueItem;, "TT;"
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 159
    iget-object v3, p0, Lcom/android/server/wm/PersisterQueue;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    .end local v1    # "writeQueueItem":Lcom/android/server/wm/PersisterQueue$WriteQueueItem;
    .end local v2    # "item":Lcom/android/server/wm/PersisterQueue$WriteQueueItem;, "TT;"
    .end local p0    # "this":Lcom/android/server/wm/PersisterQueue;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 163
    .end local v0    # "i":I
    :cond_1
    monitor-exit p0

    return-void

    .line 152
    .end local p1    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    .end local p2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method removeListener(Lcom/android/server/wm/PersisterQueue$Listener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/android/server/wm/PersisterQueue$Listener;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method declared-synchronized startPersisting()V
    .locals 1

    monitor-enter p0

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mLazyTaskWriterThread:Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;

    invoke-virtual {v0}, Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mLazyTaskWriterThread:Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;

    invoke-virtual {v0}, Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .end local p0    # "this":Lcom/android/server/wm/PersisterQueue;
    :cond_0
    monitor-exit p0

    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method stopPersisting()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mLazyTaskWriterThread:Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;

    invoke-virtual {v0}, Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    return-void

    .line 102
    :cond_0
    monitor-enter p0

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mLazyTaskWriterThread:Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;

    invoke-virtual {v0}, Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;->interrupt()V

    .line 104
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mLazyTaskWriterThread:Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;

    invoke-virtual {v0}, Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;->join()V

    .line 106
    return-void

    .line 104
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized updateLastOrAddItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V
    .locals 2
    .param p2, "flush"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/server/wm/PersisterQueue$WriteQueueItem;",
            ">(TT;Z)V"
        }
    .end annotation

    .local p1, "item":Lcom/android/server/wm/PersisterQueue$WriteQueueItem;, "TT;"
    monitor-enter p0

    .line 138
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/server/wm/-$$Lambda$pAuPvwUqsKCejIrAPrx0ARZSqeY;

    invoke-direct {v0, p1}, Lcom/android/server/wm/-$$Lambda$pAuPvwUqsKCejIrAPrx0ARZSqeY;-><init>(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/PersisterQueue;->findLastItem(Ljava/util/function/Predicate;Ljava/lang/Class;)Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    move-result-object v0

    .line 139
    .local v0, "itemToUpdate":Lcom/android/server/wm/PersisterQueue$WriteQueueItem;, "TT;"
    if-nez v0, :cond_0

    .line 140
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/PersisterQueue;->addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    goto :goto_0

    .line 142
    .end local p0    # "this":Lcom/android/server/wm/PersisterQueue;
    :cond_0
    invoke-interface {v0, p1}, Lcom/android/server/wm/PersisterQueue$WriteQueueItem;->updateFrom(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;)V

    .line 145
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/PersisterQueue;->yieldIfQueueTooDeep()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    monitor-exit p0

    return-void

    .line 137
    .end local v0    # "itemToUpdate":Lcom/android/server/wm/PersisterQueue$WriteQueueItem;, "TT;"
    .end local p1    # "item":Lcom/android/server/wm/PersisterQueue$WriteQueueItem;, "TT;"
    .end local p2    # "flush":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method yieldIfQueueTooDeep()V
    .locals 5

    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, "stall":Z
    monitor-enter p0

    .line 179
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 180
    const/4 v0, 0x1

    .line 182
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    if-eqz v0, :cond_1

    .line 184
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 186
    :cond_1
    return-void

    .line 182
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
