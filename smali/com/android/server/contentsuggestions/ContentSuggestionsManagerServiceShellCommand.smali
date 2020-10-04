.class public Lcom/android/server/contentsuggestions/ContentSuggestionsManagerServiceShellCommand;
.super Landroid/os/ShellCommand;
.source "ContentSuggestionsManagerServiceShellCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mService:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerServiceShellCommand;

    .line 30
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerServiceShellCommand;->TAG:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    .line 35
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerServiceShellCommand;->mService:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    .line 37
    return-void
.end method

.method private getDefaultServiceEnabled(Ljava/io/PrintWriter;)I
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 122
    invoke-direct {p0}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerServiceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 123
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerServiceShellCommand;->mService:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->isDefaultServiceEnabled(I)Z

    move-result v1

    .line 124
    .local v1, "enabled":Z
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 125
    const/4 v2, 0x0

    return v2
.end method

.method private getNextIntArgRequired()I
    .locals 1

    .line 129
    invoke-virtual {p0}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private requestGet(Ljava/io/PrintWriter;)I
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 90
    invoke-virtual {p0}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "what":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    const v3, 0x1f91e49d

    if-eq v1, v3, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v1, "default-service-enabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid get: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    return v2

    .line 93
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerServiceShellCommand;->getDefaultServiceEnabled(Ljava/io/PrintWriter;)I

    move-result v1

    return v1
.end method

.method private requestSet(Ljava/io/PrintWriter;)I
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 76
    invoke-virtual {p0}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "what":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x1f91e49d

    const/4 v3, 0x1

    const/4 v4, -0x1

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

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    return v4

    .line 82
    :cond_3
    invoke-direct {p0}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerServiceShellCommand;->setDefaultServiceEnabled()I

    move-result v1

    return v1

    .line 80
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerServiceShellCommand;->setTemporaryService(Ljava/io/PrintWriter;)I

    move-result v1

    return v1
.end method

.method private setDefaultServiceEnabled()I
    .locals 3

    .line 115
    invoke-direct {p0}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerServiceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 116
    .local v0, "userId":I
    invoke-virtual {p0}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerServiceShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 117
    .local v1, "enabled":Z
    iget-object v2, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerServiceShellCommand;->mService:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->setDefaultServiceEnabled(IZ)Z

    .line 118
    const/4 v2, 0x0

    return v2
.end method

.method private setTemporaryService(Ljava/io/PrintWriter;)I
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 101
    invoke-virtual {p0}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 102
    .local v0, "userId":I
    invoke-virtual {p0}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerServiceShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "serviceName":Ljava/lang/String;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 104
    iget-object v3, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerServiceShellCommand;->mService:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-virtual {v3, v0}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->resetTemporaryService(I)V

    .line 105
    return v2

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 108
    .local v3, "duration":I
    iget-object v4, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerServiceShellCommand;->mService:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-virtual {v4, v0, v1, v3}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->setTemporaryService(ILjava/lang/String;I)V

    .line 109
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ContentSuggestionsService temporarily set to "

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

    .line 111
    return v2
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 5
    .param p1, "cmd"    # Ljava/lang/String;

    .line 41
    if-nez p1, :cond_0

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerServiceShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 45
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x18f56

    const/4 v4, 0x1

    if-eq v2, v3, :cond_3

    const v3, 0x1bc62

    if-eq v2, v3, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const-string/jumbo v2, "set"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const-string v2, "get"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v4

    :goto_0
    if-eqz v1, :cond_5

    if-eq v1, v4, :cond_4

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerServiceShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 49
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerServiceShellCommand;->requestGet(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 47
    :cond_5
    invoke-direct {p0, v0}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerServiceShellCommand;->requestSet(Ljava/io/PrintWriter;)I

    move-result v1

    return v1
.end method

.method public onHelp()V
    .locals 4

    .line 57
    const-string v0, ""

    invoke-virtual {p0}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 58
    .local v1, "pw":Ljava/io/PrintWriter;
    :try_start_0
    const-string v2, "ContentSuggestionsManagerService commands:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 59
    const-string v2, "  help"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 60
    const-string v2, "    Prints this help text."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 62
    const-string v2, "  set temporary-service USER_ID [COMPONENT_NAME DURATION]"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 63
    const-string v2, "    Temporarily (for DURATION ms) changes the service implementation."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 64
    const-string v2, "    To reset, call with just the USER_ID argument."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 66
    const-string v2, "  set default-service-enabled USER_ID [true|false]"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 67
    const-string v2, "    Enable / disable the default service for the user."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 69
    const-string v2, "  get default-service-enabled USER_ID"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 70
    const-string v2, "    Checks whether the default service is enabled for the user."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 73
    .end local v1    # "pw":Ljava/io/PrintWriter;
    return-void

    .line 57
    .restart local v1    # "pw":Ljava/io/PrintWriter;
    :catchall_0
    move-exception v0

    .end local v1    # "pw":Ljava/io/PrintWriter;
    .end local p0    # "this":Lcom/android/server/contentsuggestions/ContentSuggestionsManagerServiceShellCommand;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 72
    .restart local v1    # "pw":Ljava/io/PrintWriter;
    .restart local p0    # "this":Lcom/android/server/contentsuggestions/ContentSuggestionsManagerServiceShellCommand;
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
