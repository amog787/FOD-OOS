.class Lcom/android/server/ConnectivityService$ShellCmd;
.super Landroid/os/ShellCommand;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShellCmd"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method private constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 0

    .line 8116
    iput-object p1, p0, Lcom/android/server/ConnectivityService$ShellCmd;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/ConnectivityService;
    .param p2, "x1"    # Lcom/android/server/ConnectivityService$1;

    .line 8116
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$ShellCmd;-><init>(Lcom/android/server/ConnectivityService;)V

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 7
    .param p1, "cmd"    # Ljava/lang/String;

    .line 8120
    if-nez p1, :cond_0

    .line 8121
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService$ShellCmd;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 8123
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$ShellCmd;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 8125
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x8a07f3e

    const/4 v4, 0x0

    if-eq v2, v3, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const-string v2, "airplane-mode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_1

    :goto_0
    move v2, v1

    :goto_1
    if-eqz v2, :cond_3

    .line 8145
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService$ShellCmd;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 8127
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$ShellCmd;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 8128
    .local v2, "action":Ljava/lang/String;
    const-string v3, "enable"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 8129
    iget-object v3, p0, Lcom/android/server/ConnectivityService$ShellCmd;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/android/server/ConnectivityService;->setAirplaneMode(Z)V

    .line 8130
    return v4

    .line 8131
    :cond_4
    const-string v3, "disable"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 8132
    iget-object v3, p0, Lcom/android/server/ConnectivityService$ShellCmd;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v3, v4}, Lcom/android/server/ConnectivityService;->setAirplaneMode(Z)V

    .line 8133
    return v4

    .line 8134
    :cond_5
    if-nez v2, :cond_7

    .line 8135
    iget-object v3, p0, Lcom/android/server/ConnectivityService$ShellCmd;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$3100(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 8136
    .local v3, "cr":Landroid/content/ContentResolver;
    const-string v5, "airplane_mode_on"

    invoke-static {v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5

    .line 8138
    .local v5, "enabled":I
    if-nez v5, :cond_6

    const-string v6, "disabled"

    goto :goto_2

    :cond_6
    const-string v6, "enabled"

    :goto_2
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8139
    return v4

    .line 8141
    .end local v3    # "cr":Landroid/content/ContentResolver;
    .end local v5    # "enabled":I
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$ShellCmd;->onHelp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8142
    return v1

    .line 8147
    .end local v2    # "action":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 8148
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8150
    .end local v2    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public onHelp()V
    .locals 2

    .line 8155
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$ShellCmd;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 8156
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Connectivity service commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8157
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8158
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8159
    const-string v1, "  airplane-mode [enable|disable]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8160
    const-string v1, "    Turn airplane mode on or off."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8161
    const-string v1, "  airplane-mode"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8162
    const-string v1, "    Get airplane mode."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8163
    return-void
.end method
