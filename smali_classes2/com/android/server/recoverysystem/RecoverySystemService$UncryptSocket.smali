.class public Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;
.super Ljava/lang/Object;
.source "RecoverySystemService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/recoverysystem/RecoverySystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UncryptSocket"
.end annotation


# instance fields
.field private mInputStream:Ljava/io/DataInputStream;

.field private mLocalSocket:Landroid/net/LocalSocket;

.field private mOutputStream:Ljava/io/DataOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->mInputStream:Ljava/io/DataInputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 556
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->mOutputStream:Ljava/io/DataOutputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 557
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 558
    return-void
.end method

.method public connectService()Z
    .locals 7

    .line 486
    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V

    iput-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->mLocalSocket:Landroid/net/LocalSocket;

    .line 487
    const/4 v0, 0x0

    .line 491
    .local v0, "done":Z
    const/4 v1, 0x0

    .local v1, "retry":I
    :goto_0
    const/16 v2, 0x1e

    const-string v3, "RecoverySystemService"

    if-ge v1, v2, :cond_0

    .line 493
    :try_start_0
    iget-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->mLocalSocket:Landroid/net/LocalSocket;

    new-instance v4, Landroid/net/LocalSocketAddress;

    const-string v5, "uncrypt"

    sget-object v6, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v4, v5, v6}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v2, v4}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    const/4 v0, 0x1

    .line 496
    goto :goto_2

    .line 497
    :catch_0
    move-exception v2

    .line 499
    .local v2, "ignored":Ljava/io/IOException;
    const-wide/16 v4, 0x3e8

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 502
    goto :goto_1

    .line 500
    :catch_1
    move-exception v4

    .line 501
    .local v4, "e":Ljava/lang/InterruptedException;
    const-string v5, "Interrupted:"

    invoke-static {v3, v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 491
    .end local v2    # "ignored":Ljava/io/IOException;
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 505
    .end local v1    # "retry":I
    :cond_0
    :goto_2
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 506
    const-string v2, "Timed out connecting to uncrypt socket"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    .line 508
    return v1

    .line 512
    :cond_1
    :try_start_2
    new-instance v2, Ljava/io/DataInputStream;

    iget-object v3, p0, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->mInputStream:Ljava/io/DataInputStream;

    .line 513
    new-instance v2, Ljava/io/DataOutputStream;

    iget-object v3, p0, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->mOutputStream:Ljava/io/DataOutputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 517
    nop

    .line 519
    const/4 v1, 0x1

    return v1

    .line 514
    :catch_2
    move-exception v2

    .line 515
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    .line 516
    return v1
.end method

.method public getPercentageUncrypted()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 540
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->mInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    return v0
.end method

.method public sendAck()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 548
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->mOutputStream:Ljava/io/DataOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 549
    return-void
.end method

.method public sendCommand(Ljava/lang/String;)V
    .locals 4
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 529
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 530
    .local v0, "cmdUtf8":[B
    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->mOutputStream:Ljava/io/DataOutputStream;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 531
    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->mOutputStream:Ljava/io/DataOutputStream;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 532
    return-void
.end method
