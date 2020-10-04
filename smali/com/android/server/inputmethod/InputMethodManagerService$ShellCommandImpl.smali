.class final Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;
.super Landroid/os/ShellCommand;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ShellCommandImpl"
.end annotation


# instance fields
.field final mService:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 5047
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 4962
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 4963
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 4964
    return-void
.end method

.method private onCommandWithSystemIdentity(Ljava/lang/String;)I
    .locals 8
    .param p1, "cmd"    # Ljava/lang/String;

    .line 4993
    const-string/jumbo v0, "refresh_debug_properties"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4994
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->refreshDebugProperties()I

    move-result v0

    return v0

    .line 4997
    :cond_0
    const-string v0, "get-last-switch-user-id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4998
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$2300(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I

    move-result v0

    return v0

    .line 5002
    :cond_1
    const-string v0, "ime"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5003
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 5004
    .local v0, "imeCommand":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_9

    const-string v2, "help"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "-h"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_2

    .line 5008
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, -0x1

    const/4 v7, 0x1

    sparse-switch v2, :sswitch_data_0

    :cond_3
    goto :goto_0

    :sswitch_0
    const-string v2, "disable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v5

    goto :goto_1

    :sswitch_1
    const-string/jumbo v2, "reset"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    goto :goto_1

    :sswitch_2
    const-string/jumbo v2, "list"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v1

    goto :goto_1

    :sswitch_3
    const-string/jumbo v2, "set"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v4

    goto :goto_1

    :sswitch_4
    const-string v2, "enable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v7

    goto :goto_1

    :goto_0
    move v2, v6

    :goto_1
    if-eqz v2, :cond_8

    if-eq v2, v7, :cond_7

    if-eq v2, v5, :cond_6

    if-eq v2, v4, :cond_5

    if-eq v2, v3, :cond_4

    .line 5020
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5021
    return v6

    .line 5018
    :cond_4
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$2700(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I

    move-result v1

    return v1

    .line 5016
    :cond_5
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$2600(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I

    move-result v1

    return v1

    .line 5014
    :cond_6
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v2, p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$2500(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;Z)I

    move-result v1

    return v1

    .line 5012
    :cond_7
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1, p0, v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$2500(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;Z)I

    move-result v1

    return v1

    .line 5010
    :cond_8
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$2400(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I

    move-result v1

    return v1

    .line 5005
    :cond_9
    :goto_2
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->onImeCommandHelp()V

    .line 5006
    return v1

    .line 5025
    .end local v0    # "imeCommand":Ljava/lang/String;
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x4d6ada7d -> :sswitch_4
        0x1bc62 -> :sswitch_3
        0x32b09e -> :sswitch_2
        0x6761d4f -> :sswitch_1
        0x639e22e8 -> :sswitch_0
    .end sparse-switch
.end method

.method private onImeCommandHelp()V
    .locals 6

    .line 5051
    const-string v0, "--user <USER_ID>: Specify which user to enable."

    const-string v1, " Assumes the current user if not specified."

    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    .line 5052
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "  "

    const/16 v5, 0x64

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 5051
    .local v2, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    nop

    .line 5053
    :try_start_0
    const-string v3, "ime <command>:"

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5054
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5056
    const-string/jumbo v3, "list [-a] [-s]"

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5057
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5058
    const-string/jumbo v3, "prints all enabled input methods."

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5059
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5060
    const-string v3, "-a: see all input methods"

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5061
    const-string v3, "-s: only a single summary line of each"

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5062
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5063
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5065
    const-string v3, "enable [--user <USER_ID>] <ID>"

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5066
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5067
    const-string v3, "allows the given input method ID to be used."

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5068
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5069
    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 5070
    invoke-virtual {v2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5071
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5072
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5074
    const-string v3, "disable [--user <USER_ID>] <ID>"

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5075
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5076
    const-string v3, "disallows the given input method ID to be used."

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5077
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5078
    const-string v3, "--user <USER_ID>: Specify which user to disable."

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 5079
    invoke-virtual {v2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5080
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5081
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5083
    const-string/jumbo v3, "set [--user <USER_ID>] <ID>"

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5084
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5085
    const-string/jumbo v3, "switches to the given input method ID."

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5086
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5087
    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 5088
    invoke-virtual {v2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5089
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5090
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5092
    const-string/jumbo v0, "reset [--user <USER_ID>]"

    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5093
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5094
    const-string/jumbo v0, "reset currently selected/enabled IMEs to the default ones as if the device is initially booted with the current locale."

    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5096
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5097
    const-string v0, "--user <USER_ID>: Specify which user to reset."

    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 5098
    invoke-virtual {v2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5099
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5101
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5103
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5104
    const/4 v0, 0x0

    invoke-static {v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 5105
    .end local v2    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    return-void

    .line 5051
    .restart local v2    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    :catchall_0
    move-exception v0

    .end local v2    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5104
    .restart local v2    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;
    :catchall_1
    move-exception v1

    invoke-static {v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method private refreshDebugProperties()I
    .locals 1

    .line 5031
    sget-object v0, Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlags;->FLAG_OPTIMIZE_START_INPUT:Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlag;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlag;->refresh()V

    .line 5032
    sget-object v0, Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlags;->FLAG_PRE_RENDER_IME_VIEWS:Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlag;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlag;->refresh()V

    .line 5033
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public synthetic lambda$onCommand$0$InputMethodManagerService$ShellCommandImpl(Ljava/lang/String;)V
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;

    .line 4980
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCommand(Ljava/lang/String;)I
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;

    .line 4976
    const-string v0, "android.permission.DUMP"

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$ShellCommandImpl$DbZq_GIUJWcuMsIpw_Jz5jVT2-Y;

    invoke-direct {v1, p0}, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$ShellCommandImpl$DbZq_GIUJWcuMsIpw_Jz5jVT2-Y;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;)V

    .line 4980
    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 4982
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4984
    .local v0, "identity":J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->onCommandWithSystemIdentity(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4986
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4984
    return v2

    .line 4986
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onHelp()V
    .locals 3

    .line 5039
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 5040
    .local v0, "pw":Ljava/io/PrintWriter;
    :try_start_0
    const-string v1, "InputMethodManagerService commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5041
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5042
    const-string v1, "    Prints this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5043
    const-string v1, "  dump [options]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5044
    const-string v1, "    Synonym of dumpsys."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5045
    const-string v1, "  ime <command> [options]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5046
    const-string v1, "    Manipulate IMEs.  Run \"ime help\" for details."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5047
    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 5048
    .end local v0    # "pw":Ljava/io/PrintWriter;
    return-void

    .line 5039
    .restart local v0    # "pw":Ljava/io/PrintWriter;
    :catchall_0
    move-exception v1

    .end local v0    # "pw":Ljava/io/PrintWriter;
    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5047
    .restart local v0    # "pw":Ljava/io/PrintWriter;
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_0

    invoke-static {v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_0
    throw v2
.end method
