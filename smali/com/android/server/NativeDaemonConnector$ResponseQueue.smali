.class Lcom/android/server/NativeDaemonConnector$ResponseQueue;
.super Ljava/lang/Object;
.source "NativeDaemonConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NativeDaemonConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResponseQueue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    }
.end annotation


# instance fields
.field private mMaxCount:I

.field private final mPendingCmds:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "maxCount"    # I

    .line 644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 645
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    .line 646
    iput p1, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mMaxCount:I

    .line 647
    return-void
.end method


# virtual methods
.method public add(ILcom/android/server/NativeDaemonEvent;)V
    .locals 6
    .param p1, "cmdNum"    # I
    .param p2, "response"    # Lcom/android/server/NativeDaemonEvent;

    .line 650
    const/4 v0, 0x0

    .line 651
    .local v0, "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    iget-object v1, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    monitor-enter v1

    .line 652
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;

    .line 653
    .local v3, "pendingCmd":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    iget v4, v3, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I

    if-ne v4, p1, :cond_0

    .line 654
    move-object v0, v3

    .line 655
    goto :goto_1

    .line 657
    .end local v3    # "pendingCmd":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    :cond_0
    goto :goto_0

    .line 658
    :cond_1
    :goto_1
    if-nez v0, :cond_3

    .line 660
    :goto_2
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    iget v3, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mMaxCount:I

    if-lt v2, v3, :cond_2

    .line 661
    const-string v2, "NativeDaemonConnector.ResponseQueue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "more buffered than allowed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    .line 662
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " >= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mMaxCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 661
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;

    .line 666
    .local v2, "pendingCmd":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    const-string v3, "NativeDaemonConnector.ResponseQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->logCmd:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    nop

    .end local v2    # "pendingCmd":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    goto :goto_2

    .line 670
    :cond_2
    new-instance v2, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;-><init>(ILjava/lang/String;)V

    move-object v0, v2

    .line 671
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 673
    :cond_3
    iget v2, v0, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    .line 676
    iget v2, v0, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 677
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 679
    :try_start_1
    iget-object v1, v0, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->responses:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 680
    :catch_0
    move-exception v1

    :goto_3
    nop

    .line 681
    return-void

    .line 677
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 714
    const-string v0, "Pending requests:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 715
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    monitor-enter v0

    .line 716
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;

    .line 717
    .local v2, "pendingCmd":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Cmd "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->logCmd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 718
    .end local v2    # "pendingCmd":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    goto :goto_0

    .line 719
    :cond_0
    monitor-exit v0

    .line 720
    return-void

    .line 719
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public remove(IJLjava/lang/String;)Lcom/android/server/NativeDaemonEvent;
    .locals 5
    .param p1, "cmdNum"    # I
    .param p2, "timeoutMs"    # J
    .param p4, "logCmd"    # Ljava/lang/String;

    .line 686
    const/4 v0, 0x0

    .line 687
    .local v0, "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    iget-object v1, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    monitor-enter v1

    .line 688
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;

    .line 689
    .local v3, "pendingCmd":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    iget v4, v3, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I

    if-ne v4, p1, :cond_0

    .line 690
    move-object v0, v3

    .line 691
    goto :goto_1

    .line 693
    .end local v3    # "pendingCmd":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    :cond_0
    goto :goto_0

    .line 694
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 695
    new-instance v2, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;

    invoke-direct {v2, p1, p4}, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;-><init>(ILjava/lang/String;)V

    move-object v0, v2

    .line 696
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 698
    :cond_2
    iget v2, v0, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    .line 701
    iget v2, v0, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 702
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 703
    const/4 v1, 0x0

    .line 705
    .local v1, "result":Lcom/android/server/NativeDaemonEvent;
    :try_start_1
    iget-object v2, v0, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->responses:Ljava/util/concurrent/BlockingQueue;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, p2, p3, v3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v2

    goto :goto_2

    .line 706
    :catch_0
    move-exception v2

    :goto_2
    nop

    .line 707
    if-nez v1, :cond_4

    .line 708
    const-string v2, "NativeDaemonConnector.ResponseQueue"

    const-string v3, "Timeout waiting for response"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :cond_4
    return-object v1

    .line 702
    .end local v1    # "result":Lcom/android/server/NativeDaemonEvent;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
