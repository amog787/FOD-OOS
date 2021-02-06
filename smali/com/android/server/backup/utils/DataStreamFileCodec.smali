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

    .line 56
    .local v0, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 58
    .local v1, "dataInputStream":Ljava/io/DataInputStream;
    :try_start_1
    iget-object v2, p0, Lcom/android/server/backup/utils/DataStreamFileCodec;->mCodec:Lcom/android/server/backup/utils/DataStreamCodec;

    invoke-interface {v2, v1}, Lcom/android/server/backup/utils/DataStreamCodec;->deserialize(Ljava/io/DataInputStream;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 58
    return-object v2

    .line 54
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "fileInputStream":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/android/server/backup/utils/DataStreamFileCodec;, "Lcom/android/server/backup/utils/DataStreamFileCodec<TT;>;"
    :goto_0
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v1    # "dataInputStream":Ljava/io/DataInputStream;
    .restart local v0    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/backup/utils/DataStreamFileCodec;, "Lcom/android/server/backup/utils/DataStreamFileCodec<TT;>;"
    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
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

    .line 71
    .local v0, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 72
    .local v1, "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    :try_start_1
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 74
    .local v2, "dataOutputStream":Ljava/io/DataOutputStream;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/backup/utils/DataStreamFileCodec;->mCodec:Lcom/android/server/backup/utils/DataStreamCodec;

    invoke-interface {v3, p1, v2}, Lcom/android/server/backup/utils/DataStreamCodec;->serialize(Ljava/lang/Object;Ljava/io/DataOutputStream;)V

    .line 75
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v2    # "dataOutputStream":Ljava/io/DataOutputStream;
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .end local v1    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 77
    .end local v0    # "fileOutputStream":Ljava/io/FileOutputStream;
    return-void

    .line 69
    .restart local v0    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v1    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v2    # "dataOutputStream":Ljava/io/DataOutputStream;
    :catchall_0
    move-exception v3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_6
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v1    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .end local p0    # "this":Lcom/android/server/backup/utils/DataStreamFileCodec;, "Lcom/android/server/backup/utils/DataStreamFileCodec<TT;>;"
    .end local p1    # "t":Ljava/lang/Object;, "TT;"
    :goto_0
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v2    # "dataOutputStream":Ljava/io/DataOutputStream;
    .restart local v0    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v1    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local p0    # "this":Lcom/android/server/backup/utils/DataStreamFileCodec;, "Lcom/android/server/backup/utils/DataStreamFileCodec<TT;>;"
    .restart local p1    # "t":Ljava/lang/Object;, "TT;"
    :catchall_2
    move-exception v2

    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v3

    :try_start_8
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local p0    # "this":Lcom/android/server/backup/utils/DataStreamFileCodec;, "Lcom/android/server/backup/utils/DataStreamFileCodec<TT;>;"
    .end local p1    # "t":Ljava/lang/Object;, "TT;"
    :goto_1
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .end local v1    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v0    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Lcom/android/server/backup/utils/DataStreamFileCodec;, "Lcom/android/server/backup/utils/DataStreamFileCodec<TT;>;"
    .restart local p1    # "t":Ljava/lang/Object;, "TT;"
    :catchall_4
    move-exception v1

    :try_start_9
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1
.end method
