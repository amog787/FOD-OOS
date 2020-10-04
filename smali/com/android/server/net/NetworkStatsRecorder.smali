.class public Lcom/android/server/net/NetworkStatsRecorder;
.super Ljava/lang/Object;
.source "NetworkStatsRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;,
        Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;
    }
.end annotation


# static fields
.field private static final DUMP_BEFORE_DELETE:Z = true

.field private static final LOGD:Z = false

.field private static final LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "NetworkStatsRecorder"

.field private static final TAG_NETSTATS_DUMP:Ljava/lang/String; = "netstats_dump"


# instance fields
.field private final mBucketDuration:J

.field private mComplete:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/net/NetworkStatsCollection;",
            ">;"
        }
    .end annotation
.end field

.field private final mCookie:Ljava/lang/String;

.field private final mDropBox:Landroid/os/DropBoxManager;

.field private mLastSnapshot:Landroid/net/NetworkStats;

.field private final mObserver:Landroid/net/NetworkStats$NonMonotonicObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/NetworkStats$NonMonotonicObserver<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnlyTags:Z

.field private final mPending:Lcom/android/server/net/NetworkStatsCollection;

.field private final mPendingRewriter:Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;

.field private mPersistThresholdBytes:J

.field private final mRotator:Lcom/android/internal/util/FileRotator;

