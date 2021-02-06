.class final Lcom/android/server/NativeDaemonConnector;
.super Ljava/lang/Object;
.source "NativeDaemonConnector.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/os/Handler$Callback;
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NativeDaemonConnector$ResponseQueue;,
        Lcom/android/server/NativeDaemonConnector$Command;,
        Lcom/android/server/NativeDaemonConnector$NativeDaemonFailureException;,
        Lcom/android/server/NativeDaemonConnector$NativeDaemonArgumentException;,
        Lcom/android/server/NativeDaemonConnector$SensitiveArg;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIMEOUT:J = 0xea60L

.field private static final VDBG:Z = false

.field private static final WARN_EXECUTE_DELAY_MS:J = 0x1f4L


# instance fields
.field private final BUFFER_SIZE:I

.field private final TAG:Ljava/lang/String;

.field private mCallbackHandler:Landroid/os/Handler;

.field private mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

.field private final mDaemonLock:Ljava/lang/Object;

.field private volatile mDebug:Z

.field private mLocalLog:Landroid/util/LocalLog;

.field private final mLooper:Landroid/os/Looper;

.field private mOutputStream:Ljava/io/OutputStream;

.field private final mResponseQueue:Lcom/android/server/NativeDaemonConnector$ResponseQueue;

.field private mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mSocket:Ljava/lang/String;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private volatile mWarnIfHeld:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;ILandroid/os/PowerManager$WakeLock;)V
    .locals 9
    .param p1, "callbacks"    # Lcom/android/server/INativeDaemonConnectorCallbacks;
    .param p2, "socket"    # Ljava/lang/String;
    .param p3, "responseQueueSize"    # I
    .param p4, "logTag"    # Ljava/lang/String;
    .param p5, "maxLogSize"    # I
    .param p6, "wl"    # Landroid/os/PowerManager$WakeLock;

    .line 88
    nop

    .line 89
    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    .line 88
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;ILandroid/os/PowerManager$WakeLock;Landroid/os/Looper;)V

    .line 90
    return-void
.end method

