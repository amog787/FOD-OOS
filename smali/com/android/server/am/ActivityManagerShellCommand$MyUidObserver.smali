.class final Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;
.super Landroid/app/IUidObserver$Stub;
.source "ActivityManagerShellCommand.java"

# interfaces
.implements Lcom/android/server/am/ActivityManagerService$OomAdjObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MyUidObserver"
.end annotation


# static fields
.field static final STATE_NORMAL:I


# instance fields
.field final mInput:Ljava/io/InputStream;

.field final mInterface:Landroid/app/IActivityManager;

.field final mInternal:Lcom/android/server/am/ActivityManagerService;

.field final mPw:Ljava/io/PrintWriter;

.field mState:I

.field final mUid:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/io/PrintWriter;Ljava/io/InputStream;I)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "input"    # Ljava/io/InputStream;
    .param p4, "uid"    # I

    .line 1519
    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    .line 1520
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInterface:Landroid/app/IActivityManager;

    .line 1521
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 1522
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    .line 1523
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInput:Ljava/io/InputStream;

    .line 1524
    iput p4, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mUid:I

    .line 1525
    return-void
.end method


# virtual methods
.method public onOomAdjMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 1613
    monitor-enter p0

    .line 1614
    :try_start_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1616
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string v2, "# "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1617
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1618
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1620
    :try_start_2
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1621
    nop

    .line 1622
    .end local v0    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    monitor-exit p0

    .line 1623
    return-void

    .line 1620
    .restart local v0    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1621
    nop

    .end local p0    # "this":Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;
    .end local p1    # "msg":Ljava/lang/String;
    throw v1

    .line 1622
    .end local v0    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local p0    # "this":Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;
    .restart local p1    # "msg":Ljava/lang/String;
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public onUidActive(I)V
    .locals 3
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1567
    monitor-enter p0

    .line 1568
    :try_start_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1570
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 1571
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string v2, " active"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1572
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1574
    :try_start_2
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1575
    nop

    .line 1576
    .end local v0    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    monitor-exit p0

    .line 1577
    return-void

    .line 1574
    .restart local v0    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1575
    nop

    .end local p0    # "this":Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;
    .end local p1    # "uid":I
    throw v1

    .line 1576
    .end local v0    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local p0    # "this":Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;
    .restart local p1    # "uid":I
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public onUidCachedChanged(IZ)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "cached"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1599
    monitor-enter p0

    .line 1600
    :try_start_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1602
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 1603
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    if-eqz p2, :cond_0

    const-string v2, " cached"

    goto :goto_0

    :cond_0
    const-string v2, " uncached"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1604
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1606
    :try_start_2
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1607
    nop

    .line 1608
    .end local v0    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    monitor-exit p0

    .line 1609
    return-void

    .line 1606
    .restart local v0    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1607
    nop

    .end local p0    # "this":Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;
    .end local p1    # "uid":I
    .end local p2    # "cached":Z
    throw v1

    .line 1608
    .end local v0    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local p0    # "this":Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;
    .restart local p1    # "uid":I
    .restart local p2    # "cached":Z
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public onUidGone(IZ)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1549
    monitor-enter p0

    .line 1550
    :try_start_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1552
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 1553
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string v2, " gone"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1554
    if-eqz p2, :cond_0

    .line 1555
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string v2, " disabled"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1557
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 1558
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1560
    :try_start_2
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1561
    nop

    .line 1562
    .end local v0    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    monitor-exit p0

    .line 1563
    return-void

    .line 1560
    .restart local v0    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1561
    nop

    .end local p0    # "this":Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;
    .end local p1    # "uid":I
    .end local p2    # "disabled":Z
    throw v1

    .line 1562
    .end local v0    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local p0    # "this":Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;
    .restart local p1    # "uid":I
    .restart local p2    # "disabled":Z
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public onUidIdle(IZ)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1581
    monitor-enter p0

    .line 1582
    :try_start_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1584
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 1585
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string v2, " idle"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1586
    if-eqz p2, :cond_0

    .line 1587
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string v2, " disabled"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1589
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 1590
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1592
    :try_start_2
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1593
    nop

    .line 1594
    .end local v0    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    monitor-exit p0

    .line 1595
    return-void

    .line 1592
    .restart local v0    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1593
    nop

    .end local p0    # "this":Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;
    .end local p1    # "uid":I
    .end local p2    # "disabled":Z
    throw v1

    .line 1594
    .end local v0    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local p0    # "this":Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;
    .restart local p1    # "uid":I
    .restart local p2    # "disabled":Z
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public onUidStateChanged(IIJI)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "procState"    # I
    .param p3, "procStateSeq"    # J
    .param p5, "capability"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1530
    monitor-enter p0

    .line 1531
    :try_start_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1533
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 1534
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string v2, " procstate "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1535
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-static {p2}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1536
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string v2, " seq "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1537
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1, p3, p4}, Ljava/io/PrintWriter;->print(J)V

    .line 1538
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string v2, " capability "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1539
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1, p5}, Ljava/io/PrintWriter;->println(I)V

    .line 1540
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1542
    :try_start_2
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1543
    nop

    .line 1544
    .end local v0    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    monitor-exit p0

    .line 1545
    return-void

    .line 1542
    .restart local v0    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1543
    nop

    .end local p0    # "this":Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;
    .end local p1    # "uid":I
    .end local p2    # "procState":I
    .end local p3    # "procStateSeq":J
    .end local p5    # "capability":I
    throw v1

    .line 1544
    .end local v0    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local p0    # "this":Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;
    .restart local p1    # "uid":I
    .restart local p2    # "procState":I
    .restart local p3    # "procStateSeq":J
    .restart local p5    # "capability":I
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method printMessageForState()V
    .locals 2

    .line 1626
    iget v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mState:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1628
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string v1, "Watching uid states...  available commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1631
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string v1, "(q)uit: finish watching"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1632
    return-void
