.class Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;
.super Landroid/os/ShellCommand;
.source "ThermalManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ThermalManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ThermalShellCommand"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ThermalManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/ThermalManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/ThermalManagerService;

    .line 520
    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method

.method private runOverrideStatus()I
    .locals 7

    .line 547
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 549
    .local v0, "token":J
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 552
    .local v2, "pw":Ljava/io/PrintWriter;
    const/4 v3, -0x1

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 556
    .local v4, "status":I
    nop

    .line 557
    :try_start_2
    invoke-static {v4}, Landroid/os/Temperature;->isValidStatus(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 558
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 559
    nop

    .line 567
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 559
    return v3

    .line 561
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v3}, Lcom/android/server/power/ThermalManagerService;->access$000(Lcom/android/server/power/ThermalManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 562
    :try_start_4
    iget-object v5, p0, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/ThermalManagerService;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/server/power/ThermalManagerService;->access$902(Lcom/android/server/power/ThermalManagerService;Z)Z

    .line 563
    iget-object v5, p0, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v5, v4}, Lcom/android/server/power/ThermalManagerService;->access$1200(Lcom/android/server/power/ThermalManagerService;I)V

    .line 564
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 565
    const/4 v3, 0x0

    .line 567
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 565
    return v3

    .line 564
    :catchall_0
    move-exception v5

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;
    :try_start_6
    throw v5

    .line 553
    .end local v4    # "status":I
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;
    :catch_0
    move-exception v4

    .line 554
    .local v4, "ex":Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 555
    nop

    .line 567
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 555
    return v3

    .line 567
    .end local v2    # "pw":Ljava/io/PrintWriter;
    .end local v4    # "ex":Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private runReset()I
    .locals 5

    .line 534
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 536
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v2}, Lcom/android/server/power/ThermalManagerService;->access$000(Lcom/android/server/power/ThermalManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 537
    :try_start_1
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/ThermalManagerService;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/power/ThermalManagerService;->access$902(Lcom/android/server/power/ThermalManagerService;Z)Z

    .line 538
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v3}, Lcom/android/server/power/ThermalManagerService;->access$1100(Lcom/android/server/power/ThermalManagerService;)V

    .line 539
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 542
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 539
    return v4

    .line 540
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 542
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 5
    .param p1, "cmd"    # Ljava/lang/String;

    .line 523
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x6761d4f

    const/4 v4, 0x1

    if-eq v2, v3, :cond_3

    const v3, 0x16fa8113

    if-eq v2, v3, :cond_2

    :cond_1
    goto :goto_1

    :cond_2
    const-string/jumbo v2, "override-status"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const-string/jumbo v2, "reset"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v4

    :goto_1
    if-eqz v1, :cond_5

    if-eq v1, v4, :cond_4

    .line 529
    invoke-virtual {p0, p1}, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 527
    :cond_4
    invoke-direct {p0}, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->runReset()I

    move-result v0

    return v0

    .line 525
    :cond_5
    invoke-direct {p0}, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->runOverrideStatus()I

    move-result v0

    return v0
.end method

.method public onHelp()V
    .locals 2

    .line 573
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 574
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Thermal service (thermalservice) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 575
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 576
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 577
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 578
    const-string v1, "  override-status STATUS"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 579
    const-string v1, "    sets and locks the thermal status of the device to STATUS."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 580
    const-string v1, "    status code is defined in android.os.Temperature."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 581
    const-string v1, "  reset"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 582
    const-string v1, "    unlocks the thermal status of the device."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 583
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 584
    return-void
.end method
