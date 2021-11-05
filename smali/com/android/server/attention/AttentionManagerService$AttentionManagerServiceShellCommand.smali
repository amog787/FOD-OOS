.class final Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;
.super Landroid/os/ShellCommand;
.source "AttentionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/attention/AttentionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AttentionManagerServiceShellCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;
    }
.end annotation


# instance fields
.field final mTestableAttentionCallback:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;

.field final synthetic this$0:Lcom/android/server/attention/AttentionManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/attention/AttentionManagerService;)V
    .locals 0

    .line 755
    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 778
    new-instance p1, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;

    invoke-direct {p1, p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;-><init>(Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;)V

    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->mTestableAttentionCallback:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/attention/AttentionManagerService;Lcom/android/server/attention/AttentionManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/attention/AttentionManagerService;
    .param p2, "x1"    # Lcom/android/server/attention/AttentionManagerService$1;

    .line 755
    invoke-direct {p0, p1}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;-><init>(Lcom/android/server/attention/AttentionManagerService;)V

    return-void
.end method

.method private cmdCallCancelAttention()I
    .locals 3

    .line 842
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 843
    .local v0, "out":Ljava/io/PrintWriter;
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->this$0:Lcom/android/server/attention/AttentionManagerService;

    iget-object v2, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->mTestableAttentionCallback:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;

    invoke-virtual {v1, v2}, Lcom/android/server/attention/AttentionManagerService;->cancelAttentionCheck(Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;)V

    .line 844
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 845
    const/4 v1, 0x0

    return v1
.end method

.method private cmdCallCheckAttention()I
    .locals 5

    .line 835
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 836
    .local v0, "out":Ljava/io/PrintWriter;
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->this$0:Lcom/android/server/attention/AttentionManagerService;

    iget-object v2, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->mTestableAttentionCallback:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/server/attention/AttentionManagerService;->checkAttention(JLandroid/attention/AttentionManagerInternal$AttentionCallbackInternal;)Z

    move-result v1

    .line 837
    .local v1, "calledSuccessfully":Z
    if-eqz v1, :cond_0

    const-string/jumbo v2, "true"

    goto :goto_0

    :cond_0
    const-string v2, "false"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 838
    const/4 v2, 0x0

    return v2
.end method

.method private cmdClearTestableAttentionService()I
    .locals 1

    .line 828
    const-string v0, ""

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService;->access$2302(Ljava/lang/String;)Ljava/lang/String;

    .line 829
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->mTestableAttentionCallback:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;

    invoke-virtual {v0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;->reset()V

    .line 830
    invoke-direct {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->resetStates()V

    .line 831
    const/4 v0, 0x0

    return v0
.end method

.method private cmdGetLastTestCallbackCode()I
    .locals 2

    .line 856
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 857
    .local v0, "out":Ljava/io/PrintWriter;
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->mTestableAttentionCallback:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;

    invoke-virtual {v1}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;->getLastCallbackCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 858
    const/4 v1, 0x0

    return v1
.end method

.method private cmdResolveAttentionServiceComponent()I
    .locals 3

    .line 849
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 850
    .local v0, "out":Ljava/io/PrintWriter;
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-static {v1}, Lcom/android/server/attention/AttentionManagerService;->access$2400(Lcom/android/server/attention/AttentionManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/attention/AttentionManagerService;->access$2500(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    .line 851
    .local v1, "resolvedComponent":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 852
    const/4 v2, 0x0

    return v2
.end method

.method private cmdSetTestableAttentionService(Ljava/lang/String;)I
    .locals 3
    .param p1, "testingServicePackage"    # Ljava/lang/String;

    .line 816
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 817
    .local v0, "out":Ljava/io/PrintWriter;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "false"

    if-eqz v1, :cond_0

    .line 818
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 820
    :cond_0
    invoke-static {p1}, Lcom/android/server/attention/AttentionManagerService;->access$2302(Ljava/lang/String;)Ljava/lang/String;

    .line 821
    invoke-direct {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->resetStates()V

    .line 822
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->this$0:Lcom/android/server/attention/AttentionManagerService;

    iget-object v1, v1, Lcom/android/server/attention/AttentionManagerService;->mComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    const-string/jumbo v2, "true"

    :cond_1
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 824
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method private resetStates()V
    .locals 2

    .line 862
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService;->access$2400(Lcom/android/server/attention/AttentionManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/attention/AttentionManagerService;->access$2500(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/attention/AttentionManagerService;->mComponentName:Landroid/content/ComponentName;

    .line 863
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService;->access$1900(Lcom/android/server/attention/AttentionManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 864
    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 8
    .param p1, "cmd"    # Ljava/lang/String;

    .line 783
    if-nez p1, :cond_0

    .line 784
    invoke-virtual {p0, p1}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 786
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 788
    .local v0, "err":Ljava/io/PrintWriter;
    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch v2, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v2, "clearTestableAttentionService"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v5

    goto :goto_1

    :sswitch_1
    const-string v2, "call"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v7

    goto :goto_1

    :sswitch_2
    const-string/jumbo v2, "setTestableAttentionService"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v6

    goto :goto_1

    :sswitch_3
    const-string v2, "getAttentionServiceComponent"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :sswitch_4
    const-string v2, "getLastTestCallbackCode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_1

    :goto_0
    move v2, v1

    :goto_1
    if-eqz v2, :cond_b

    if-eq v2, v7, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    .line 807
    invoke-virtual {p0, p1}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 805
    :cond_2
    invoke-direct {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->cmdGetLastTestCallbackCode()I

    move-result v1

    return v1

    .line 803
    :cond_3
    invoke-direct {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->cmdClearTestableAttentionService()I

    move-result v1

    return v1

    .line 801
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->cmdSetTestableAttentionService(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 792
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x2d7ba210

    if-eq v4, v5, :cond_8

    const v5, 0x589284f6

    if-eq v4, v5, :cond_7

    :cond_6
    goto :goto_2

    :cond_7
    const-string v4, "checkAttention"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_8
    const-string v3, "cancelCheckAttention"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v3, v7

    goto :goto_3

    :goto_2
    move v3, v1

    :goto_3
    if-eqz v3, :cond_a

    if-ne v3, v7, :cond_9

    .line 796
    invoke-direct {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->cmdCallCancelAttention()I

    move-result v1

    return v1

    .line 798
    :cond_9
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid argument"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "err":Ljava/io/PrintWriter;
    .end local p0    # "this":Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;
    .end local p1    # "cmd":Ljava/lang/String;
    throw v2

    .line 794
    .restart local v0    # "err":Ljava/io/PrintWriter;
    .restart local p0    # "this":Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;
    .restart local p1    # "cmd":Ljava/lang/String;
    :cond_a
    invoke-direct {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->cmdCallCheckAttention()I

    move-result v1

    return v1

    .line 790
    :cond_b
    invoke-direct {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->cmdResolveAttentionServiceComponent()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 809
    :catch_0
    move-exception v2

    .line 810
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 812
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x480b7350 -> :sswitch_4
        -0x3bbfc7b0 -> :sswitch_3
        -0x18bd18bb -> :sswitch_2
        0x2e7a5e -> :sswitch_1
        0x47229030 -> :sswitch_0
    .end sparse-switch
.end method

.method public onHelp()V
    .locals 3

    .line 868
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 869
    .local v0, "out":Ljava/io/PrintWriter;
    const-string v1, "Attention commands: "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 870
    const-string v1, "  setTestableAttentionService <service_package>: Bind to a custom implementation of attention service"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 872
    const-string v1, "  ---<service_package>:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 873
    const-string v1, "       := Package containing the Attention Service implementation to bind to"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 875
    const-string v1, "  ---returns:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 876
    const-string v2, "       := true, if was bound successfully"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 877
    const-string v2, "       := false, if was not bound successfully"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 878
    const-string v2, "  clearTestableAttentionService: Undo custom bindings. Revert to previous behavior"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 880
    const-string v2, "  getAttentionServiceComponent: Get the current service component string"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 881
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 882
    const-string v2, "       := If valid, the component string (in shorten form) for the currently bound service."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 884
    const-string v2, "       := else, empty string"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 885
    const-string v2, "  call checkAttention: Calls check attention"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 886
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 887
    const-string v2, "       := true, if the call was successfully dispatched to the service implementation. (to see the result, call getLastTestCallbackCode)"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 891
    const-string v2, "       := false, otherwise"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 892
    const-string v2, "  call cancelCheckAttention: Cancels check attention"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 893
    const-string v2, "  getLastTestCallbackCode"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 894
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 895
    const-string v1, "       := An integer, representing the last callback code received from the bounded implementation. If none, it will return -1"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 898
    return-void
.end method
