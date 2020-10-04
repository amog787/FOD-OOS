.class Lcom/android/server/wm/WindowTraceBuffer;
.super Ljava/lang/Object;
.source "WindowTraceBuffer.java"


# static fields
.field private static final MAGIC_NUMBER_VALUE:J = 0x45434152544e4957L


# instance fields
.field private final mBuffer:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/util/proto/ProtoOutputStream;",
            ">;"
        }
    .end annotation
.end field

.field private mBufferCapacity:I

.field private final mBufferLock:Ljava/lang/Object;

.field private mBufferUsedSize:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "bufferCapacity"    # I

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowTraceBuffer;->mBufferLock:Ljava/lang/Object;

    .line 43
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowTraceBuffer;->mBuffer:Ljava/util/Queue;

    .line 48
    iput p1, p0, Lcom/android/server/wm/WindowTraceBuffer;->mBufferCapacity:I

    .line 49
    invoke-virtual {p0}, Lcom/android/server/wm/WindowTraceBuffer;->resetBuffer()V

    .line 50
    return-void
.end method

.method private discardOldest(I)V
    .locals 5
    .param p1, "protoLength"    # I

    .line 118
    invoke-virtual {p0}, Lcom/android/server/wm/WindowTraceBuffer;->getAvailableSpace()I

    move-result v0

    int-to-long v0, v0

    .line 120
    .local v0, "availableSpace":J
    :goto_0
    int-to-long v2, p1

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 122
    iget-object v2, p0, Lcom/android/server/wm/WindowTraceBuffer;->mBuffer:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/proto/ProtoOutputStream;

    .line 123
    .local v2, "item":Landroid/util/proto/ProtoOutputStream;
    if-eqz v2, :cond_0

    .line 126
    iget v3, p0, Lcom/android/server/wm/WindowTraceBuffer;->mBufferUsedSize:I

    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->getRawSize()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/wm/WindowTraceBuffer;->mBufferUsedSize:I

    .line 127
    invoke-virtual {p0}, Lcom/android/server/wm/WindowTraceBuffer;->getAvailableSpace()I

    move-result v3

    int-to-long v0, v3

    .line 128
    .end local v2    # "item":Landroid/util/proto/ProtoOutputStream;
    goto :goto_0

    .line 124
    .restart local v2    # "item":Landroid/util/proto/ProtoOutputStream;
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "No element to discard from buffer"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 129
    .end local v2    # "item":Landroid/util/proto/ProtoOutputStream;
    :cond_1
    return-void
.end method

