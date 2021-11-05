.class public Lcom/android/server/pm/ShortcutDumpFiles;
.super Ljava/lang/Object;
.source "ShortcutDumpFiles.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ShortcutService"


# instance fields
.field private final mService:Lcom/android/server/pm/ShortcutService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/pm/ShortcutService;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/server/pm/ShortcutDumpFiles;->mService:Lcom/android/server/pm/ShortcutService;

    .line 43
    return-void
.end method

.method static synthetic lambda$dumpAll$1(Ljava/io/File;)Z
    .locals 1
    .param p0, "f"    # Ljava/io/File;

    .line 79
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$dumpAll$2(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "f"    # Ljava/io/File;

    .line 84
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$save$0([BLjava/io/PrintWriter;)V
    .locals 2
    .param p0, "utf8bytes"    # [B
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 72
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 73
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dumpAll(Ljava/io/PrintWriter;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutDumpFiles;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->getDumpPath()Ljava/io/File;

    move-result-object v0

    .line 79
    .local v0, "directory":Ljava/io/File;
    sget-object v1, Lcom/android/server/pm/-$$Lambda$ShortcutDumpFiles$v6wMz6MRa9pgSnEDM_9bjvrLaKY;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutDumpFiles$v6wMz6MRa9pgSnEDM_9bjvrLaKY;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 80
    .local v1, "files":[Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_3

    .line 84
    :cond_0
    sget-object v2, Lcom/android/server/pm/-$$Lambda$ShortcutDumpFiles$stGgHzhh-NVWPgDSwmH2ybAWRE8;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutDumpFiles$stGgHzhh-NVWPgDSwmH2ybAWRE8;

    invoke-static {v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 86
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 87
    .local v4, "path":Ljava/io/File;
    const-string v5, "*** Dumping: "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    const-string/jumbo v5, "mtime: "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .local v5, "reader":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 96
    .local v6, "line":Ljava/lang/String;
    :goto_1
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    if-eqz v7, :cond_1

    .line 97
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 99
    .end local v6    # "line":Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 86
    .end local v4    # "path":Ljava/io/File;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 93
    .restart local v4    # "path":Ljava/io/File;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/pm/ShortcutDumpFiles;
    .end local p1    # "pw":Ljava/io/PrintWriter;
    :goto_2
    throw v2

    .line 103
    .end local v0    # "directory":Ljava/io/File;
    .end local v1    # "files":[Ljava/io/File;
    .end local v4    # "path":Ljava/io/File;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local p0    # "this":Lcom/android/server/pm/ShortcutDumpFiles;
    .restart local p1    # "pw":Ljava/io/PrintWriter;
    :cond_2
    goto :goto_4

    .line 81
    .restart local v0    # "directory":Ljava/io/File;
    .restart local v1    # "files":[Ljava/io/File;
    :cond_3
    :goto_3
    const-string v2, "  No dump files found."

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 82
    return-void

    .line 101
    .end local v0    # "directory":Ljava/io/File;
    .end local v1    # "files":[Ljava/io/File;
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ShortcutService"

    const-string v2, "Failed to print dump files"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return-void
.end method

.method public save(Ljava/lang/String;Ljava/util/function/Consumer;)Z
    .locals 7
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Ljava/io/PrintWriter;",
            ">;)Z"
        }
    .end annotation

    .line 47
    .local p2, "dumper":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/io/PrintWriter;>;"
    const-string v0, "ShortcutService"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/ShortcutDumpFiles;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v2}, Lcom/android/server/pm/ShortcutService;->getDumpPath()Ljava/io/File;

    move-result-object v2

    .line 48
    .local v2, "directory":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 49
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return v1

    .line 54
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 60
    .local v3, "path":Ljava/io/File;
    new-instance v4, Ljava/io/PrintWriter;

    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v4, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .local v4, "pw":Ljava/io/PrintWriter;
    :try_start_1
    invoke-interface {p2, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    :try_start_2
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 64
    .end local v4    # "pw":Ljava/io/PrintWriter;
    const/4 v0, 0x1

    return v0

    .line 60
    .restart local v4    # "pw":Ljava/io/PrintWriter;
    :catchall_0
    move-exception v5

    :try_start_3
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v6

    :try_start_4
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/pm/ShortcutDumpFiles;
    .end local p1    # "filename":Ljava/lang/String;
    .end local p2    # "dumper":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/io/PrintWriter;>;"
    :goto_0
    throw v5
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 65
    .end local v2    # "directory":Ljava/io/File;
    .end local v3    # "path":Ljava/io/File;
    .end local v4    # "pw":Ljava/io/PrintWriter;
    .restart local p0    # "this":Lcom/android/server/pm/ShortcutDumpFiles;
    .restart local p1    # "filename":Ljava/lang/String;
    .restart local p2    # "dumper":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/io/PrintWriter;>;"
    :catch_0
    move-exception v2

    .line 66
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create dump file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    return v1
.end method

.method public save(Ljava/lang/String;[B)Z
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "utf8bytes"    # [B

    .line 72
    new-instance v0, Lcom/android/server/pm/-$$Lambda$ShortcutDumpFiles$rwmVVp6PnQCcurF7D6VzrdNqEdk;

    invoke-direct {v0, p2}, Lcom/android/server/pm/-$$Lambda$ShortcutDumpFiles$rwmVVp6PnQCcurF7D6VzrdNqEdk;-><init>([B)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ShortcutDumpFiles;->save(Ljava/lang/String;Ljava/util/function/Consumer;)Z

    move-result v0

    return v0
.end method