.field private final mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const-wide/32 v0, 0x200000

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPersistThresholdBytes:J

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    .line 101
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mObserver:Landroid/net/NetworkStats$NonMonotonicObserver;

    .line 102
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mDropBox:Landroid/os/DropBoxManager;

    .line 103
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mCookie:Ljava/lang/String;

    .line 107
    const-wide v1, 0x7528ad000L

    iput-wide v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mBucketDuration:J

    .line 108
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mOnlyTags:Z

    .line 110
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    .line 111
    new-instance v1, Lcom/android/server/net/NetworkStatsCollection;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mBucketDuration:J

    invoke-direct {v1, v2, v3}, Lcom/android/server/net/NetworkStatsCollection;-><init>(J)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    .line 113
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPendingRewriter:Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;

    .line 114
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/util/FileRotator;Landroid/net/NetworkStats$NonMonotonicObserver;Landroid/os/DropBoxManager;Ljava/lang/String;JZ)V
    .locals 2
    .param p1, "rotator"    # Lcom/android/internal/util/FileRotator;
    .param p3, "dropBox"    # Landroid/os/DropBoxManager;
    .param p4, "cookie"    # Ljava/lang/String;
    .param p5, "bucketDuration"    # J
    .param p7, "onlyTags"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/FileRotator;",
            "Landroid/net/NetworkStats$NonMonotonicObserver<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/DropBoxManager;",
            "Ljava/lang/String;",
            "JZ)V"
        }
    .end annotation

    .line 120
    .local p2, "observer":Landroid/net/NetworkStats$NonMonotonicObserver;, "Landroid/net/NetworkStats$NonMonotonicObserver<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const-wide/32 v0, 0x200000

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPersistThresholdBytes:J

    .line 121
    const-string/jumbo v0, "missing FileRotator"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/FileRotator;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    .line 122
    const-string/jumbo v0, "missing NonMonotonicObserver"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStats$NonMonotonicObserver;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mObserver:Landroid/net/NetworkStats$NonMonotonicObserver;

    .line 123
    const-string/jumbo v0, "missing DropBoxManager"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DropBoxManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mDropBox:Landroid/os/DropBoxManager;

    .line 124
    iput-object p4, p0, Lcom/android/server/net/NetworkStatsRecorder;->mCookie:Ljava/lang/String;

    .line 126
    iput-wide p5, p0, Lcom/android/server/net/NetworkStatsRecorder;->mBucketDuration:J

    .line 127
    iput-boolean p7, p0, Lcom/android/server/net/NetworkStatsRecorder;->mOnlyTags:Z

    .line 129
    new-instance v0, Lcom/android/server/net/NetworkStatsCollection;

    invoke-direct {v0, p5, p6}, Lcom/android/server/net/NetworkStatsCollection;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    .line 130
    new-instance v0, Lcom/android/server/net/NetworkStatsCollection;

    invoke-direct {v0, p5, p6}, Lcom/android/server/net/NetworkStatsCollection;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    .line 132
    new-instance v0, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;-><init>(Lcom/android/server/net/NetworkStatsCollection;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPendingRewriter:Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;

    .line 133
    return-void
.end method

.method private loadLocked(JJ)Lcom/android/server/net/NetworkStatsCollection;
    .locals 11
    .param p1, "start"    # J
    .param p3, "end"    # J

    .line 190
    const-string/jumbo v0, "problem completely reading network stats"

    const-string v1, "NetworkStatsRecorder"

    new-instance v2, Lcom/android/server/net/NetworkStatsCollection;

    iget-wide v3, p0, Lcom/android/server/net/NetworkStatsRecorder;->mBucketDuration:J

    invoke-direct {v2, v3, v4}, Lcom/android/server/net/NetworkStatsCollection;-><init>(J)V

    .line 192
    .local v2, "res":Lcom/android/server/net/NetworkStatsCollection;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    move-object v6, v2

    move-wide v7, p1

    move-wide v9, p3

    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/util/FileRotator;->readMatching(Lcom/android/internal/util/FileRotator$Reader;JJ)V

    .line 193
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v2, v3}, Lcom/android/server/net/NetworkStatsCollection;->recordCollection(Lcom/android/server/net/NetworkStatsCollection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 197
    :catch_0
    move-exception v3

    .line 198
    .local v3, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorder;->recoverFromWtf()V

    goto :goto_1

    .line 194
    .end local v3    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v3

    .line 195
    .local v3, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorder;->recoverFromWtf()V

    .line 200
    .end local v3    # "e":Ljava/io/IOException;
    :goto_0
    nop

    .line 201
    :goto_1
    return-object v2
.end method

.method private recoverFromWtf()V
    .locals 5

    .line 507
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 509
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/FileRotator;->dumpAll(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 514
    :goto_0
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 515
    goto :goto_1

    .line 514
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 510
    :catch_0
    move-exception v1

    .line 512
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 516
    :goto_1
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mDropBox:Landroid/os/DropBoxManager;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x0

    const-string/jumbo v4, "netstats_dump"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/DropBoxManager;->addData(Ljava/lang/String;[BI)V

    .line 519
    .end local v0    # "os":Ljava/io/ByteArrayOutputStream;
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v0}, Lcom/android/internal/util/FileRotator;->deleteAll()V

    .line 520
    return-void

    .line 514
    .restart local v0    # "os":Ljava/io/ByteArrayOutputStream;
    :goto_2
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method


# virtual methods
.method public dumpCheckin(Ljava/io/PrintWriter;JJ)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .line 498
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadPartialLocked(JJ)Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollection;->dumpCheckin(Ljava/io/PrintWriter;JJ)V

    .line 499
    return-void
.end method

.method public dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V
    .locals 2
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "fullHistory"    # Z

    .line 475
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    if-eqz v0, :cond_0

    .line 476
    const-string v0, "Pending bytes: "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->getTotalBytes()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    .line 478
    :cond_0
    if-eqz p2, :cond_1

    .line 479
    const-string v0, "Complete history:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 480
    invoke-virtual {p0}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollection;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_0

    .line 482
    :cond_1
    const-string v0, "History since boot:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollection;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 485
    :goto_0
    return-void
.end method

.method public forcePersistLocked(J)V
    .locals 4
    .param p1, "currentTimeMillis"    # J

    .line 310
    const-string/jumbo v0, "problem persisting pending stats"

    const-string v1, "NetworkStatsRecorder"

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    const-string/jumbo v3, "missing FileRotator"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v2}, Lcom/android/server/net/NetworkStatsCollection;->isDirty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 314
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPendingRewriter:Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;

    invoke-virtual {v2, v3, p1, p2}, Lcom/android/internal/util/FileRotator;->rewriteActive(Lcom/android/internal/util/FileRotator$Rewriter;J)V

    .line 315
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/util/FileRotator;->maybeRotate(J)V

    .line 316
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v2}, Lcom/android/server/net/NetworkStatsCollection;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 320
    :catch_0
    move-exception v2

    .line 321
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {v1, v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 322
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorder;->recoverFromWtf()V

    goto :goto_0

    .line 317
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v2

    .line 318
    .local v2, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 319
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorder;->recoverFromWtf()V

    .line 325
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method public getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;
    .locals 5

    .line 170
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    const-string/jumbo v1, "missing FileRotator"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkStatsCollection;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 172
    .local v0, "res":Lcom/android/server/net/NetworkStatsCollection;
    :goto_0
    if-nez v0, :cond_1

    .line 173
    const-wide/high16 v1, -0x8000000000000000L

    const-wide v3, 0x7fffffffffffffffL

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/net/NetworkStatsRecorder;->loadLocked(JJ)Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    .line 174
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    .line 176
    :cond_1
    return-object v0
.end method

.method public getOrLoadPartialLocked(JJ)Lcom/android/server/net/NetworkStatsCollection;
    .locals 2
    .param p1, "start"    # J
    .param p3, "end"    # J

    .line 180
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    const-string/jumbo v1, "missing FileRotator"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkStatsCollection;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 182
    .local v0, "res":Lcom/android/server/net/NetworkStatsCollection;
    :goto_0
    if-nez v0, :cond_1

    .line 183
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/net/NetworkStatsRecorder;->loadLocked(JJ)Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    .line 185
    :cond_1
    return-object v0
.end method

.method public getSinceBoot()Lcom/android/server/net/NetworkStatsCollection;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    return-object v0
.end method

.method public getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;
    .locals 8
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .line 155
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    .line 156
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 155
    const-wide/high16 v2, -0x8000000000000000L

    const-wide v4, 0x7fffffffffffffffL

    const/4 v6, 0x3

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/net/NetworkStatsCollection;->getSummary(Landroid/net/NetworkTemplate;JJII)Landroid/net/NetworkStats;

    move-result-object v0

    .line 156
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    .line 155
    return-object v0
.end method

.method public importLegacyNetworkLocked(Ljava/io/File;)V
    .locals 7
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 435
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    const-string/jumbo v1, "missing FileRotator"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v0}, Lcom/android/internal/util/FileRotator;->deleteAll()V

    .line 440
    new-instance v0, Lcom/android/server/net/NetworkStatsCollection;

    iget-wide v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mBucketDuration:J

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/NetworkStatsCollection;-><init>(J)V

    .line 441
    .local v0, "collection":Lcom/android/server/net/NetworkStatsCollection;
    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollection;->readLegacyNetwork(Ljava/io/File;)V

    .line 443
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->getStartMillis()J

    move-result-wide v1

    .line 444
    .local v1, "startMillis":J
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->getEndMillis()J

    move-result-wide v3

    .line 446
    .local v3, "endMillis":J
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 449
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    new-instance v6, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;

    invoke-direct {v6, v0}, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;-><init>(Lcom/android/server/net/NetworkStatsCollection;)V

    invoke-virtual {v5, v6, v1, v2}, Lcom/android/internal/util/FileRotator;->rewriteActive(Lcom/android/internal/util/FileRotator$Rewriter;J)V

    .line 450
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v5, v3, v4}, Lcom/android/internal/util/FileRotator;->maybeRotate(J)V

    .line 452
    :cond_0
    return-void
