.class final Lcom/android/server/print/PrintShellCommand;
.super Landroid/os/ShellCommand;
.source "PrintShellCommand.java"


# instance fields
.field final mService:Landroid/print/IPrintManager;


# direct methods
.method constructor <init>(Landroid/print/IPrintManager;)V
    .locals 0
    .param p1, "service"    # Landroid/print/IPrintManager;

    .line 34
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/server/print/PrintShellCommand;->mService:Landroid/print/IPrintManager;

    .line 36
    return-void
.end method

.method private parseUserId()Ljava/lang/Integer;
    .locals 4

    .line 87
    invoke-virtual {p0}, Lcom/android/server/print/PrintShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "option":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 89
    const-string v1, "--user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/android/server/print/PrintShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/print/PrintShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    const/4 v1, 0x0

    return-object v1

    .line 96
    :cond_1
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method private runGetBindInstantServiceAllowed()I
    .locals 4

    .line 55
    invoke-direct {p0}, Lcom/android/server/print/PrintShellCommand;->parseUserId()Ljava/lang/Integer;

    move-result-object v0

    .line 56
    .local v0, "userId":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 57
    const/4 v1, -0x1

    return v1

    .line 60
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/PrintShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/print/PrintShellCommand;->mService:Landroid/print/IPrintManager;

    .line 61
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/print/IPrintManager;->getBindInstantServiceAllowed(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    goto :goto_0

    .line 62
    :catch_0
    move-exception v1

    .line 63
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 65
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method private runSetBindInstantServiceAllowed()I
    .locals 5

    .line 69
    invoke-direct {p0}, Lcom/android/server/print/PrintShellCommand;->parseUserId()Ljava/lang/Integer;

    move-result-object v0

    .line 70
    .local v0, "userId":Ljava/lang/Integer;
    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 71
    return v1

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/print/PrintShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, "allowed":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 75
    invoke-virtual {p0}, Lcom/android/server/print/PrintShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: no true/false specified"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    return v1

    .line 79
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/PrintShellCommand;->mService:Landroid/print/IPrintManager;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-interface {v1, v3, v4}, Landroid/print/IPrintManager;->setBindInstantServiceAllowed(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    goto :goto_0

    .line 80
    :catch_0
    move-exception v1

    .line 81
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 83
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 4
    .param p1, "cmd"    # Ljava/lang/String;

    .line 40
    if-nez p1, :cond_0

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/server/print/PrintShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 43
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
    const-string v0, "set-bind-instant-service-allowed"

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

    .line 51
    return v3

    .line 48
    :cond_4
    invoke-direct {p0}, Lcom/android/server/print/PrintShellCommand;->runSetBindInstantServiceAllowed()I

    move-result v0

    return v0

    .line 45
    :cond_5
    invoke-direct {p0}, Lcom/android/server/print/PrintShellCommand;->runGetBindInstantServiceAllowed()I

    move-result v0

    return v0
.end method

.method public onHelp()V
    .locals 2

    .line 101
    invoke-virtual {p0}, Lcom/android/server/print/PrintShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 102
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Print service commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    const-string v1, "  set-bind-instant-service-allowed [--user <USER_ID>] true|false "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    const-string v1, "    Set whether binding to print services provided by instant apps is allowed."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    const-string v1, "  get-bind-instant-service-allowed [--user <USER_ID>]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    const-string v1, "    Get whether binding to print services provided by instant apps is allowed."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    return-void
.end method
