.class public final Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;
.super Landroid/os/ShellCommand;
.source "ContentCaptureManagerServiceShellCommand.java"


# instance fields
.field private final mService:Lcom/android/server/contentcapture/ContentCaptureManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 39
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->mService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 41
    return-void
.end method

.method private getBindInstantService(Ljava/io/PrintWriter;)I
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 125
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->mService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->getAllowInstantService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    const-string/jumbo v0, "true"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_0
    const-string v0, "false"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 130
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private getDefaultServiceEnabled(Ljava/io/PrintWriter;)I
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 173
    invoke-direct {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 174
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->mService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->isDefaultServiceEnabled(I)Z

    move-result v1

    .line 175
    .local v1, "enabled":Z
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 176
    const/4 v2, 0x0

    return v2
.end method

.method private getNextIntArgRequired()I
    .locals 1

    .line 254
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getUserIdFromArgsOrAllUsers()I
    .locals 2

    .line 247
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const-string v1, "--user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 250
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private isNextArgSessions(Ljava/io/PrintWriter;)Z
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 217
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "type":Ljava/lang/String;
    const-string/jumbo v1, "sessions"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 219
    const-string v1, "Error: invalid list type"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 220
    const/4 v1, 0x0

    return v1

    .line 222
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private requestDestroy(Ljava/io/PrintWriter;)I
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 180
    invoke-direct {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->isNextArgSessions(Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    const/4 v0, -0x1

    return v0

    .line 184
    :cond_0
    invoke-direct {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->getUserIdFromArgsOrAllUsers()I

    move-result v0

    .line 185
    .local v0, "userId":I
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 186
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$1;

    invoke-direct {v2, p0, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$1;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;Ljava/util/concurrent/CountDownLatch;)V

    .line 192
    .local v2, "receiver":Lcom/android/internal/os/IResultReceiver;
    new-instance v3, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerServiceShellCommand$JID7gMfFJshMFIl2pXHCkZLd6tI;

    invoke-direct {v3, p0, v0, v2}, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerServiceShellCommand$JID7gMfFJshMFIl2pXHCkZLd6tI;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;ILcom/android/internal/os/IResultReceiver;)V

    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->requestSessionCommon(Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)I

    move-result v3

    return v3
.end method

.method private requestGet(Ljava/io/PrintWriter;)I
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 96
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "what":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x1f91e49d

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eq v1, v2, :cond_2

    const v2, 0x30420514

    if-eq v1, v2, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v1, "bind-instant-service-allowed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const-string v1, "default-service-enabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :goto_0
    move v1, v4

    :goto_1
    if-eqz v1, :cond_4

    if-eq v1, v3, :cond_3

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    return v4

    .line 101
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->getDefaultServiceEnabled(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 99
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->getBindInstantService(Ljava/io/PrintWriter;)I

    move-result v1

    return v1
.end method

.method private requestList(Ljava/io/PrintWriter;)I
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 196
    invoke-direct {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->isNextArgSessions(Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    const/4 v0, -0x1

    return v0

    .line 200
    :cond_0
    invoke-direct {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->getUserIdFromArgsOrAllUsers()I

    move-result v0

    .line 201
    .local v0, "userId":I
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 202
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$2;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$2;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;)V

    .line 213
    .local v2, "receiver":Lcom/android/internal/os/IResultReceiver;
    new-instance v3, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerServiceShellCommand$vv2l3dpITkvTtrSG9p-nNuz8Nsc;

    invoke-direct {v3, p0, v0, v2}, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerServiceShellCommand$vv2l3dpITkvTtrSG9p-nNuz8Nsc;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;ILcom/android/internal/os/IResultReceiver;)V

    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->requestSessionCommon(Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)I

    move-result v3

    return v3
.end method

.method private requestSessionCommon(Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)I
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p3, "command"    # Ljava/lang/Runnable;

    .line 227
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 228
    invoke-direct {p0, p1, p2}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->waitForLatch(Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;)I

    move-result v0

    return v0
.end method

.method private requestSet(Ljava/io/PrintWriter;)I
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 109
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "what":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x1f91e49d

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eq v1, v2, :cond_3

    const v2, 0x30420514

    if-eq v1, v2, :cond_2

    const v2, 0x77724739

    if-eq v1, v2, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string/jumbo v1, "temporary-service"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :cond_2
    const-string v1, "bind-instant-service-allowed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const-string v1, "default-service-enabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :goto_0
    move v1, v5

    :goto_1
    if-eqz v1, :cond_6

    if-eq v1, v4, :cond_5

    if-eq v1, v3, :cond_4

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 120
    return v5

    .line 117
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->setDefaultServiceEnabled(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 115
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->setTemporaryService(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 113
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->setBindInstantService(Ljava/io/PrintWriter;)I

    move-result v1

    return v1
.end method

.method private setBindInstantService(Ljava/io/PrintWriter;)I
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 134
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "mode":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x36758e

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v2, v3, :cond_2

    const v3, 0x5cb1923

    if-eq v2, v3, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    goto :goto_1

    :cond_2
    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v6

    goto :goto_1

    :goto_0
    move v1, v4

    :goto_1
    if-eqz v1, :cond_4

    if-eq v1, v5, :cond_3

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 144
    return v4

    .line 140
    :cond_3
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->mService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {v1, v6}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->setAllowInstantService(Z)V

    .line 141
    return v6

    .line 137
    :cond_4
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->mService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {v1, v5}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->setAllowInstantService(Z)V

    .line 138
    return v6
.end method

.method private setDefaultServiceEnabled(Ljava/io/PrintWriter;)I
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 163
    invoke-direct {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 164
    .local v0, "userId":I
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 165
    .local v1, "enabled":Z
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->mService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->setDefaultServiceEnabled(IZ)Z

    move-result v2

    .line 166
    .local v2, "changed":Z
    if-nez v2, :cond_0

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "already "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 169
    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method private setTemporaryService(Ljava/io/PrintWriter;)I
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 149
    invoke-direct {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 150
    .local v0, "userId":I
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "serviceName":Ljava/lang/String;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 152
    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->mService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {v3, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->resetTemporaryService(I)V

    .line 153
    return v2

    .line 155
    :cond_0
    invoke-direct {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->getNextIntArgRequired()I

    move-result v3

    .line 156
    .local v3, "duration":I
    iget-object v4, p0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->mService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {v4, v0, v1, v3}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->setTemporaryService(ILjava/lang/String;I)V

    .line 157
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ContentCaptureService temporarily set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 159
    return v2
.end method

.method private waitForLatch(Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;)I
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .line 233
    const-wide/16 v0, 0x5

    const/4 v2, -0x1

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0, v1, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 234
    .local v0, "received":Z
    if-nez v0, :cond_0

    .line 235
    const-string v1, "Timed out after 5 seconds"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    return v2

    .line 242
    .end local v0    # "received":Z
    :cond_0
    nop

    .line 243
    const/4 v0, 0x0

    return v0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "System call interrupted"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 240
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 241
    return v2
.end method


# virtual methods
.method public synthetic lambda$requestDestroy$0$ContentCaptureManagerServiceShellCommand(ILcom/android/internal/os/IResultReceiver;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "receiver"    # Lcom/android/internal/os/IResultReceiver;

    .line 192
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->mService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->destroySessions(ILcom/android/internal/os/IResultReceiver;)V

    return-void
.end method

.method public synthetic lambda$requestList$1$ContentCaptureManagerServiceShellCommand(ILcom/android/internal/os/IResultReceiver;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "receiver"    # Lcom/android/internal/os/IResultReceiver;

    .line 213
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->mService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->listSessions(ILcom/android/internal/os/IResultReceiver;)V

    return-void
.end method

.method public onCommand(Ljava/lang/String;)I
    .locals 6
    .param p1, "cmd"    # Ljava/lang/String;

    .line 45
    if-nez p1, :cond_0

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 49
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v2, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v2, "destroy"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v5

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "list"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "set"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v3

    goto :goto_0

    :sswitch_3
    const-string v2, "get"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v4

    :goto_0
    if-eqz v1, :cond_5

    if-eq v1, v5, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 57
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->requestSet(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 55
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->requestGet(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 53
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->requestDestroy(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 51
    :cond_5
    invoke-direct {p0, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->requestList(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x18f56 -> :sswitch_3
        0x1bc62 -> :sswitch_2
        0x32b09e -> :sswitch_1
        0x5cd39ffa -> :sswitch_0
    .end sparse-switch
.end method

.method public onHelp()V
    .locals 3

    .line 65
    const-string v0, ""

    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 66
    .local v1, "pw":Ljava/io/PrintWriter;
    :try_start_0
    const-string v2, "ContentCapture Service (content_capture) commands:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 67
    const-string v2, "  help"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    const-string v2, "    Prints this help text."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 70
    const-string v2, "  get bind-instant-service-allowed"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 71
    const-string v2, "    Gets whether binding to services provided by instant apps is allowed"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 73
    const-string v2, "  set bind-instant-service-allowed [true | false]"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 74
    const-string v2, "    Sets whether binding to services provided by instant apps is allowed"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    const-string v2, "  set temporary-service USER_ID [COMPONENT_NAME DURATION]"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    const-string v2, "    Temporarily (for DURATION ms) changes the service implemtation."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    const-string v2, "    To reset, call with just the USER_ID argument."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    const-string v2, "  set default-service-enabled USER_ID [true|false]"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    const-string v2, "    Enable / disable the default service for the user."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    const-string v2, "  get default-service-enabled USER_ID"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    const-string v2, "    Checks whether the default service is enabled for the user."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    const-string v2, "  list sessions [--user USER_ID]"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    const-string v2, "    Lists all pending sessions."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    const-string v2, "  destroy sessions [--user USER_ID]"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    const-string v2, "    Destroys all pending sessions."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 93
    .end local v1    # "pw":Ljava/io/PrintWriter;
    :cond_0
    return-void

    .line 65
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
