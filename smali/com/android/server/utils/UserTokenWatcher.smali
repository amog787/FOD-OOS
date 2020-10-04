.class public final Lcom/android/server/utils/UserTokenWatcher;
.super Ljava/lang/Object;
.source "UserTokenWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;,
        Lcom/android/server/utils/UserTokenWatcher$Callback;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/android/server/utils/UserTokenWatcher$Callback;

.field private final mHandler:Landroid/os/Handler;

.field private final mTag:Ljava/lang/String;

.field private final mWatchers:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mWatchers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/TokenWatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/utils/UserTokenWatcher$Callback;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/server/utils/UserTokenWatcher$Callback;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "tag"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    .line 45
    iput-object p1, p0, Lcom/android/server/utils/UserTokenWatcher;->mCallback:Lcom/android/server/utils/UserTokenWatcher$Callback;

    .line 46
    iput-object p2, p0, Lcom/android/server/utils/UserTokenWatcher;->mHandler:Landroid/os/Handler;

    .line 47
    iput-object p3, p0, Lcom/android/server/utils/UserTokenWatcher;->mTag:Ljava/lang/String;

    .line 48
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/utils/UserTokenWatcher;)Lcom/android/server/utils/UserTokenWatcher$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/utils/UserTokenWatcher;

    .line 35
    iget-object v0, p0, Lcom/android/server/utils/UserTokenWatcher;->mCallback:Lcom/android/server/utils/UserTokenWatcher$Callback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/utils/UserTokenWatcher;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/utils/UserTokenWatcher;

    .line 35
    iget-object v0, p0, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    return-object v0
.end method


# virtual methods
.method public acquire(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 66
    iget-object v0, p0, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/TokenWatcher;

    .line 68
    .local v1, "watcher":Landroid/os/TokenWatcher;
    if-nez v1, :cond_0

    .line 69
    new-instance v8, Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;

    iget-object v5, p0, Lcom/android/server/utils/UserTokenWatcher;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/utils/UserTokenWatcher;->mTag:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, p0

    move v4, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;-><init>(Lcom/android/server/utils/UserTokenWatcher;ILandroid/os/Handler;Ljava/lang/String;Lcom/android/server/utils/UserTokenWatcher$1;)V

    move-object v1, v8

    .line 70
    iget-object v2, p0, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, p3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    :cond_0
    invoke-virtual {v1, p1, p2}, Landroid/os/TokenWatcher;->acquire(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 73
    .end local v1    # "watcher":Landroid/os/TokenWatcher;
    monitor-exit v0

    .line 74
    return-void

    .line 73
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 109
    iget-object v0, p0, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 110
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 111
    iget-object v2, p0, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 112
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/TokenWatcher;

    .line 113
    .local v3, "watcher":Landroid/os/TokenWatcher;
    invoke-virtual {v3}, Landroid/os/TokenWatcher;->isAcquired()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 114
    const-string v4, "User "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 116
    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    new-instance v4, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v5, " "

    invoke-direct {v4, p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/TokenWatcher;->dump(Ljava/io/PrintWriter;)V

    .line 110
    .end local v2    # "userId":I
    .end local v3    # "watcher":Landroid/os/TokenWatcher;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 120
    .end local v1    # "i":I
    :cond_1
    monitor-exit v0

    .line 121
    return-void

    .line 120
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isAcquired(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 99
    iget-object v0, p0, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/TokenWatcher;

    .line 101
    .local v1, "watcher":Landroid/os/TokenWatcher;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/TokenWatcher;->isAcquired()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 102
    .end local v1    # "watcher":Landroid/os/TokenWatcher;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public release(Landroid/os/IBinder;I)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    .line 85
    iget-object v0, p0, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/TokenWatcher;

    .line 87
    .local v1, "watcher":Landroid/os/TokenWatcher;
    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {v1, p1}, Landroid/os/TokenWatcher;->release(Landroid/os/IBinder;)V

    .line 90
    .end local v1    # "watcher":Landroid/os/TokenWatcher;
    :cond_0
    monitor-exit v0

    .line 91
    return-void

    .line 90
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
