.class final Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;
.super Landroid/view/autofill/IAutoFillManager$Stub;
.source "AutofillManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/AutofillManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AutoFillManagerServiceStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/AutofillManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/autofill/AutofillManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/autofill/AutofillManagerService;

    .line 1321
    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-direct {p0}, Landroid/view/autofill/IAutoFillManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addClient(Landroid/view/autofill/IAutoFillManagerClient;Landroid/content/ComponentName;ILcom/android/internal/os/IResultReceiver;)V
    .locals 4
    .param p1, "client"    # Landroid/view/autofill/IAutoFillManagerClient;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .param p4, "receiver"    # Lcom/android/internal/os/IResultReceiver;

    .line 1325
    const/4 v0, 0x0

    .line 1326
    .local v0, "flags":I
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v1}, Lcom/android/server/autofill/AutofillManagerService;->access$1400(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1327
    :try_start_0
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v2, p3}, Lcom/android/server/autofill/AutofillManagerService;->access$1500(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->addClientLocked(Landroid/view/autofill/IAutoFillManagerClient;Landroid/content/ComponentName;)I

    move-result v2

    .line 1329
    .local v2, "enabledFlags":I
    if-eqz v2, :cond_0

    .line 1330
    or-int/2addr v0, v2

    .line 1332
    :cond_0
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_1

    .line 1333
    or-int/lit8 v0, v0, 0x2

    .line 1335
    :cond_1
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_2

    .line 1336
    or-int/lit8 v0, v0, 0x4

    .line 1338
    .end local v2    # "enabledFlags":I
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1339
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v1, p4, v0}, Lcom/android/server/autofill/AutofillManagerService;->access$1600(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;I)V

    .line 1340
    return-void

    .line 1338
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public cancelSession(II)V
    .locals 5
    .param p1, "sessionId"    # I
    .param p2, "userId"    # I

    .line 1629
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$5800(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1630
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v1, p2}, Lcom/android/server/autofill/AutofillManagerService;->access$5900(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1631
    .local v1, "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    if-eqz v1, :cond_0

    .line 1632
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->cancelSessionLocked(II)V

    goto :goto_0

    .line 1633
    :cond_0
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_1

    .line 1634
    const-string v2, "AutofillManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelSession(): no service for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    .end local v1    # "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    :cond_1
    :goto_0
    monitor-exit v0

    .line 1637
    return-void

    .line 1636
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public disableOwnedAutofillServices(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 1641
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$6000(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1642
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v1, p1}, Lcom/android/server/autofill/AutofillManagerService;->access$6100(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1643
    .local v1, "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    if-eqz v1, :cond_0

    .line 1644
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->disableOwnedAutofillServicesLocked(I)V

    goto :goto_0

    .line 1645
    :cond_0
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_1

    .line 1646
    const-string v2, "AutofillManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelSession(): no service for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    .end local v1    # "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    :cond_1
    :goto_0
    monitor-exit v0

    .line 1649
    return-void

    .line 1648
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1688
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "AutofillManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1690
    :cond_0
    const/4 v0, 0x1

    .line 1691
    .local v0, "showHistory":Z
    const/4 v1, 0x0

    .line 1692
    .local v1, "uiOnly":Z
    const/4 v2, 0x1

    if-eqz p3, :cond_8

    .line 1693
    array-length v3, p3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_8

    aget-object v6, p3, v5

    .line 1694
    .local v6, "arg":Ljava/lang/String;
    const/4 v7, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, 0x35b095a5

    const/4 v10, 0x2

    if-eq v8, v9, :cond_4

    const v9, 0x417d0228

    if-eq v8, v9, :cond_3

    const v9, 0x4f7504e1

    if-eq v8, v9, :cond_2

    :cond_1
    goto :goto_1

    :cond_2
    const-string v8, "--help"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v7, v10

    goto :goto_1

    :cond_3
    const-string v8, "--no-history"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v7, v4

    goto :goto_1

    :cond_4
    const-string v8, "--ui-only"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v7, v2

    :goto_1
    if-eqz v7, :cond_7

    if-eq v7, v2, :cond_6

    if-eq v7, v10, :cond_5

    .line 1705
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring invalid dump arg: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "AutofillManagerService"

    invoke-static {v8, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1702
    :cond_5
    const-string v2, "Usage: dumpsys autofill [--ui-only|--no-history]"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1703
    return-void

    .line 1699
    :cond_6
    const/4 v1, 0x1

    .line 1700
    goto :goto_2

    .line 1696
    :cond_7
    const/4 v0, 0x0

    .line 1697
    nop

    .line 1693
    .end local v6    # "arg":Ljava/lang/String;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1710
    :cond_8
    if-eqz v1, :cond_9

    .line 1711
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v2}, Lcom/android/server/autofill/AutofillManagerService;->access$300(Lcom/android/server/autofill/AutofillManagerService;)Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/server/autofill/ui/AutoFillUI;->dump(Ljava/io/PrintWriter;)V

    .line 1712
    return-void

    .line 1715
    :cond_9
    const-string v3, "  "

    .line 1716
    .local v3, "prefix":Ljava/lang/String;
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 1717
    .local v4, "realDebug":Z
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 1719
    .local v5, "realVerbose":Z
    :try_start_0
    sput-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    sput-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 1720
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v2}, Lcom/android/server/autofill/AutofillManagerService;->access$6800(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1721
    :try_start_1
    const-string/jumbo v6, "sDebug: "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 1722
    const-string v6, " sVerbose: "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 1724
    iget-object v6, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    const-string v7, ""

    invoke-static {v6, v7, p2}, Lcom/android/server/autofill/AutofillManagerService;->access$6900(Lcom/android/server/autofill/AutofillManagerService;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1725
    iget-object v6, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    iget-object v6, v6, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    invoke-virtual {v6, p2}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->dumpShort(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1726
    const-string v6, "Max partitions per session: "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService;->access$7000()I

    move-result v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 1727
    const-string v6, "Max visible datasets: "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService;->access$7100()I

    move-result v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 1728
    sget-object v6, Lcom/android/server/autofill/Helper;->sFullScreenMode:Ljava/lang/Boolean;

    if-eqz v6, :cond_a

    .line 1729
    const-string v6, "Overridden full-screen mode: "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v6, Lcom/android/server/autofill/Helper;->sFullScreenMode:Ljava/lang/Boolean;

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1731
    :cond_a
    const-string v6, "User data constraints: "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v6, "  "

    invoke-static {v6, p2}, Landroid/service/autofill/UserData;->dumpConstraints(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1732
    iget-object v6, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v6}, Lcom/android/server/autofill/AutofillManagerService;->access$300(Lcom/android/server/autofill/AutofillManagerService;)Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/android/server/autofill/ui/AutoFillUI;->dump(Ljava/io/PrintWriter;)V

    .line 1733
    const-string v6, "Autofill Compat State: "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1734
    iget-object v6, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v6}, Lcom/android/server/autofill/AutofillManagerService;->access$700(Lcom/android/server/autofill/AutofillManagerService;)Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;

    move-result-object v6

    const-string v7, "  "

    invoke-static {v6, v7, p2}, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->access$7200(Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1735
    const-string v6, "from settings: "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1736
    iget-object v6, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v6}, Lcom/android/server/autofill/AutofillManagerService;->access$7300(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1737
    iget-object v6, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v6}, Lcom/android/server/autofill/AutofillManagerService;->access$7400(Lcom/android/server/autofill/AutofillManagerService;)I

    move-result v6

    if-eqz v6, :cond_b

    .line 1738
    const-string v6, "Smart Suggestion modes: "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1739
    iget-object v6, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v6}, Lcom/android/server/autofill/AutofillManagerService;->access$7400(Lcom/android/server/autofill/AutofillManagerService;)I

    move-result v6

    invoke-static {v6}, Landroid/view/autofill/AutofillManager;->getSmartSuggestionModeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1741
    :cond_b
    const-string v6, "Augmented Service Idle Unbind Timeout: "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1742
    iget-object v6, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    iget v6, v6, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedServiceIdleUnbindTimeoutMs:I

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 1743
    const-string v6, "Augmented Service Request Timeout: "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1744
    iget-object v6, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    iget v6, v6, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedServiceRequestTimeoutMs:I

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 1745
    if-eqz v0, :cond_c

    .line 1746
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v6, "Requests history:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1747
    iget-object v6, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v6}, Lcom/android/server/autofill/AutofillManagerService;->access$7500(Lcom/android/server/autofill/AutofillManagerService;)Landroid/util/LocalLog;

    move-result-object v6

    invoke-virtual {v6, p1, p2, p3}, Landroid/util/LocalLog;->reverseDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1748
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v6, "UI latency history:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1749
    iget-object v6, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v6}, Lcom/android/server/autofill/AutofillManagerService;->access$7600(Lcom/android/server/autofill/AutofillManagerService;)Landroid/util/LocalLog;

    move-result-object v6

    invoke-virtual {v6, p1, p2, p3}, Landroid/util/LocalLog;->reverseDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1750
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v6, "WTF history:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1751
    iget-object v6, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v6}, Lcom/android/server/autofill/AutofillManagerService;->access$7700(Lcom/android/server/autofill/AutofillManagerService;)Landroid/util/LocalLog;

    move-result-object v6

    invoke-virtual {v6, p1, p2, p3}, Landroid/util/LocalLog;->reverseDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1753
    :cond_c
    const-string v6, "Augmented Autofill State: "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1754
    iget-object v6, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    iget-object v6, v6, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillState:Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;

    const-string v7, "  "

    invoke-virtual {v6, v7, p2}, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1755
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1757
    sput-boolean v4, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 1758
    sput-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 1759
    nop

    .line 1760
    return-void

    .line 1755
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "showHistory":Z
    .end local v1    # "uiOnly":Z
    .end local v3    # "prefix":Ljava/lang/String;
    .end local v4    # "realDebug":Z
    .end local v5    # "realVerbose":Z
    .end local p0    # "this":Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :try_start_3
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1757
    .restart local v0    # "showHistory":Z
    .restart local v1    # "uiOnly":Z
    .restart local v3    # "prefix":Ljava/lang/String;
    .restart local v4    # "realDebug":Z
    .restart local v5    # "realVerbose":Z
    .restart local p0    # "this":Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pw":Ljava/io/PrintWriter;
    .restart local p3    # "args":[Ljava/lang/String;
    :catchall_1
    move-exception v2

    sput-boolean v4, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 1758
    sput-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 1759
    throw v2
