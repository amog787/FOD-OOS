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

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const-wide/32 v0, 0x200000

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPersistThresholdBytes:J

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    .line 98
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mObserver:Landroid/net/NetworkStats$NonMonotonicObserver;

    .line 99
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mDropBox:Landroid/os/DropBoxManager;

    .line 100
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mCookie:Ljava/lang/String;

    .line 104
    const-wide v1, 0x7528ad000L

    iput-wide v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mBucketDuration:J

    .line 105
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/net/NetworkStatsRecorder;->mOnlyTags:Z

    .line 107
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    .line 108
    new-instance v3, Lcom/android/server/net/NetworkStatsCollection;

    invoke-direct {v3, v1, v2}, Lcom/android/server/net/NetworkStatsCollection;-><init>(J)V

    iput-object v3, p0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    .line 110
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPendingRewriter:Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;

    .line 111
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

    .line 117
    .local p2, "observer":Landroid/net/NetworkStats$NonMonotonicObserver;, "Landroid/net/NetworkStats$NonMonotonicObserver<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const-wide/32 v0, 0x200000

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPersistThresholdBytes:J

    .line 118
    const-string/jumbo v0, "missing FileRotator"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/android/internal/util/FileRotator;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    .line 119
    const-string/jumbo v0, "missing NonMonotonicObserver"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Landroid/net/NetworkStats$NonMonotonicObserver;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mObserver:Landroid/net/NetworkStats$NonMonotonicObserver;

    .line 120
    const-string/jumbo v0, "missing DropBoxManager"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p3

    check-cast v0, Landroid/os/DropBoxManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mDropBox:Landroid/os/DropBoxManager;

    .line 121
    iput-object p4, p0, Lcom/android/server/net/NetworkStatsRecorder;->mCookie:Ljava/lang/String;

    .line 123
    iput-wide p5, p0, Lcom/android/server/net/NetworkStatsRecorder;->mBucketDuration:J

    .line 124
    iput-boolean p7, p0, Lcom/android/server/net/NetworkStatsRecorder;->mOnlyTags:Z

    .line 126
    new-instance v0, Lcom/android/server/net/NetworkStatsCollection;

    invoke-direct {v0, p5, p6}, Lcom/android/server/net/NetworkStatsCollection;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    .line 127
    new-instance v0, Lcom/android/server/net/NetworkStatsCollection;

    invoke-direct {v0, p5, p6}, Lcom/android/server/net/NetworkStatsCollection;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    .line 129
    new-instance v0, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;-><init>(Lcom/android/server/net/NetworkStatsCollection;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPendingRewriter:Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;

    .line 130
    return-void
.end method

.method private loadLocked(JJ)Lcom/android/server/net/NetworkStatsCollection;
    .locals 11
    .param p1, "start"    # J
    .param p3, "end"    # J

    .line 187
    const-string/jumbo v0, "problem completely reading network stats"

    const-string v1, "NetworkStatsRecorder"

    new-instance v2, Lcom/android/server/net/NetworkStatsCollection;

    iget-wide v3, p0, Lcom/android/server/net/NetworkStatsRecorder;->mBucketDuration:J

    invoke-direct {v2, v3, v4}, Lcom/android/server/net/NetworkStatsCollection;-><init>(J)V

    .line 189
    .local v2, "res":Lcom/android/server/net/NetworkStatsCollection;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    move-object v6, v2

    move-wide v7, p1

    move-wide v9, p3

    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/util/FileRotator;->readMatching(Lcom/android/internal/util/FileRotator$Reader;JJ)V

    .line 190
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v2, v3}, Lcom/android/server/net/NetworkStatsCollection;->recordCollection(Lcom/android/server/net/NetworkStatsCollection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 194
    :catch_0
    move-exception v3

    .line 195
    .local v3, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorder;->recoverFromWtf()V

    goto :goto_1

    .line 191
    .end local v3    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v3

    .line 192
    .local v3, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorder;->recoverFromWtf()V

    .line 197
    .end local v3    # "e":Ljava/io/IOException;
    :goto_0
    nop

    .line 198
    :goto_1
    return-object v2
.end method

.method private recoverFromWtf()V
    .locals 5

    .line 492
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 494
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/FileRotator;->dumpAll(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    :goto_0
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 500
    goto :goto_1

    .line 499
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 495
    :catch_0
    move-exception v1

    .line 497
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 501
    :goto_1
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mDropBox:Landroid/os/DropBoxManager;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x0

    const-string/jumbo v4, "netstats_dump"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/DropBoxManager;->addData(Ljava/lang/String;[BI)V

    .line 504
    .end local v0    # "os":Ljava/io/ByteArrayOutputStream;
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v0}, Lcom/android/internal/util/FileRotator;->deleteAll()V

    .line 505
    return-void

    .line 499
    .restart local v0    # "os":Ljava/io/ByteArrayOutputStream;
    :goto_2
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 500
    throw v1
.end method


# virtual methods
.method public dumpCheckin(Ljava/io/PrintWriter;JJ)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .line 483
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadPartialLocked(JJ)Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollection;->dumpCheckin(Ljava/io/PrintWriter;JJ)V

    .line 484
    return-void
.end method

.method public dumpDebugLocked(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 7
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "tag"    # J

    .line 473
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 474
    .local v0, "start":J
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    if-eqz v2, :cond_0

    .line 475
    const-wide v3, 0x10300000001L

    invoke-virtual {v2}, Lcom/android/server/net/NetworkStatsCollection;->getTotalBytes()J

    move-result-wide v5

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 477
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v2

    const-wide v3, 0x10b00000002L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/net/NetworkStatsCollection;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 478
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 479
    return-void
.end method

.method public dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V
    .locals 2
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "fullHistory"    # Z

    .line 460
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    if-eqz v0, :cond_0

    .line 461
    const-string v0, "Pending bytes: "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->getTotalBytes()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    .line 463
    :cond_0
    if-eqz p2, :cond_1

    .line 464
    const-string v0, "Complete history:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p0}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollection;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_0

    .line 467
    :cond_1
    const-string v0, "History since boot:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollection;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 470
    :goto_0
    return-void
.end method

.method public forcePersistLocked(J)V
    .locals 4
    .param p1, "currentTimeMillis"    # J

    .line 295
    const-string/jumbo v0, "problem persisting pending stats"

    const-string v1, "NetworkStatsRecorder"

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    const-string/jumbo v3, "missing FileRotator"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 296
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v2}, Lcom/android/server/net/NetworkStatsCollection;->isDirty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 299
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPendingRewriter:Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;

    invoke-virtual {v2, v3, p1, p2}, Lcom/android/internal/util/FileRotator;->rewriteActive(Lcom/android/internal/util/FileRotator$Rewriter;J)V

    .line 300
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/util/FileRotator;->maybeRotate(J)V

    .line 301
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v2}, Lcom/android/server/net/NetworkStatsCollection;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 305
    :catch_0
    move-exception v2

    .line 306
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {v1, v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 307
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorder;->recoverFromWtf()V

    goto :goto_0

    .line 302
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v2

    .line 303
    .local v2, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 304
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorder;->recoverFromWtf()V

    .line 310
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method public getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;
    .locals 5

    .line 167
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    const-string/jumbo v1, "missing FileRotator"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 168
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkStatsCollection;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 169
    .local v0, "res":Lcom/android/server/net/NetworkStatsCollection;
    :goto_0
    if-nez v0, :cond_1

    .line 170
    const-wide/high16 v1, -0x8000000000000000L

    const-wide v3, 0x7fffffffffffffffL

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/net/NetworkStatsRecorder;->loadLocked(JJ)Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    .line 171
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    .line 173
    :cond_1
    return-object v0
.end method

.method public getOrLoadPartialLocked(JJ)Lcom/android/server/net/NetworkStatsCollection;
    .locals 2
    .param p1, "start"    # J
    .param p3, "end"    # J

    .line 177
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    const-string/jumbo v1, "missing FileRotator"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 178
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkStatsCollection;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 179
    .local v0, "res":Lcom/android/server/net/NetworkStatsCollection;
    :goto_0
    if-nez v0, :cond_1

    .line 180
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/net/NetworkStatsRecorder;->loadLocked(JJ)Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    .line 182
    :cond_1
    return-object v0
.end method

.method public getSinceBoot()Lcom/android/server/net/NetworkStatsCollection;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    return-object v0
.end method

.method public getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;
    .locals 8
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .line 152
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    .line 153
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 152
    const-wide/high16 v2, -0x8000000000000000L

    const-wide v4, 0x7fffffffffffffffL

    const/4 v6, 0x3

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/net/NetworkStatsCollection;->getSummary(Landroid/net/NetworkTemplate;JJII)Landroid/net/NetworkStats;

    move-result-object v0

    .line 153
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    .line 152
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

    .line 420
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    const-string/jumbo v1, "missing FileRotator"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 423
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v0}, Lcom/android/internal/util/FileRotator;->deleteAll()V

    .line 425
    new-instance v0, Lcom/android/server/net/NetworkStatsCollection;

    iget-wide v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mBucketDuration:J

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/NetworkStatsCollection;-><init>(J)V

    .line 426
    .local v0, "collection":Lcom/android/server/net/NetworkStatsCollection;
    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollection;->readLegacyNetwork(Ljava/io/File;)V

    .line 428
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->getStartMillis()J

    move-result-wide v1

    .line 429
    .local v1, "startMillis":J
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->getEndMillis()J

    move-result-wide v3

    .line 431
    .local v3, "endMillis":J
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 434
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    new-instance v6, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;

    invoke-direct {v6, v0}, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;-><init>(Lcom/android/server/net/NetworkStatsCollection;)V

    invoke-virtual {v5, v6, v1, v2}, Lcom/android/internal/util/FileRotator;->rewriteActive(Lcom/android/internal/util/FileRotator$Rewriter;J)V

    .line 435
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v5, v3, v4}, Lcom/android/internal/util/FileRotator;->maybeRotate(J)V

    .line 437
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

    .line 440
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    const-string/jumbo v1, "missing FileRotator"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 443
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v0}, Lcom/android/internal/util/FileRotator;->deleteAll()V

    .line 445
    new-instance v0, Lcom/android/server/net/NetworkStatsCollection;

    iget-wide v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mBucketDuration:J

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/NetworkStatsCollection;-><init>(J)V

    .line 446
    .local v0, "collection":Lcom/android/server/net/NetworkStatsCollection;
    iget-boolean v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mOnlyTags:Z

    invoke-virtual {v0, p1, v1}, Lcom/android/server/net/NetworkStatsCollection;->readLegacyUid(Ljava/io/File;Z)V

    .line 448
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->getStartMillis()J

    move-result-wide v1

    .line 449
    .local v1, "startMillis":J
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->getEndMillis()J

    move-result-wide v3

    .line 451
    .local v3, "endMillis":J
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 454
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    new-instance v6, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;

    invoke-direct {v6, v0}, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;-><init>(Lcom/android/server/net/NetworkStatsCollection;)V

    invoke-virtual {v5, v6, v1, v2}, Lcom/android/internal/util/FileRotator;->rewriteActive(Lcom/android/internal/util/FileRotator$Rewriter;J)V

    .line 455
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v5, v3, v4}, Lcom/android/internal/util/FileRotator;->maybeRotate(J)V

    .line 457
    :cond_0
    return-void
