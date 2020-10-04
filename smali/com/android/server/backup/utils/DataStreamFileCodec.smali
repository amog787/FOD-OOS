.class public final Lcom/android/server/backup/utils/DataStreamFileCodec;
.super Ljava/lang/Object;
.source "DataStreamFileCodec.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mCodec:Lcom/android/server/backup/utils/DataStreamCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/backup/utils/DataStreamCodec<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mFile:Ljava/io/File;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 59
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/android/server/backup/utils/DataStreamCodec;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/android/server/backup/utils/DataStreamCodec<",
            "TT;>;)V"
        }
    .end annotation

    .line 42
    .local p0, "this":Lcom/android/server/backup/utils/DataStreamFileCodec;, "Lcom/android/server/backup/utils/DataStreamFileCodec<TT;>;"
    .local p2, "codec":Lcom/android/server/backup/utils/DataStreamCodec;, "Lcom/android/server/backup/utils/DataStreamCodec<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/server/backup/utils/DataStreamFileCodec;->mFile:Ljava/io/File;

    .line 44
    iput-object p2, p0, Lcom/android/server/backup/utils/DataStreamFileCodec;->mCodec:Lcom/android/server/backup/utils/DataStreamCodec;

    .line 45
    return-void
.end method


# virtual methods
.method public deserialize()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    .local p0, "this":Lcom/android/server/backup/utils/DataStreamFileCodec;, "Lcom/android/server/backup/utils/DataStreamFileCodec<TT;>;"
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/android/server/backup/utils/DataStreamFileCodec;->mFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 54
    .local v0, "fileInputStream":Ljava/io/FileInputStream;
    nop

    .line 56
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 54
    .local v1, "dataInputStream":Ljava/io/DataInputStream;
    nop

    .line 58
    :try_start_1
    iget-object v2, p0, Lcom/android/server/backup/utils/DataStreamFileCodec;->mCodec:Lcom/android/server/backup/utils/DataStreamCodec;

    invoke-interface {v2, v1}, Lcom/android/server/backup/utils/DataStreamCodec;->deserialize(Ljava/io/DataInputStream;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    const/4 v3, 0x0

    :try_start_2
    invoke-static {v3, v1}, Lcom/android/server/backup/utils/DataStreamFileCodec;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {v3, v0}, Lcom/android/server/backup/utils/DataStreamFileCodec;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 58
    return-object v2

    .line 54
    :catchall_0
    move-exception v2

    .end local v0    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v1    # "dataInputStream":Ljava/io/DataInputStream;
    .end local p0    # "this":Lcom/android/server/backup/utils/DataStreamFileCodec;, "Lcom/android/server/backup/utils/DataStreamFileCodec<TT;>;"
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 59
    .restart local v0    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v1    # "dataInputStream":Ljava/io/DataInputStream;
    .restart local p0    # "this":Lcom/android/server/backup/utils/DataStreamFileCodec;, "Lcom/android/server/backup/utils/DataStreamFileCodec<TT;>;"
    :catchall_1
    move-exception v3

    :try_start_4
    invoke-static {v2, v1}, Lcom/android/server/backup/utils/DataStreamFileCodec;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local v0    # "fileInputStream":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/android/server/backup/utils/DataStreamFileCodec;, "Lcom/android/server/backup/utils/DataStreamFileCodec<TT;>;"
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 54
    .end local v1    # "dataInputStream":Ljava/io/DataInputStream;
    .restart local v0    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/backup/utils/DataStreamFileCodec;, "Lcom/android/server/backup/utils/DataStreamFileCodec<TT;>;"
    :catchall_2
    move-exception v1

    .end local v0    # "fileInputStream":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/android/server/backup/utils/DataStreamFileCodec;, "Lcom/android/server/backup/utils/DataStreamFileCodec<TT;>;"
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 59
    .restart local v0    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/backup/utils/DataStreamFileCodec;, "Lcom/android/server/backup/utils/DataStreamFileCodec<TT;>;"
    :catchall_3
    move-exception v2

    invoke-static {v1, v0}, Lcom/android/server/backup/utils/DataStreamFileCodec;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method public serialize(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    .local p0, "this":Lcom/android/server/backup/utils/DataStreamFileCodec;, "Lcom/android/server/backup/utils/DataStreamFileCodec<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/android/server/backup/utils/DataStreamFileCodec;->mFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 69
    .local v0, "fileOutputStream":Ljava/io/FileOutputStream;
    nop

    .line 71
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 69
    .local v1, "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    nop

    .line 72
    :try_start_1
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 69
    .local v2, "dataOutputStream":Ljava/io/DataOutputStream;
    nop

    .line 74
    :try_start_2
    iget-object v3, p0, Lcom/android/server/backup/utils/DataStreamFileCodec;->mCodec:Lcom/android/server/backup/utils/DataStreamCodec;

    invoke-interface {v3, p1, v2}, Lcom/android/server/backup/utils/DataStreamCodec;->serialize(Ljava/lang/Object;Ljava/io/DataOutputStream;)V

    .line 75
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    const/4 v3, 0x0

    :try_start_3
    invoke-static {v3, v2}, Lcom/android/server/backup/utils/DataStreamFileCodec;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v2    # "dataOutputStream":Ljava/io/DataOutputStream;
    :try_start_4
    invoke-static {v3, v1}, Lcom/android/server/backup/utils/DataStreamFileCodec;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .end local v1    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    invoke-static {v3, v0}, Lcom/android/server/backup/utils/DataStreamFileCodec;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 77
    .end local v0    # "fileOutputStream":Ljava/io/FileOutputStream;
    return-void

    .line 69
    .restart local v0    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v1    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v2    # "dataOutputStream":Ljava/io/DataOutputStream;
    :catchall_0
    move-exception v3

    .end local v0    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v1    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .end local v2    # "dataOutputStream":Ljava/io/DataOutputStream;
    .end local p0    # "this":Lcom/android/server/backup/utils/DataStreamFileCodec;, "Lcom/android/server/backup/utils/DataStreamFileCodec<TT;>;"
    .end local p1    # "t":Ljava/lang/Object;, "TT;"
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 76
    .restart local v0    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v1    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v2    # "dataOutputStream":Ljava/io/DataOutputStream;
    .restart local p0    # "this":Lcom/android/server/backup/utils/DataStreamFileCodec;, "Lcom/android/server/backup/utils/DataStreamFileCodec<TT;>;"
    .restart local p1    # "t":Ljava/lang/Object;, "TT;"
    :catchall_1
    move-exception v4

    :try_start_6
    invoke-static {v3, v2}, Lcom/android/server/backup/utils/DataStreamFileCodec;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local v0    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v1    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .end local p0    # "this":Lcom/android/server/backup/utils/DataStreamFileCodec;, "Lcom/android/server/backup/utils/DataStreamFileCodec<TT;>;"
    .end local p1    # "t":Ljava/lang/Object;, "TT;"
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 69
    .end local v2    # "dataOutputStream":Ljava/io/DataOutputStream;
    .restart local v0    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v1    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local p0    # "this":Lcom/android/server/backup/utils/DataStreamFileCodec;, "Lcom/android/server/backup/utils/DataStreamFileCodec<TT;>;"
    .restart local p1    # "t":Ljava/lang/Object;, "TT;"
    :catchall_2
    move-exception v2

    .end local v0    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v1    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .end local p0    # "this":Lcom/android/server/backup/utils/DataStreamFileCodec;, "Lcom/android/server/backup/utils/DataStreamFileCodec<TT;>;"
    .end local p1    # "t":Ljava/lang/Object;, "TT;"
    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 76
    .restart local v0    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v1    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local p0    # "this":Lcom/android/server/backup/utils/DataStreamFileCodec;, "Lcom/android/server/backup/utils/DataStreamFileCodec<TT;>;"
    .restart local p1    # "t":Ljava/lang/Object;, "TT;"
    :catchall_3
    move-exception v3

    :try_start_8
    invoke-static {v2, v1}, Lcom/android/server/backup/utils/DataStreamFileCodec;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local v0    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local p0    # "this":Lcom/android/server/backup/utils/DataStreamFileCodec;, "Lcom/android/server/backup/utils/DataStreamFileCodec<TT;>;"
    .end local p1    # "t":Ljava/lang/Object;, "TT;"
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 69
    .end local v1    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v0    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Lcom/android/server/backup/utils/DataStreamFileCodec;, "Lcom/android/server/backup/utils/DataStreamFileCodec<TT;>;"
    .restart local p1    # "t":Ljava/lang/Object;, "TT;"
    :catchall_4
    move-exception v1

    .end local v0    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local p0    # "this":Lcom/android/server/backup/utils/DataStreamFileCodec;, "Lcom/android/server/backup/utils/DataStreamFileCodec<TT;>;"
    .end local p1    # "t":Ljava/lang/Object;, "TT;"
    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 76
    .restart local v0    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Lcom/android/server/backup/utils/DataStreamFileCodec;, "Lcom/android/server/backup/utils/DataStreamFileCodec<TT;>;"
    .restart local p1    # "t":Ljava/lang/Object;, "TT;"
    :catchall_5
    move-exception v2

    invoke-static {v1, v0}, Lcom/android/server/backup/utils/DataStreamFileCodec;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
.end method
