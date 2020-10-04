.class public final Lcom/android/server/autofill/AutofillManagerServiceShellCommand;
.super Landroid/os/ShellCommand;
.source "AutofillManagerServiceShellCommand.java"


# instance fields
.field private final mService:Lcom/android/server/autofill/AutofillManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/AutofillManagerService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/autofill/AutofillManagerService;

    .line 41
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    .line 43
    return-void
.end method

.method private getBindInstantService(Ljava/io/PrintWriter;)I
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 291
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerService;->getAllowInstantService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    const-string/jumbo v0, "true"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 294
    :cond_0
    const-string v0, "false"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 296
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private getDefaultAugmentedServiceEnabled(Ljava/io/PrintWriter;)I
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 329
    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 330
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/autofill/AutofillManagerService;->isDefaultAugmentedServiceEnabled(I)Z

    move-result v1

    .line 331
    .local v1, "enabled":Z
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 332
    const/4 v2, 0x0

    return v2
.end method

.method private getFieldClassificationScore(Ljava/io/PrintWriter;)I
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 235
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "nextArg":Ljava/lang/String;
    const-string v1, "--algorithm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, "algorithm":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .local v2, "value1":Ljava/lang/String;
    goto :goto_0

    .line 241
    .end local v1    # "algorithm":Ljava/lang/String;
    .end local v2    # "value1":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .line 242
    .restart local v1    # "algorithm":Ljava/lang/String;
    move-object v2, v0

    .line 244
    .restart local v2    # "value1":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 246
    .local v3, "value2":Ljava/lang/String;
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 247
    .local v4, "latch":Ljava/util/concurrent/CountDownLatch;
    iget-object v5, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    new-instance v6, Landroid/os/RemoteCallback;

    new-instance v7, Lcom/android/server/autofill/-$$Lambda$AutofillManagerServiceShellCommand$3WCRplTGFh_xsmb8tmAG8x-Pn5A;

    invoke-direct {v7, p1, v4}, Lcom/android/server/autofill/-$$Lambda$AutofillManagerServiceShellCommand$3WCRplTGFh_xsmb8tmAG8x-Pn5A;-><init>(Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {v6, v7}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-virtual {v5, v1, v2, v3, v6}, Lcom/android/server/autofill/AutofillManagerService;->calculateScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/RemoteCallback;)V

    .line 257
    invoke-direct {p0, p1, v4}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->waitForLatch(Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;)I

    move-result v5

    return v5
.end method

.method private getFullScreenMode(Ljava/io/PrintWriter;)I
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 261
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerService;->getFullScreenMode()Ljava/lang/Boolean;

    move-result-object v0

    .line 262
    .local v0, "mode":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 263
    const-string v1, "default"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 264
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 265
    const-string/jumbo v1, "true"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 267
    :cond_1
    const-string v1, "false"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 269
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method private getLogLevel(Ljava/io/PrintWriter;)I
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 179
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerService;->getLogLevel()I

    move-result v0

    .line 180
    .local v0, "logLevel":I
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknow ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 192
    return v1

    .line 182
    :cond_0
    const-string/jumbo v2, "verbose"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 183
    return v1

    .line 185
    :cond_1
    const-string v2, "debug"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 186
    return v1

    .line 188
    :cond_2
    const-string/jumbo v2, "off"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 189
    return v1
.end method

