.class public Lcom/android/server/appprediction/AppPredictionManagerServiceShellCommand;
.super Landroid/os/ShellCommand;
.source "AppPredictionManagerServiceShellCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mService:Lcom/android/server/appprediction/AppPredictionManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lcom/android/server/appprediction/AppPredictionManagerServiceShellCommand;

    .line 30
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/appprediction/AppPredictionManagerServiceShellCommand;->TAG:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/android/server/appprediction/AppPredictionManagerService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/appprediction/AppPredictionManagerService;

    .line 34
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/server/appprediction/AppPredictionManagerServiceShellCommand;->mService:Lcom/android/server/appprediction/AppPredictionManagerService;

    .line 36
    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 8
    .param p1, "cmd"    # Ljava/lang/String;

    .line 40
    if-nez p1, :cond_0

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/server/appprediction/AppPredictionManagerServiceShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/appprediction/AppPredictionManagerServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 44
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x1bc62

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const-string/jumbo v1, "set"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v4

    goto :goto_1

    :goto_0
    move v1, v3

    :goto_1
    if-eqz v1, :cond_3

    .line 65
    invoke-virtual {p0, p1}, Lcom/android/server/appprediction/AppPredictionManagerServiceShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 46
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/appprediction/AppPredictionManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "what":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v5, 0x77724739

    if-eq v2, v5, :cond_5

    :cond_4
    goto :goto_2

    :cond_5
    const-string/jumbo v2, "temporary-service"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v3, v4

    :goto_2
    if-eqz v3, :cond_6

    goto :goto_3

    .line 49
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/appprediction/AppPredictionManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 50
    .local v2, "userId":I
    invoke-virtual {p0}, Lcom/android/server/appprediction/AppPredictionManagerServiceShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, "serviceName":Ljava/lang/String;
    if-nez v3, :cond_7

    .line 52
    iget-object v5, p0, Lcom/android/server/appprediction/AppPredictionManagerServiceShellCommand;->mService:Lcom/android/server/appprediction/AppPredictionManagerService;

    invoke-virtual {v5, v2}, Lcom/android/server/appprediction/AppPredictionManagerService;->resetTemporaryService(I)V

    .line 53
    return v4

    .line 55
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/appprediction/AppPredictionManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 56
    .local v5, "duration":I
    iget-object v6, p0, Lcom/android/server/appprediction/AppPredictionManagerServiceShellCommand;->mService:Lcom/android/server/appprediction/AppPredictionManagerService;

    invoke-virtual {v6, v2, v3, v5}, Lcom/android/server/appprediction/AppPredictionManagerService;->setTemporaryService(ILjava/lang/String;I)V

    .line 57
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AppPredictionService temporarily set to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 59
    nop

    .line 63
    .end local v1    # "what":Ljava/lang/String;
    .end local v2    # "userId":I
    .end local v3    # "serviceName":Ljava/lang/String;
    .end local v5    # "duration":I
    :goto_3
    nop

    .line 67
    return v4
.end method

.method public onHelp()V
    .locals 3

    .line 72
    const-string v0, ""

    invoke-virtual {p0}, Lcom/android/server/appprediction/AppPredictionManagerServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 73
    .local v1, "pw":Ljava/io/PrintWriter;
    :try_start_0
    const-string v2, "AppPredictionManagerService commands:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 74
    const-string v2, "  help"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    const-string v2, "    Prints this help text."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    const-string v2, "  set temporary-service USER_ID [COMPONENT_NAME DURATION]"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    const-string v2, "    Temporarily (for DURATION ms) changes the service implemtation."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    const-string v2, "    To reset, call with just the USER_ID argument."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 82
    .end local v1    # "pw":Ljava/io/PrintWriter;
    :cond_0
    return-void

    .line 72
    .restart local v1    # "pw":Ljava/io/PrintWriter;
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0
.end method
