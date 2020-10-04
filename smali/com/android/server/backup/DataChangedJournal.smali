.class public Lcom/android/server/backup/DataChangedJournal;
.super Ljava/lang/Object;
.source "DataChangedJournal.java"


# static fields
.field private static final BUFFER_SIZE_BYTES:I = 0x2000

.field private static final FILE_NAME_PREFIX:Ljava/lang/String; = "journal"


# instance fields
.field private final mFile:Ljava/io/File;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 65
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

.method constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    .line 53
    return-void
.end method

.method static listJournals(Ljava/io/File;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "journalDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/backup/DataChangedJournal;",
            ">;"
        }
    .end annotation

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v0, "journals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/DataChangedJournal;>;"
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 143
    .local v4, "file":Ljava/io/File;
    new-instance v5, Lcom/android/server/backup/DataChangedJournal;

    invoke-direct {v5, v4}, Lcom/android/server/backup/DataChangedJournal;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .end local v4    # "file":Ljava/io/File;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 145
    :cond_0
    return-object v0
.end method

.method static newJournal(Ljava/io/File;)Lcom/android/server/backup/DataChangedJournal;
    .locals 3
    .param p0, "journalDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    new-instance v0, Lcom/android/server/backup/DataChangedJournal;

    .line 134
    const-string/jumbo v1, "journal"

    const/4 v2, 0x0

    invoke-static {v1, v2, p0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/backup/DataChangedJournal;-><init>(Ljava/io/File;)V

    .line 133
    return-object v0
.end method


# virtual methods
.method public addPackage(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    const-string/jumbo v2, "rws"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 63
    .local v0, "out":Ljava/io/RandomAccessFile;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 64
    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/android/server/backup/DataChangedJournal;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 66
    .end local v0    # "out":Ljava/io/RandomAccessFile;
    return-void

    .line 62
    .restart local v0    # "out":Ljava/io/RandomAccessFile;
    :catchall_0
    move-exception v1

    .end local v0    # "out":Ljava/io/RandomAccessFile;
    .end local p0    # "this":Lcom/android/server/backup/DataChangedJournal;
    .end local p1    # "packageName":Ljava/lang/String;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 65
    .restart local v0    # "out":Ljava/io/RandomAccessFile;
    .restart local p0    # "this":Lcom/android/server/backup/DataChangedJournal;
    .restart local p1    # "packageName":Ljava/lang/String;
    :catchall_1
    move-exception v2

    invoke-static {v1, v0}, Lcom/android/server/backup/DataChangedJournal;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method public delete()Z
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .line 109
    instance-of v0, p1, Lcom/android/server/backup/DataChangedJournal;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 110
    move-object v0, p1

    check-cast v0, Lcom/android/server/backup/DataChangedJournal;

    .line 112
    .local v0, "that":Lcom/android/server/backup/DataChangedJournal;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 113
    :catch_0
    move-exception v2

    .line 114
    .local v2, "exception":Ljava/io/IOException;
    return v1

    .line 117
    .end local v0    # "that":Lcom/android/server/backup/DataChangedJournal;
    .end local v2    # "exception":Ljava/io/IOException;
    :cond_0
    return v1
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/String;>;"
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v2, 0x2000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 75
    .local v0, "bufferedInputStream":Ljava/io/BufferedInputStream;
    nop

    .line 78
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 75
    .local v1, "dataInputStream":Ljava/io/DataInputStream;
    nop

    .line 80
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->available()I

    move-result v2

    if-lez v2, :cond_0

    .line 81
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "packageName":Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    .end local v2    # "packageName":Ljava/lang/String;
    goto :goto_0

    .line 84
    :cond_0
    const/4 v2, 0x0

    :try_start_2
    invoke-static {v2, v1}, Lcom/android/server/backup/DataChangedJournal;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .end local v1    # "dataInputStream":Ljava/io/DataInputStream;
    invoke-static {v2, v0}, Lcom/android/server/backup/DataChangedJournal;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 85
    .end local v0    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    return-void

    .line 75
    .restart local v0    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v1    # "dataInputStream":Ljava/io/DataInputStream;
    :catchall_0
    move-exception v2

    .end local v0    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v1    # "dataInputStream":Ljava/io/DataInputStream;
    .end local p0    # "this":Lcom/android/server/backup/DataChangedJournal;
    .end local p1    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/String;>;"
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 84
    .restart local v0    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v1    # "dataInputStream":Ljava/io/DataInputStream;
    .restart local p0    # "this":Lcom/android/server/backup/DataChangedJournal;
    .restart local p1    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/String;>;"
    :catchall_1
    move-exception v3

    :try_start_4
    invoke-static {v2, v1}, Lcom/android/server/backup/DataChangedJournal;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local v0    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local p0    # "this":Lcom/android/server/backup/DataChangedJournal;
    .end local p1    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/String;>;"
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 75
    .end local v1    # "dataInputStream":Ljava/io/DataInputStream;
    .restart local v0    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local p0    # "this":Lcom/android/server/backup/DataChangedJournal;
    .restart local p1    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/String;>;"
    :catchall_2
    move-exception v1

    .end local v0    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local p0    # "this":Lcom/android/server/backup/DataChangedJournal;
    .end local p1    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/String;>;"
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 84
    .restart local v0    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local p0    # "this":Lcom/android/server/backup/DataChangedJournal;
    .restart local p1    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/String;>;"
    :catchall_3
    move-exception v2

    invoke-static {v1, v0}, Lcom/android/server/backup/DataChangedJournal;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method public getPackages()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v0, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/backup/-$$Lambda$NsJlXDEZZRYyD6JsbnCsdcb4L4A;

    invoke-direct {v1, v0}, Lcom/android/server/backup/-$$Lambda$NsJlXDEZZRYyD6JsbnCsdcb4L4A;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/android/server/backup/DataChangedJournal;->forEach(Ljava/util/function/Consumer;)V

    .line 95
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