.method constructor <init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;ILandroid/os/PowerManager$WakeLock;Landroid/os/Looper;)V
    .locals 2
    .param p1, "callbacks"    # Lcom/android/server/INativeDaemonConnectorCallbacks;
    .param p2, "socket"    # Ljava/lang/String;
    .param p3, "responseQueueSize"    # I
    .param p4, "logTag"    # Ljava/lang/String;
    .param p5, "maxLogSize"    # I
    .param p6, "wl"    # Landroid/os/PowerManager$WakeLock;
    .param p7, "looper"    # Landroid/os/Looper;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/NativeDaemonConnector;->mDebug:Z

    .line 82
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    .line 84
    const/16 v1, 0x1000

    iput v1, p0, Lcom/android/server/NativeDaemonConnector;->BUFFER_SIZE:I

    .line 95
    iput-object p1, p0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    .line 96
    iput-object p2, p0, Lcom/android/server/NativeDaemonConnector;->mSocket:Ljava/lang/String;

    .line 97
    new-instance v1, Lcom/android/server/NativeDaemonConnector$ResponseQueue;

    invoke-direct {v1, p3}, Lcom/android/server/NativeDaemonConnector$ResponseQueue;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/NativeDaemonConnector;->mResponseQueue:Lcom/android/server/NativeDaemonConnector$ResponseQueue;

    .line 98
    iput-object p6, p0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 99
    if-eqz p6, :cond_0

    .line 100
    const/4 v1, 0x1

    invoke-virtual {p6, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 102
    :cond_0
    iput-object p7, p0, Lcom/android/server/NativeDaemonConnector;->mLooper:Landroid/os/Looper;

    .line 103
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/NativeDaemonConnector;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 104
    if-eqz p4, :cond_1

    move-object v0, p4

    goto :goto_0

    :cond_1
    const-string v0, "NativeDaemonConnector"

    :goto_0
    iput-object v0, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    .line 105
    new-instance v0, Landroid/util/LocalLog;

    invoke-direct {v0, p5}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mLocalLog:Landroid/util/LocalLog;

    .line 106
    return-void
.end method

.method static appendEscaped(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 6
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "arg"    # Ljava/lang/String;

    .line 528
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 529
    .local v0, "hasSpaces":Z
    :goto_0
    const/16 v1, 0x22

    if-eqz v0, :cond_1

    .line 530
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 533
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 534
    .local v2, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_4

    .line 535
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 537
    .local v4, "c":C
    if-ne v4, v1, :cond_2

    .line 538
    const-string v5, "\\\""

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 539
    :cond_2
    const/16 v5, 0x5c

    if-ne v4, v5, :cond_3

    .line 540
    const-string v5, "\\\\"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 542
    :cond_3
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 534
    .end local v4    # "c":C
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 546
    .end local v3    # "i":I
    :cond_4
    if-eqz v0, :cond_5

    .line 547
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 549
    :cond_5
    return-void
.end method

.method private determineSocketAddress()Landroid/net/LocalSocketAddress;
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mSocket:Ljava/lang/String;

    const-string v1, "__test__"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    .line 187
    new-instance v0, Landroid/net/LocalSocketAddress;

    iget-object v1, p0, Lcom/android/server/NativeDaemonConnector;->mSocket:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 189
    :cond_0
    new-instance v0, Landroid/net/LocalSocketAddress;

    iget-object v1, p0, Lcom/android/server/NativeDaemonConnector;->mSocket:Ljava/lang/String;

    sget-object v2, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v1, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    return-object v0
.end method

.method private static isShuttingDown()Z
    .locals 2

    .line 150
    const-string/jumbo v0, "sys.shutdown.requested"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "shutdownAct":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private listenToSocket()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 197
    .local v2, "socket":Landroid/net/LocalSocket;
    const/4 v3, 0x0

    :try_start_0
    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    move-object v2, v0

    .line 198
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/NativeDaemonConnector;->determineSocketAddress()Landroid/net/LocalSocketAddress;

    move-result-object v0

    move-object v4, v0

    .line 200
    .local v4, "address":Landroid/net/LocalSocketAddress;
    invoke-virtual {v2, v4}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 202
    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    move-object v5, v0

    .line 203
    .local v5, "inputStream":Ljava/io/InputStream;
    iget-object v6, v1, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 204
    :try_start_2
    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    .line 205
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 207
    :try_start_3
    iget-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    invoke-interface {v0}, Lcom/android/server/INativeDaemonConnectorCallbacks;->onDaemonConnected()V

    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, "fdList":[Ljava/io/FileDescriptor;
    const/16 v6, 0x1000

    new-array v6, v6, [B

    .line 211
    .local v6, "buffer":[B
    const/4 v7, 0x0

    .line 214
    .local v7, "start":I
    :goto_0
    rsub-int v8, v7, 0x1000

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v8
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    .line 215
    .local v8, "count":I
    if-gez v8, :cond_1

    .line 216
    :try_start_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "got "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " reading with start = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    .line 217
    nop

    .line 284
    .end local v0    # "fdList":[Ljava/io/FileDescriptor;
    .end local v4    # "address":Landroid/net/LocalSocketAddress;
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "buffer":[B
    .end local v7    # "start":I
    .end local v8    # "count":I
    iget-object v4, v1, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    monitor-enter v4

    .line 285
    :try_start_5
    iget-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_0

    .line 287
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "closing stream for "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/NativeDaemonConnector;->mSocket:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 288
    iget-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 291
    goto :goto_1

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/io/IOException;
    :try_start_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed closing output stream: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 292
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    iput-object v3, v1, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    .line 294
    :cond_0
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 297
    nop

    .line 298
    :try_start_8
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 302
    goto :goto_2

    .line 300
    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 301
    .local v0, "ex":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed closing socket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 303
    .end local v0    # "ex":Ljava/io/IOException;
    nop

    .line 304
    :goto_2
    return-void

    .line 294
    :catchall_0
    move-exception v0

    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v0

    .line 219
    .local v0, "fdList":[Ljava/io/FileDescriptor;
    .restart local v4    # "address":Landroid/net/LocalSocketAddress;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "buffer":[B
    .restart local v7    # "start":I
    .restart local v8    # "count":I
    :cond_1
    :try_start_a
    invoke-virtual {v2}, Landroid/net/LocalSocket;->getAncillaryFileDescriptors()[Ljava/io/FileDescriptor;

    move-result-object v9

    .line 222
    .end local v0    # "fdList":[Ljava/io/FileDescriptor;
    .local v9, "fdList":[Ljava/io/FileDescriptor;
    add-int/2addr v8, v7

    .line 223
    const/4 v0, 0x0

    .line 225
    .end local v7    # "start":I
    .local v0, "start":I
    const/4 v7, 0x0

    move v10, v7

    move v7, v0

    .end local v0    # "start":I
    .restart local v7    # "start":I
    .local v10, "i":I
    :goto_3
    if-ge v10, v8, :cond_8

    .line 226
    aget-byte v11, v6, v10

    if-nez v11, :cond_7

    .line 229
    new-instance v11, Ljava/lang/String;

    sub-int v12, v10, v7

    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v11, v6, v7, v12, v13}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 232
    .local v11, "rawEvent":Ljava/lang/String;
    const/4 v12, 0x0

    .line 234
    .local v12, "releaseWl":Z
    nop

    .line 235
    :try_start_b
    invoke-static {v11, v9}, Lcom/android/server/NativeDaemonEvent;->parseRawEvent(Ljava/lang/String;[Ljava/io/FileDescriptor;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v13

    .line 237
    .local v13, "event":Lcom/android/server/NativeDaemonEvent;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "RCV <- {"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v15, "}"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v1, v14}, Lcom/android/server/NativeDaemonConnector;->log(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v13}, Lcom/android/server/NativeDaemonEvent;->isClassUnsolicited()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 241
    iget-object v14, v1, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    invoke-virtual {v13}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v15

    invoke-interface {v14, v15}, Lcom/android/server/INativeDaemonConnectorCallbacks;->onCheckHoldWakeLock(I)Z

    move-result v14
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-eqz v14, :cond_2

    :try_start_c
    iget-object v14, v1, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v14, :cond_2

    .line 243
    iget-object v14, v1, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 244
    const/4 v12, 0x1

    goto :goto_4

    .line 257
    .end local v13    # "event":Lcom/android/server/NativeDaemonEvent;
    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    goto :goto_9

    .line 254
    :catch_2
    move-exception v0

    move-object/from16 v16, v2

    goto :goto_7

    .line 246
    .restart local v13    # "event":Lcom/android/server/NativeDaemonEvent;
    :cond_2
    :goto_4
    :try_start_d
    iget-object v14, v1, Lcom/android/server/NativeDaemonConnector;->mCallbackHandler:Landroid/os/Handler;

    .line 247
    invoke-virtual {v13}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v15

    invoke-direct/range {p0 .. p0}, Lcom/android/server/NativeDaemonConnector;->uptimeMillisInt()I

    move-result v3

    invoke-virtual {v13}, Lcom/android/server/NativeDaemonEvent;->getRawEvent()Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 246
    move-object/from16 v16, v2

    const/4 v2, 0x0

    .end local v2    # "socket":Landroid/net/LocalSocket;
    .local v16, "socket":Landroid/net/LocalSocket;
    :try_start_e
    invoke-virtual {v14, v15, v3, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 248
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, v1, Lcom/android/server/NativeDaemonConnector;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 249
    const/4 v2, 0x0

    move v12, v2

    .line 251
    .end local v0    # "msg":Landroid/os/Message;
    :cond_3
    goto :goto_5

    .line 252
    .end local v16    # "socket":Landroid/net/LocalSocket;
    .restart local v2    # "socket":Landroid/net/LocalSocket;
    :cond_4
    move-object/from16 v16, v2

    .end local v2    # "socket":Landroid/net/LocalSocket;
    .restart local v16    # "socket":Landroid/net/LocalSocket;
    iget-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mResponseQueue:Lcom/android/server/NativeDaemonConnector$ResponseQueue;

    invoke-virtual {v13}, Lcom/android/server/NativeDaemonEvent;->getCmdNumber()I

    move-result v2

    invoke-virtual {v0, v2, v13}, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->add(ILcom/android/server/NativeDaemonEvent;)V
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 257
    .end local v13    # "event":Lcom/android/server/NativeDaemonEvent;
    :goto_5
    if-eqz v12, :cond_5

    .line 258
    :try_start_f
    iget-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    :goto_6
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    goto :goto_8

    .line 254
    :catch_3
    move-exception v0

    goto :goto_7

    .line 257
    .end local v16    # "socket":Landroid/net/LocalSocket;
    .restart local v2    # "socket":Landroid/net/LocalSocket;
    :catchall_2
    move-exception v0

    move-object/from16 v16, v2

    .end local v2    # "socket":Landroid/net/LocalSocket;
    .restart local v16    # "socket":Landroid/net/LocalSocket;
    goto :goto_9

    .line 254
    .end local v16    # "socket":Landroid/net/LocalSocket;
    .restart local v2    # "socket":Landroid/net/LocalSocket;
    :catch_4
    move-exception v0

    move-object/from16 v16, v2

    .line 255
    .end local v2    # "socket":Landroid/net/LocalSocket;
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .restart local v16    # "socket":Landroid/net/LocalSocket;
    :goto_7
    :try_start_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem parsing message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/NativeDaemonConnector;->log(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 257
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    if-eqz v12, :cond_5

    .line 258
    :try_start_11
    iget-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_6

    .line 262
    :cond_5
    :goto_8
    add-int/lit8 v0, v10, 0x1

    move v7, v0

    .end local v7    # "start":I
    .local v0, "start":I
    goto :goto_a

    .line 257
    .end local v0    # "start":I
    .restart local v7    # "start":I
    :catchall_3
    move-exception v0

    :goto_9
    if-eqz v12, :cond_6

    .line 258
    iget-object v2, v1, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 260
    :cond_6
    nop

    .end local v16    # "socket":Landroid/net/LocalSocket;
    .end local p0    # "this":Lcom/android/server/NativeDaemonConnector;
    throw v0

    .line 226
    .end local v11    # "rawEvent":Ljava/lang/String;
    .end local v12    # "releaseWl":Z
    .restart local v2    # "socket":Landroid/net/LocalSocket;
    .restart local p0    # "this":Lcom/android/server/NativeDaemonConnector;
    :cond_7
    move-object/from16 v16, v2

    .line 225
    .end local v2    # "socket":Landroid/net/LocalSocket;
    .restart local v16    # "socket":Landroid/net/LocalSocket;
    :goto_a
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, v16

    const/4 v3, 0x0

    goto/16 :goto_3

    .end local v16    # "socket":Landroid/net/LocalSocket;
    .restart local v2    # "socket":Landroid/net/LocalSocket;
    :cond_8
    move-object/from16 v16, v2

    .line 266
    .end local v2    # "socket":Landroid/net/LocalSocket;
    .end local v10    # "i":I
    .restart local v16    # "socket":Landroid/net/LocalSocket;
    if-nez v7, :cond_9

    .line 267
    const-string v0, "RCV incomplete"

    invoke-direct {v1, v0}, Lcom/android/server/NativeDaemonConnector;->log(Ljava/lang/String;)V

    .line 272
    :cond_9
    if-eq v7, v8, :cond_a

    .line 273
    rsub-int v0, v7, 0x1000

    .line 274
    .local v0, "remaining":I
    const/4 v2, 0x0

    invoke-static {v6, v7, v6, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 275
    nop

    .line 276
    .end local v7    # "start":I
    .local v0, "start":I
    move v7, v0

    goto :goto_b

    .line 277
    .end local v0    # "start":I
    .restart local v7    # "start":I
    :cond_a
    const/4 v0, 0x0

    move v7, v0

    .line 279
    .end local v8    # "count":I
    :goto_b
    move-object v0, v9

    move-object/from16 v2, v16

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 205
    .end local v6    # "buffer":[B
    .end local v7    # "start":I
    .end local v9    # "fdList":[Ljava/io/FileDescriptor;
    .end local v16    # "socket":Landroid/net/LocalSocket;
    .restart local v2    # "socket":Landroid/net/LocalSocket;
    :catchall_4
    move-exception v0

    move-object/from16 v16, v2

    .end local v2    # "socket":Landroid/net/LocalSocket;
    .restart local v16    # "socket":Landroid/net/LocalSocket;
    :goto_c
    :try_start_12
    monitor-exit v6
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .end local v16    # "socket":Landroid/net/LocalSocket;
    .end local p0    # "this":Lcom/android/server/NativeDaemonConnector;
    :try_start_13
    throw v0
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    .line 284
    .end local v4    # "address":Landroid/net/LocalSocketAddress;
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v16    # "socket":Landroid/net/LocalSocket;
    .restart local p0    # "this":Lcom/android/server/NativeDaemonConnector;
    :catchall_5
    move-exception v0

    move-object v3, v0

    move-object/from16 v2, v16

    goto :goto_e

    .line 280
    :catch_5
    move-exception v0

    move-object/from16 v2, v16

    goto :goto_d

    .line 205
    .restart local v4    # "address":Landroid/net/LocalSocketAddress;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    :catchall_6
    move-exception v0

    goto :goto_c

    .line 284
    .end local v4    # "address":Landroid/net/LocalSocketAddress;
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v16    # "socket":Landroid/net/LocalSocket;
    .restart local v2    # "socket":Landroid/net/LocalSocket;
    :catchall_7
    move-exception v0

    move-object/from16 v16, v2

    move-object v3, v0

    .end local v2    # "socket":Landroid/net/LocalSocket;
    .restart local v16    # "socket":Landroid/net/LocalSocket;
    goto :goto_e

    .line 280
    .end local v16    # "socket":Landroid/net/LocalSocket;
    .restart local v2    # "socket":Landroid/net/LocalSocket;
    :catch_6
    move-exception v0

    move-object/from16 v16, v2

    .end local v2    # "socket":Landroid/net/LocalSocket;
    .restart local v16    # "socket":Landroid/net/LocalSocket;
    goto :goto_d

    .line 284
    .end local v16    # "socket":Landroid/net/LocalSocket;
    .restart local v2    # "socket":Landroid/net/LocalSocket;
    :catchall_8
    move-exception v0

    move-object v3, v0

    goto :goto_e

    .line 280
    :catch_7
    move-exception v0

    .line 281
    .local v0, "ex":Ljava/io/IOException;
    :goto_d
    :try_start_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Communications error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 282
    nop

    .end local v2    # "socket":Landroid/net/LocalSocket;
    .end local p0    # "this":Lcom/android/server/NativeDaemonConnector;
    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    .line 284
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v2    # "socket":Landroid/net/LocalSocket;
    .restart local p0    # "this":Lcom/android/server/NativeDaemonConnector;
    :goto_e
    iget-object v4, v1, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    monitor-enter v4

    .line 285
    :try_start_15
    iget-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    if-eqz v0, :cond_b

    .line 287
    :try_start_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "closing stream for "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/NativeDaemonConnector;->mSocket:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 288
    iget-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_8
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    .line 291
    goto :goto_f

    .line 289
    :catch_8
    move-exception v0

    .line 290
    .local v0, "e":Ljava/io/IOException;
    :try_start_17
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed closing output stream: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 292
    .end local v0    # "e":Ljava/io/IOException;
    :goto_f
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    .line 294
    :cond_b
    monitor-exit v4
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    .line 297
    if-eqz v2, :cond_c

    .line 298
    :try_start_18
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_9

    goto :goto_10

    .line 300
    :catch_9
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 301
    .local v0, "ex":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed closing socket: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    goto :goto_11

    .line 302
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_c
    :goto_10
    nop

    .line 303
    :goto_11
    throw v3

    .line 294
    :catchall_9
    move-exception v0

    :try_start_19
    monitor-exit v4
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "logstring"    # Ljava/lang/String;

    .line 601
    iget-boolean v0, p0, Lcom/android/server/NativeDaemonConnector;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 603
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "logstring"    # Ljava/lang/String;

    .line 606
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 608
    return-void
.end method

.method static varargs makeCommand(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .param p0, "rawBuilder"    # Ljava/lang/StringBuilder;
    .param p1, "logBuilder"    # Ljava/lang/StringBuilder;
    .param p2, "sequenceNumber"    # I
    .param p3, "cmd"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 329
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_4

    .line 332
    const/16 v1, 0x20

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_3

    .line 336
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    array-length v2, p4

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p4, v3

    .line 339
    .local v4, "arg":Ljava/lang/Object;
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 340
    .local v5, "argString":Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_1

    .line 344
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 347
    invoke-static {p0, v5}, Lcom/android/server/NativeDaemonConnector;->appendEscaped(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 348
    instance-of v6, v4, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    if-eqz v6, :cond_0

    .line 349
    const-string v6, "[scrubbed]"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 351
    :cond_0
    invoke-static {p1, v5}, Lcom/android/server/NativeDaemonConnector;->appendEscaped(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 338
    .end local v4    # "arg":Ljava/lang/Object;
    .end local v5    # "argString":Ljava/lang/String;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 341
    .restart local v4    # "arg":Ljava/lang/Object;
    .restart local v5    # "argString":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    .end local v4    # "arg":Ljava/lang/Object;
    .end local v5    # "argString":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 356
    return-void

    .line 333
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Arguments must be separate from command"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private uptimeMillisInt()I
    .locals 2

    .line 121
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 595
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 596
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 597
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mResponseQueue:Lcom/android/server/NativeDaemonConnector$ResponseQueue;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 598
    return-void
.end method

.method public varargs execute(JLjava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    .locals 4
    .param p1, "timeoutMs"    # J
    .param p3, "cmd"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .line 412
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/NativeDaemonConnector;->executeForList(JLjava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    .line 413
    .local v0, "events":[Lcom/android/server/NativeDaemonEvent;
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 417
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1

    .line 414
    :cond_0
    new-instance v1, Lcom/android/server/NativeDaemonConnectorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected exactly one response, but received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    .locals 2
    .param p1, "cmd"    # Lcom/android/server/NativeDaemonConnector$Command;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .line 392
    invoke-static {p1}, Lcom/android/server/NativeDaemonConnector$Command;->access$000(Lcom/android/server/NativeDaemonConnector$Command;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/NativeDaemonConnector$Command;->access$100(Lcom/android/server/NativeDaemonConnector$Command;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    return-object v0
.end method

.method public varargs execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .line 407
    const-wide/32 v0, 0xea60

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/NativeDaemonConnector;->execute(JLjava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    return-object v0
.end method

.method public varargs executeForList(JLjava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;
    .locals 21
    .param p1, "timeoutMs"    # J
    .param p3, "cmd"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .line 464
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mWarnIfHeld:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mWarnIfHeld:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, v1, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is holding 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/NativeDaemonConnector;->mWarnIfHeld:Ljava/lang/Object;

    .line 466
    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    .line 465
    invoke-static {v0, v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 469
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 471
    .local v2, "startTime":J
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 473
    .local v4, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/NativeDaemonEvent;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v0

    .line 474
    .local v5, "rawBuilder":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v0

    .line 475
    .local v6, "logBuilder":Ljava/lang/StringBuilder;
    iget-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v7

    .line 477
    .local v7, "sequenceNumber":I
    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/server/NativeDaemonConnector;->makeCommand(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 479
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 480
    .local v10, "rawCmd":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 482
    .local v11, "logCmd":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SND -> {"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "}"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/NativeDaemonConnector;->log(Ljava/lang/String;)V

    .line 484
    iget-object v12, v1, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    monitor-enter v12

    .line 485
    :try_start_0
    iget-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_6

    .line 489
    :try_start_1
    iget-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 492
    nop

    .line 494
    :try_start_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 496
    const/4 v0, 0x0

    .line 498
    .local v0, "event":Lcom/android/server/NativeDaemonEvent;
    :goto_0
    iget-object v12, v1, Lcom/android/server/NativeDaemonConnector;->mResponseQueue:Lcom/android/server/NativeDaemonConnector$ResponseQueue;

    move-wide/from16 v13, p1

    invoke-virtual {v12, v7, v13, v14, v11}, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->remove(IJLjava/lang/String;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    .line 499
    if-eqz v0, :cond_5

    .line 504
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->isClassContinue()Z

    move-result v12

    if-nez v12, :cond_4

    .line 507
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    .line 508
    .local v15, "endTime":J
    sub-long v17, v15, v2

    const-wide/16 v19, 0x1f4

    cmp-long v12, v17, v19

    if-lez v12, :cond_1

    .line 509
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v5

    .end local v5    # "rawBuilder":Ljava/lang/StringBuilder;
    .local v17, "rawBuilder":Ljava/lang/StringBuilder;
    const-string v5, "NDC Command {"

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "} took too long ("

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v18, v6

    .end local v6    # "logBuilder":Ljava/lang/StringBuilder;
    .local v18, "logBuilder":Ljava/lang/StringBuilder;
    sub-long v5, v15, v2

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms)"

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 508
    .end local v17    # "rawBuilder":Ljava/lang/StringBuilder;
    .end local v18    # "logBuilder":Ljava/lang/StringBuilder;
    .restart local v5    # "rawBuilder":Ljava/lang/StringBuilder;
    .restart local v6    # "logBuilder":Ljava/lang/StringBuilder;
    :cond_1
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 512
    .end local v5    # "rawBuilder":Ljava/lang/StringBuilder;
    .end local v6    # "logBuilder":Ljava/lang/StringBuilder;
    .restart local v17    # "rawBuilder":Ljava/lang/StringBuilder;
    .restart local v18    # "logBuilder":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->isClassClientError()Z

    move-result v5

    if-nez v5, :cond_3

    .line 515
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->isClassServerError()Z

    move-result v5

    if-nez v5, :cond_2

    .line 519
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Lcom/android/server/NativeDaemonEvent;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/android/server/NativeDaemonEvent;

    return-object v5

    .line 516
    :cond_2
    new-instance v5, Lcom/android/server/NativeDaemonConnector$NativeDaemonFailureException;

    invoke-direct {v5, v11, v0}, Lcom/android/server/NativeDaemonConnector$NativeDaemonFailureException;-><init>(Ljava/lang/String;Lcom/android/server/NativeDaemonEvent;)V

    throw v5

    .line 513
    :cond_3
    new-instance v5, Lcom/android/server/NativeDaemonConnector$NativeDaemonArgumentException;

    invoke-direct {v5, v11, v0}, Lcom/android/server/NativeDaemonConnector$NativeDaemonArgumentException;-><init>(Ljava/lang/String;Lcom/android/server/NativeDaemonEvent;)V

    throw v5

    .line 505
    .end local v15    # "endTime":J
    .end local v17    # "rawBuilder":Ljava/lang/StringBuilder;
    .end local v18    # "logBuilder":Ljava/lang/StringBuilder;
    .restart local v5    # "rawBuilder":Ljava/lang/StringBuilder;
    .restart local v6    # "logBuilder":Ljava/lang/StringBuilder;
    :cond_4
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .end local v5    # "rawBuilder":Ljava/lang/StringBuilder;
    .end local v6    # "logBuilder":Ljava/lang/StringBuilder;
    .restart local v17    # "rawBuilder":Ljava/lang/StringBuilder;
    .restart local v18    # "logBuilder":Ljava/lang/StringBuilder;
    goto :goto_0

    .line 500
    .end local v17    # "rawBuilder":Ljava/lang/StringBuilder;
    .end local v18    # "logBuilder":Ljava/lang/StringBuilder;
    .restart local v5    # "rawBuilder":Ljava/lang/StringBuilder;
    .restart local v6    # "logBuilder":Ljava/lang/StringBuilder;
    :cond_5
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .end local v5    # "rawBuilder":Ljava/lang/StringBuilder;
    .end local v6    # "logBuilder":Ljava/lang/StringBuilder;
    .restart local v17    # "rawBuilder":Ljava/lang/StringBuilder;
    .restart local v18    # "logBuilder":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "timed-out waiting for response to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 501
    new-instance v5, Lcom/android/server/NativeDaemonTimeoutException;

    invoke-direct {v5, v11, v0}, Lcom/android/server/NativeDaemonTimeoutException;-><init>(Ljava/lang/String;Lcom/android/server/NativeDaemonEvent;)V

    throw v5

    .line 490
    .end local v0    # "event":Lcom/android/server/NativeDaemonEvent;
    .end local v17    # "rawBuilder":Ljava/lang/StringBuilder;
    .end local v18    # "logBuilder":Ljava/lang/StringBuilder;
    .restart local v5    # "rawBuilder":Ljava/lang/StringBuilder;
    .restart local v6    # "logBuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    move-wide/from16 v13, p1

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 491
    .end local v5    # "rawBuilder":Ljava/lang/StringBuilder;
    .end local v6    # "logBuilder":Ljava/lang/StringBuilder;
    .local v0, "e":Ljava/io/IOException;
    .restart local v17    # "rawBuilder":Ljava/lang/StringBuilder;
    .restart local v18    # "logBuilder":Ljava/lang/StringBuilder;
    :try_start_3
    new-instance v5, Lcom/android/server/NativeDaemonConnectorException;

    const-string/jumbo v6, "problem sending command"

    invoke-direct {v5, v6, v0}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "startTime":J
    .end local v4    # "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/NativeDaemonEvent;>;"
    .end local v7    # "sequenceNumber":I
    .end local v10    # "rawCmd":Ljava/lang/String;
    .end local v11    # "logCmd":Ljava/lang/String;
    .end local v17    # "rawBuilder":Ljava/lang/StringBuilder;
    .end local v18    # "logBuilder":Ljava/lang/StringBuilder;
    .end local p0    # "this":Lcom/android/server/NativeDaemonConnector;
    .end local p1    # "timeoutMs":J
    .end local p3    # "cmd":Ljava/lang/String;
    .end local p4    # "args":[Ljava/lang/Object;
    throw v5

    .line 486
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "startTime":J
    .restart local v4    # "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/NativeDaemonEvent;>;"
    .restart local v5    # "rawBuilder":Ljava/lang/StringBuilder;
    .restart local v6    # "logBuilder":Ljava/lang/StringBuilder;
    .restart local v7    # "sequenceNumber":I
    .restart local v10    # "rawCmd":Ljava/lang/String;
    .restart local v11    # "logCmd":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/NativeDaemonConnector;
    .restart local p1    # "timeoutMs":J
    .restart local p3    # "cmd":Ljava/lang/String;
    .restart local p4    # "args":[Ljava/lang/Object;
    :cond_6
    move-wide/from16 v13, p1

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .end local v5    # "rawBuilder":Ljava/lang/StringBuilder;
    .end local v6    # "logBuilder":Ljava/lang/StringBuilder;
    .restart local v17    # "rawBuilder":Ljava/lang/StringBuilder;
    .restart local v18    # "logBuilder":Ljava/lang/StringBuilder;
    new-instance v0, Lcom/android/server/NativeDaemonConnectorException;

    const-string/jumbo v5, "missing output stream"

    invoke-direct {v0, v5}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;)V

    .end local v2    # "startTime":J
    .end local v4    # "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/NativeDaemonEvent;>;"
    .end local v7    # "sequenceNumber":I
    .end local v10    # "rawCmd":Ljava/lang/String;
    .end local v11    # "logCmd":Ljava/lang/String;
    .end local v17    # "rawBuilder":Ljava/lang/StringBuilder;
    .end local v18    # "logBuilder":Ljava/lang/StringBuilder;
    .end local p0    # "this":Lcom/android/server/NativeDaemonConnector;
    .end local p1    # "timeoutMs":J
    .end local p3    # "cmd":Ljava/lang/String;
    .end local p4    # "args":[Ljava/lang/Object;
    throw v0

    .line 494
    .restart local v2    # "startTime":J
    .restart local v4    # "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/NativeDaemonEvent;>;"
    .restart local v5    # "rawBuilder":Ljava/lang/StringBuilder;
    .restart local v6    # "logBuilder":Ljava/lang/StringBuilder;
    .restart local v7    # "sequenceNumber":I
    .restart local v10    # "rawCmd":Ljava/lang/String;
    .restart local v11    # "logCmd":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/NativeDaemonConnector;
    .restart local p1    # "timeoutMs":J
    .restart local p3    # "cmd":Ljava/lang/String;
    .restart local p4    # "args":[Ljava/lang/Object;
    :catchall_0
    move-exception v0

    move-wide/from16 v13, p1

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .end local v5    # "rawBuilder":Ljava/lang/StringBuilder;
    .end local v6    # "logBuilder":Ljava/lang/StringBuilder;
    .restart local v17    # "rawBuilder":Ljava/lang/StringBuilder;
    .restart local v18    # "logBuilder":Ljava/lang/StringBuilder;
    :goto_2
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method public executeForList(Lcom/android/server/NativeDaemonConnector$Command;)[Lcom/android/server/NativeDaemonEvent;
    .locals 2
    .param p1, "cmd"    # Lcom/android/server/NativeDaemonConnector$Command;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .line 431
    invoke-static {p1}, Lcom/android/server/NativeDaemonConnector$Command;->access$000(Lcom/android/server/NativeDaemonConnector$Command;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/NativeDaemonConnector$Command;->access$100(Lcom/android/server/NativeDaemonConnector$Command;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    return-object v0
.end method

.method public varargs executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .line 447
    const-wide/32 v0, 0xea60

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/NativeDaemonConnector;->executeForList(JLjava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .line 157
    const-string v0, "NDC event {%s} took too long: %dms"

    const-string v1, "NDC event {%s} processed too late: %dms"

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 158
    .local v2, "event":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/NativeDaemonConnector;->uptimeMillisInt()I

    move-result v3

    .line 159
    .local v3, "start":I
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 161
    .local v4, "sent":I
    const/4 v5, 0x2

    const-wide/16 v6, 0x1f4

    const/4 v8, 0x0

    const/4 v9, 0x1

    :try_start_0
    iget-object v10, p0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    iget v11, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/android/server/NativeDaemonEvent;->unescapeArgs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v2, v12}, Lcom/android/server/INativeDaemonConnectorCallbacks;->onEvent(ILjava/lang/String;[Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 162
    const-string v10, "Unhandled event \'%s\'"

    new-array v11, v9, [Ljava/lang/Object;

    aput-object v2, v11, v8

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/NativeDaemonConnector;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :cond_0
    iget-object v10, p0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    iget v11, p1, Landroid/os/Message;->what:I

    invoke-interface {v10, v11}, Lcom/android/server/INativeDaemonConnectorCallbacks;->onCheckHoldWakeLock(I)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v10, :cond_1

    .line 168
    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 170
    :cond_1
    invoke-direct {p0}, Lcom/android/server/NativeDaemonConnector;->uptimeMillisInt()I

    move-result v10

    .line 171
    .local v10, "end":I
    if-le v3, v4, :cond_2

    sub-int v11, v3, v4

    int-to-long v11, v11

    cmp-long v11, v11, v6

    if-lez v11, :cond_2

    .line 172
    new-array v11, v5, [Ljava/lang/Object;

    aput-object v2, v11, v8

    sub-int v12, v3, v4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-static {v1, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 174
    :cond_2
    if-le v10, v3, :cond_3

    sub-int v1, v10, v3

    int-to-long v11, v1

    cmp-long v1, v11, v6

    if-lez v1, :cond_3

    .line 175
    new-array v1, v5, [Ljava/lang/Object;

    aput-object v2, v1, v8

    sub-int v5, v10, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 177
    .end local v10    # "end":I
    :cond_3
    goto :goto_1

    .line 167
    :catchall_0
    move-exception v10

    goto :goto_2

    .line 164
    :catch_0
    move-exception v10

    .line 165
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error handling \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\': "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    .end local v10    # "e":Ljava/lang/Exception;
    iget-object v10, p0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    iget v11, p1, Landroid/os/Message;->what:I

    invoke-interface {v10, v11}, Lcom/android/server/INativeDaemonConnectorCallbacks;->onCheckHoldWakeLock(I)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v10, :cond_4

    .line 168
    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 170
    :cond_4
    invoke-direct {p0}, Lcom/android/server/NativeDaemonConnector;->uptimeMillisInt()I

    move-result v10

    .line 171
    .local v10, "end":I
    if-le v3, v4, :cond_5

    sub-int v11, v3, v4

    int-to-long v11, v11

    cmp-long v11, v11, v6

    if-lez v11, :cond_5

    .line 172
    new-array v11, v5, [Ljava/lang/Object;

    aput-object v2, v11, v8

    sub-int v12, v3, v4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-static {v1, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 174
    :cond_5
    if-le v10, v3, :cond_3

    sub-int v1, v10, v3

    int-to-long v11, v1

    cmp-long v1, v11, v6

    if-lez v1, :cond_3

    .line 175
    new-array v1, v5, [Ljava/lang/Object;

    aput-object v2, v1, v8

    sub-int v5, v10, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 178
    .end local v10    # "end":I
    :goto_1
    return v9

    .line 167
    :goto_2
    iget-object v11, p0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    iget v12, p1, Landroid/os/Message;->what:I

    invoke-interface {v11, v12}, Lcom/android/server/INativeDaemonConnectorCallbacks;->onCheckHoldWakeLock(I)Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v11, :cond_6

    .line 168
    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 170
    :cond_6
    invoke-direct {p0}, Lcom/android/server/NativeDaemonConnector;->uptimeMillisInt()I

    move-result v11

    .line 171
    .local v11, "end":I
    if-le v3, v4, :cond_7

    sub-int v12, v3, v4

    int-to-long v12, v12

    cmp-long v12, v12, v6

    if-lez v12, :cond_7

    .line 172
    new-array v12, v5, [Ljava/lang/Object;

    aput-object v2, v12, v8

    sub-int v13, v3, v4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v9

    invoke-static {v1, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 174
    :cond_7
    if-le v11, v3, :cond_8

    sub-int v1, v11, v3

    int-to-long v12, v1

    cmp-long v1, v12, v6

    if-lez v1, :cond_8

    .line 175
    new-array v1, v5, [Ljava/lang/Object;

    aput-object v2, v1, v8

    sub-int v5, v11, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 177
    .end local v11    # "end":I
    :cond_8
    throw v10
.end method

.method public monitor()V
    .locals 2

    .line 591
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    monitor-exit v0

    .line 592
    return-void

    .line 591
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 3

    .line 135
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/NativeDaemonConnector;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mCallbackHandler:Landroid/os/Handler;

    .line 138
    :goto_0
    invoke-static {}, Lcom/android/server/NativeDaemonConnector;->isShuttingDown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 140
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/NativeDaemonConnector;->listenToSocket()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_1
    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in NativeDaemonConnector: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lcom/android/server/NativeDaemonConnector;->isShuttingDown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 144
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-wide/16 v1, 0x1388

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method public setDebug(Z)V
    .locals 0
    .param p1, "debug"    # Z

    .line 113
    iput-boolean p1, p0, Lcom/android/server/NativeDaemonConnector;->mDebug:Z

    .line 114
    return-void
.end method

.method public setWarnIfHeld(Ljava/lang/Object;)V
    .locals 1
    .param p1, "warnIfHeld"    # Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mWarnIfHeld:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 130
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/NativeDaemonConnector;->mWarnIfHeld:Ljava/lang/Object;

    .line 131
    return-void
.end method

.method public waitForCallbacks()V
    .locals 4

    .line 364
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/NativeDaemonConnector;->mLooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 368
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 369
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    iget-object v1, p0, Lcom/android/server/NativeDaemonConnector;->mCallbackHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/NativeDaemonConnector$1;

    invoke-direct {v2, p0, v0}, Lcom/android/server/NativeDaemonConnector$1;-><init>(Lcom/android/server/NativeDaemonConnector;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 376
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    goto :goto_0

    .line 377
    :catch_0
    move-exception v1

    .line 378
    .local v1, "e":Ljava/lang/InterruptedException;
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    const-string v3, "Interrupted while waiting for unsolicited response handling"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 380
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void

    .line 365
    .end local v0    # "latch":Ljava/util/concurrent/CountDownLatch;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must not call this method on callback thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