.end method

.method public importLegacyUidLocked(Ljava/io/File;)V
    .locals 7
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 455
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    const-string/jumbo v1, "missing FileRotator"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v0}, Lcom/android/internal/util/FileRotator;->deleteAll()V

    .line 460
    new-instance v0, Lcom/android/server/net/NetworkStatsCollection;

    iget-wide v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mBucketDuration:J

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/NetworkStatsCollection;-><init>(J)V

    .line 461
    .local v0, "collection":Lcom/android/server/net/NetworkStatsCollection;
    iget-boolean v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mOnlyTags:Z

    invoke-virtual {v0, p1, v1}, Lcom/android/server/net/NetworkStatsCollection;->readLegacyUid(Ljava/io/File;Z)V

    .line 463
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->getStartMillis()J

    move-result-wide v1

    .line 464
    .local v1, "startMillis":J
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->getEndMillis()J

    move-result-wide v3

    .line 466
    .local v3, "endMillis":J
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 469
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    new-instance v6, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;

    invoke-direct {v6, v0}, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;-><init>(Lcom/android/server/net/NetworkStatsCollection;)V

    invoke-virtual {v5, v6, v1, v2}, Lcom/android/internal/util/FileRotator;->rewriteActive(Lcom/android/internal/util/FileRotator$Rewriter;J)V

    .line 470
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v5, v3, v4}, Lcom/android/internal/util/FileRotator;->maybeRotate(J)V

    .line 472
    :cond_0
    return-void
.end method

