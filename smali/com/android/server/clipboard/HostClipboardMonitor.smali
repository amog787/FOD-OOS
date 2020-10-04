.class Lcom/android/server/clipboard/HostClipboardMonitor;
.super Ljava/lang/Object;
.source "ClipboardService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/clipboard/HostClipboardMonitor$HostClipboardCallback;
    }
.end annotation


# static fields
.field private static final PIPE_DEVICE:Ljava/lang/String; = "/dev/qemu_pipe"

.field private static final PIPE_NAME:Ljava/lang/String; = "pipe:clipboard"


# instance fields
.field private mHostClipboardCallback:Lcom/android/server/clipboard/HostClipboardMonitor$HostClipboardCallback;

.field private mPipe:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Lcom/android/server/clipboard/HostClipboardMonitor$HostClipboardCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/server/clipboard/HostClipboardMonitor$HostClipboardCallback;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    .line 109
    iput-object p1, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mHostClipboardCallback:Lcom/android/server/clipboard/HostClipboardMonitor$HostClipboardCallback;

    .line 110
    return-void
.end method

.method private openPipe()V
    .locals 4

    .line 90
    const-string/jumbo v0, "pipe:clipboard"

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [B

    .line 91
    .local v1, "b":[B
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    aput-byte v3, v1, v2

    .line 92
    nop

    .line 93
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 97
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 92
    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v2, "/dev/qemu_pipe"

    const-string/jumbo v3, "rw"

    invoke-direct {v0, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    .line 99
    iget-object v0, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v1    # "b":[B
    goto :goto_1

    .line 100
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    iget-object v1, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 103
    :catch_1
    move-exception v1

    :cond_0
    :goto_0
    nop

    .line 104
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    .line 106
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 114
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/android/server/clipboard/HostClipboardMonitor;->openPipe()V

    .line 121
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_1

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    .line 124
    .local v0, "size":I
    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    move v0, v1

    .line 125
    new-array v1, v0, [B

    .line 126
    .local v1, "receivedData":[B
    iget-object v2, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 127
    iget-object v2, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mHostClipboardCallback:Lcom/android/server/clipboard/HostClipboardMonitor$HostClipboardCallback;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v2, v3}, Lcom/android/server/clipboard/HostClipboardMonitor$HostClipboardCallback;->onHostClipboardUpdated(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "size":I
    .end local v1    # "receivedData":[B
    goto :goto_2

    .line 134
    :catch_0
    move-exception v0

    :goto_2
    goto :goto_0

    .line 129
    :catch_1
    move-exception v0

    .line 131
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    iget-object v1, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    .line 132
    :catch_2
    move-exception v1

    :goto_3
    nop

    .line 133
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 136
    :cond_1
    return-void
.end method

.method public setHostClipboard(Ljava/lang/String;)V
    .locals 3
    .param p1, "content"    # Ljava/lang/String;

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 142
    iget-object v0, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :cond_0
    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set host clipboard "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 145
    const-string v2, "HostClipboardMonitor"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method
