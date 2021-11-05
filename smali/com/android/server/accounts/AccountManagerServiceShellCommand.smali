.class final Lcom/android/server/accounts/AccountManagerServiceShellCommand;
.super Landroid/os/ShellCommand;
.source "AccountManagerServiceShellCommand.java"


# instance fields
.field final mService:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/accounts/AccountManagerService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/accounts/AccountManagerService;

    .line 32
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerServiceShellCommand;->mService:Lcom/android/server/accounts/AccountManagerService;

    .line 34
    return-void
.end method

.method private parseUserId()Ljava/lang/Integer;
    .locals 6

    .line 78
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerServiceShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "option":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 80
    const-string v1, "--user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 81
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    .line 82
    .local v1, "userId":I
    const/4 v3, -0x2

    if-ne v1, v3, :cond_0

    .line 83
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 84
    :cond_0
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerServiceShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "USER_ALL not supported. Specify a user."

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    return-object v2

    .line 87
    :cond_1
    if-gez v1, :cond_2

    .line 88
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerServiceShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid user: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    return-object v2

    .line 91
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 94
    .end local v1    # "userId":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerServiceShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    return-object v2

    .line 98
    :cond_4
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method private runGetBindInstantServiceAllowed()I
    .locals 4

    .line 53
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerServiceShellCommand;->parseUserId()Ljava/lang/Integer;

    move-result-object v0

    .line 54
    .local v0, "userId":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 55
    const/4 v1, -0x1

    return v1

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerServiceShellCommand;->mService:Lcom/android/server/accounts/AccountManagerService;

    .line 58
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->getBindInstantServiceAllowed(I)Z

    move-result v2

    .line 57
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 59
    const/4 v1, 0x0

    return v1
.end method

.method private runSetBindInstantServiceAllowed()I
    .locals 5

    .line 63
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerServiceShellCommand;->parseUserId()Ljava/lang/Integer;

    move-result-object v0

    .line 64
    .local v0, "userId":Ljava/lang/Integer;
    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 65
    return v1

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "allowed":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 69
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerServiceShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: no true/false specified"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 70
    return v1

    .line 72
    :cond_1
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerServiceShellCommand;->mService:Lcom/android/server/accounts/AccountManagerService;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 73
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 72
    invoke-virtual {v1, v3, v4}, Lcom/android/server/accounts/AccountManagerService;->setBindInstantServiceAllowed(IZ)V

    .line 74
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 4
    .param p1, "cmd"    # Ljava/lang/String;

    .line 38
    if-nez p1, :cond_0

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerServiceShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 41
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x333457d5

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v1, :cond_3

    const v1, 0x2f0ea69f

    if-eq v0, v1, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const-string/jumbo v0, "set-bind-instant-service-allowed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_3
    const-string v0, "get-bind-instant-service-allowed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    move v0, v3

    :goto_1
    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_4

    .line 49
    return v3

    .line 46
    :cond_4
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerServiceShellCommand;->runSetBindInstantServiceAllowed()I

    move-result v0

    return v0

    .line 43
    :cond_5
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerServiceShellCommand;->runGetBindInstantServiceAllowed()I

    move-result v0

    return v0
.end method

.method public onHelp()V
    .locals 2

    .line 103
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 104
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Account manager service commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 107
    const-string v1, "  set-bind-instant-service-allowed [--user <USER_ID> (current user if not specified)] true|false "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    const-string v1, "    Set whether binding to services provided by instant apps is allowed."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    const-string v1, "  get-bind-instant-service-allowed [--user <USER_ID> (current user if not specified)]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 112
    const-string v1, "    Get whether binding to services provided by instant apps is allowed."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    return-void
.end method
