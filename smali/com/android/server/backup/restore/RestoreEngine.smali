.class public abstract Lcom/android/server/backup/restore/RestoreEngine;
.super Ljava/lang/Object;
.source "RestoreEngine.java"


# static fields
.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RestoreEngine"

.field public static final TARGET_FAILURE:I = -0x2

.field public static final TRANSPORT_FAILURE:I = -0x3


# instance fields
.field private final mResult:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/backup/restore/RestoreEngine;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/backup/restore/RestoreEngine;->mResult:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public getResult()I
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/android/server/backup/restore/RestoreEngine;->mResult:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/android/server/backup/restore/RestoreEngine;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public setResult(I)V
    .locals 1
    .param p1, "result"    # I

    .line 64
    iget-object v0, p0, Lcom/android/server/backup/restore/RestoreEngine;->mResult:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 65
    return-void
.end method

.method public setRunning(Z)V
    .locals 2
    .param p1, "stillRunning"    # Z

    .line 41
    iget-object v0, p0, Lcom/android/server/backup/restore/RestoreEngine;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 42
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/restore/RestoreEngine;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 43
    iget-object v1, p0, Lcom/android/server/backup/restore/RestoreEngine;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 44
    monitor-exit v0

    .line 45
    return-void

    .line 44
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public waitForResult()I
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/android/server/backup/restore/RestoreEngine;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 49
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/backup/restore/RestoreEngine;->isRunning()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 51
    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/restore/RestoreEngine;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 52
    :catch_0
    move-exception v1

    .line 53
    :goto_1
    goto :goto_0

    .line 55
    :cond_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    invoke-virtual {p0}, Lcom/android/server/backup/restore/RestoreEngine;->getResult()I

    move-result v0

    return v0

    .line 55
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
