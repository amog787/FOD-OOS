.class Lcom/android/server/DropBoxManagerService$ShellCmd;
.super Landroid/os/ShellCommand;
.source "DropBoxManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DropBoxManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShellCmd"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DropBoxManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/DropBoxManagerService;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService$ShellCmd;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/DropBoxManagerService;Lcom/android/server/DropBoxManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/DropBoxManagerService;
    .param p2, "x1"    # Lcom/android/server/DropBoxManagerService$1;

    .line 218
    invoke-direct {p0, p1}, Lcom/android/server/DropBoxManagerService$ShellCmd;-><init>(Lcom/android/server/DropBoxManagerService;)V

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 7
    .param p1, "cmd"    # Ljava/lang/String;

    .line 221
    if-nez p1, :cond_0

    .line 222
    invoke-virtual {p0, p1}, Lcom/android/server/DropBoxManagerService$ShellCmd;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 224
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService$ShellCmd;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 226
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, -0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v3, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string/jumbo v3, "set-rate-limit"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    goto :goto_0

    :sswitch_1
    const-string/jumbo v3, "remove-low-priority"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v5

    goto :goto_0

    :sswitch_2
    const-string v3, "add-low-priority"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v6

    goto :goto_0

    :sswitch_3
    const-string/jumbo v3, "restore-defaults"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v4

    :goto_0
    if-eqz v1, :cond_5

    if-eq v1, v6, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    .line 243
    invoke-virtual {p0, p1}, Lcom/android/server/DropBoxManagerService$ShellCmd;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 240
    :cond_2
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService$ShellCmd;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-static {v1}, Lcom/android/server/DropBoxManagerService;->access$700(Lcom/android/server/DropBoxManagerService;)V

    .line 241
    goto :goto_1

    .line 236
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "removeTag":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/DropBoxManagerService$ShellCmd;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-static {v3, v1}, Lcom/android/server/DropBoxManagerService;->access$600(Lcom/android/server/DropBoxManagerService;Ljava/lang/String;)V

    .line 238
    goto :goto_1

    .line 232
    .end local v1    # "removeTag":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, "addedTag":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/DropBoxManagerService$ShellCmd;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-static {v3, v1}, Lcom/android/server/DropBoxManagerService;->access$500(Lcom/android/server/DropBoxManagerService;Ljava/lang/String;)V

    .line 234
    goto :goto_1

    .line 228
    .end local v1    # "addedTag":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 229
    .local v3, "period":J
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService$ShellCmd;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-static {v1, v3, v4}, Lcom/android/server/DropBoxManagerService;->access$400(Lcom/android/server/DropBoxManagerService;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    nop

    .line 247
    .end local v3    # "period":J
    :goto_1
    goto :goto_2

    .line 245
    :catch_0
    move-exception v1

    .line 246
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 248
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x54335d4f -> :sswitch_3
        -0x1f8bae57 -> :sswitch_2
        -0x1a85055a -> :sswitch_1
        0x737302d9 -> :sswitch_0
    .end sparse-switch
.end method

.method public onHelp()V
    .locals 2

    .line 253
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService$ShellCmd;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 254
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Dropbox manager service commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 255
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 256
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 257
    const-string v1, "  set-rate-limit PERIOD"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 258
    const-string v1, "    Sets low priority broadcast rate limit period to PERIOD ms"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 259
    const-string v1, "  add-low-priority TAG"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 260
    const-string v1, "    Add TAG to dropbox low priority list"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 261
    const-string v1, "  remove-low-priority TAG"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 262
    const-string v1, "    Remove TAG from dropbox low priority list"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 263
    const-string v1, "  restore-defaults"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 264
    const-string v1, "    restore dropbox settings to defaults"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 265
    return-void
.end method
