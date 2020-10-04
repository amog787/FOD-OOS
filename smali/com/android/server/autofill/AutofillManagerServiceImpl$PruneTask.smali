.class Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;
.super Landroid/os/AsyncTask;
.source "AutofillManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/AutofillManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PruneTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/autofill/AutofillManagerServiceImpl;)V
    .locals 0

    .line 1496
    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/autofill/AutofillManagerServiceImpl;Lcom/android/server/autofill/AutofillManagerServiceImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/autofill/AutofillManagerServiceImpl;
    .param p2, "x1"    # Lcom/android/server/autofill/AutofillManagerServiceImpl$1;

    .line 1496
    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;-><init>(Lcom/android/server/autofill/AutofillManagerServiceImpl;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1496
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .param p1, "ignored"    # [Ljava/lang/Void;

    .line 1503
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->access$200(Lcom/android/server/autofill/AutofillManagerServiceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1504
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-static {v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->access$300(Lcom/android/server/autofill/AutofillManagerServiceImpl;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1505
    .local v1, "numSessionsToRemove":I
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 1507
    .local v2, "sessionsToRemove":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/IBinder;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 1508
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-static {v4}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->access$300(Lcom/android/server/autofill/AutofillManagerServiceImpl;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/autofill/Session;

    .line 1510
    .local v4, "session":Lcom/android/server/autofill/Session;
    iget v5, v4, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v4}, Lcom/android/server/autofill/Session;->getActivityTokenLocked()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1507
    .end local v4    # "session":Lcom/android/server/autofill/Session;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1512
    .end local v3    # "i":I
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1514
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v3

    .line 1517
    .local v3, "atm":Landroid/app/IActivityTaskManager;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 1520
    :try_start_1
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    invoke-interface {v3, v4}, Landroid/app/IActivityTaskManager;->getActivityClassForToken(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1521
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1522
    add-int/lit8 v0, v0, -0x1

    .line 1523
    add-int/lit8 v1, v1, -0x1

    .line 1527
    :cond_1
    goto :goto_2

    .line 1525
    :catch_0
    move-exception v4

    .line 1526
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "AutofillManagerServiceImpl"

    const-string v6, "Cannot figure out if activity is finished"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1517
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1530
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->access$400(Lcom/android/server/autofill/AutofillManagerServiceImpl;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1531
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    if-ge v0, v1, :cond_6

    .line 1532
    :try_start_2
    iget-object v5, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-static {v5}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->access$300(Lcom/android/server/autofill/AutofillManagerServiceImpl;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/autofill/Session;

    .line 1534
    .local v5, "sessionToRemove":Lcom/android/server/autofill/Session;
    if-eqz v5, :cond_5

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    .line 1535
    invoke-virtual {v5}, Lcom/android/server/autofill/Session;->getActivityTokenLocked()Landroid/os/IBinder;

    move-result-object v7

    if-ne v6, v7, :cond_5

    .line 1536
    invoke-virtual {v5}, Lcom/android/server/autofill/Session;->isSavingLocked()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1537
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v6, :cond_5

    .line 1538
    const-string v6, "AutofillManagerServiceImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Session "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " is saving"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1541
    :cond_3
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v6, :cond_4

    .line 1542
    const-string v6, "AutofillManagerServiceImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Prune session "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1543
    invoke-virtual {v5}, Lcom/android/server/autofill/Session;->getActivityTokenLocked()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1542
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    :cond_4
    invoke-virtual {v5}, Lcom/android/server/autofill/Session;->removeSelfLocked()V

    .line 1531
    .end local v5    # "sessionToRemove":Lcom/android/server/autofill/Session;
    :cond_5
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1549
    .end local v0    # "i":I
    :cond_6
    monitor-exit v4

    .line 1551
    const/4 v0, 0x0

    return-object v0

    .line 1549
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1512
    .end local v1    # "numSessionsToRemove":I
    .end local v2    # "sessionsToRemove":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/IBinder;>;"
    .end local v3    # "atm":Landroid/app/IActivityTaskManager;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method
