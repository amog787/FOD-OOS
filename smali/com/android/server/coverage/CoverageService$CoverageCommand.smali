.class Lcom/android/server/coverage/CoverageService$CoverageCommand;
.super Landroid/os/ShellCommand;
.source "CoverageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/coverage/CoverageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CoverageCommand"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/coverage/CoverageService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/coverage/CoverageService$1;

    .line 66
    invoke-direct {p0}, Lcom/android/server/coverage/CoverageService$CoverageCommand;-><init>()V

    return-void
.end method

.method private onDump()I
    .locals 8

    .line 104
    invoke-virtual {p0}, Lcom/android/server/coverage/CoverageService$CoverageCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "dest":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 106
    const-string v0, "/data/local/tmp/coverage.ec"

    goto :goto_0

    .line 108
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    new-instance v2, Ljava/io/File;

    const-string v3, "coverage.ec"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 115
    .end local v1    # "f":Ljava/io/File;
    :cond_1
    :goto_0
    const-string/jumbo v1, "w"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/coverage/CoverageService$CoverageCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 116
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    const/4 v2, -0x1

    if-nez v1, :cond_2

    .line 117
    return v2

    .line 121
    :cond_2
    :try_start_0
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v4, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .local v3, "output":Ljava/io/BufferedOutputStream;
    :try_start_1
    invoke-static {}, Lorg/jacoco/agent/rt/RT;->getAgent()Lorg/jacoco/agent/rt/IAgent;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lorg/jacoco/agent/rt/IAgent;->getExecutionData(Z)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 124
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 125
    invoke-virtual {p0}, Lcom/android/server/coverage/CoverageService$CoverageCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v6, "Dumped coverage data to %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v5

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 129
    .end local v3    # "output":Ljava/io/BufferedOutputStream;
    nop

    .line 131
    return v5

    .line 121
    .restart local v3    # "output":Ljava/io/BufferedOutputStream;
    :catchall_0
    move-exception v4

    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v5

    :try_start_4
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "dest":Ljava/lang/String;
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local p0    # "this":Lcom/android/server/coverage/CoverageService$CoverageCommand;
    :goto_1
    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 126
    .end local v3    # "output":Ljava/io/BufferedOutputStream;
    .restart local v0    # "dest":Ljava/lang/String;
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Lcom/android/server/coverage/CoverageService$CoverageCommand;
    :catch_0
    move-exception v3

    .line 127
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/android/server/coverage/CoverageService$CoverageCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to dump coverage data: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 128
    return v2
.end method

.method private onReset()I
    .locals 2

    .line 140
    invoke-static {}, Lorg/jacoco/agent/rt/RT;->getAgent()Lorg/jacoco/agent/rt/IAgent;

    move-result-object v0

    invoke-interface {v0}, Lorg/jacoco/agent/rt/IAgent;->reset()V

    .line 141
    invoke-virtual {p0}, Lcom/android/server/coverage/CoverageService$CoverageCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Reset coverage data"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;

    .line 73
    const-string v0, "dump"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-direct {p0}, Lcom/android/server/coverage/CoverageService$CoverageCommand;->onDump()I

    move-result v0

    return v0

    .line 75
    :cond_0
    const-string/jumbo v0, "reset"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    invoke-direct {p0}, Lcom/android/server/coverage/CoverageService$CoverageCommand;->onReset()I

    move-result v0

    return v0

    .line 78
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/coverage/CoverageService$CoverageCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onHelp()V
    .locals 2

    .line 87
    invoke-virtual {p0}, Lcom/android/server/coverage/CoverageService$CoverageCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 88
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Coverage commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    const-string v1, "  dump [FILE]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    const-string v1, "    Dump code coverage to FILE."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    const-string v1, "  reset"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    const-string v1, "    Reset coverage information."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    return-void
.end method
