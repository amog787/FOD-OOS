.class public Lcom/android/server/content/ContentShellCommand;
.super Landroid/os/ShellCommand;
.source "ContentShellCommand.java"


# instance fields
.field final mInterface:Landroid/content/IContentService;


# direct methods
.method constructor <init>(Landroid/content/IContentService;)V
    .locals 0
    .param p1, "service"    # Landroid/content/IContentService;

    .line 28
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/server/content/ContentShellCommand;->mInterface:Landroid/content/IContentService;

    .line 30
    return-void
.end method

.method private runResetTodayStats()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/android/server/content/ContentShellCommand;->mInterface:Landroid/content/IContentService;

    invoke-interface {v0}, Landroid/content/IContentService;->resetTodayStats()V

    .line 54
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 5
    .param p1, "cmd"    # Ljava/lang/String;

    .line 34
    if-nez p1, :cond_0

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/server/content/ContentShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/content/ContentShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 40
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x2f770c6b

    if-eq v2, v3, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const-string/jumbo v2, "reset-today-stats"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :goto_0
    move v2, v1

    :goto_1
    if-eqz v2, :cond_3

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/server/content/ContentShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 42
    :cond_3
    invoke-direct {p0}, Lcom/android/server/content/ContentShellCommand;->runResetTodayStats()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 46
    :catch_0
    move-exception v2

    .line 47
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 49
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public onHelp()V
    .locals 2

    .line 59
    invoke-virtual {p0}, Lcom/android/server/content/ContentShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 60
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Content service commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 61
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 62
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 63
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 64
    const-string v1, "  reset-today-stats"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    const-string v1, "    Reset 1-day sync stats."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 67
    return-void
.end method