.end method

.method public maybePersistLocked(J)V
    .locals 4
    .param p1, "currentTimeMillis"    # J

    .line 282
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    const-string/jumbo v1, "missing FileRotator"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 283
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->getTotalBytes()J

    move-result-wide v0

    .line 284
    .local v0, "pendingBytes":J
    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPersistThresholdBytes:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 285
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    goto :goto_0

    .line 287
    :cond_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/util/FileRotator;->maybeRotate(J)V

    .line 289
    :goto_0
    return-void
.end method

.method public recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;J)V
    .locals 22
    .param p1, "snapshot"    # Landroid/net/NetworkStats;
    .param p3, "currentTimeMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkStats;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/net/NetworkIdentitySet;",
            ">;J)V"
        }
    .end annotation

    .line 208
    .local p2, "ifaceIdent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/net/NetworkIdentitySet;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    .line 211
    .local v2, "unknownIfaces":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    return-void

    .line 214
    :cond_0
    iget-object v3, v0, Lcom/android/server/net/NetworkStatsRecorder;->mLastSnapshot:Landroid/net/NetworkStats;

    if-nez v3, :cond_1

    .line 215
    iput-object v1, v0, Lcom/android/server/net/NetworkStatsRecorder;->mLastSnapshot:Landroid/net/NetworkStats;

    .line 216
    return-void

    .line 219
    :cond_1
    iget-object v3, v0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/net/NetworkStatsCollection;

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 221
    .local v3, "complete":Lcom/android/server/net/NetworkStatsCollection;
    :goto_0
    iget-object v4, v0, Lcom/android/server/net/NetworkStatsRecorder;->mLastSnapshot:Landroid/net/NetworkStats;

    iget-object v5, v0, Lcom/android/server/net/NetworkStatsRecorder;->mObserver:Landroid/net/NetworkStats$NonMonotonicObserver;

    iget-object v6, v0, Lcom/android/server/net/NetworkStatsRecorder;->mCookie:Ljava/lang/String;

    invoke-static {v1, v4, v5, v6}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;)Landroid/net/NetworkStats;

    move-result-object v14

    .line 223
    .local v14, "delta":Landroid/net/NetworkStats;
    move-wide/from16 v15, p3

    .line 224
    .local v15, "end":J
    invoke-virtual {v14}, Landroid/net/NetworkStats;->getElapsedRealtime()J

    move-result-wide v4

    sub-long v17, v15, v4

    .line 226
    .local v17, "start":J
    const/4 v4, 0x0

    .line 227
    .local v4, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v5, 0x0

    move v13, v5

    .local v13, "i":I
    :goto_1
    invoke-virtual {v14}, Landroid/net/NetworkStats;->size()I

    move-result v5

    if-ge v13, v5, :cond_c

    .line 228
    invoke-virtual {v14, v13, v4}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v11

    .line 232
    .end local v4    # "entry":Landroid/net/NetworkStats$Entry;
    .local v11, "entry":Landroid/net/NetworkStats$Entry;
    invoke-virtual {v11}, Landroid/net/NetworkStats$Entry;->isNegative()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 233
    iget-object v4, v0, Lcom/android/server/net/NetworkStatsRecorder;->mObserver:Landroid/net/NetworkStats$NonMonotonicObserver;

    if-eqz v4, :cond_3

    .line 234
    iget-object v5, v0, Lcom/android/server/net/NetworkStatsRecorder;->mCookie:Ljava/lang/String;

    invoke-interface {v4, v14, v13, v5}, Landroid/net/NetworkStats$NonMonotonicObserver;->foundNonMonotonic(Landroid/net/NetworkStats;ILjava/lang/Object;)V

    .line 236
    :cond_3
    iget-wide v4, v11, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v11, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 237
    iget-wide v4, v11, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v11, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 238
    iget-wide v4, v11, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v11, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 239
    iget-wide v4, v11, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v11, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 240
    iget-wide v4, v11, Landroid/net/NetworkStats$Entry;->operations:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v11, Landroid/net/NetworkStats$Entry;->operations:J

    .line 243
    :cond_4
    iget-object v4, v11, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    move-object/from16 v12, p2

    invoke-interface {v12, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v19, v4

    check-cast v19, Lcom/android/server/net/NetworkIdentitySet;

    .line 244
    .local v19, "ident":Lcom/android/server/net/NetworkIdentitySet;
    if-nez v19, :cond_5

    .line 245
    iget-object v4, v11, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 246
    move-object/from16 v20, v11

    move/from16 v21, v13

    goto/16 :goto_4

    .line 250
    :cond_5
    invoke-virtual {v11}, Landroid/net/NetworkStats$Entry;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v20, v11

    move/from16 v21, v13

    goto :goto_4

    .line 253
    :cond_6
    iget v4, v11, Landroid/net/NetworkStats$Entry;->tag:I

    if-nez v4, :cond_7

    const/4 v4, 0x1

    goto :goto_2

    :cond_7
    const/4 v4, 0x0

    :goto_2
    iget-boolean v5, v0, Lcom/android/server/net/NetworkStatsRecorder;->mOnlyTags:Z

    if-eq v4, v5, :cond_a

    .line 254
    iget-object v4, v0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    if-eqz v4, :cond_8

    .line 255
    iget v6, v11, Landroid/net/NetworkStats$Entry;->uid:I

    iget v7, v11, Landroid/net/NetworkStats$Entry;->set:I

    iget v8, v11, Landroid/net/NetworkStats$Entry;->tag:I

    move-object/from16 v5, v19

    move-wide/from16 v9, v17

    move-object/from16 v20, v11

    .end local v11    # "entry":Landroid/net/NetworkStats$Entry;
    .local v20, "entry":Landroid/net/NetworkStats$Entry;
    move-wide v11, v15

    move/from16 v21, v13

    .end local v13    # "i":I
    .local v21, "i":I
    move-object/from16 v13, v20

    invoke-virtual/range {v4 .. v13}, Lcom/android/server/net/NetworkStatsCollection;->recordData(Lcom/android/server/net/NetworkIdentitySet;IIIJJLandroid/net/NetworkStats$Entry;)V

    goto :goto_3

    .line 254
    .end local v20    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v21    # "i":I
    .restart local v11    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v13    # "i":I
    :cond_8
    move-object/from16 v20, v11

    move/from16 v21, v13

    .line 259
    .end local v11    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v13    # "i":I
    .restart local v20    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v21    # "i":I
    :goto_3
    iget-object v4, v0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    if-eqz v4, :cond_9

    .line 260
    move-object/from16 v13, v20

    .end local v20    # "entry":Landroid/net/NetworkStats$Entry;
    .local v13, "entry":Landroid/net/NetworkStats$Entry;
    iget v6, v13, Landroid/net/NetworkStats$Entry;->uid:I

    iget v7, v13, Landroid/net/NetworkStats$Entry;->set:I

    iget v8, v13, Landroid/net/NetworkStats$Entry;->tag:I

    move-object/from16 v5, v19

    move-wide/from16 v9, v17

    move-wide v11, v15

    .end local v13    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v20    # "entry":Landroid/net/NetworkStats$Entry;
    invoke-virtual/range {v4 .. v13}, Lcom/android/server/net/NetworkStatsCollection;->recordData(Lcom/android/server/net/NetworkIdentitySet;IIIJJLandroid/net/NetworkStats$Entry;)V

    .line 264
    :cond_9
    if-eqz v3, :cond_b

    .line 265
    move-object/from16 v13, v20

    .end local v20    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v13    # "entry":Landroid/net/NetworkStats$Entry;
    iget v6, v13, Landroid/net/NetworkStats$Entry;->uid:I

    iget v7, v13, Landroid/net/NetworkStats$Entry;->set:I

    iget v8, v13, Landroid/net/NetworkStats$Entry;->tag:I

    move-object v4, v3

    move-object/from16 v5, v19

    move-wide/from16 v9, v17

    move-wide v11, v15

    .end local v13    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v20    # "entry":Landroid/net/NetworkStats$Entry;
    invoke-virtual/range {v4 .. v13}, Lcom/android/server/net/NetworkStatsCollection;->recordData(Lcom/android/server/net/NetworkIdentitySet;IIIJJLandroid/net/NetworkStats$Entry;)V

    goto :goto_4

    .line 253
    .end local v20    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v21    # "i":I
    .restart local v11    # "entry":Landroid/net/NetworkStats$Entry;
    .local v13, "i":I
    :cond_a
    move-object/from16 v20, v11

    move/from16 v21, v13

    .line 227
    .end local v11    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v13    # "i":I
    .end local v19    # "ident":Lcom/android/server/net/NetworkIdentitySet;
    .restart local v20    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v21    # "i":I
    :cond_b
    :goto_4
    add-int/lit8 v13, v21, 0x1

    move-object/from16 v4, v20

    .end local v21    # "i":I
    .restart local v13    # "i":I
    goto/16 :goto_1

    .line 270
    .end local v13    # "i":I
    .end local v20    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v4    # "entry":Landroid/net/NetworkStats$Entry;
    :cond_c
    iput-object v1, v0, Lcom/android/server/net/NetworkStatsRecorder;->mLastSnapshot:Landroid/net/NetworkStats;

    .line 275
    return-void
.end method

.method public removeUidsLocked([I)V
    .locals 6
    .param p1, "uids"    # [I

    .line 317
    const-string/jumbo v0, "problem removing UIDs "

    const-string v1, "NetworkStatsRecorder"

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    if-eqz v2, :cond_0

    .line 320
    :try_start_0
    new-instance v3, Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;

    iget-wide v4, p0, Lcom/android/server/net/NetworkStatsRecorder;->mBucketDuration:J

    invoke-direct {v3, v4, v5, p1}, Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;-><init>(J[I)V

    invoke-virtual {v2, v3}, Lcom/android/internal/util/FileRotator;->rewriteAll(Lcom/android/internal/util/FileRotator$Rewriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 324
    :catch_0
    move-exception v2

    .line 325
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

    .line 326
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorder;->recoverFromWtf()V

    goto :goto_0

    .line 321
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v2

    .line 322
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

    .line 323
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorder;->recoverFromWtf()V

    .line 331
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    if-eqz v0, :cond_1

    .line 332
    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollection;->removeUids([I)V

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    if-eqz v0, :cond_2

    .line 335
    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollection;->removeUids([I)V

    .line 339
    :cond_2
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mLastSnapshot:Landroid/net/NetworkStats;

    if-eqz v0, :cond_3

    .line 340
    invoke-virtual {v0, p1}, Landroid/net/NetworkStats;->removeUids([I)V

    .line 343
    :cond_3
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkStatsCollection;

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 344
    .local v0, "complete":Lcom/android/server/net/NetworkStatsCollection;
    :goto_1
    if-eqz v0, :cond_5

    .line 345
    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollection;->removeUids([I)V

    .line 347
    :cond_5
    return-void
.end method

.method public resetLocked()V
    .locals 1

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mLastSnapshot:Landroid/net/NetworkStats;

    .line 140
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->reset()V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->reset()V

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 147
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 149
    :cond_2
    return-void
.end method

.method public setPersistThreshold(J)V
    .locals 6
    .param p1, "thresholdBytes"    # J

    .line 134
    const-wide/16 v2, 0x400

    const-wide/32 v4, 0x6400000

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPersistThresholdBytes:J

    .line 136
    return-void
.end method
