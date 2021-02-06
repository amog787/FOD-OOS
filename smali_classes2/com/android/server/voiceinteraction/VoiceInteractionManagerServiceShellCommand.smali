.class final Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;
.super Landroid/os/ShellCommand;
.source "VoiceInteractionManagerServiceShellCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VoiceInteractionManager"

.field private static final TIMEOUT_MS:J = 0x1388L


# instance fields
.field private final mService:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;


# direct methods
.method constructor <init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 40
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;->mService:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 42
    return-void
.end method

.method private static handleError(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Exception;)I
    .locals 3
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error calling "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoiceInteractionManager"

    invoke-static {v1, v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v2, "Error calling %s: %s\n"

    invoke-virtual {p0, v2, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 148
    return v1
.end method

.method private requestDisable(Ljava/io/PrintWriter;)I
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 135
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 136
    .local v0, "disabled":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestDisable(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VoiceInteractionManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;->mService:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {v1, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setDisabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    nop

    .line 142
    const/4 v1, 0x0

    return v1

    .line 139
    :catch_0
    move-exception v1

    .line 140
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "requestDisable()"

    invoke-static {p1, v2, v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;->handleError(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Exception;)I

    move-result v2

    return v2
.end method

.method private requestHide(Ljava/io/PrintWriter;)I
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 125
    const-string v0, "VoiceInteractionManager"

    const-string v1, "requestHide()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;->mService:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->hideCurrentSession()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    nop

    .line 131
    const/4 v0, 0x0

    return v0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p1, v1, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;->handleError(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Exception;)I

    move-result v1

    return v1
.end method

.method private requestShow(Ljava/io/PrintWriter;)I
    .locals 11
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 81
    const-string v0, "VoiceInteractionManager"

    const-string v1, "requestShow()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 83
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 85
    .local v2, "result":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand$1;

    invoke-direct {v3, p0, p1, v2, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand$1;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;Ljava/io/PrintWriter;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;)V

    .line 104
    .local v3, "callback":Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    :try_start_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 105
    .local v4, "args":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;->mService:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7, v3, v6}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->showSessionForActiveService(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z

    move-result v5

    .line 108
    .local v5, "ok":Z
    if-nez v5, :cond_0

    .line 109
    const-string v6, "showSessionForActiveService() returned false"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    return v1

    .line 113
    :cond_0
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x1388

    invoke-virtual {v0, v8, v9, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 114
    const-string v6, "Callback not called in %d ms\n"

    new-array v10, v1, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v10, v7

    invoke-virtual {p1, v6, v10}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    return v1

    .line 119
    .end local v4    # "args":Landroid/os/Bundle;
    .end local v5    # "ok":Z
    :cond_1
    nop

    .line 121
    return v7

    .line 117
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "showSessionForActiveService()"

    invoke-static {p1, v4, v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;->handleError(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Exception;)I

    move-result v4

    return v4
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 6
    .param p1, "cmd"    # Ljava/lang/String;

    .line 46
    if-nez p1, :cond_0

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 50
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x30dd42

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v3, :cond_4

    const v3, 0x35dafd

    if-eq v2, v3, :cond_3

    const v3, 0x639e22e8

    if-eq v2, v3, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const-string v2, "disable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v4

    goto :goto_0

    :cond_3
    const-string v2, "show"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    const-string v2, "hide"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v5

    :goto_0
    if-eqz v1, :cond_7

    if-eq v1, v5, :cond_6

    if-eq v1, v4, :cond_5

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 56
    :cond_5
    invoke-direct {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;->requestDisable(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 54
    :cond_6
    invoke-direct {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;->requestHide(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 52
    :cond_7
    invoke-direct {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;->requestShow(Ljava/io/PrintWriter;)I

    move-result v1

    return v1
.end method

.method public onHelp()V
    .locals 3

    .line 64
    const-string v0, ""

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 65
    .local v1, "pw":Ljava/io/PrintWriter;
    :try_start_0
    const-string v2, "VoiceInteraction Service (voiceinteraction) commands:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 66
    const-string v2, "  help"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 67
    const-string v2, "    Prints this help text."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 69
    const-string v2, "  show"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 70
    const-string v2, "    Shows a session for the active service"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    const-string v2, "  hide"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 73
    const-string v2, "    Hides the current session"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 74
    const-string v2, "  disable [true|false]"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    const-string v2, "    Temporarily disable (when true) service"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 78
    .end local v1    # "pw":Ljava/io/PrintWriter;
    :cond_0
    return-void

    .line 64
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
