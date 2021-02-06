.class Lcom/android/server/RandomBlock;
.super Ljava/lang/Object;
.source "RandomBlock.java"


# static fields
.field private static final BLOCK_SIZE:I = 0x200

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "RandomBlock"


# instance fields
.field private block:[B


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/RandomBlock;->block:[B

    .line 39
    return-void
.end method

.method private static close(Ljava/io/Closeable;)V
    .locals 3
    .param p0, "c"    # Ljava/io/Closeable;

    .line 93
    if-nez p0, :cond_0

    .line 94
    return-void

    .line 96
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "RandomBlock"

    const-string v2, "IOException thrown while closing Closeable"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method static fromFile(Ljava/lang/String;)Lcom/android/server/RandomBlock;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    const/4 v0, 0x0

    .line 45
    .local v0, "stream":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 46
    invoke-static {v0}, Lcom/android/server/RandomBlock;->fromStream(Ljava/io/InputStream;)Lcom/android/server/RandomBlock;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    invoke-static {v0}, Lcom/android/server/RandomBlock;->close(Ljava/io/Closeable;)V

    .line 46
    return-object v1

    .line 48
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/android/server/RandomBlock;->close(Ljava/io/Closeable;)V

    .line 49
    throw v1
.end method

.method private static fromStream(Ljava/io/InputStream;)Lcom/android/server/RandomBlock;
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    new-instance v0, Lcom/android/server/RandomBlock;

    invoke-direct {v0}, Lcom/android/server/RandomBlock;-><init>()V

    .line 54
    .local v0, "retval":Lcom/android/server/RandomBlock;
    const/4 v1, 0x0

    .line 55
    .local v1, "total":I
    :goto_0
    const/16 v2, 0x200

    if-ge v1, v2, :cond_1

    .line 56
    iget-object v2, v0, Lcom/android/server/RandomBlock;->block:[B

    rsub-int v3, v1, 0x200

    invoke-virtual {p0, v2, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 57
    .local v2, "result":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 60
    add-int/2addr v1, v2

    .line 61
    .end local v2    # "result":I
    goto :goto_0

    .line 58
    .restart local v2    # "result":I
    :cond_0
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 62
    .end local v2    # "result":I
    :cond_1
    return-object v0
.end method

.method private toDataOut(Ljava/io/DataOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/android/server/RandomBlock;->block:[B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    .line 89
    return-void
.end method

.method private static truncateIfPossible(Ljava/io/RandomAccessFile;)V
    .locals 2
    .param p0, "f"    # Ljava/io/RandomAccessFile;

    .line 79
    const-wide/16 v0, 0x200

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 85
    :goto_0
    return-void
.end method


# virtual methods
.method toFile(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "sync"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    const/4 v0, 0x0

    .line 69
    .local v0, "out":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    if-eqz p2, :cond_0

    const-string/jumbo v2, "rws"

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "rw"

    :goto_0
    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 70
    invoke-direct {p0, v0}, Lcom/android/server/RandomBlock;->toDataOut(Ljava/io/DataOutput;)V

    .line 71
    invoke-static {v0}, Lcom/android/server/RandomBlock;->truncateIfPossible(Ljava/io/RandomAccessFile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    invoke-static {v0}, Lcom/android/server/RandomBlock;->close(Ljava/io/Closeable;)V

    .line 74
    nop

    .line 75
    return-void

    .line 73
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/android/server/RandomBlock;->close(Ljava/io/Closeable;)V

    .line 74
    throw v1
.end method
