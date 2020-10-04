.class Lcom/android/server/devicepolicy/SecurityLogMonitor;
.super Ljava/lang/Object;
.source "SecurityLogMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final BROADCAST_RETRY_INTERVAL_MS:J

.field private static final BUFFER_ENTRIES_CRITICAL_LEVEL:I = 0x2400

.field private static final BUFFER_ENTRIES_MAXIMUM_LEVEL:I = 0x2800

.field static final BUFFER_ENTRIES_NOTIFICATION_LEVEL:I = 0x400
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final FORCE_FETCH_THROTTLE_NS:J

.field private static final OVERLAP_NS:J

.field private static final POLLING_INTERVAL_MS:J

.field private static final RATE_LIMIT_INTERVAL_MS:J

.field private static final TAG:Ljava/lang/String; = "SecurityLogMonitor"


# instance fields
.field private mAllowedToRetrieve:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mCriticalLevelLogged:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mForceSemaphore:Ljava/util/concurrent/Semaphore;

.field private mId:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mLastEventNanos:J

.field private final mLastEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mLastForceNanos:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mForceSemaphore"
        }
    .end annotation
.end field

.field private final mLock:Ljava/util/concurrent/locks/Lock;

.field private mMonitorThread:Ljava/lang/Thread;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mNextAllowedRetrievalTimeMillis:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mPaused:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mPendingLogs:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 85
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->RATE_LIMIT_INTERVAL_MS:J

    .line 89
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->BROADCAST_RETRY_INTERVAL_MS:J

    .line 93
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->POLLING_INTERVAL_MS:J

    .line 97
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->OVERLAP_NS:J

    .line 100
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->FORCE_FETCH_THROTTLE_NS:J

    return-void
.end method

.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 55
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/devicepolicy/SecurityLogMonitor;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;J)V

    .line 56
    return-void
.end method

.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;J)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;
    .param p2, "id"    # J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mMonitorThread:Ljava/lang/Thread;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAllowedToRetrieve:Z

    .line 112
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mCriticalLevelLogged:Z

    .line 119
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEvents:Ljava/util/ArrayList;

    .line 121
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEventNanos:J

    .line 127
    iput-wide v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mNextAllowedRetrievalTimeMillis:J

    .line 129
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPaused:Z

    .line 133
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mForceSemaphore:Ljava/util/concurrent/Semaphore;

    .line 136
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastForceNanos:J

    .line 60
    iput-object p1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 61
    iput-wide p2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mId:J

    .line 62
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastForceNanos:J

    .line 63
    return-void
.end method

