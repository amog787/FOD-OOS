.class final Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;
.super Landroid/app/IStopUserCallback$Stub;
.source "ActivityManagerShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StopUserCallback"
.end annotation


# instance fields
.field private mFinished:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1793
    invoke-direct {p0}, Landroid/app/IStopUserCallback$Stub;-><init>()V

    .line 1794
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;->mFinished:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized userStopAborted(I)V
    .locals 1
    .param p1, "userId"    # I

    monitor-enter p0

    .line 1812
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;->mFinished:Z

    .line 1813
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1814
    monitor-exit p0

    return-void

    .line 1811
    .end local p0    # "this":Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;
    .end local p1    # "userId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized userStopped(I)V
    .locals 1
    .param p1, "userId"    # I

    monitor-enter p0

    .line 1806
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;->mFinished:Z

    .line 1807
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1808
    monitor-exit p0

    return-void

    .line 1805
    .end local p0    # "this":Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;
    .end local p1    # "userId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized waitForFinish()V
    .locals 2

    monitor-enter p0

    .line 1798
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;->mFinished:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1801
    .end local p0    # "this":Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;
    :cond_0
    nop

    .line 1802
    monitor-exit p0

    return-void

    .line 1797
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1799
    :catch_0
    move-exception v0

    .line 1800
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1797
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1
    monitor-exit p0

    throw v0
.end method
