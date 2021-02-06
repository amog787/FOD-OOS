.class public abstract Lcom/android/server/am/PersistentConnection;
.super Ljava/lang/Object;
.source "PersistentConnection.java"


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
.field private static final DEBUG:Z = false


# instance fields
.field private final mBindForBackoffRunnable:Ljava/lang/Runnable;

.field private mBound:Z

.field private final mComponentName:Landroid/content/ComponentName;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mIsConnected:Z

.field private mLastConnectedTime:J

.field private final mLock:Ljava/lang/Object;

.field private mNextBackoffMs:J

.field private mNumBindingDied:I

.field private mNumConnected:I

.field private mNumDisconnected:I

.field private final mRebindBackoffIncrease:D

.field private final mRebindBackoffMs:J

.field private final mRebindMaxBackoffMs:J

.field private mRebindScheduled:Z

.field private mReconnectTime:J

.field private final mResetBackoffDelay:J

.field private mService:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private mShouldBeBound:Z

.field private final mStableCheck:Ljava/lang/Runnable;

.field private final mTag:Ljava/lang/String;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;ILandroid/content/ComponentName;JDJJ)V
    .locals 14
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "userId"    # I
    .param p5, "componentName"    # Landroid/content/ComponentName;
    .param p6, "rebindBackoffSeconds"    # J
    .param p8, "rebindBackoffIncrease"    # D
    .param p10, "rebindMaxBackoffSeconds"    # J
    .param p12, "resetBackoffDelay"    # J

    .line 184
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    .line 118
    new-instance v1, Lcom/android/server/am/PersistentConnection$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/PersistentConnection$1;-><init>(Lcom/android/server/am/PersistentConnection;)V

    iput-object v1, v0, Lcom/android/server/am/PersistentConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 179
    new-instance v1, Lcom/android/server/am/-$$Lambda$PersistentConnection$xTW-hnA2hSnEFuF87mUe85RYnfE;

    invoke-direct {v1, p0}, Lcom/android/server/am/-$$Lambda$PersistentConnection$xTW-hnA2hSnEFuF87mUe85RYnfE;-><init>(Lcom/android/server/am/PersistentConnection;)V

    iput-object v1, v0, Lcom/android/server/am/PersistentConnection;->mBindForBackoffRunnable:Ljava/lang/Runnable;

    .line 395
    new-instance v1, Lcom/android/server/am/-$$Lambda$PersistentConnection$rkvbuN0FQdQUv1hqSwDvmwwh6Uk;

    invoke-direct {v1, p0}, Lcom/android/server/am/-$$Lambda$PersistentConnection$rkvbuN0FQdQUv1hqSwDvmwwh6Uk;-><init>(Lcom/android/server/am/PersistentConnection;)V

    iput-object v1, v0, Lcom/android/server/am/PersistentConnection;->mStableCheck:Ljava/lang/Runnable;

    .line 185
    move-object v1, p1

    iput-object v1, v0, Lcom/android/server/am/PersistentConnection;->mTag:Ljava/lang/String;

    .line 186
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/android/server/am/PersistentConnection;->mContext:Landroid/content/Context;

    .line 187
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/android/server/am/PersistentConnection;->mHandler:Landroid/os/Handler;

    .line 188
    move/from16 v4, p4

    iput v4, v0, Lcom/android/server/am/PersistentConnection;->mUserId:I

    .line 189
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/android/server/am/PersistentConnection;->mComponentName:Landroid/content/ComponentName;

    .line 191
    const-wide/16 v6, 0x3e8

    mul-long v8, p6, v6

    iput-wide v8, v0, Lcom/android/server/am/PersistentConnection;->mRebindBackoffMs:J

    .line 192
    move-wide/from16 v10, p8

    iput-wide v10, v0, Lcom/android/server/am/PersistentConnection;->mRebindBackoffIncrease:D

    .line 193
    mul-long v12, p10, v6

    iput-wide v12, v0, Lcom/android/server/am/PersistentConnection;->mRebindMaxBackoffMs:J

    .line 194
    mul-long v6, v6, p12

    iput-wide v6, v0, Lcom/android/server/am/PersistentConnection;->mResetBackoffDelay:J

    .line 196
    iput-wide v8, v0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    .line 197
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/PersistentConnection;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/PersistentConnection;

    .line 65
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/PersistentConnection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/PersistentConnection;

    .line 65
    iget-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mBound:Z

    return v0
.end method