.method private assignLogId(Landroid/app/admin/SecurityLog$SecurityEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/app/admin/SecurityLog$SecurityEvent;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 404
    iget-wide v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/app/admin/SecurityLog$SecurityEvent;->setId(J)V

    .line 405
    iget-wide v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mId:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 406
    const-string v0, "SecurityLogMonitor"

    const-string v1, "Reached maximum id value; wrapping around."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mId:J

    goto :goto_0

    .line 409
    :cond_0
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mId:J

    .line 411
    :goto_0
    return-void
.end method

.method private checkCriticalLevel()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 390
    invoke-static {}, Landroid/app/admin/SecurityLog;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 391
    return-void

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x2400

    if-lt v0, v1, :cond_1

    .line 395
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mCriticalLevelLogged:Z

    if-nez v0, :cond_1

    .line 396
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mCriticalLevelLogged:Z

    .line 397
    const v0, 0x3345f

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 400
    :cond_1
    return-void
.end method

.method private getNextBatch(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    .local p1, "newLogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/admin/SecurityLog$SecurityEvent;>;"
    iget-wide v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEventNanos:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 268
    invoke-static {p1}, Landroid/app/admin/SecurityLog;->readEvents(Ljava/util/Collection;)V

    goto :goto_1

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    iget-wide v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEventNanos:J

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEventNanos:J

    sget-wide v4, Lcom/android/server/devicepolicy/SecurityLogMonitor;->OVERLAP_NS:J

    sub-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 276
    .local v0, "startNanos":J
    :goto_0
    invoke-static {v0, v1, p1}, Landroid/app/admin/SecurityLog;->readEventsSince(JLjava/util/Collection;)V

    .line 281
    .end local v0    # "startNanos":J
    :goto_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3

    .line 282
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/SecurityLog$SecurityEvent;

    invoke-virtual {v1}, Landroid/app/admin/SecurityLog$SecurityEvent;->getTimeNanos()J

    move-result-wide v1

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/SecurityLog$SecurityEvent;

    invoke-virtual {v3}, Landroid/app/admin/SecurityLog$SecurityEvent;->getTimeNanos()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 285
    sget-object v1, Lcom/android/server/devicepolicy/-$$Lambda$SecurityLogMonitor$y5Q3dMmmJ8bk5nBh8WR2MUroKrI;->INSTANCE:Lcom/android/server/devicepolicy/-$$Lambda$SecurityLogMonitor$y5Q3dMmmJ8bk5nBh8WR2MUroKrI;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 286
    goto :goto_3

    .line 281
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 291
    .end local v0    # "i":I
    :cond_3
    :goto_3
    return-void
.end method

.method static synthetic lambda$getNextBatch$0(Landroid/app/admin/SecurityLog$SecurityEvent;Landroid/app/admin/SecurityLog$SecurityEvent;)I
    .locals 4
    .param p0, "e1"    # Landroid/app/admin/SecurityLog$SecurityEvent;
    .param p1, "e2"    # Landroid/app/admin/SecurityLog$SecurityEvent;

    .line 285
    invoke-virtual {p0}, Landroid/app/admin/SecurityLog$SecurityEvent;->getTimeNanos()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/app/admin/SecurityLog$SecurityEvent;->getTimeNanos()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result v0

    return v0
.end method

.method private mergeBatchLocked(Ljava/util/ArrayList;)V
    .locals 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;)V"
        }
    .end annotation

    .line 325
    .local p1, "newLogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/admin/SecurityLog$SecurityEvent;>;"
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 329
    const/4 v0, 0x0

    .line 330
    .local v0, "curPos":I
    const/4 v1, 0x0

    .line 332
    .local v1, "lastPos":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 333
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/SecurityLog$SecurityEvent;

    .line 334
    .local v2, "curEvent":Landroid/app/admin/SecurityLog$SecurityEvent;
    invoke-virtual {v2}, Landroid/app/admin/SecurityLog$SecurityEvent;->getTimeNanos()J

    move-result-wide v3

    .line 335
    .local v3, "currentNanos":J
    iget-wide v5, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEventNanos:J

    cmp-long v5, v3, v5

    if-lez v5, :cond_0

    .line 337
    goto :goto_3

    .line 339
    :cond_0
    iget-object v5, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEvents:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/SecurityLog$SecurityEvent;

    .line 340
    .local v5, "lastEvent":Landroid/app/admin/SecurityLog$SecurityEvent;
    invoke-virtual {v5}, Landroid/app/admin/SecurityLog$SecurityEvent;->getTimeNanos()J

    move-result-wide v6

    .line 341
    .local v6, "lastNanos":J
    cmp-long v8, v6, v3

    if-lez v8, :cond_1

    .line 344
    invoke-direct {p0, v2}, Lcom/android/server/devicepolicy/SecurityLogMonitor;->assignLogId(Landroid/app/admin/SecurityLog$SecurityEvent;)V

    .line 345
    iget-object v8, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 347
    :cond_1
    cmp-long v8, v6, v3

    if-gez v8, :cond_2

    .line 349
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 352
    :cond_2
    invoke-virtual {v5, v2}, Landroid/app/admin/SecurityLog$SecurityEvent;->eventEquals(Landroid/app/admin/SecurityLog$SecurityEvent;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_1

    .line 357
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/server/devicepolicy/SecurityLogMonitor;->assignLogId(Landroid/app/admin/SecurityLog$SecurityEvent;)V

    .line 358
    iget-object v8, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 362
    add-int/lit8 v0, v0, 0x1

    .line 364
    .end local v2    # "curEvent":Landroid/app/admin/SecurityLog$SecurityEvent;
    .end local v3    # "currentNanos":J
    .end local v5    # "lastEvent":Landroid/app/admin/SecurityLog$SecurityEvent;
    .end local v6    # "lastNanos":J
    :goto_2
    goto :goto_0

    .line 366
    :cond_4
    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 367
    .local v2, "idLogs":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/SecurityLog$SecurityEvent;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/SecurityLog$SecurityEvent;

    .line 368
    .local v4, "event":Landroid/app/admin/SecurityLog$SecurityEvent;
    invoke-direct {p0, v4}, Lcom/android/server/devicepolicy/SecurityLogMonitor;->assignLogId(Landroid/app/admin/SecurityLog$SecurityEvent;)V

    .line 369
    .end local v4    # "event":Landroid/app/admin/SecurityLog$SecurityEvent;
    goto :goto_4

    .line 371
    :cond_5
    iget-object v3, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 373
    invoke-direct {p0}, Lcom/android/server/devicepolicy/SecurityLogMonitor;->checkCriticalLevel()V

    .line 375
    iget-object v3, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x2800

    if-le v3, v4, :cond_6

    .line 377
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    .line 378
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit16 v5, v5, -0x1400

    iget-object v6, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    .line 379
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 377
    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    .line 380
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mCriticalLevelLogged:Z

    .line 381
    const-string v3, "SecurityLogMonitor"

    const-string v4, "Pending logs buffer full. Discarding old logs."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_6
    return-void
.end method

.method private notifyDeviceOwnerIfNeeded(Z)V
    .locals 6
    .param p1, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 455
    const/4 v0, 0x0

    .line 456
    .local v0, "allowRetrievalAndNotifyDO":Z
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lockInterruptibly()V

    .line 458
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 481
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 459
    return-void

    .line 461
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 462
    .local v1, "logSize":I
    const/16 v2, 0x400

    if-ge v1, v2, :cond_1

    if-eqz p1, :cond_2

    if-lez v1, :cond_2

    .line 464
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAllowedToRetrieve:Z

    if-nez v2, :cond_2

    .line 465
    const/4 v0, 0x1

    .line 469
    :cond_2
    if-lez v1, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mNextAllowedRetrievalTimeMillis:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3

    .line 471
    const/4 v0, 0x1

    .line 474
    :cond_3
    if-eqz v0, :cond_4

    .line 475
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAllowedToRetrieve:Z

    .line 477
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-wide v4, Lcom/android/server/devicepolicy/SecurityLogMonitor;->BROADCAST_RETRY_INTERVAL_MS:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mNextAllowedRetrievalTimeMillis:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 481
    .end local v1    # "logSize":I
    :cond_4
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 482
    nop

    .line 483
    if-eqz v0, :cond_5

    .line 484
    const-string v1, "SecurityLogMonitor"

    const-string/jumbo v2, "notify DO"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v2, 0x0

    const-string v3, "android.app.action.SECURITY_LOGS_AVAILABLE"

    invoke-virtual {v1, v3, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendDeviceOwnerCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 488
    :cond_5
    return-void

    .line 481
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method private saveLastEvents(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;)V"
        }
    .end annotation

    .line 297
    .local p1, "newLogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/admin/SecurityLog$SecurityEvent;>;"
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 298
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    return-void

    .line 305
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/SecurityLog$SecurityEvent;

    invoke-virtual {v0}, Landroid/app/admin/SecurityLog$SecurityEvent;->getTimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEventNanos:J

    .line 308
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    .line 309
    .local v0, "pos":I
    :goto_0
    if-ltz v0, :cond_1

    iget-wide v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEventNanos:J

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/SecurityLog$SecurityEvent;

    invoke-virtual {v3}, Landroid/app/admin/SecurityLog$SecurityEvent;->getTimeNanos()J

    move-result-wide v3

    sub-long/2addr v1, v3

    sget-wide v3, Lcom/android/server/devicepolicy/SecurityLogMonitor;->OVERLAP_NS:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 310
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 313
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 314
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEvents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 316
    return-void
.end method


# virtual methods
.method discardLogs()V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAllowedToRetrieve:Z

    .line 232
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    .line 233
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mCriticalLevelLogged:Z

    .line 234
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 235
    const-string v0, "SecurityLogMonitor"

    const-string v1, "Discarded all logs."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return-void
.end method

.method public forceLogs()J
    .locals 9

    .line 495
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 497
    .local v0, "nowNanos":J
    iget-object v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mForceSemaphore:Ljava/util/concurrent/Semaphore;

    monitor-enter v2

    .line 498
    :try_start_0
    iget-wide v3, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastForceNanos:J

    sget-wide v5, Lcom/android/server/devicepolicy/SecurityLogMonitor;->FORCE_FETCH_THROTTLE_NS:J

    add-long/2addr v3, v5

    sub-long/2addr v3, v0

    .line 499
    .local v3, "toWaitNanos":J
    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    .line 500
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    monitor-exit v2

    return-wide v5

    .line 502
    :cond_0
    iput-wide v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastForceNanos:J

    .line 505
    iget-object v7, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mForceSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v7}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v7

    if-nez v7, :cond_1

    .line 506
    iget-object v7, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mForceSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v7}, Ljava/util/concurrent/Semaphore;->release()V

    .line 508
    :cond_1
    monitor-exit v2

    return-wide v5

    .line 509
    .end local v3    # "toWaitNanos":J
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method pause()V
    .locals 2

    .line 190
    const-string v0, "SecurityLogMonitor"

    const-string v1, "Paused."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPaused:Z

    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAllowedToRetrieve:Z

    .line 195
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 196
    return-void
