.class Lcom/android/server/StorageManagerService$ObbActionHandler;
.super Landroid/os/Handler;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObbActionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/StorageManagerService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "l"    # Landroid/os/Looper;

    .line 3428
    iput-object p1, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->this$0:Lcom/android/server/StorageManagerService;

    .line 3429
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3430
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 3434
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    .line 3445
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 3450
    .local v0, "path":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v2}, Lcom/android/server/StorageManagerService;->access$5000(Lcom/android/server/StorageManagerService;)Ljava/util/Map;

    move-result-object v2

    monitor-enter v2

    .line 3451
    :try_start_0
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 3453
    .local v3, "obbStatesToRemove":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/StorageManagerService$ObbState;>;"
    iget-object v4, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v4}, Lcom/android/server/StorageManagerService;->access$5100(Lcom/android/server/StorageManagerService;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 3454
    .local v4, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/StorageManagerService$ObbState;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3455
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/StorageManagerService$ObbState;

    .line 3462
    .local v5, "state":Lcom/android/server/StorageManagerService$ObbState;
    iget-object v6, v5, Lcom/android/server/StorageManagerService$ObbState;->canonicalPath:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3463
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3465
    .end local v5    # "state":Lcom/android/server/StorageManagerService$ObbState;
    :cond_1
    goto :goto_0

    .line 3467
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/StorageManagerService$ObbState;

    .line 3471
    .local v6, "obbState":Lcom/android/server/StorageManagerService$ObbState;
    iget-object v7, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v7, v6}, Lcom/android/server/StorageManagerService;->access$5200(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3474
    :try_start_1
    iget-object v7, v6, Lcom/android/server/StorageManagerService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    iget-object v8, v6, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    iget v9, v6, Lcom/android/server/StorageManagerService$ObbState;->nonce:I

    invoke-interface {v7, v8, v9, v1}, Landroid/os/storage/IObbActionListener;->onObbResult(Ljava/lang/String;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3479
    goto :goto_2

    .line 3476
    :catch_0
    move-exception v7

    .line 3477
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v8, "StorageManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Couldn\'t send unmount notification for  OBB: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v6, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3480
    .end local v6    # "obbState":Lcom/android/server/StorageManagerService$ObbState;
    .end local v7    # "e":Landroid/os/RemoteException;
    :goto_2
    goto :goto_1

    .line 3481
    .end local v3    # "obbStatesToRemove":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/StorageManagerService$ObbState;>;"
    .end local v4    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/StorageManagerService$ObbState;>;"
    :cond_3
    monitor-exit v2

    .line 3482
    goto :goto_3

    .line 3481
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 3436
    .end local v0    # "path":Ljava/lang/String;
    :cond_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/StorageManagerService$ObbAction;

    .line 3441
    .local v0, "action":Lcom/android/server/StorageManagerService$ObbAction;
    invoke-virtual {v0, p0}, Lcom/android/server/StorageManagerService$ObbAction;->execute(Lcom/android/server/StorageManagerService$ObbActionHandler;)V

    .line 3442
    nop

    .line 3485
    .end local v0    # "action":Lcom/android/server/StorageManagerService$ObbAction;
    :goto_3
    return-void
.end method
