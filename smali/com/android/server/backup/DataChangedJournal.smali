.class public Lcom/android/server/backup/DataChangedJournal;
.super Ljava/lang/Object;
.source "DataChangedJournal.java"


# static fields
.field private static final BUFFER_SIZE_BYTES:I = 0x2000

.field private static final FILE_NAME_PREFIX:Ljava/lang/String; = "journal"

.field private static final TAG:Ljava/lang/String; = "DataChangedJournal"


# instance fields
.field private final mFile:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    .line 55
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

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v0, "journals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/DataChangedJournal;>;"
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 145
    .local v1, "journalFiles":[Ljava/io/File;
    if-nez v1, :cond_0

    .line 146
    const-string v2, "DataChangedJournal"

    const-string v3, "Failed to read journal files"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-object v0

    .line 149
    :cond_0
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 150
    .local v4, "file":Ljava/io/File;
    new-instance v5, Lcom/android/server/backup/DataChangedJournal;

    invoke-direct {v5, v4}, Lcom/android/server/backup/DataChangedJournal;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    .end local v4    # "file":Ljava/io/File;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 152
    :cond_1
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

    .line 135
    new-instance v0, Lcom/android/server/backup/DataChangedJournal;

    .line 136
    const-string/jumbo v1, "journal"

    const/4 v2, 0x0

    invoke-static {v1, v2, p0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/backup/DataChangedJournal;-><init>(Ljava/io/File;)V

    .line 135
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

    .line 64
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    const-string/jumbo v2, "rws"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 65
    .local v0, "out":Ljava/io/RandomAccessFile;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 66
    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 68
    .end local v0    # "out":Ljava/io/RandomAccessFile;
    return-void

    .line 64
    .restart local v0    # "out":Ljava/io/RandomAccessFile;
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public delete()Z
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .line 111
    instance-of v0, p1, Lcom/android/server/backup/DataChangedJournal;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 112
    move-object v0, p1

    check-cast v0, Lcom/android/server/backup/DataChangedJournal;

    .line 114
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

    .line 115
    :catch_0
    move-exception v2

    .line 116
    .local v2, "exception":Ljava/io/IOException;
    return v1

    .line 119
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

    .line 78
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/String;>;"
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v2, 0x2000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 80
    .local v0, "bufferedInputStream":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 82
    .local v1, "dataInputStream":Ljava/io/DataInputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->available()I

    move-result v2

    if-lez v2, :cond_0

    .line 83
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "packageName":Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    .end local v2    # "packageName":Ljava/lang/String;
    goto :goto_0

    .line 86
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .end local v1    # "dataInputStream":Ljava/io/DataInputStream;
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 87
    .end local v0    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    return-void

    .line 77
    .restart local v0    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v1    # "dataInputStream":Ljava/io/DataInputStream;
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local p0    # "this":Lcom/android/server/backup/DataChangedJournal;
    .end local p1    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/String;>;"
    :goto_1
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v1    # "dataInputStream":Ljava/io/DataInputStream;
    .restart local v0    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local p0    # "this":Lcom/android/server/backup/DataChangedJournal;
    .restart local p1    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/String;>;"
    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1
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

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v0, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/backup/-$$Lambda$NsJlXDEZZRYyD6JsbnCsdcb4L4A;

    invoke-direct {v1, v0}, Lcom/android/server/backup/-$$Lambda$NsJlXDEZZRYyD6JsbnCsdcb4L4A;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/android/server/backup/DataChangedJournal;->forEach(Ljava/util/function/Consumer;)V

    .line 97
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