.method private getMaxPartitions(Ljava/io/PrintWriter;)I
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 215
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerService;->getMaxPartitions()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method private getMaxVisibileDatasets(Ljava/io/PrintWriter;)I
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 225
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerService;->getMaxVisibleDatasets()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method private getNextIntArgRequired()I
    .locals 1

    .line 425
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getUserIdFromArgsOrAllUsers()I
    .locals 2

    .line 418
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const-string v1, "--user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 421
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private isNextArgSessions(Ljava/io/PrintWriter;)Z
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 383
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, "type":Ljava/lang/String;
    const-string/jumbo v1, "sessions"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 385
    const-string v1, "Error: invalid list type"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 386
    const/4 v1, 0x0

    return v1

    .line 388
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method static synthetic lambda$getFieldClassificationScore$0(Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;Landroid/os/Bundle;)V
    .locals 3
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p2, "result"    # Landroid/os/Bundle;

    .line 248
    const-string/jumbo v0, "scores"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/service/autofill/AutofillFieldClassificationService$Scores;

    .line 249
    .local v0, "scores":Landroid/service/autofill/AutofillFieldClassificationService$Scores;
    if-nez v0, :cond_0

    .line 250
    const-string/jumbo v1, "no score"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 252
    :cond_0
    iget-object v1, v0, Landroid/service/autofill/AutofillFieldClassificationService$Scores;->scores:[[F

    const/4 v2, 0x0

    aget-object v1, v1, v2

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(F)V

    .line 254
    :goto_0
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 255
    return-void
.end method

.method private requestDestroy(Ljava/io/PrintWriter;)I
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 346
    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->isNextArgSessions(Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    const/4 v0, -0x1

    return v0

    .line 350
    :cond_0
    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getUserIdFromArgsOrAllUsers()I

    move-result v0

    .line 351
    .local v0, "userId":I
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 352
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$1;

    invoke-direct {v2, p0, v1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$1;-><init>(Lcom/android/server/autofill/AutofillManagerServiceShellCommand;Ljava/util/concurrent/CountDownLatch;)V

    .line 358
    .local v2, "receiver":Lcom/android/internal/os/IResultReceiver;
    new-instance v3, Lcom/android/server/autofill/-$$Lambda$AutofillManagerServiceShellCommand$ww56nbkJspkRdVJ0yMdT4sroSiY;

    invoke-direct {v3, p0, v0, v2}, Lcom/android/server/autofill/-$$Lambda$AutofillManagerServiceShellCommand$ww56nbkJspkRdVJ0yMdT4sroSiY;-><init>(Lcom/android/server/autofill/AutofillManagerServiceShellCommand;ILcom/android/internal/os/IResultReceiver;)V

    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->requestSessionCommon(Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)I

    move-result v3

    return v3
.end method

.method private requestGet(Ljava/io/PrintWriter;)I
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 132
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "what":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string/jumbo v1, "max_partitions"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "max_visible_datasets"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v1, "default-augmented-service-enabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_3
    const-string v1, "bind-instant-service-allowed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_4
    const-string v1, "full_screen_mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v1, "log_level"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_6
    const-string v1, "fc_score"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :goto_0
    move v1, v2

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid set: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 150
    return v2

    .line 147
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getDefaultAugmentedServiceEnabled(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 145
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getBindInstantService(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 143
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getFullScreenMode(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 141
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getFieldClassificationScore(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 139
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getMaxVisibileDatasets(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 137
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getMaxPartitions(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 135
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getLogLevel(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    :sswitch_data_0
    .sparse-switch
        -0x7e9f9370 -> :sswitch_6
        -0x779ee137 -> :sswitch_5
        -0x4d6a481a -> :sswitch_4
        0x30420514 -> :sswitch_3
        0x32ceaec0 -> :sswitch_2
        0x53092da3 -> :sswitch_1
        0x69a17484 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private requestList(Ljava/io/PrintWriter;)I
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 362
    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->isNextArgSessions(Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 363
    const/4 v0, -0x1

    return v0

    .line 366
    :cond_0
    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getUserIdFromArgsOrAllUsers()I

    move-result v0

    .line 367
    .local v0, "userId":I
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 368
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$2;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$2;-><init>(Lcom/android/server/autofill/AutofillManagerServiceShellCommand;Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;)V

    .line 379
    .local v2, "receiver":Lcom/android/internal/os/IResultReceiver;
    new-instance v3, Lcom/android/server/autofill/-$$Lambda$AutofillManagerServiceShellCommand$WrWpLlZPawytZji8-6Dx9_p70Dw;

    invoke-direct {v3, p0, v0, v2}, Lcom/android/server/autofill/-$$Lambda$AutofillManagerServiceShellCommand$WrWpLlZPawytZji8-6Dx9_p70Dw;-><init>(Lcom/android/server/autofill/AutofillManagerServiceShellCommand;ILcom/android/internal/os/IResultReceiver;)V

    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->requestSessionCommon(Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)I

    move-result v3

    return v3
.end method

.method private requestReset()I
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerService;->reset()V

    .line 414
    const/4 v0, 0x0

    return v0
.end method

.method private requestSessionCommon(Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)I
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p3, "command"    # Ljava/lang/Runnable;

    .line 393
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 394
    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->waitForLatch(Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;)I

    move-result v0

    return v0
.end method

.method private requestSet(Ljava/io/PrintWriter;)I
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 155
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "what":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string/jumbo v1, "max_partitions"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "max_visible_datasets"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v1, "default-augmented-service-enabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_3
    const-string v1, "bind-instant-service-allowed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_4
    const-string/jumbo v1, "temporary-augmented-service"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_5
    const-string v1, "full_screen_mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_6
    const-string/jumbo v1, "log_level"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    move v1, v2

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid set: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 174
    return v2

    .line 171
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->setDefaultAugmentedServiceEnabled(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 169
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->setTemporaryAugmentedService(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 167
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->setBindInstantService(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 165
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->setFullScreenMode(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 163
    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->setMaxVisibileDatasets()I

    move-result v1

    return v1

    .line 161
    :pswitch_5
    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->setMaxPartitions()I

    move-result v1

    return v1

    .line 159
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->setLogLevel(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x779ee137 -> :sswitch_6
        -0x4d6a481a -> :sswitch_5
        -0x2211efa4 -> :sswitch_4
        0x30420514 -> :sswitch_3
        0x32ceaec0 -> :sswitch_2
        0x53092da3 -> :sswitch_1
        0x69a17484 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setBindInstantService(Ljava/io/PrintWriter;)I
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 300
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 301
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

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 310
    return v4

    .line 306
    :cond_3
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v1, v6}, Lcom/android/server/autofill/AutofillManagerService;->setAllowInstantService(Z)V

    .line 307
    return v6

    .line 303
    :cond_4
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v1, v5}, Lcom/android/server/autofill/AutofillManagerService;->setAllowInstantService(Z)V

    .line 304
    return v6
.end method

.method private setDefaultAugmentedServiceEnabled(Ljava/io/PrintWriter;)I
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 336
    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 337
    .local v0, "userId":I
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 338
    .local v1, "enabled":Z
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/autofill/AutofillManagerService;->setDefaultAugmentedServiceEnabled(IZ)Z

    move-result v2

    .line 339
    .local v2, "changed":Z
    if-nez v2, :cond_0

    .line 340
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "already "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 342
    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method private setFullScreenMode(Ljava/io/PrintWriter;)I
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 273
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "mode":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x36758e

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eq v2, v3, :cond_3

    const v3, 0x5cb1923

    if-eq v2, v3, :cond_2

    const v3, 0x5c13d641

    if-eq v2, v3, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :cond_2
    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    goto :goto_1

    :cond_3
    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v7

    goto :goto_1

    :goto_0
    move v1, v6

    :goto_1
    if-eqz v1, :cond_6

    if-eq v1, v5, :cond_5

    if-eq v1, v4, :cond_4

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 286
    return v6

    .line 282
    :cond_4
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/autofill/AutofillManagerService;->setFullScreenMode(Ljava/lang/Boolean;)V

    .line 283
    return v7

    .line 279
    :cond_5
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/android/server/autofill/AutofillManagerService;->setFullScreenMode(Ljava/lang/Boolean;)V

    .line 280
    return v7

    .line 276
    :cond_6
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/android/server/autofill/AutofillManagerService;->setFullScreenMode(Ljava/lang/Boolean;)V

    .line 277
    return v7
.end method

.method private setLogLevel(Ljava/io/PrintWriter;)I
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 197
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "logLevel":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x1ad6f

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eq v2, v3, :cond_3

    const v3, 0x5b09653

    if-eq v2, v3, :cond_2

    const v3, 0x14ed7982

    if-eq v2, v3, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string/jumbo v2, "verbose"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v7

    goto :goto_1

    :cond_2
    const-string v2, "debug"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :cond_3
    const-string/jumbo v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v6

    goto :goto_1

    :goto_0
    move v1, v5

    :goto_1
    if-eqz v1, :cond_6

    if-eq v1, v4, :cond_5

    if-eq v1, v6, :cond_4

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 210
    return v5

    .line 206
    :cond_4
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v1, v7}, Lcom/android/server/autofill/AutofillManagerService;->setLogLevel(I)V

    .line 207
    return v7

    .line 203
    :cond_5
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v1, v6}, Lcom/android/server/autofill/AutofillManagerService;->setLogLevel(I)V

    .line 204
    return v7

    .line 200
    :cond_6
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/autofill/AutofillManagerService;->setLogLevel(I)V

    .line 201
    return v7
.end method

.method private setMaxPartitions()I
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/AutofillManagerService;->setMaxPartitions(I)V

    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method private setMaxVisibileDatasets()I
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/AutofillManagerService;->setMaxVisibleDatasets(I)V

    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method private setTemporaryAugmentedService(Ljava/io/PrintWriter;)I
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 315
    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 316
    .local v0, "userId":I
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, "serviceName":Ljava/lang/String;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 318
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v3, v0}, Lcom/android/server/autofill/AutofillManagerService;->resetTemporaryAugmentedAutofillService(I)V

    .line 319
    return v2

    .line 321
    :cond_0
    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getNextIntArgRequired()I

    move-result v3

    .line 322
    .local v3, "duration":I
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v4, v0, v1, v3}, Lcom/android/server/autofill/AutofillManagerService;->setTemporaryAugmentedAutofillService(ILjava/lang/String;I)V

    .line 323
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AugmentedAutofillService temporarily set to "

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

    .line 325
    return v2
.end method

.method private waitForLatch(Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;)I
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .line 399
    const-wide/16 v0, 0x5

    const/4 v2, -0x1

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0, v1, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 400
    .local v0, "received":Z
    if-nez v0, :cond_0

    .line 401
    const-string v1, "Timed out after 5 seconds"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    return v2

    .line 408
    .end local v0    # "received":Z
    :cond_0
    nop

    .line 409
    const/4 v0, 0x0

    return v0

    .line 404
    :catch_0
    move-exception v0

    .line 405
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "System call interrupted"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 406
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 407
    return v2
.end method


# virtual methods
.method public synthetic lambda$requestDestroy$1$AutofillManagerServiceShellCommand(ILcom/android/internal/os/IResultReceiver;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "receiver"    # Lcom/android/internal/os/IResultReceiver;

    .line 358
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/autofill/AutofillManagerService;->destroySessions(ILcom/android/internal/os/IResultReceiver;)V

    return-void
.end method

.method public synthetic lambda$requestList$2$AutofillManagerServiceShellCommand(ILcom/android/internal/os/IResultReceiver;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "receiver"    # Lcom/android/internal/os/IResultReceiver;

    .line 379
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/autofill/AutofillManagerService;->listSessions(ILcom/android/internal/os/IResultReceiver;)V

    return-void
.end method

.method public onCommand(Ljava/lang/String;)I
    .locals 7
    .param p1, "cmd"    # Ljava/lang/String;

    .line 47
    if-nez p1, :cond_0

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 51
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v2, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v2, "destroy"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v6

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "reset"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v5

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "list"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_3
    const-string/jumbo v2, "set"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v3

    goto :goto_0

    :sswitch_4
    const-string v2, "get"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v4

    :goto_0
    if-eqz v1, :cond_6

    if-eq v1, v6, :cond_5

    if-eq v1, v5, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 61
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->requestSet(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 59
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->requestGet(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 57
    :cond_4
    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->requestReset()I

    move-result v1

    return v1

    .line 55
    :cond_5
    invoke-direct {p0, v0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->requestDestroy(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 53
    :cond_6
    invoke-direct {p0, v0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->requestList(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    :sswitch_data_0
    .sparse-switch
        0x18f56 -> :sswitch_4
        0x1bc62 -> :sswitch_3
        0x32b09e -> :sswitch_2
        0x6761d4f -> :sswitch_1
        0x5cd39ffa -> :sswitch_0
    .end sparse-switch
.end method

.method public onHelp()V
    .locals 4

    .line 69
    const-string v0, ""

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 70
    .local v1, "pw":Ljava/io/PrintWriter;
    :try_start_0
    const-string v2, "AutoFill Service (autofill) commands:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 71
    const-string v2, "  help"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    const-string v2, "    Prints this help text."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 74
    const-string v2, "  get log_level "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    const-string v2, "    Gets the Autofill log level (off | debug | verbose)."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    const-string v2, "  get max_partitions"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    const-string v2, "    Gets the maximum number of partitions per session."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    const-string v2, "  get max_visible_datasets"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    const-string v2, "    Gets the maximum number of visible datasets in the UI."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    const-string v2, "  get full_screen_mode"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    const-string v2, "    Gets the Fill UI full screen mode"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    const-string v2, "  get fc_score [--algorithm ALGORITHM] value1 value2"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    const-string v2, "    Gets the field classification score for 2 fields."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    const-string v2, "  get bind-instant-service-allowed"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    const-string v2, "    Gets whether binding to services provided by instant apps is allowed"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    const-string v2, "  set log_level [off | debug | verbose]"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    const-string v2, "    Sets the Autofill log level."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    const-string v2, "  set max_partitions number"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    const-string v2, "    Sets the maximum number of partitions per session."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    const-string v2, "  set max_visible_datasets number"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    const-string v2, "    Sets the maximum number of visible datasets in the UI."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    const-string v2, "  set full_screen_mode [true | false | default]"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    const-string v2, "    Sets the Fill UI full screen mode"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    const-string v2, "  set bind-instant-service-allowed [true | false]"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    const-string v2, "    Sets whether binding to services provided by instant apps is allowed"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 107
    const-string v2, "  set temporary-augmented-service USER_ID [COMPONENT_NAME DURATION]"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    const-string v2, "    Temporarily (for DURATION ms) changes the augmented autofill service implementation."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    const-string v2, "    To reset, call with just the USER_ID argument."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 112
    const-string v2, "  set default-augmented-service-enabled USER_ID [true|false]"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    const-string v2, "    Enable / disable the default augmented autofill service for the user."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    const-string v2, "  get default-augmented-service-enabled USER_ID"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    const-string v2, "    Checks whether the default augmented autofill service is enabled for the user."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    const-string v2, "  list sessions [--user USER_ID]"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 120
    const-string v2, "    Lists all pending sessions."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 122
    const-string v2, "  destroy sessions [--user USER_ID]"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    const-string v2, "    Destroys all pending sessions."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    const-string v2, "  reset"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 126
    const-string v2, "    Resets all pending sessions and cached service connections."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 129
    .end local v1    # "pw":Ljava/io/PrintWriter;
    return-void

    .line 69
    .restart local v1    # "pw":Ljava/io/PrintWriter;
    :catchall_0
    move-exception v0

    .end local v1    # "pw":Ljava/io/PrintWriter;
    .end local p0    # "this":Lcom/android/server/autofill/AutofillManagerServiceShellCommand;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 128
    .restart local v1    # "pw":Ljava/io/PrintWriter;
    .restart local p0    # "this":Lcom/android/server/autofill/AutofillManagerServiceShellCommand;
    :catchall_1
    move-exception v2

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v2
.end method