.method static synthetic lambda$contains$0([BLandroid/util/proto/ProtoOutputStream;)Z
    .locals 1
    .param p0, "other"    # [B
    .param p1, "p"    # Landroid/util/proto/ProtoOutputStream;

    .line 87
    invoke-virtual {p1}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method


# virtual methods
.method add(Landroid/util/proto/ProtoOutputStream;)V
    .locals 4
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 72
    invoke-virtual {p1}, Landroid/util/proto/ProtoOutputStream;->getRawSize()I

    move-result v0

    .line 73
    .local v0, "protoLength":I
    iget v1, p0, Lcom/android/server/wm/WindowTraceBuffer;->mBufferCapacity:I

    if-gt v0, v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/android/server/wm/WindowTraceBuffer;->mBufferLock:Ljava/lang/Object;

    monitor-enter v1

    .line 78
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowTraceBuffer;->discardOldest(I)V

    .line 79
    iget-object v2, p0, Lcom/android/server/wm/WindowTraceBuffer;->mBuffer:Ljava/util/Queue;

    invoke-interface {v2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 80
    iget v2, p0, Lcom/android/server/wm/WindowTraceBuffer;->mBufferUsedSize:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/server/wm/WindowTraceBuffer;->mBufferUsedSize:I

    .line 81
    iget-object v2, p0, Lcom/android/server/wm/WindowTraceBuffer;->mBufferLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 82
    monitor-exit v1

    .line 83
    return-void

    .line 82
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 74
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trace object too large for the buffer. Buffer size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/WindowTraceBuffer;->mBufferCapacity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Object size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method contains([B)Z
    .locals 2
    .param p1, "other"    # [B

    .line 86
    iget-object v0, p0, Lcom/android/server/wm/WindowTraceBuffer;->mBuffer:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/-$$Lambda$WindowTraceBuffer$N2ubPF2l5_1sFrDHIeldAcm7Q30;

    invoke-direct {v1, p1}, Lcom/android/server/wm/-$$Lambda$WindowTraceBuffer$N2ubPF2l5_1sFrDHIeldAcm7Q30;-><init>([B)V

    .line 87
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 86
    return v0
.end method

.method getAvailableSpace()I
    .locals 2

    .line 53
    iget v0, p0, Lcom/android/server/wm/WindowTraceBuffer;->mBufferCapacity:I

    iget v1, p0, Lcom/android/server/wm/WindowTraceBuffer;->mBufferUsedSize:I

    sub-int/2addr v0, v1

    return v0
.end method

.method getBufferSize()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 143
    iget v0, p0, Lcom/android/server/wm/WindowTraceBuffer;->mBufferUsedSize:I

    return v0
.end method

.method getStatus()Ljava/lang/String;
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/android/server/wm/WindowTraceBuffer;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 148
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buffer size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowTraceBuffer;->mBufferCapacity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes\nBuffer usage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowTraceBuffer;->mBufferUsedSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes\nElements in the buffer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowTraceBuffer;->mBuffer:Ljava/util/Queue;

    .line 157
    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    .line 148
    return-object v1

    .line 158
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method resetBuffer()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/android/server/wm/WindowTraceBuffer;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowTraceBuffer;->mBuffer:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 137
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/WindowTraceBuffer;->mBufferUsedSize:I

    .line 138
    monitor-exit v0

    .line 139
    return-void

    .line 138
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setCapacity(I)V
    .locals 0
    .param p1, "capacity"    # I

    .line 61
    iput p1, p0, Lcom/android/server/wm/WindowTraceBuffer;->mBufferCapacity:I

    .line 62
    return-void
.end method

.method size()I
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/android/server/wm/WindowTraceBuffer;->mBuffer:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    return v0
.end method

.method writeTraceToFile(Ljava/io/File;)V
    .locals 7
    .param p1, "traceFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/android/server/wm/WindowTraceBuffer;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 95
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 96
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 97
    .local v1, "os":Ljava/io/OutputStream;
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p1, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 98
    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v2}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 99
    .local v2, "proto":Landroid/util/proto/ProtoOutputStream;
    const-wide v3, 0x10600000001L

    const-wide v5, 0x45434152544e4957L    # 4.655612620390422E25

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 100
    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 101
    iget-object v3, p0, Lcom/android/server/wm/WindowTraceBuffer;->mBuffer:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/proto/ProtoOutputStream;

    .line 102
    .local v4, "protoOutputStream":Landroid/util/proto/ProtoOutputStream;
    move-object v2, v4

    .line 103
    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v5

    .line 104
    .local v5, "protoBytes":[B
    invoke-virtual {v1, v5}, Ljava/io/OutputStream;->write([B)V

    .line 105
    .end local v4    # "protoOutputStream":Landroid/util/proto/ProtoOutputStream;
    .end local v5    # "protoBytes":[B
    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    .end local v2    # "proto":Landroid/util/proto/ProtoOutputStream;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 108
    .end local v1    # "os":Ljava/io/OutputStream;
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 109
    return-void

    .line 96
    .restart local v1    # "os":Ljava/io/OutputStream;
    :catchall_0
    move-exception v2

    .end local v1    # "os":Ljava/io/OutputStream;
    .end local p0    # "this":Lcom/android/server/wm/WindowTraceBuffer;
    .end local p1    # "traceFile":Ljava/io/File;
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 107
    .restart local v1    # "os":Ljava/io/OutputStream;
    .restart local p0    # "this":Lcom/android/server/wm/WindowTraceBuffer;
    .restart local p1    # "traceFile":Ljava/io/File;
    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v4

    :try_start_5
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/wm/WindowTraceBuffer;
    .end local p1    # "traceFile":Ljava/io/File;
    :goto_1
    throw v3

    .line 108
    .end local v1    # "os":Ljava/io/OutputStream;
    .restart local p0    # "this":Lcom/android/server/wm/WindowTraceBuffer;
    .restart local p1    # "traceFile":Ljava/io/File;
    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v1
.end method