.end method

.method resume()V
    .locals 3

    .line 206
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 208
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "SecurityLogMonitor"

    if-nez v0, :cond_0

    .line 209
    :try_start_1
    const-string v0, "Attempted to resume, but logging is not paused."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 210
    return-void

    .line 212
    :cond_0
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPaused:Z

    .line 213
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAllowedToRetrieve:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 215
    iget-object v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 216
    nop

    .line 218
    const-string v2, "Resumed."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :try_start_3
    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/SecurityLogMonitor;->notifyDeviceOwnerIfNeeded(Z)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 223
    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "Thread interrupted."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void

    .line 215
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method retrieveLogs()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 245
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAllowedToRetrieve:Z

    if-eqz v0, :cond_0

    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAllowedToRetrieve:Z

    .line 247
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sget-wide v3, Lcom/android/server/devicepolicy/SecurityLogMonitor;->RATE_LIMIT_INTERVAL_MS:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mNextAllowedRetrievalTimeMillis:J

    .line 249
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    .line 250
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/SecurityLog$SecurityEvent;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    .line 251
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mCriticalLevelLogged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    nop

    .line 257
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 252
    return-object v1

    .line 254
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/SecurityLog$SecurityEvent;>;"
    :cond_0
    const/4 v0, 0x0

    .line 257
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 254
    return-object v0

    .line 257
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public run()V
    .locals 7

    .line 415
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 417
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 418
    .local v0, "newLogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/admin/SecurityLog$SecurityEvent;>;"
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    const-string v2, "SecurityLogMonitor"

    if-nez v1, :cond_0

    .line 420
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mForceSemaphore:Ljava/util/concurrent/Semaphore;

    sget-wide v3, Lcom/android/server/devicepolicy/SecurityLogMonitor;->POLLING_INTERVAL_MS:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v5}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    .line 422
    .local v1, "force":Z
    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/SecurityLogMonitor;->getNextBatch(Ljava/util/ArrayList;)V

    .line 424
    iget-object v3, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lockInterruptibly()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mergeBatchLocked(Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 428
    :try_start_2
    iget-object v3, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 429
    nop

    .line 431
    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/SecurityLogMonitor;->saveLastEvents(Ljava/util/ArrayList;)V

    .line 432
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 433
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/SecurityLogMonitor;->notifyDeviceOwnerIfNeeded(Z)V

    .end local v1    # "force":Z
    goto :goto_1

    .line 428
    .restart local v1    # "force":Z
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .end local v0    # "newLogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/admin/SecurityLog$SecurityEvent;>;"
    .end local p0    # "this":Lcom/android/server/devicepolicy/SecurityLogMonitor;
    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 436
    .end local v1    # "force":Z
    .restart local v0    # "newLogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/admin/SecurityLog$SecurityEvent;>;"
    .restart local p0    # "this":Lcom/android/server/devicepolicy/SecurityLogMonitor;
    :catch_0
    move-exception v1

    .line 437
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v3, "Thread interrupted, exiting."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 439
    goto :goto_2

    .line 434
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 435
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "Failed to read security log"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 440
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    goto :goto_0

    .line 444
    :cond_0
    :goto_2
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 445
    iget-wide v3, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEventNanos:J

    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1

    .line 448
    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEventNanos:J

    .line 451
    :cond_1
    const-string v1, "MonitorThread exit."

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    return-void
.end method

.method start()V
    .locals 3

    .line 140
    const-string v0, "SecurityLogMonitor"

    const-string v1, "Starting security logging."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const v2, 0x3345b

    invoke-static {v2, v1}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 142
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mMonitorThread:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 145
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    .line 146
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mCriticalLevelLogged:Z

    .line 147
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mId:J

    .line 148
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAllowedToRetrieve:Z

    .line 149
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mNextAllowedRetrievalTimeMillis:J

    .line 150
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPaused:Z

    .line 152
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mMonitorThread:Ljava/lang/Thread;

    .line 153
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mMonitorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 157
    nop

    .line 158
    return-void

    .line 156
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method stop()V
    .locals 6

    .line 161
    const-string v0, "SecurityLogMonitor"

    const-string v1, "Stopping security logging."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const v3, 0x3345c

    invoke-static {v3, v2}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 163
    iget-object v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 165
    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mMonitorThread:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    .line 166
    iget-object v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mMonitorThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :try_start_1
    iget-object v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mMonitorThread:Ljava/lang/Thread;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    goto :goto_0

    .line 169
    :catch_0
    move-exception v2

    .line 170
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v3, "Interrupted while waiting for thread to stop"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    .line 174
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mId:J

    .line 175
    iput-boolean v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAllowedToRetrieve:Z

    .line 176
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mNextAllowedRetrievalTimeMillis:J

    .line 177
    iput-boolean v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPaused:Z

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mMonitorThread:Ljava/lang/Thread;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 182
    nop

    .line 183
    return-void

    .line 181
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
