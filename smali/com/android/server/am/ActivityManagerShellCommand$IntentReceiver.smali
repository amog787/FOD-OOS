.class final Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;
.super Landroid/content/IIntentReceiver$Stub;
.source "ActivityManagerShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IntentReceiver"
.end annotation


# instance fields
.field private mFinished:Z

.field private final mPw:Ljava/io/PrintWriter;


# direct methods
.method constructor <init>(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 685
    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    .line 683
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;->mFinished:Z

    .line 686
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;->mPw:Ljava/io/PrintWriter;

    .line 687
    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultCode"    # I
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "ordered"    # Z
    .param p6, "sticky"    # Z
    .param p7, "sendingUser"    # I

    .line 692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Broadcast completed: result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 693
    .local v0, "line":Ljava/lang/String;
    if-eqz p3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", data=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 694
    :cond_0
    if-eqz p4, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", extras: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 695
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 696
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 697
    monitor-enter p0

    .line 698
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;->mFinished:Z

    .line 699
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 700
    monitor-exit p0

    .line 701
    return-void

    .line 700
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized waitForFinish()V
    .locals 2

    monitor-enter p0

    .line 711
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerShellCommand;->access$1800()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 713
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;->mFinished:Z

    if-nez v0, :cond_1

    .line 714
    const-wide/16 v0, 0x2710

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 715
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;->mFinished:Z

    .line 716
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    .line 719
    .end local p0    # "this":Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;
    :cond_0
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;->mFinished:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 724
    :cond_1
    nop

    .line 725
    monitor-exit p0

    return-void

    .line 710
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 722
    :catch_0
    move-exception v0

    .line 723
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 710
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_2
    monitor-exit p0

    throw v0
.end method