.end method

.method public finishSession(II)V
    .locals 5
    .param p1, "sessionId"    # I
    .param p2, "userId"    # I

    .line 1617
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$5600(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1618
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v1, p2}, Lcom/android/server/autofill/AutofillManagerService;->access$5700(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1619
    .local v1, "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    if-eqz v1, :cond_0

    .line 1620
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->finishSessionLocked(II)V

    goto :goto_0

    .line 1621
    :cond_0
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_1

    .line 1622
    const-string v2, "AutofillManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finishSession(): no service for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    .end local v1    # "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    :cond_1
    :goto_0
    monitor-exit v0

    .line 1625
    return-void

    .line 1624
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAutofillServiceComponentName(Lcom/android/internal/os/IResultReceiver;)V
    .locals 7
    .param p1, "receiver"    # Lcom/android/internal/os/IResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1554
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1556
    .local v0, "userId":I
    const/4 v1, 0x0

    .line 1557
    .local v1, "componentName":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v2}, Lcom/android/server/autofill/AutofillManagerService;->access$4800(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1558
    :try_start_0
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v3, v0}, Lcom/android/server/autofill/AutofillManagerService;->access$4900(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1559
    .local v3, "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    if-eqz v3, :cond_0

    .line 1560
    invoke-virtual {v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 1561
    :cond_0
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_1

    .line 1562
    const-string v4, "AutofillManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAutofillServiceComponentName(): no service for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    .end local v3    # "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    :cond_1
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1565
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v2, p1, v1}, Lcom/android/server/autofill/AutofillManagerService;->access$3000(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Landroid/os/Parcelable;)V

    .line 1566
    return-void

    .line 1564
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public getAvailableFieldClassificationAlgorithms(Lcom/android/internal/os/IResultReceiver;)V
    .locals 7
    .param p1, "receiver"    # Lcom/android/internal/os/IResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1535
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1536
    .local v0, "userId":I
    const/4 v1, 0x0

    .line 1538
    .local v1, "algorithms":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v2}, Lcom/android/server/autofill/AutofillManagerService;->access$4500(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1539
    :try_start_0
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v3, v0}, Lcom/android/server/autofill/AutofillManagerService;->access$4600(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1540
    .local v3, "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    if-eqz v3, :cond_0

    .line 1541
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getAvailableFieldClassificationAlgorithms(I)[Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 1543
    :cond_0
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_1

    .line 1544
    const-string v4, "AutofillManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAvailableFcAlgorithms(): no service for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    .end local v3    # "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    :cond_1
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1548
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v2, p1, v1}, Lcom/android/server/autofill/AutofillManagerService;->access$4700(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;[Ljava/lang/String;)V

    .line 1549
    return-void

    .line 1547
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public getDefaultFieldClassificationAlgorithm(Lcom/android/internal/os/IResultReceiver;)V
    .locals 7
    .param p1, "receiver"    # Lcom/android/internal/os/IResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1493
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1494
    .local v0, "userId":I
    const/4 v1, 0x0

    .line 1496
    .local v1, "algorithm":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v2}, Lcom/android/server/autofill/AutofillManagerService;->access$4100(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1497
    :try_start_0
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v3, v0}, Lcom/android/server/autofill/AutofillManagerService;->access$4200(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1498
    .local v3, "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    if-eqz v3, :cond_0

    .line 1499
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getDefaultFieldClassificationAlgorithm(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 1501
    :cond_0
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_1

    .line 1502
    const-string v4, "AutofillManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDefaultFcAlgorithm(): no service for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    .end local v3    # "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    :cond_1
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1506
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v2, p1, v1}, Lcom/android/server/autofill/AutofillManagerService;->access$3500(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Ljava/lang/String;)V

    .line 1507
    return-void

    .line 1505
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public getFillEventHistory(Lcom/android/internal/os/IResultReceiver;)V
    .locals 7
    .param p1, "receiver"    # Lcom/android/internal/os/IResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1412
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1414
    .local v0, "userId":I
    const/4 v1, 0x0

    .line 1415
    .local v1, "fillEventHistory":Landroid/service/autofill/FillEventHistory;
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v2}, Lcom/android/server/autofill/AutofillManagerService;->access$2800(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1416
    :try_start_0
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v3, v0}, Lcom/android/server/autofill/AutofillManagerService;->access$2900(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1417
    .local v3, "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    if-eqz v3, :cond_0

    .line 1418
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getFillEventHistory(I)Landroid/service/autofill/FillEventHistory;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 1419
    :cond_0
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_1

    .line 1420
    const-string v4, "AutofillManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFillEventHistory(): no service for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    .end local v3    # "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    :cond_1
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1423
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v2, p1, v1}, Lcom/android/server/autofill/AutofillManagerService;->access$3000(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Landroid/os/Parcelable;)V

    .line 1424
    return-void

    .line 1422
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public getUserData(Lcom/android/internal/os/IResultReceiver;)V
    .locals 7
    .param p1, "receiver"    # Lcom/android/internal/os/IResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1428
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1430
    .local v0, "userId":I
    const/4 v1, 0x0

    .line 1431
    .local v1, "userData":Landroid/service/autofill/UserData;
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v2}, Lcom/android/server/autofill/AutofillManagerService;->access$3100(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1432
    :try_start_0
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v3, v0}, Lcom/android/server/autofill/AutofillManagerService;->access$3200(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1433
    .local v3, "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    if-eqz v3, :cond_0

    .line 1434
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getUserData(I)Landroid/service/autofill/UserData;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 1435
    :cond_0
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_1

    .line 1436
    const-string v4, "AutofillManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getUserData(): no service for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    .end local v3    # "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    :cond_1
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1439
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v2, p1, v1}, Lcom/android/server/autofill/AutofillManagerService;->access$3000(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Landroid/os/Parcelable;)V

    .line 1440
    return-void

    .line 1438
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public getUserDataId(Lcom/android/internal/os/IResultReceiver;)V
    .locals 7
    .param p1, "receiver"    # Lcom/android/internal/os/IResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1444
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1445
    .local v0, "userId":I
    const/4 v1, 0x0

    .line 1447
    .local v1, "userData":Landroid/service/autofill/UserData;
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v2}, Lcom/android/server/autofill/AutofillManagerService;->access$3300(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1448
    :try_start_0
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v3, v0}, Lcom/android/server/autofill/AutofillManagerService;->access$3400(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1449
    .local v3, "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    if-eqz v3, :cond_0

    .line 1450
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getUserData(I)Landroid/service/autofill/UserData;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 1451
    :cond_0
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_1

    .line 1452
    const-string v4, "AutofillManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getUserDataId(): no service for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    .end local v3    # "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    :cond_1
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1455
    if-nez v1, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroid/service/autofill/UserData;->getId()Ljava/lang/String;

    move-result-object v2

    .line 1456
    .local v2, "userDataId":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v3, p1, v2}, Lcom/android/server/autofill/AutofillManagerService;->access$3500(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Ljava/lang/String;)V

    .line 1457
    return-void

    .line 1454
    .end local v2    # "userDataId":Ljava/lang/String;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public isFieldClassificationEnabled(Lcom/android/internal/os/IResultReceiver;)V
    .locals 7
    .param p1, "receiver"    # Lcom/android/internal/os/IResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1476
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1477
    .local v0, "userId":I
    const/4 v1, 0x0

    .line 1479
    .local v1, "enabled":Z
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v2}, Lcom/android/server/autofill/AutofillManagerService;->access$3800(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1480
    :try_start_0
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v3, v0}, Lcom/android/server/autofill/AutofillManagerService;->access$3900(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1481
    .local v3, "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    if-eqz v3, :cond_0

    .line 1482
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isFieldClassificationEnabled(I)Z

    move-result v4

    move v1, v4

    goto :goto_0

    .line 1483
    :cond_0
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_1

    .line 1484
    const-string v4, "AutofillManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isFieldClassificationEnabled(): no service for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    .end local v3    # "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    :cond_1
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1487
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v2, p1, v1}, Lcom/android/server/autofill/AutofillManagerService;->access$4000(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Z)V

    .line 1488
    return-void

    .line 1486
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public isServiceEnabled(ILjava/lang/String;Lcom/android/internal/os/IResultReceiver;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "receiver"    # Lcom/android/internal/os/IResultReceiver;

    .line 1663
    const/4 v0, 0x0

    .line 1664
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v1}, Lcom/android/server/autofill/AutofillManagerService;->access$6400(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1665
    :try_start_0
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v2, p1}, Lcom/android/server/autofill/AutofillManagerService;->access$6500(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1666
    .local v2, "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    invoke-virtual {v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServicePackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    move v0, v3

    .line 1667
    .end local v2    # "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1668
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v1, p3, v0}, Lcom/android/server/autofill/AutofillManagerService;->access$4000(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Z)V

    .line 1669
    return-void

    .line 1667
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public isServiceSupported(ILcom/android/internal/os/IResultReceiver;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "receiver"    # Lcom/android/internal/os/IResultReceiver;

    .line 1653
    const/4 v0, 0x0

    .line 1654
    .local v0, "supported":Z
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v1}, Lcom/android/server/autofill/AutofillManagerService;->access$6200(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1655
    :try_start_0
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v2, p1}, Lcom/android/server/autofill/AutofillManagerService;->access$6300(Lcom/android/server/autofill/AutofillManagerService;I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .line 1656
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1657
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v1, p2, v0}, Lcom/android/server/autofill/AutofillManagerService;->access$4000(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Z)V

    .line 1658
    return-void

    .line 1656
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onPendingSaveUi(ILandroid/os/IBinder;)V
    .locals 4
    .param p1, "operation"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .line 1673
    const-string/jumbo v0, "token"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1674
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    new-array v1, v1, [Ljava/lang/Object;

    .line 1676
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    .line 1674
    const-string/jumbo v0, "invalid operation: %d"

    invoke-static {v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1677
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$6600(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1678
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 1679
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 1678
    invoke-static {v1, v2}, Lcom/android/server/autofill/AutofillManagerService;->access$6700(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1680
    .local v1, "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    if-eqz v1, :cond_2

    .line 1681
    invoke-virtual {v1, p1, p2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->onPendingSaveUi(ILandroid/os/IBinder;)V

    .line 1683
    .end local v1    # "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    :cond_2
    monitor-exit v0

    .line 1684
    return-void

    .line 1683
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 1765
    new-instance v0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;

    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;-><init>(Lcom/android/server/autofill/AutofillManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 1767
    return-void
.end method

.method public removeClient(Landroid/view/autofill/IAutoFillManagerClient;I)V
    .locals 5
    .param p1, "client"    # Landroid/view/autofill/IAutoFillManagerClient;
    .param p2, "userId"    # I

    .line 1344
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$1700(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1345
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v1, p2}, Lcom/android/server/autofill/AutofillManagerService;->access$1800(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1346
    .local v1, "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    if-eqz v1, :cond_0

    .line 1347
    invoke-virtual {v1, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->removeClientLocked(Landroid/view/autofill/IAutoFillManagerClient;)V

    goto :goto_0

    .line 1348
    :cond_0
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_1

    .line 1349
    const-string v2, "AutofillManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeClient(): no service for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    .end local v1    # "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    :cond_1
    :goto_0
    monitor-exit v0

    .line 1352
    return-void

    .line 1351
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public restoreSession(ILandroid/os/IBinder;Landroid/os/IBinder;Lcom/android/internal/os/IResultReceiver;)V
    .locals 7
    .param p1, "sessionId"    # I
    .param p2, "activityToken"    # Landroid/os/IBinder;
    .param p3, "appCallback"    # Landroid/os/IBinder;
    .param p4, "receiver"    # Lcom/android/internal/os/IResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1572
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1573
    .local v0, "userId":I
    const-string v1, "activityToken"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object p2, v1

    check-cast p2, Landroid/os/IBinder;

    .line 1574
    const-string v1, "appCallback"

    invoke-static {p3, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object p3, v1

    check-cast p3, Landroid/os/IBinder;

    .line 1576
    const/4 v1, 0x0

    .line 1577
    .local v1, "restored":Z
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v2}, Lcom/android/server/autofill/AutofillManagerService;->access$5000(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1578
    :try_start_0
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v3, v0}, Lcom/android/server/autofill/AutofillManagerService;->access$5100(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1579
    .local v3, "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    if-eqz v3, :cond_0

    .line 1580
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, p1, v4, p2, p3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->restoreSession(IILandroid/os/IBinder;Landroid/os/IBinder;)Z

    move-result v4

    move v1, v4

    goto :goto_0

    .line 1582
    :cond_0
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_1

    .line 1583
    const-string v4, "AutofillManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "restoreSession(): no service for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    .end local v3    # "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    :cond_1
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1586
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v2, p4, v1}, Lcom/android/server/autofill/AutofillManagerService;->access$4000(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Z)V

    .line 1587
    return-void

    .line 1585
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public setAugmentedAutofillWhitelist(Ljava/util/List;Ljava/util/List;Lcom/android/internal/os/IResultReceiver;)V
    .locals 6
    .param p3, "receiver"    # Lcom/android/internal/os/IResultReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;",
            "Lcom/android/internal/os/IResultReceiver;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1513
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1516
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v1}, Lcom/android/server/autofill/AutofillManagerService;->access$4300(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1517
    :try_start_0
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v2, v0}, Lcom/android/server/autofill/AutofillManagerService;->access$4400(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1518
    .local v2, "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    if-eqz v2, :cond_0

    .line 1519
    nop

    .line 1520
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->getCallingUid()I

    move-result v3

    .line 1519
    invoke-virtual {v2, p1, p2, v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->setAugmentedAutofillWhitelistLocked(Ljava/util/List;Ljava/util/List;I)Z

    move-result v3

    .local v3, "ok":Z
    goto :goto_0

    .line 1522
    .end local v3    # "ok":Z
    :cond_0
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_1

    .line 1523
    const-string v3, "AutofillManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setAugmentedAutofillWhitelist(): no service for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    :cond_1
    const/4 v3, 0x0

    .line 1527
    .end local v2    # "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    .restart local v3    # "ok":Z
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1528
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 1529
    if-eqz v3, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/4 v2, -0x1

    .line 1528
    :goto_1
    invoke-static {v1, p3, v2}, Lcom/android/server/autofill/AutofillManagerService;->access$1600(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;I)V

    .line 1530
    return-void

    .line 1527
    .end local v3    # "ok":Z
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setAuthenticationResult(Landroid/os/Bundle;III)V
    .locals 3
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "sessionId"    # I
    .param p3, "authenticationId"    # I
    .param p4, "userId"    # I

    .line 1357
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$1900(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1358
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v1, p4}, Lcom/android/server/autofill/AutofillManagerService;->access$2000(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1359
    .local v1, "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    nop

    .line 1360
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->getCallingUid()I

    move-result v2

    .line 1359
    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->setAuthenticationResultLocked(Landroid/os/Bundle;III)V

    .line 1361
    .end local v1    # "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    monitor-exit v0

    .line 1362
    return-void

    .line 1361
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAutofillFailure(ILjava/util/List;I)V
    .locals 5
    .param p1, "sessionId"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;I)V"
        }
    .end annotation

    .line 1605
    .local p2, "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$5400(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1606
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v1, p3}, Lcom/android/server/autofill/AutofillManagerService;->access$5500(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1607
    .local v1, "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    if-eqz v1, :cond_0

    .line 1608
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, p1, v2, p2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->setAutofillFailureLocked(IILjava/util/List;)V

    goto :goto_0

    .line 1609
    :cond_0
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_1

    .line 1610
    const-string v2, "AutofillManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAutofillFailure(): no service for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    .end local v1    # "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    :cond_1
    :goto_0
    monitor-exit v0

    .line 1613
    return-void

    .line 1612
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setHasCallback(IIZ)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "userId"    # I
    .param p3, "hasIt"    # Z

    .line 1366
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$2100(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1367
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v1, p2}, Lcom/android/server/autofill/AutofillManagerService;->access$2200(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1368
    .local v1, "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, p1, v2, p3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->setHasCallback(IIZ)V

    .line 1369
    .end local v1    # "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    monitor-exit v0

    .line 1370
    return-void

    .line 1369
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setUserData(Landroid/service/autofill/UserData;)V
    .locals 6
    .param p1, "userData"    # Landroid/service/autofill/UserData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1461
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1463
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v1}, Lcom/android/server/autofill/AutofillManagerService;->access$3600(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1464
    :try_start_0
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v2, v0}, Lcom/android/server/autofill/AutofillManagerService;->access$3700(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1465
    .local v2, "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    if-eqz v2, :cond_0

    .line 1466
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->setUserData(ILandroid/service/autofill/UserData;)V

    goto :goto_0

    .line 1467
    :cond_0
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_1

    .line 1468
    const-string v3, "AutofillManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setUserData(): no service for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    .end local v2    # "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    :cond_1
    :goto_0
    monitor-exit v1

    .line 1471
    return-void

    .line 1470
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public startSession(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;IZILandroid/content/ComponentName;ZLcom/android/internal/os/IResultReceiver;)V
    .locals 23
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "appCallback"    # Landroid/os/IBinder;
    .param p3, "autofillId"    # Landroid/view/autofill/AutofillId;
    .param p4, "bounds"    # Landroid/graphics/Rect;
    .param p5, "value"    # Landroid/view/autofill/AutofillValue;
    .param p6, "userId"    # I
    .param p7, "hasCallback"    # Z
    .param p8, "flags"    # I
    .param p9, "componentName"    # Landroid/content/ComponentName;
    .param p10, "compatMode"    # Z
    .param p11, "receiver"    # Lcom/android/internal/os/IResultReceiver;

    .line 1377
    move-object/from16 v1, p0

    move/from16 v2, p6

    move-object/from16 v3, p11

    const-string v0, "activityToken"

    move-object/from16 v4, p1

    invoke-static {v4, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/os/IBinder;

    .line 1378
    .end local p1    # "activityToken":Landroid/os/IBinder;
    .local v15, "activityToken":Landroid/os/IBinder;
    const-string v0, "appCallback"

    move-object/from16 v4, p2

    invoke-static {v4, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/IBinder;

    .line 1379
    .end local p2    # "appCallback":Landroid/os/IBinder;
    .local v17, "appCallback":Landroid/os/IBinder;
    const-string v0, "autoFillId"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/view/autofill/AutofillId;

    .line 1380
    .end local p3    # "autofillId":Landroid/view/autofill/AutofillId;
    .local v18, "autofillId":Landroid/view/autofill/AutofillId;
    const-string v0, "componentName"

    move-object/from16 v4, p9

    invoke-static {v4, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/content/ComponentName;

    .line 1381
    .end local p9    # "componentName":Landroid/content/ComponentName;
    .local v19, "componentName":Landroid/content/ComponentName;
    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/lang/String;

    .line 1383
    .local v14, "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/4 v4, 0x0

    if-ne v2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    const-string/jumbo v5, "userId"

    invoke-static {v0, v5}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1386
    :try_start_0
    iget-object v0, v1, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v14, v4, v2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1389
    nop

    .line 1393
    iget-object v0, v1, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$2300(Lcom/android/server/autofill/AutofillManagerService;)Landroid/app/ActivityManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v15, v4}, Landroid/app/ActivityManagerInternal;->getTaskIdForActivity(Landroid/os/IBinder;Z)I

    move-result v20

    .line 1395
    .local v20, "taskId":I
    iget-object v0, v1, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$2400(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v21

    monitor-enter v21

    .line 1396
    :try_start_1
    iget-object v0, v1, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v0, v2}, Lcom/android/server/autofill/AutofillManagerService;->access$2500(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1397
    .local v4, "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->getCallingUid()I

    move-result v7

    iget-object v0, v1, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 1399
    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$2600(Lcom/android/server/autofill/AutofillManagerService;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1397
    move-object v5, v15

    move/from16 v6, v20

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p7

    move-object/from16 v13, v19

    move-object v2, v14

    .end local v14    # "packageName":Ljava/lang/String;
    .local v2, "packageName":Ljava/lang/String;
    move/from16 v14, p10

    move-object/from16 v22, v15

    .end local v15    # "activityToken":Landroid/os/IBinder;
    .local v22, "activityToken":Landroid/os/IBinder;
    move v15, v0

    move/from16 v16, p8

    :try_start_2
    invoke-virtual/range {v4 .. v16}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->startSessionLocked(Landroid/os/IBinder;IILandroid/os/IBinder;Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;ZLandroid/content/ComponentName;ZZI)J

    move-result-wide v5

    move-wide v4, v5

    .line 1400
    .local v4, "result":J
    monitor-exit v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1401
    long-to-int v0, v4

    .line 1402
    .local v0, "sessionId":I
    const/16 v6, 0x20

    shr-long v6, v4, v6

    long-to-int v6, v6

    .line 1403
    .local v6, "resultFlags":I
    if-eqz v6, :cond_1

    .line 1404
    iget-object v7, v1, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v7, v3, v0, v6}, Lcom/android/server/autofill/AutofillManagerService;->access$2700(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;II)V

    goto :goto_1

    .line 1406
    :cond_1
    iget-object v7, v1, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v7, v3, v0}, Lcom/android/server/autofill/AutofillManagerService;->access$1600(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;I)V

    .line 1408
    :goto_1
    return-void

    .line 1400
    .end local v0    # "sessionId":I
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v4    # "result":J
    .end local v6    # "resultFlags":I
    .end local v22    # "activityToken":Landroid/os/IBinder;
    .restart local v14    # "packageName":Ljava/lang/String;
    .restart local v15    # "activityToken":Landroid/os/IBinder;
    :catchall_0
    move-exception v0

    move-object v2, v14

    move-object/from16 v22, v15

    .end local v14    # "packageName":Ljava/lang/String;
    .end local v15    # "activityToken":Landroid/os/IBinder;
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v22    # "activityToken":Landroid/os/IBinder;
    :goto_2
    :try_start_3
    monitor-exit v21
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 1387
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v20    # "taskId":I
    .end local v22    # "activityToken":Landroid/os/IBinder;
    .restart local v14    # "packageName":Ljava/lang/String;
    .restart local v15    # "activityToken":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    move-object v2, v14

    move-object/from16 v22, v15

    .line 1388
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v15    # "activityToken":Landroid/os/IBinder;
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v22    # "activityToken":Landroid/os/IBinder;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is not a valid package"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public updateSession(ILandroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;III)V
    .locals 12
    .param p1, "sessionId"    # I
    .param p2, "autoFillId"    # Landroid/view/autofill/AutofillId;
    .param p3, "bounds"    # Landroid/graphics/Rect;
    .param p4, "value"    # Landroid/view/autofill/AutofillValue;
    .param p5, "action"    # I
    .param p6, "flags"    # I
    .param p7, "userId"    # I

    .line 1592
    move-object v1, p0

    move/from16 v2, p7

    iget-object v0, v1, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$5200(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1593
    :try_start_0
    iget-object v0, v1, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v0, v2}, Lcom/android/server/autofill/AutofillManagerService;->access$5300(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1594
    .local v0, "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    if-eqz v0, :cond_0

    .line 1595
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->getCallingUid()I

    move-result v6

    move-object v4, v0

    move v5, p1

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->updateSessionLocked(IILandroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)Z

    goto :goto_0

    .line 1597
    :cond_0
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_1

    .line 1598
    const-string v4, "AutofillManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateSession(): no service for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    .end local v0    # "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    :cond_1
    :goto_0
    monitor-exit v3

    .line 1601
    return-void

    .line 1600
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