.end method

.method run()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1636
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->printMessageForState()V

    .line 1637
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 1639
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInterface:Landroid/app/IActivityManager;

    const/16 v1, 0x1f

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    .line 1643
    iget v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mUid:I

    if-ltz v0, :cond_0

    .line 1644
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mUid:I

    invoke-virtual {v0, v1, p0}, Lcom/android/server/am/ActivityManagerService;->setOomAdjObserver(ILcom/android/server/am/ActivityManagerService$OomAdjObserver;)V

    .line 1646
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mState:I

    .line 1648
    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInput:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 1649
    .local v0, "converter":Ljava/io/InputStreamReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1652
    .local v1, "in":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "line":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 1653
    const/4 v2, 0x1

    .line 1654
    .local v2, "addNewline":Z
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_1

    .line 1655
    const/4 v2, 0x0

    goto :goto_1

    .line 1656
    :cond_1
    const-string/jumbo v4, "q"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v4, "quit"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1657
    goto :goto_2

    .line 1659
    :cond_2
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid command: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1662
    :goto_1
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1663
    if-eqz v2, :cond_3

    .line 1664
    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1666
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->printMessageForState()V

    .line 1667
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    .line 1668
    monitor-exit p0

    .line 1669
    .end local v2    # "addNewline":Z
    goto :goto_0

    .line 1668
    .restart local v2    # "addNewline":Z
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;
    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1675
    .end local v0    # "converter":Ljava/io/InputStreamReader;
    .end local v1    # "in":Ljava/io/BufferedReader;
    .end local v2    # "addNewline":Z
    .end local v3    # "line":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;
    :cond_4
    :goto_2
    iget v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mUid:I

    if-ltz v0, :cond_5

    .line 1676
    goto :goto_3

    .line 1675
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 1671
    :catch_0
    move-exception v0

    .line 1672
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v0, v1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 1673
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1675
    .end local v0    # "e":Ljava/io/IOException;
    iget v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mUid:I

    if-ltz v0, :cond_5

    .line 1676
    :goto_3
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->clearOomAdjObserver()V

    .line 1678
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->unregisterUidObserver(Landroid/app/IUidObserver;)V

    .line 1679
    nop

    .line 1680
    return-void

    .line 1675
    :goto_4
    iget v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mUid:I

    if-ltz v1, :cond_6

    .line 1676
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->clearOomAdjObserver()V

    .line 1678
    :cond_6
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v1, p0}, Landroid/app/IActivityManager;->unregisterUidObserver(Landroid/app/IUidObserver;)V

    .line 1679
    throw v0
.end method