.method public maybePersistLocked(J)V
    .locals 4
    .param p1, "currentTimeMillis"    # J

    .line 297
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    const-string/jumbo v1, "missing FileRotator"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->getTotalBytes()J

    move-result-wide v0

    .line 299
    .local v0, "pendingBytes":J
    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPersistThresholdBytes:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 300
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    goto :goto_0

    .line 302
    :cond_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/util/FileRotator;->maybeRotate(J)V

    .line 304
    :goto_0
    return-void
.end method

.method public recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;[Lcom/android/internal/net/VpnInfo;J)V
    .locals 24
    .param p1, "snapshot"    # Landroid/net/NetworkStats;
    .param p3, "vpnArray"    # [Lcom/android/internal/net/VpnInfo;
    .param p4, "currentTimeMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkStats;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/net/NetworkIdentitySet;",
            ">;[",
            "Lcom/android/internal/net/VpnInfo;",
            "J)V"
        }
    .end annotation

    .line 217
    .local p2, "ifaceIdent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/net/NetworkIdentitySet;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v3

    .line 220
    .local v3, "unknownIfaces":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    return-void

    .line 223
    :cond_0
    iget-object v4, v0, Lcom/android/server/net/NetworkStatsRecorder;->mLastSnapshot:Landroid/net/NetworkStats;

    if-nez v4, :cond_1

    .line 224
    iput-object v1, v0, Lcom/android/server/net/NetworkStatsRecorder;->mLastSnapshot:Landroid/net/NetworkStats;

    .line 225
    return-void

    .line 228
    :cond_1
    iget-object v4, v0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/net/NetworkStatsCollection;

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 230
    .local v4, "complete":Lcom/android/server/net/NetworkStatsCollection;
    :goto_0
    iget-object v5, v0, Lcom/android/server/net/NetworkStatsRecorder;->mLastSnapshot:Landroid/net/NetworkStats;

    iget-object v6, v0, Lcom/android/server/net/NetworkStatsRecorder;->mObserver:Landroid/net/NetworkStats$NonMonotonicObserver;

    iget-object v7, v0, Lcom/android/server/net/NetworkStatsRecorder;->mCookie:Ljava/lang/String;

    invoke-static {v1, v5, v6, v7}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;)Landroid/net/NetworkStats;

    move-result-object v15

    .line 232
    .local v15, "delta":Landroid/net/NetworkStats;
    move-wide/from16 v16, p4

    .line 233
    .local v16, "end":J
    invoke-virtual {v15}, Landroid/net/NetworkStats;->getElapsedRealtime()J

    move-result-wide v5

    sub-long v18, v16, v5

    .line 235
    .local v18, "start":J
    const/16 v20, 0x0

    if-eqz v2, :cond_3

    .line 236
    array-length v5, v2

    move/from16 v6, v20

    :goto_1
    if-ge v6, v5, :cond_3

    aget-object v7, v2, v6

    .line 237
    .local v7, "info":Lcom/android/internal/net/VpnInfo;
    iget v8, v7, Lcom/android/internal/net/VpnInfo;->ownerUid:I

    iget-object v9, v7, Lcom/android/internal/net/VpnInfo;->vpnIface:Ljava/lang/String;

    iget-object v10, v7, Lcom/android/internal/net/VpnInfo;->primaryUnderlyingIface:Ljava/lang/String;

    invoke-virtual {v15, v8, v9, v10}, Landroid/net/NetworkStats;->migrateTun(ILjava/lang/String;Ljava/lang/String;)Z

    .line 236
    .end local v7    # "info":Lcom/android/internal/net/VpnInfo;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 241
    :cond_3
    const/4 v5, 0x0

    .line 242
    .local v5, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v6, 0x0

    move v14, v6

    .local v14, "i":I
    :goto_2
    invoke-virtual {v15}, Landroid/net/NetworkStats;->size()I

    move-result v6

    if-ge v14, v6, :cond_d

    .line 243
    invoke-virtual {v15, v14, v5}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v12

    .line 247
    .end local v5    # "entry":Landroid/net/NetworkStats$Entry;
    .local v12, "entry":Landroid/net/NetworkStats$Entry;
    invoke-virtual {v12}, Landroid/net/NetworkStats$Entry;->isNegative()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 248
    iget-object v5, v0, Lcom/android/server/net/NetworkStatsRecorder;->mObserver:Landroid/net/NetworkStats$NonMonotonicObserver;

    if-eqz v5, :cond_4

    .line 249
    iget-object v6, v0, Lcom/android/server/net/NetworkStatsRecorder;->mCookie:Ljava/lang/String;

    invoke-interface {v5, v15, v14, v6}, Landroid/net/NetworkStats$NonMonotonicObserver;->foundNonMonotonic(Landroid/net/NetworkStats;ILjava/lang/Object;)V

    .line 251
    :cond_4
    iget-wide v5, v12, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const-wide/16 v7, 0x0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v12, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 252
    iget-wide v5, v12, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v12, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 253
    iget-wide v5, v12, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v12, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 254
    iget-wide v5, v12, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v12, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 255
    iget-wide v5, v12, Landroid/net/NetworkStats$Entry;->operations:J

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v12, Landroid/net/NetworkStats$Entry;->operations:J

    .line 258
    :cond_5
    iget-object v5, v12, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    move-object/from16 v13, p2

    invoke-interface {v13, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v21, v5

    check-cast v21, Lcom/android/server/net/NetworkIdentitySet;

    .line 259
    .local v21, "ident":Lcom/android/server/net/NetworkIdentitySet;
    if-nez v21, :cond_6

    .line 260
    iget-object v5, v12, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 261
    move-object/from16 v22, v12

    move/from16 v23, v14

    goto/16 :goto_5

    .line 265
    :cond_6
    invoke-virtual {v12}, Landroid/net/NetworkStats$Entry;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    move-object/from16 v22, v12

    move/from16 v23, v14

    goto :goto_5

    .line 268
    :cond_7
    iget v5, v12, Landroid/net/NetworkStats$Entry;->tag:I

    if-nez v5, :cond_8

    const/4 v5, 0x1

    goto :goto_3

    :cond_8
    move/from16 v5, v20

    :goto_3
    iget-boolean v6, v0, Lcom/android/server/net/NetworkStatsRecorder;->mOnlyTags:Z

    if-eq v5, v6, :cond_b

    .line 269
    iget-object v5, v0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    if-eqz v5, :cond_9

    .line 270
    iget v7, v12, Landroid/net/NetworkStats$Entry;->uid:I

    iget v8, v12, Landroid/net/NetworkStats$Entry;->set:I

    iget v9, v12, Landroid/net/NetworkStats$Entry;->tag:I

    move-object/from16 v6, v21

    move-wide/from16 v10, v18

    move-object/from16 v22, v12

    .end local v12    # "entry":Landroid/net/NetworkStats$Entry;
    .local v22, "entry":Landroid/net/NetworkStats$Entry;
    move-wide/from16 v12, v16

    move/from16 v23, v14

    .end local v14    # "i":I
    .local v23, "i":I
    move-object/from16 v14, v22

    invoke-virtual/range {v5 .. v14}, Lcom/android/server/net/NetworkStatsCollection;->recordData(Lcom/android/server/net/NetworkIdentitySet;IIIJJLandroid/net/NetworkStats$Entry;)V

    goto :goto_4

    .line 269
    .end local v22    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v23    # "i":I
    .restart local v12    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v14    # "i":I
    :cond_9
    move-object/from16 v22, v12

    move/from16 v23, v14

    .line 274
    .end local v12    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v14    # "i":I
    .restart local v22    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v23    # "i":I
    :goto_4
    iget-object v5, v0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    if-eqz v5, :cond_a

    .line 275
    move-object/from16 v14, v22

    .end local v22    # "entry":Landroid/net/NetworkStats$Entry;
    .local v14, "entry":Landroid/net/NetworkStats$Entry;
    iget v7, v14, Landroid/net/NetworkStats$Entry;->uid:I

    iget v8, v14, Landroid/net/NetworkStats$Entry;->set:I

    iget v9, v14, Landroid/net/NetworkStats$Entry;->tag:I

    move-object/from16 v6, v21

    move-wide/from16 v10, v18

    move-wide/from16 v12, v16

    .end local v14    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v22    # "entry":Landroid/net/NetworkStats$Entry;
    invoke-virtual/range {v5 .. v14}, Lcom/android/server/net/NetworkStatsCollection;->recordData(Lcom/android/server/net/NetworkIdentitySet;IIIJJLandroid/net/NetworkStats$Entry;)V

    .line 279
    :cond_a
    if-eqz v4, :cond_c

    .line 280
    move-object/from16 v14, v22

    .end local v22    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v14    # "entry":Landroid/net/NetworkStats$Entry;
    iget v7, v14, Landroid/net/NetworkStats$Entry;->uid:I

    iget v8, v14, Landroid/net/NetworkStats$Entry;->set:I

    iget v9, v14, Landroid/net/NetworkStats$Entry;->tag:I

    move-object v5, v4

    move-object/from16 v6, v21

    move-wide/from16 v10, v18

    move-wide/from16 v12, v16

    .end local v14    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v22    # "entry":Landroid/net/NetworkStats$Entry;
    invoke-virtual/range {v5 .. v14}, Lcom/android/server/net/NetworkStatsCollection;->recordData(Lcom/android/server/net/NetworkIdentitySet;IIIJJLandroid/net/NetworkStats$Entry;)V

    goto :goto_5

    .line 268
    .end local v22    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v23    # "i":I
    .restart local v12    # "entry":Landroid/net/NetworkStats$Entry;
    .local v14, "i":I
    :cond_b
    move-object/from16 v22, v12

    move/from16 v23, v14

    .line 242
    .end local v12    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v14    # "i":I
    .end local v21    # "ident":Lcom/android/server/net/NetworkIdentitySet;
    .restart local v22    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v23    # "i":I
    :cond_c
    :goto_5
    add-int/lit8 v14, v23, 0x1

    move-object/from16 v5, v22

    .end local v23    # "i":I
    .restart local v14    # "i":I
    goto/16 :goto_2

    .line 285
    .end local v14    # "i":I
    .end local v22    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v5    # "entry":Landroid/net/NetworkStats$Entry;
    :cond_d
    iput-object v1, v0, Lcom/android/server/net/NetworkStatsRecorder;->mLastSnapshot:Landroid/net/NetworkStats;

    .line 290
    return-void
.end method

.method public removeUidsLocked([I)V
    .locals 6
    .param p1, "uids"    # [I

    .line 332
    const-string/jumbo v0, "problem removing UIDs "

    const-string v1, "NetworkStatsRecorder"

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    if-eqz v2, :cond_0

    .line 335
    :try_start_0
    new-instance v3, Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;

    iget-wide v4, p0, Lcom/android/server/net/NetworkStatsRecorder;->mBucketDuration:J

    invoke-direct {v3, v4, v5, p1}, Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;-><init>(J[I)V

    invoke-virtual {v2, v3}, Lcom/android/internal/util/FileRotator;->rewriteAll(Lcom/android/internal/util/FileRotator$Rewriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 339
    :catch_0
    move-exception v2

    .line 340
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorder;->recoverFromWtf()V

    goto :goto_0

    .line 336
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v2

    .line 337
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 338
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorder;->recoverFromWtf()V

    .line 346
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    if-eqz v0, :cond_1

    .line 347
    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollection;->removeUids([I)V

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    if-eqz v0, :cond_2

    .line 350
    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollection;->removeUids([I)V

    .line 354
    :cond_2
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mLastSnapshot:Landroid/net/NetworkStats;

    if-eqz v0, :cond_3

    .line 355
    invoke-virtual {v0, p1}, Landroid/net/NetworkStats;->removeUids([I)V

    .line 358
    :cond_3
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkStatsCollection;

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 359
    .local v0, "complete":Lcom/android/server/net/NetworkStatsCollection;
    :goto_1
    if-eqz v0, :cond_5

    .line 360
    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollection;->removeUids([I)V

    .line 362
    :cond_5
    return-void
.end method

.method public resetLocked()V
    .locals 1

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mLastSnapshot:Landroid/net/NetworkStats;

    .line 143
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->reset()V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->reset()V

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 150
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 152
    :cond_2
    return-void
.end method

.method public setPersistThreshold(J)V
    .locals 6
    .param p1, "thresholdBytes"    # J

    .line 137
    const-wide/16 v2, 0x400

    const-wide/32 v4, 0x6400000

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPersistThresholdBytes:J

    .line 139
    return-void
.end method

.method public writeToProtoLocked(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 7
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "tag"    # J

    .line 488
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 489
    .local v0, "start":J
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    if-eqz v2, :cond_0

    .line 490
    const-wide v3, 0x10300000001L

    invoke-virtual {v2}, Lcom/android/server/net/NetworkStatsCollection;->getTotalBytes()J

    move-result-wide v5

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 492
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v2

    const-wide v3, 0x10b00000002L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/net/NetworkStatsCollection;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 493
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 494
    return-void
.end method
