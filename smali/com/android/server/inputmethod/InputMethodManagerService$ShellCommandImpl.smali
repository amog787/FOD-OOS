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
.method constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 5565
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 5566
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 5567
    return-void
.end method

.method private onCommandWithSystemIdentity(Ljava/lang/String;)I
    .locals 8
    .param p1, "cmd"    # Ljava/lang/String;

    .line 5596
    const-string/jumbo v0, "refresh_debug_properties"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5597
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->refreshDebugProperties()I

    move-result v0

    return v0

    .line 5600
    :cond_0
    const-string v0, "get-last-switch-user-id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5601
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$3000(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I

    move-result v0

    return v0

    .line 5605
    :cond_1
    const-string v0, "ime"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5606
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 5607
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

    .line 5611
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

    .line 5623
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

    .line 5624
    return v6

    .line 5621
    :cond_4
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$3400(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I

    move-result v1

    return v1

    .line 5619
    :cond_5
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$3300(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I

    move-result v1

    return v1

    .line 5617
    :cond_6
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v2, p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$3200(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;Z)I

    move-result v1

    return v1

    .line 5615
    :cond_7
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1, p0, v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$3200(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;Z)I

    move-result v1

    return v1

    .line 5613
    :cond_8
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$3100(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I

    move-result v1

    return v1

    .line 5608
    :cond_9
    :goto_2
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->onImeCommandHelp()V

    .line 5609
    return v1

    .line 5628
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

    .line 5654
    const-string v0, "--user <USER_ID>: Specify which user to enable."

    const-string v1, " Assumes the current user if not specified."

    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    .line 5655
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "  "

    const/16 v5, 0x64

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 5656
    .local v2, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    :try_start_0
    const-string v3, "ime <command>:"

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5657
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5659
    const-string/jumbo v3, "list [-a] [-s]"

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5660
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5661
    const-string/jumbo v3, "prints all enabled input methods."

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5662
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5663
    const-string v3, "-a: see all input methods"

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5664
    const-string v3, "-s: only a single summary line of each"

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5665
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5666
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5668
    const-string v3, "enable [--user <USER_ID>] <ID>"

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5669
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5670
    const-string v3, "allows the given input method ID to be used."

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5671
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5672
    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 5673
    invoke-virtual {v2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5674
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5675
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5677
    const-string v3, "disable [--user <USER_ID>] <ID>"

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5678
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5679
    const-string v3, "disallows the given input method ID to be used."

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5680
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5681
    const-string v3, "--user <USER_ID>: Specify which user to disable."

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 5682
    invoke-virtual {v2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5683
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5684
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5686
    const-string/jumbo v3, "set [--user <USER_ID>] <ID>"

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5687
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5688
    const-string/jumbo v3, "switches to the given input method ID."

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5689
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5690
    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 5691
    invoke-virtual {v2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5692
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5693
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5695
    const-string/jumbo v0, "reset [--user <USER_ID>]"

    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5696
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5697
    const-string/jumbo v0, "reset currently selected/enabled IMEs to the default ones as if the device is initially booted with the current locale."

    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5699
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5700
    const-string v0, "--user <USER_ID>: Specify which user to reset."

    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 5701
    invoke-virtual {v2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5702
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5704
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5706
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5707
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->close()V

    .line 5708
    .end local v2    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    return-void

    .line 5654
    .restart local v2    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    :catchall_0
    move-exception v0

    :try_start_1
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0
.end method

.method private refreshDebugProperties()I
    .locals 1

    .line 5634
    sget-object v0, Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlags;->FLAG_OPTIMIZE_START_INPUT:Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlag;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlag;->refresh()V

    .line 5635
    sget-object v0, Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlags;->FLAG_PRE_RENDER_IME_VIEWS:Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlag;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlag;->refresh()V

    .line 5636
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public synthetic lambda$onCommand$0$InputMethodManagerService$ShellCommandImpl(Ljava/lang/String;)V
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;

    .line 5583
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCommand(Ljava/lang/String;)I
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;

    .line 5579
    const-string v0, "android.permission.DUMP"

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$ShellCommandImpl$DbZq_GIUJWcuMsIpw_Jz5jVT2-Y;

    invoke-direct {v1, p0}, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$ShellCommandImpl$DbZq_GIUJWcuMsIpw_Jz5jVT2-Y;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;)V

    .line 5583
    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 5585
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5587
    .local v0, "identity":J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->onCommandWithSystemIdentity(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5589
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5587
    return v2

    .line 5589
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5590
    throw v2
.end method

.method public onHelp()V
    .locals 3

    .line 5642
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 5643
    .local v0, "pw":Ljava/io/PrintWriter;
    :try_start_0
    const-string v1, "InputMethodManagerService commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5644
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5645
    const-string v1, "    Prints this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5646
    const-string v1, "  dump [options]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5647
    const-string v1, "    Synonym of dumpsys."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5648
    const-string v1, "  ime <command> [options]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5649
    const-string v1, "    Manipulate IMEs.  Run \"ime help\" for details."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5650
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 5651
    .end local v0    # "pw":Ljava/io/PrintWriter;
    :cond_0
    return-void

    .line 5642
    .restart local v0    # "pw":Ljava/io/PrintWriter;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method
