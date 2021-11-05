.class Lcom/android/server/location/LocationShellCommand;
.super Landroid/os/BasicShellCommandHandler;
.source "LocationShellCommand.java"


# instance fields
.field private final mService:Lcom/android/server/location/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/location/LocationManagerService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/location/LocationManagerService;

    .line 32
    invoke-direct {p0}, Landroid/os/BasicShellCommandHandler;-><init>()V

    .line 33
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/android/server/location/LocationManagerService;

    iput-object v0, p0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    .line 34
    return-void
.end method

.method private parseUserId()I
    .locals 4

    .line 61
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "option":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 63
    const-string v1, "--user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 66
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected \"--user\" option, but got \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" instead"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    :cond_1
    const/4 v1, -0x3

    return v1
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 6
    .param p1, "cmd"    # Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 39
    invoke-virtual {p0, v0}, Lcom/android/server/location/LocationShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 42
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x5c29e334

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_3

    const v3, 0x7961b909

    if-eq v2, v3, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const-string/jumbo v2, "send-extra-command"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v4

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "set-location-enabled"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v5

    :goto_0
    if-eqz v1, :cond_5

    if-eq v1, v4, :cond_4

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 50
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "provider":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "command":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    invoke-virtual {v3, v1, v2, v0}, Lcom/android/server/location/LocationManagerService;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 53
    return v5

    .line 44
    .end local v1    # "provider":Ljava/lang/String;
    .end local v2    # "command":Ljava/lang/String;
    :cond_5
    invoke-direct {p0}, Lcom/android/server/location/LocationShellCommand;->parseUserId()I

    move-result v0

    .line 45
    .local v0, "userId":I
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 46
    .local v1, "enabled":Z
    iget-object v2, p0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    invoke-virtual {v2, v1, v0}, Lcom/android/server/location/LocationManagerService;->setLocationEnabledForUser(ZI)V

    .line 47
    return v5
.end method

.method public onHelp()V
    .locals 2

    .line 76
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 77
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Location service commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    const-string v1, "  help or -h"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    const-string v1, "  set-location-enabled [--user <USER_ID>] true|false"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    const-string v1, "    Sets the master location switch enabled state."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    const-string v1, "  send-extra-command <PROVIDER> <COMMAND>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    const-string v1, "    Sends the given extra command to the given provider."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 85
    const-string v1, "    Common commands that may be supported by the gps provider, depending on"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    const-string v1, "    hardware and software configurations:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    const-string v1, "      delete_aiding_data - requests deletion of any predictive aiding data"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    const-string v1, "      force_time_injection - requests NTP time injection to chipset"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    const-string v1, "      force_psds_injection - requests predictive aiding data injection to chipset"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    return-void
.end method