.method static synthetic access$1008(Lcom/android/server/am/PersistentConnection;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/am/PersistentConnection;

    .line 65
    iget v0, p0, Lcom/android/server/am/PersistentConnection;->mNumDisconnected:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/am/PersistentConnection;->mNumDisconnected:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/am/PersistentConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/PersistentConnection;

    .line 65
    invoke-direct {p0}, Lcom/android/server/am/PersistentConnection;->cleanUpConnectionLocked()V

    return-void
.end method

.method static synthetic access$1208(Lcom/android/server/am/PersistentConnection;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/am/PersistentConnection;

    .line 65
    iget v0, p0, Lcom/android/server/am/PersistentConnection;->mNumBindingDied:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/am/PersistentConnection;->mNumBindingDied:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/am/PersistentConnection;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/PersistentConnection;

    .line 65
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/PersistentConnection;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/PersistentConnection;

    .line 65
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/PersistentConnection;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/PersistentConnection;

    .line 65
    iget v0, p0, Lcom/android/server/am/PersistentConnection;->mUserId:I

    return v0
.end method

.method static synthetic access$508(Lcom/android/server/am/PersistentConnection;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/am/PersistentConnection;

    .line 65
    iget v0, p0, Lcom/android/server/am/PersistentConnection;->mNumConnected:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/am/PersistentConnection;->mNumConnected:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/am/PersistentConnection;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/PersistentConnection;
    .param p1, "x1"    # Z

    .line 65
    iput-boolean p1, p0, Lcom/android/server/am/PersistentConnection;->mIsConnected:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/server/am/PersistentConnection;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/PersistentConnection;
    .param p1, "x1"    # J

    .line 65
    iput-wide p1, p0, Lcom/android/server/am/PersistentConnection;->mLastConnectedTime:J

    return-wide p1
.end method

.method static synthetic access$802(Lcom/android/server/am/PersistentConnection;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/PersistentConnection;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 65
    iput-object p1, p0, Lcom/android/server/am/PersistentConnection;->mService:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/am/PersistentConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/PersistentConnection;

    .line 65
    invoke-direct {p0}, Lcom/android/server/am/PersistentConnection;->scheduleStableCheckLocked()V

    return-void
.end method

.method private cleanUpConnectionLocked()V
    .locals 1

    .line 339
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mIsConnected:Z

    .line 340
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/PersistentConnection;->mService:Ljava/lang/Object;

    .line 342
    invoke-direct {p0}, Lcom/android/server/am/PersistentConnection;->unscheduleStableCheckLocked()V

    .line 343
    return-void
.end method

.method public static synthetic lambda$rkvbuN0FQdQUv1hqSwDvmwwh6Uk(Lcom/android/server/am/PersistentConnection;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/PersistentConnection;->stableConnectionCheck()V

    return-void
.end method

.method private resetBackoffLocked()V
    .locals 4

    .line 289
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    iget-wide v0, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    iget-wide v2, p0, Lcom/android/server/am/PersistentConnection;->mRebindBackoffMs:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 290
    iput-wide v2, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    .line 291
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Backoff reset to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_0
    return-void
.end method

.method private scheduleStableCheckLocked()V
    .locals 5

    .line 418
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    invoke-direct {p0}, Lcom/android/server/am/PersistentConnection;->unscheduleStableCheckLocked()V

    .line 419
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mStableCheck:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->injectUptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/am/PersistentConnection;->mResetBackoffDelay:J

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/PersistentConnection;->injectPostAtTime(Ljava/lang/Runnable;J)V

    .line 420
    return-void
.end method

.method private stableConnectionCheck()V
    .locals 7

    .line 398
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 399
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->injectUptimeMillis()J

    move-result-wide v1

    .line 400
    .local v1, "now":J
    iget-wide v3, p0, Lcom/android/server/am/PersistentConnection;->mLastConnectedTime:J

    iget-wide v5, p0, Lcom/android/server/am/PersistentConnection;->mResetBackoffDelay:J

    add-long/2addr v3, v5

    sub-long/2addr v3, v1

    .line 405
    .local v3, "timeRemaining":J
    iget-boolean v5, p0, Lcom/android/server/am/PersistentConnection;->mBound:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/server/am/PersistentConnection;->mIsConnected:Z

    if-eqz v5, :cond_0

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gtz v5, :cond_0

    .line 406
    invoke-direct {p0}, Lcom/android/server/am/PersistentConnection;->resetBackoffLocked()V

    .line 408
    .end local v1    # "now":J
    .end local v3    # "timeRemaining":J
    :cond_0
    monitor-exit v0

    .line 409
    return-void

    .line 408
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final unbindLocked()V
    .locals 3

    .line 359
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->unscheduleRebindLocked()V

    .line 361
    iget-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mBound:Z

    if-nez v0, :cond_0

    .line 362
    return-void

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/PersistentConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/PersistentConnection;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mBound:Z

    .line 366
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/PersistentConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 368
    invoke-direct {p0}, Lcom/android/server/am/PersistentConnection;->cleanUpConnectionLocked()V

    .line 369
    return-void
.end method

.method private unscheduleStableCheckLocked()V
    .locals 1

    .line 413
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mStableCheck:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/server/am/PersistentConnection;->injectRemoveCallbacks(Ljava/lang/Runnable;)V

    .line 414
    return-void
.end method


# virtual methods
.method protected abstract asInterface(Landroid/os/IBinder;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method

.method public final bind()V
    .locals 2

    .line 252
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 253
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mShouldBeBound:Z

    .line 255
    invoke-virtual {p0, v1}, Lcom/android/server/am/PersistentConnection;->bindInnerLocked(Z)V

    .line 256
    monitor-exit v0

    .line 257
    return-void

    .line 256
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final bindForBackoff()V
    .locals 2

    .line 327
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 328
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mShouldBeBound:Z

    if-nez v1, :cond_0

    .line 330
    monitor-exit v0

    return-void

    .line 333
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/am/PersistentConnection;->bindInnerLocked(Z)V

    .line 334
    monitor-exit v0

    .line 335
    return-void

    .line 334
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final bindInnerLocked(Z)V
    .locals 9
    .param p1, "resetBackoff"    # Z

    .line 297
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->unscheduleRebindLocked()V

    .line 299
    iget-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mBound:Z

    if-eqz v0, :cond_0

    .line 300
    return-void

    .line 302
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mBound:Z

    .line 304
    invoke-direct {p0}, Lcom/android/server/am/PersistentConnection;->unscheduleStableCheckLocked()V

    .line 306
    if-eqz p1, :cond_1

    .line 307
    invoke-direct {p0}, Lcom/android/server/am/PersistentConnection;->resetBackoffLocked()V

    .line 310
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/android/server/am/PersistentConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 316
    .local v1, "service":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/am/PersistentConnection;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/am/PersistentConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 317
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->getBindFlags()I

    move-result v2

    or-int/lit8 v6, v2, 0x1

    iget-object v7, p0, Lcom/android/server/am/PersistentConnection;->mHandler:Landroid/os/Handler;

    iget v0, p0, Lcom/android/server/am/PersistentConnection;->mUserId:I

    .line 318
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    .line 316
    move-object v4, v1

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z

    move-result v0

    .line 320
    .local v0, "success":Z
    if-nez v0, :cond_2

    .line 321
    iget-object v2, p0, Lcom/android/server/am/PersistentConnection;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Binding: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " u"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/am/PersistentConnection;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " failed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_2
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 426
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 427
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 428
    iget-object v1, p0, Lcom/android/server/am/PersistentConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 429
    const-string v1, " u"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 430
    iget v1, p0, Lcom/android/server/am/PersistentConnection;->mUserId:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 431
    iget-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mBound:Z

    if-eqz v1, :cond_0

    const-string v1, " [bound]"

    goto :goto_0

    :cond_0
    const-string v1, " [not bound]"

    :goto_0
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 432
    iget-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mIsConnected:Z

    if-eqz v1, :cond_1

    const-string v1, " [connected]"

    goto :goto_1

    :cond_1
    const-string v1, " [not connected]"

    :goto_1
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 433
    iget-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mRebindScheduled:Z

    if-eqz v1, :cond_2

    .line 434
    const-string v1, " reconnect in "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 435
    iget-wide v1, p0, Lcom/android/server/am/PersistentConnection;->mReconnectTime:J

    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->injectUptimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 437
    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 439
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 440
    const-string v1, "  Next backoff(sec): "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 441
    iget-wide v1, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 442
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 444
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 445
    const-string v1, "  Connected: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 446
    iget v1, p0, Lcom/android/server/am/PersistentConnection;->mNumConnected:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 447
    const-string v1, "  Disconnected: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 448
    iget v1, p0, Lcom/android/server/am/PersistentConnection;->mNumDisconnected:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 449
    const-string v1, "  Died: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 450
    iget v1, p0, Lcom/android/server/am/PersistentConnection;->mNumBindingDied:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 451
    iget-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mIsConnected:Z

    if-eqz v1, :cond_3

    .line 452
    const-string v1, "  Duration: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->injectUptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/am/PersistentConnection;->mLastConnectedTime:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 455
    :cond_3
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 456
    monitor-exit v0

    .line 457
    return-void

    .line 456
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected abstract getBindFlags()I
.end method

.method getBindForBackoffRunnableForTest()Ljava/lang/Runnable;
    .locals 1

    .line 491
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mBindForBackoffRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public final getComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 200
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getNextBackoffMs()J
    .locals 3

    .line 261
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 262
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    monitor-exit v0

    return-wide v1

    .line 263
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getNextBackoffMsForTest()J
    .locals 2

    .line 476
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    iget-wide v0, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    return-wide v0
.end method

.method public getNumBindingDied()I
    .locals 2

    .line 282
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 283
    :try_start_0
    iget v1, p0, Lcom/android/server/am/PersistentConnection;->mNumBindingDied:I

    monitor-exit v0

    return v1

    .line 284
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getNumConnected()I
    .locals 2

    .line 268
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 269
    :try_start_0
    iget v1, p0, Lcom/android/server/am/PersistentConnection;->mNumConnected:I

    monitor-exit v0

    return v1

    .line 270
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getNumDisconnected()I
    .locals 2

    .line 275
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 276
    :try_start_0
    iget v1, p0, Lcom/android/server/am/PersistentConnection;->mNumDisconnected:I

    monitor-exit v0

    return v1

    .line 277
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getReconnectTimeForTest()J
    .locals 2

    .line 481
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    iget-wide v0, p0, Lcom/android/server/am/PersistentConnection;->mReconnectTime:J

    return-wide v0
.end method

.method public final getServiceBinder()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 243
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 244
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/PersistentConnection;->mService:Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    .line 245
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getServiceConnectionForTest()Landroid/content/ServiceConnection;
    .locals 1

    .line 486
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method getStableCheckRunnableForTest()Ljava/lang/Runnable;
    .locals 1

    .line 496
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mStableCheck:Ljava/lang/Runnable;

    return-object v0
.end method

.method public final getUserId()I
    .locals 1

    .line 204
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    iget v0, p0, Lcom/android/server/am/PersistentConnection;->mUserId:I

    return v0
.end method

.method injectPostAtTime(Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "uptimeMillis"    # J

    .line 466
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 467
    return-void
.end method

.method injectRemoveCallbacks(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 461
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 462
    return-void
.end method

.method injectUptimeMillis()J
    .locals 2

    .line 471
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final isBound()Z
    .locals 2

    .line 216
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 217
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mBound:Z

    monitor-exit v0

    return v1

    .line 218
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final isConnected()Z
    .locals 2

    .line 234
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 235
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mIsConnected:Z

    monitor-exit v0

    return v1

    .line 236
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final isRebindScheduled()Z
    .locals 2

    .line 225
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 226
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mRebindScheduled:Z

    monitor-exit v0

    return v1

    .line 227
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$new$0$PersistentConnection()V
    .locals 0

    .line 179
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->bindForBackoff()V

    return-void
.end method

.method scheduleRebindLocked()V
    .locals 6

    .line 379
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    invoke-direct {p0}, Lcom/android/server/am/PersistentConnection;->unbindLocked()V

    .line 381
    iget-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mRebindScheduled:Z

    if-nez v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scheduling to reconnect in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms (uptime)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->injectUptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/PersistentConnection;->mReconnectTime:J

    .line 386
    iget-object v2, p0, Lcom/android/server/am/PersistentConnection;->mBindForBackoffRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/am/PersistentConnection;->injectPostAtTime(Ljava/lang/Runnable;J)V

    .line 388
    iget-wide v0, p0, Lcom/android/server/am/PersistentConnection;->mRebindMaxBackoffMs:J

    iget-wide v2, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    long-to-double v2, v2

    iget-wide v4, p0, Lcom/android/server/am/PersistentConnection;->mRebindBackoffIncrease:D

    mul-double/2addr v2, v4

    double-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    .line 391
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mRebindScheduled:Z

    .line 393
    :cond_0
    return-void
.end method

.method shouldBeBoundForTest()Z
    .locals 1

    .line 501
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mShouldBeBound:Z

    return v0
.end method

.method public final unbind()V
    .locals 2

    .line 349
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 350
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mShouldBeBound:Z

    .line 352
    invoke-direct {p0}, Lcom/android/server/am/PersistentConnection;->unbindLocked()V

    .line 353
    invoke-direct {p0}, Lcom/android/server/am/PersistentConnection;->unscheduleStableCheckLocked()V

    .line 354
    monitor-exit v0

    .line 355
    return-void

    .line 354
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method unscheduleRebindLocked()V
    .locals 1

    .line 373
    .local p0, "this":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mBindForBackoffRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/server/am/PersistentConnection;->injectRemoveCallbacks(Ljava/lang/Runnable;)V

    .line 374
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mRebindScheduled:Z

    .line 375
    return-void
.end method
