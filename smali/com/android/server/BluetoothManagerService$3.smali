.class Lcom/android/server/BluetoothManagerService$3;
.super Landroid/database/ContentObserver;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BluetoothManagerService;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/BluetoothManagerService;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 280
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "unused"    # Z

    .line 283
    monitor-enter p0

    .line 286
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$600(Lcom/android/server/BluetoothManagerService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_airplane_state"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "mAirplaneBtState":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "bt_on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    const-string v1, "BluetoothManagerService"

    const-string v2, "Bluetooth persist state on in Airplane Mode on"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    monitor-exit p0

    return-void

    .line 294
    :cond_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->access$700(Lcom/android/server/BluetoothManagerService;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_2

    .line 295
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->access$800(Lcom/android/server/BluetoothManagerService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v1, v2}, Lcom/android/server/BluetoothManagerService;->access$900(Lcom/android/server/BluetoothManagerService;I)V

    goto :goto_0

    .line 298
    :cond_1
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/server/BluetoothManagerService;->access$900(Lcom/android/server/BluetoothManagerService;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 302
    :cond_2
    :goto_0
    const/16 v1, 0xa

    .line 304
    .local v1, "st":I
    :try_start_1
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 305
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 306
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v3

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v1, v3

    .line 312
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 313
    nop

    .line 315
    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Airplane Mode change - current state:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", isAirplaneModeOn()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 317
    invoke-static {v5}, Lcom/android/server/BluetoothManagerService;->access$800(Lcom/android/server/BluetoothManagerService;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 315
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$800(Lcom/android/server/BluetoothManagerService;)Z

    move-result v3

    const/16 v4, 0xc

    if-eqz v3, :cond_6

    .line 321
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 324
    const/16 v3, 0xf

    if-ne v1, v3, :cond_5

    .line 326
    :try_start_3
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 327
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 328
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 330
    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->access$400(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 328
    const/4 v5, 0x0

    invoke-static {v3, v2, v4, v5}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;ILjava/lang/String;Z)V

    .line 331
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v2

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->onBrEdrDown()V

    .line 332
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2, v5}, Lcom/android/server/BluetoothManagerService;->access$1402(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 333
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2, v5}, Lcom/android/server/BluetoothManagerService;->access$1502(Lcom/android/server/BluetoothManagerService;Z)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 338
    :cond_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    .line 335
    :catch_0
    move-exception v2

    .line 336
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v3, "BluetoothManagerService"

    const-string v4, "Unable to call onBrEdrDown"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 338
    nop

    .end local v2    # "e":Landroid/os/RemoteException;
    :try_start_6
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    :goto_1
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 339
    nop

    .line 338
    goto :goto_3

    :goto_2
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .end local p0    # "this":Lcom/android/server/BluetoothManagerService$3;
    .end local p1    # "unused":Z
    throw v2

    .line 340
    .restart local p0    # "this":Lcom/android/server/BluetoothManagerService$3;
    .restart local p1    # "unused":Z
    :cond_5
    if-ne v1, v4, :cond_7

    .line 341
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 342
    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->access$400(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 341
    invoke-static {v3, v2, v4}, Lcom/android/server/BluetoothManagerService;->access$500(Lcom/android/server/BluetoothManagerService;ILjava/lang/String;)V

    goto :goto_3

    .line 344
    :cond_6
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$1500(Lcom/android/server/BluetoothManagerService;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 345
    if-eq v1, v4, :cond_7

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$700(Lcom/android/server/BluetoothManagerService;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 346
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->access$1600(Lcom/android/server/BluetoothManagerService;)Z

    move-result v4

    iget-object v5, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 348
    invoke-static {v5}, Lcom/android/server/BluetoothManagerService;->access$400(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 346
    invoke-static {v3, v4, v2, v5}, Lcom/android/server/BluetoothManagerService;->access$1700(Lcom/android/server/BluetoothManagerService;ZILjava/lang/String;)V

    .line 351
    .end local v0    # "mAirplaneBtState":Ljava/lang/String;
    .end local v1    # "st":I
    :cond_7
    :goto_3
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 352
    return-void

    .line 312
    .restart local v0    # "mAirplaneBtState":Ljava/lang/String;
    .restart local v1    # "st":I
    :catchall_1
    move-exception v2

    goto :goto_4

    .line 308
    :catch_1
    move-exception v2

    .line 309
    .restart local v2    # "e":Landroid/os/RemoteException;
    :try_start_7
    const-string v3, "BluetoothManagerService"

    const-string v4, "Unable to call getState"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 312
    :try_start_8
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    monitor-exit p0

    .line 310
    return-void

    .line 312
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_4
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .end local p0    # "this":Lcom/android/server/BluetoothManagerService$3;
    .end local p1    # "unused":Z
    throw v2

    .line 351
    .end local v0    # "mAirplaneBtState":Ljava/lang/String;
    .end local v1    # "st":I
    .restart local p0    # "this":Lcom/android/server/BluetoothManagerService$3;
    .restart local p1    # "unused":Z
    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0
.end method
