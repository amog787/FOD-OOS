.class Lcom/android/server/BluetoothManagerService$BluetoothHandler;
.super Landroid/os/Handler;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothHandler"
.end annotation


# instance fields
.field mGetNameAddressOnly:Z

.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BluetoothManagerService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1995
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 1996
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1993
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->mGetNameAddressOnly:Z

    .line 1997
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .line 2001
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    const-wide/16 v3, 0x258

    const/4 v5, 0x3

    const/16 v6, 0x2a

    const-wide/16 v7, 0x12c

    const/4 v9, 0x4

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    const-string v14, "BluetoothManagerService"

    if-eq v0, v13, :cond_4b

    if-eq v0, v11, :cond_44

    const/16 v3, 0xa

    if-eq v0, v5, :cond_3d

    const/16 v4, 0xc

    if-eq v0, v9, :cond_35

    const/16 v5, 0x16

    if-eq v0, v5, :cond_34

    const/16 v8, 0x3c

    const/16 v15, 0xb

    if-eq v0, v8, :cond_2e

    const/16 v7, 0xc8

    const/16 v10, 0x64

    if-eq v0, v7, :cond_29

    const/16 v5, 0x1f4

    if-eq v0, v5, :cond_27

    const/16 v5, 0x1e

    if-eq v0, v5, :cond_26

    const/16 v5, 0x1f

    if-eq v0, v5, :cond_25

    if-eq v0, v10, :cond_23

    const/16 v5, 0x65

    if-eq v0, v5, :cond_22

    const/4 v5, 0x0

    const/16 v10, 0x12c

    const/16 v7, 0xd

    if-eq v0, v10, :cond_15

    const/16 v10, 0x12d

    if-eq v0, v10, :cond_14

    const/16 v10, 0x190

    if-eq v0, v10, :cond_12

    const/16 v10, 0x191

    if-eq v0, v10, :cond_10

    const/16 v10, 0x258

    if-eq v0, v10, :cond_f

    const/16 v10, 0x259

    if-eq v0, v10, :cond_e

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_17

    .line 2557
    :pswitch_0
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$4708(Lcom/android/server/BluetoothManagerService;)I

    .line 2558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MESSAGE_RESTART_BLUETOOTH_SERVICE: retry count="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 2559
    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$4700(Lcom/android/server/BluetoothManagerService;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2558
    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2560
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$4700(Lcom/android/server/BluetoothManagerService;)I

    move-result v0

    const/4 v3, 0x6

    if-ge v0, v3, :cond_0

    .line 2564
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v13}, Lcom/android/server/BluetoothManagerService;->access$2102(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 2565
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 2566
    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$400(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2565
    invoke-static {v0, v9, v3, v13}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;ILjava/lang/String;Z)V

    .line 2567
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2200(Lcom/android/server/BluetoothManagerService;)Z

    move-result v3

    invoke-static {v0, v3}, Lcom/android/server/BluetoothManagerService;->access$2400(Lcom/android/server/BluetoothManagerService;Z)V

    goto/16 :goto_17

    .line 2569
    :cond_0
    const-string v0, "Reach maximum retry to restart Bluetooth!"

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2571
    goto/16 :goto_17

    .line 2505
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MESSAGE_BLUETOOTH_SERVICE_DISCONNECTED("

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2507
    :try_start_0
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 2508
    iget v0, v2, Landroid/os/Message;->arg1:I

    if-ne v0, v13, :cond_6

    .line 2510
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 2522
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 2511
    goto/16 :goto_17

    .line 2513
    :cond_1
    :try_start_1
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v5}, Lcom/android/server/BluetoothManagerService;->access$1202(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2522
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 2523
    nop

    .line 2526
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$4800(Lcom/android/server/BluetoothManagerService;)V

    .line 2527
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v5, 0x7

    .line 2528
    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$400(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 2527
    invoke-static {v0, v5, v9, v12}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;ILjava/lang/String;Z)V

    .line 2529
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2100(Lcom/android/server/BluetoothManagerService;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2530
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v12}, Lcom/android/server/BluetoothManagerService;->access$2102(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 2532
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 2533
    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2534
    .local v0, "restartMsg":Landroid/os/Message;
    iget-object v5, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v5}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$3100(Lcom/android/server/BluetoothManagerService;)I

    move-result v6

    int-to-long v9, v6

    invoke-virtual {v5, v0, v9, v10}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2537
    .end local v0    # "restartMsg":Landroid/os/Message;
    :cond_2
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$4900(Lcom/android/server/BluetoothManagerService;)V

    .line 2541
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2900(Lcom/android/server/BluetoothManagerService;)I

    move-result v0

    if-eq v0, v15, :cond_3

    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2900(Lcom/android/server/BluetoothManagerService;)I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 2543
    :cond_3
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v4, v7}, Lcom/android/server/BluetoothManagerService;->access$4500(Lcom/android/server/BluetoothManagerService;II)V

    .line 2545
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v7}, Lcom/android/server/BluetoothManagerService;->access$2902(Lcom/android/server/BluetoothManagerService;I)I

    .line 2547
    :cond_4
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2900(Lcom/android/server/BluetoothManagerService;)I

    move-result v0

    if-ne v0, v7, :cond_5

    .line 2548
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v7, v3}, Lcom/android/server/BluetoothManagerService;->access$4500(Lcom/android/server/BluetoothManagerService;II)V

    .line 2552
    :cond_5
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 2553
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v3}, Lcom/android/server/BluetoothManagerService;->access$2902(Lcom/android/server/BluetoothManagerService;I)I

    .line 2554
    goto/16 :goto_17

    .line 2514
    :cond_6
    :try_start_2
    iget v0, v2, Landroid/os/Message;->arg1:I

    if-ne v0, v11, :cond_7

    .line 2515
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v5}, Lcom/android/server/BluetoothManagerService;->access$3802(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2522
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 2516
    goto/16 :goto_17

    .line 2518
    :cond_7
    :try_start_3
    const-string v0, "Unknown argument for service disconnect!"

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2522
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 2519
    goto/16 :goto_17

    .line 2522
    :catchall_0
    move-exception v0

    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 2523
    throw v0

    .line 2378
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MESSAGE_BLUETOOTH_SERVICE_CONNECTED: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2381
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/os/IBinder;

    .line 2383
    .local v5, "service":Landroid/os/IBinder;
    :try_start_4
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 2384
    iget v0, v2, Landroid/os/Message;->arg1:I

    if-ne v0, v11, :cond_8

    .line 2385
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 2386
    invoke-static {v5}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGatt;

    move-result-object v3

    .line 2385
    invoke-static {v0, v3}, Lcom/android/server/BluetoothManagerService;->access$3802(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;

    .line 2387
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$3900(Lcom/android/server/BluetoothManagerService;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2424
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 2388
    goto/16 :goto_17

    .line 2391
    :cond_8
    :try_start_5
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v12}, Lcom/android/server/BluetoothManagerService;->access$1902(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 2392
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v12}, Lcom/android/server/BluetoothManagerService;->access$4002(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 2393
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v5}, Lcom/android/server/BluetoothManagerService;->access$4102(Lcom/android/server/BluetoothManagerService;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 2394
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v5}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/server/BluetoothManagerService;->access$1202(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;

    .line 2396
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$4200(Lcom/android/server/BluetoothManagerService;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2397
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    const/16 v6, 0xc8

    invoke-virtual {v0, v6}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2398
    .local v0, "getMsg":Landroid/os/Message;
    iget-object v6, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2399
    iget-boolean v6, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->mGetNameAddressOnly:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v6, :cond_9

    .line 2424
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 2400
    return-void

    .line 2406
    .end local v0    # "getMsg":Landroid/os/Message;
    :cond_9
    :try_start_6
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    iget-object v6, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$4300(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetoothCallback;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/bluetooth/IBluetooth;->registerCallback(Landroid/bluetooth/IBluetoothCallback;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2409
    goto :goto_0

    .line 2407
    :catch_0
    move-exception v0

    .line 2408
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_7
    const-string v6, "Unable to register BluetoothCallback"

    invoke-static {v14, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2411
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 2412
    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    const/16 v6, 0x16

    invoke-virtual {v0, v6}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    move-object v6, v0

    .line 2413
    .local v6, "informMsg":Landroid/os/Message;
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2417
    :try_start_8
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    iget-object v8, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v8}, Lcom/android/server/BluetoothManagerService;->access$2200(Lcom/android/server/BluetoothManagerService;)Z

    move-result v8

    invoke-interface {v0, v8}, Landroid/bluetooth/IBluetooth;->enable(Z)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2418
    const-string v0, "IBluetooth.enable() returned false"

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2422
    :cond_a
    goto :goto_1

    .line 2420
    :catch_1
    move-exception v0

    .line 2421
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_9
    const-string v8, "Unable to call enable()"

    invoke-static {v14, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 2424
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v6    # "informMsg":Landroid/os/Message;
    :goto_1
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 2425
    nop

    .line 2427
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2100(Lcom/android/server/BluetoothManagerService;)Z

    move-result v0

    if-nez v0, :cond_54

    .line 2431
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    const/16 v6, 0xf

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 2432
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 2431
    invoke-static {v8, v6}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/server/BluetoothManagerService;->access$4400(Lcom/android/server/BluetoothManagerService;Ljava/util/Set;)Z

    .line 2434
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v0}, Lcom/android/server/BluetoothManagerService;->getState()I

    move-result v0

    .line 2435
    .local v0, "st":I
    if-eq v0, v15, :cond_c

    const/16 v6, 0xf

    if-ne v0, v6, :cond_b

    iget-object v6, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 2437
    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$3000(Lcom/android/server/BluetoothManagerService;)Z

    move-result v6

    if-nez v6, :cond_c

    iget-object v6, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$3200(Lcom/android/server/BluetoothManagerService;)Z

    move-result v6

    if-eqz v6, :cond_b

    goto :goto_2

    .line 2439
    :cond_b
    const/16 v4, 0xf

    if-ne v0, v4, :cond_d

    iget-object v4, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v4}, Lcom/android/server/BluetoothManagerService;->isBleAppPresent()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 2440
    const-string v3, "MESSAGE_BLUETOOTH_SERVICE_CONNECTED: ble app present"

    invoke-static {v14, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2441
    goto/16 :goto_17

    .line 2438
    :cond_c
    :goto_2
    iget-object v6, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/server/BluetoothManagerService;->access$4400(Lcom/android/server/BluetoothManagerService;Ljava/util/Set;)Z

    .line 2443
    :cond_d
    iget-object v4, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->access$2800(Lcom/android/server/BluetoothManagerService;)V

    .line 2444
    iget-object v4, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 2445
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 2446
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 2447
    const/16 v3, 0xe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 2448
    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v3, 0x10

    .line 2449
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 2444
    invoke-static/range {v8 .. v13}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/server/BluetoothManagerService;->access$4400(Lcom/android/server/BluetoothManagerService;Ljava/util/Set;)Z

    .line 2450
    .end local v0    # "st":I
    goto/16 :goto_17

    .line 2424
    :catchall_1
    move-exception v0

    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 2425
    throw v0

    .line 2739
    .end local v5    # "service":Landroid/os/IBinder;
    :cond_e
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    const-string v3, "Device Shut Down"

    invoke-static {v0, v3}, Lcom/android/server/BluetoothManagerService;->access$5300(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;)V

    .line 2740
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$5400(Lcom/android/server/BluetoothManagerService;)V

    goto/16 :goto_17

    .line 2734
    :cond_f
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$5200(Lcom/android/server/BluetoothManagerService;)V

    .line 2735
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    const-string v3, " Device Boot up"

    invoke-static {v0, v3}, Lcom/android/server/BluetoothManagerService;->access$5300(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;)V

    .line 2736
    goto/16 :goto_17

    .line 2365
    :cond_10
    const-string v0, "MESSAGE_BIND_PROFILE_SERVICE"

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2366
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;

    .line 2367
    .local v0, "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v10, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2368
    if-nez v0, :cond_11

    .line 2369
    const-string/jumbo v3, "psc is null, breaking"

    invoke-static {v14, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2370
    goto/16 :goto_17

    .line 2372
    :cond_11
    const-string v3, "Calling psc.bindService from MESSAGE_BIND_PROFILE_SERVICE"

    invoke-static {v14, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2373
    invoke-static {v0}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->access$1400(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;)Z

    .line 2374
    goto/16 :goto_17

    .line 2355
    .end local v0    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :cond_12
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$3600(Lcom/android/server/BluetoothManagerService;)Ljava/util/Map;

    move-result-object v0

    iget v3, v2, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;

    .line 2356
    .restart local v0    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    if-nez v0, :cond_13

    .line 2357
    goto/16 :goto_17

    .line 2359
    :cond_13
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/bluetooth/IBluetoothProfileServiceConnection;

    .line 2361
    .local v3, "proxy":Landroid/bluetooth/IBluetoothProfileServiceConnection;
    invoke-static {v0, v3}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->access$3700(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;Landroid/bluetooth/IBluetoothProfileServiceConnection;)V

    .line 2362
    goto/16 :goto_17

    .line 2716
    .end local v0    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    .end local v3    # "proxy":Landroid/bluetooth/IBluetoothProfileServiceConnection;
    :cond_14
    const-string v0, "MESSAGE_USER_UNLOCKED"

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2718
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    const/16 v3, 0x12c

    invoke-virtual {v0, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 2720
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2100(Lcom/android/server/BluetoothManagerService;)Z

    move-result v0

    if-eqz v0, :cond_54

    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1900(Lcom/android/server/BluetoothManagerService;)Z

    move-result v0

    if-nez v0, :cond_54

    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    if-nez v0, :cond_54

    .line 2725
    const-string v0, "Enabled but not bound; retrying after unlock"

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2727
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2200(Lcom/android/server/BluetoothManagerService;)Z

    move-result v3

    invoke-static {v0, v3}, Lcom/android/server/BluetoothManagerService;->access$2400(Lcom/android/server/BluetoothManagerService;Z)V

    goto/16 :goto_17

    .line 2599
    :cond_15
    const-string v0, "MESSAGE_USER_SWITCHED"

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2601
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    const/16 v6, 0x12c

    invoke-virtual {v0, v6}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 2604
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v0}, Lcom/android/server/BluetoothManagerService;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2606
    :try_start_a
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2607
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 2608
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    iget-object v6, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$4300(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetoothCallback;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/bluetooth/IBluetooth;->unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 2613
    :cond_16
    goto :goto_3

    :catchall_2
    move-exception v0

    goto/16 :goto_7

    .line 2610
    :catch_2
    move-exception v0

    .line 2611
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_b
    const-string v6, "Unable to unregister"

    invoke-static {v14, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 2613
    nop

    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_3
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2614
    nop

    .line 2616
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2900(Lcom/android/server/BluetoothManagerService;)I

    move-result v0

    if-ne v0, v7, :cond_17

    .line 2618
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2900(Lcom/android/server/BluetoothManagerService;)I

    move-result v6

    invoke-static {v0, v6, v3}, Lcom/android/server/BluetoothManagerService;->access$4500(Lcom/android/server/BluetoothManagerService;II)V

    .line 2619
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v3}, Lcom/android/server/BluetoothManagerService;->access$2902(Lcom/android/server/BluetoothManagerService;I)I

    .line 2621
    :cond_17
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2900(Lcom/android/server/BluetoothManagerService;)I

    move-result v0

    if-ne v0, v3, :cond_18

    .line 2622
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2900(Lcom/android/server/BluetoothManagerService;)I

    move-result v6

    invoke-static {v0, v6, v15}, Lcom/android/server/BluetoothManagerService;->access$4500(Lcom/android/server/BluetoothManagerService;II)V

    .line 2623
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v15}, Lcom/android/server/BluetoothManagerService;->access$2902(Lcom/android/server/BluetoothManagerService;I)I

    .line 2627
    :cond_18
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    const/16 v6, 0xf

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 2628
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 2627
    invoke-static {v9, v6}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/server/BluetoothManagerService;->access$4400(Lcom/android/server/BluetoothManagerService;Ljava/util/Set;)Z

    .line 2630
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2900(Lcom/android/server/BluetoothManagerService;)I

    move-result v0

    if-ne v0, v15, :cond_19

    .line 2631
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2900(Lcom/android/server/BluetoothManagerService;)I

    move-result v6

    invoke-static {v0, v6, v4}, Lcom/android/server/BluetoothManagerService;->access$4500(Lcom/android/server/BluetoothManagerService;II)V

    .line 2634
    :cond_19
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$5100(Lcom/android/server/BluetoothManagerService;)V

    .line 2636
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    const/16 v6, 0x8

    .line 2637
    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$400(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 2636
    invoke-static {v0, v6, v9, v12}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;ILjava/lang/String;Z)V

    .line 2639
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)V

    .line 2641
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2800(Lcom/android/server/BluetoothManagerService;)V

    .line 2643
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v4, v7}, Lcom/android/server/BluetoothManagerService;->access$4500(Lcom/android/server/BluetoothManagerService;II)V

    .line 2650
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 2651
    const/16 v4, 0xf

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 2652
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2651
    invoke-static {v6, v4}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/server/BluetoothManagerService;->access$4400(Lcom/android/server/BluetoothManagerService;Ljava/util/Set;)Z

    move-result v0

    xor-int/2addr v0, v13

    .line 2654
    .local v0, "didDisableTimeout":Z
    if-nez v0, :cond_1b

    .line 2655
    iget-object v4, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v4}, Lcom/android/server/BluetoothManagerService;->getState()I

    move-result v4

    .line 2657
    .local v4, "state":I
    const/16 v6, 0xf

    if-ne v4, v6, :cond_1a

    .line 2658
    iget-object v9, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v9, v7, v6}, Lcom/android/server/BluetoothManagerService;->access$4500(Lcom/android/server/BluetoothManagerService;II)V

    .line 2662
    :cond_1a
    iget-object v6, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 2663
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/android/server/BluetoothManagerService;->access$4400(Lcom/android/server/BluetoothManagerService;Ljava/util/Set;)Z

    move-result v6

    xor-int/2addr v6, v13

    move v0, v6

    move v4, v0

    goto :goto_4

    .line 2654
    .end local v4    # "state":I
    :cond_1b
    move v4, v0

    .line 2665
    .end local v0    # "didDisableTimeout":Z
    .local v4, "didDisableTimeout":Z
    :goto_4
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v7, v3}, Lcom/android/server/BluetoothManagerService;->access$4500(Lcom/android/server/BluetoothManagerService;II)V

    .line 2667
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$4900(Lcom/android/server/BluetoothManagerService;)V

    .line 2669
    if-nez v4, :cond_1d

    .line 2671
    :try_start_c
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 2672
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 2673
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v5}, Lcom/android/server/BluetoothManagerService;->access$1202(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;

    .line 2675
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$400(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v0

    iget-object v6, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$2000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2677
    :cond_1c
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v5}, Lcom/android/server/BluetoothManagerService;->access$3802(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 2679
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 2680
    goto :goto_5

    .line 2679
    :catchall_3
    move-exception v0

    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 2680
    throw v0

    .line 2688
    :cond_1d
    :goto_5
    if-eqz v4, :cond_1e

    .line 2689
    const-wide/16 v5, 0xbb8

    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    .line 2690
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    const/16 v5, 0x29

    invoke-virtual {v0, v5}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    goto :goto_6

    .line 2692
    :cond_1e
    const-wide/16 v5, 0x64

    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    .line 2695
    :goto_6
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 2696
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v3}, Lcom/android/server/BluetoothManagerService;->access$2902(Lcom/android/server/BluetoothManagerService;I)I

    .line 2698
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    const/16 v3, 0x8

    .line 2699
    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$400(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 2698
    invoke-static {v0, v3, v5, v13}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;ILjava/lang/String;Z)V

    .line 2701
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v13}, Lcom/android/server/BluetoothManagerService;->access$2102(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 2702
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2200(Lcom/android/server/BluetoothManagerService;)Z

    move-result v3

    invoke-static {v0, v3}, Lcom/android/server/BluetoothManagerService;->access$2400(Lcom/android/server/BluetoothManagerService;Z)V

    .end local v4    # "didDisableTimeout":Z
    goto :goto_8

    .line 2613
    :goto_7
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2614
    throw v0

    .line 2703
    :cond_1f
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1900(Lcom/android/server/BluetoothManagerService;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    if-eqz v0, :cond_20

    goto :goto_9

    :cond_20
    :goto_8
    goto/16 :goto_17

    .line 2704
    :cond_21
    :goto_9
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    const/16 v3, 0x12c

    invoke-virtual {v0, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2705
    .local v0, "userMsg":Landroid/os/Message;
    iget v3, v2, Landroid/os/Message;->arg2:I

    add-int/2addr v3, v13

    iput v3, v0, Landroid/os/Message;->arg2:I

    .line 2707
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2709
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retry MESSAGE_USER_SWITCHED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2711
    .end local v0    # "userMsg":Landroid/os/Message;
    goto/16 :goto_17

    .line 2590
    :cond_22
    const-string v0, "MESSAGE_TIMEOUT_UNBIND"

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2591
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 2592
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v12}, Lcom/android/server/BluetoothManagerService;->access$5002(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 2593
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 2594
    goto/16 :goto_17

    .line 2574
    :cond_23
    const-string v0, "MESSAGE_TIMEOUT_BIND"

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2575
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 2576
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v12}, Lcom/android/server/BluetoothManagerService;->access$1902(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 2577
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 2579
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$4000(Lcom/android/server/BluetoothManagerService;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 2580
    const-string v0, " Trying to Bind again"

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2581
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v13}, Lcom/android/server/BluetoothManagerService;->access$4002(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 2582
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2200(Lcom/android/server/BluetoothManagerService;)Z

    move-result v3

    invoke-static {v0, v3}, Lcom/android/server/BluetoothManagerService;->access$2400(Lcom/android/server/BluetoothManagerService;Z)V

    goto/16 :goto_17

    .line 2584
    :cond_24
    const-string v0, "Bind trails excedded"

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2585
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v12}, Lcom/android/server/BluetoothManagerService;->access$4002(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 2587
    goto/16 :goto_17

    .line 2349
    :cond_25
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 2351
    .local v0, "callback":Landroid/bluetooth/IBluetoothStateChangeCallback;
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$3500(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 2352
    goto/16 :goto_17

    .line 2343
    .end local v0    # "callback":Landroid/bluetooth/IBluetoothStateChangeCallback;
    :cond_26
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 2345
    .restart local v0    # "callback":Landroid/bluetooth/IBluetoothStateChangeCallback;
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$3500(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 2346
    goto/16 :goto_17

    .line 2310
    .end local v0    # "callback":Landroid/bluetooth/IBluetoothStateChangeCallback;
    :cond_27
    iget v0, v2, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_28

    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2100(Lcom/android/server/BluetoothManagerService;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2312
    const-string v0, "Restore Bluetooth state to disabled"

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2314
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v12}, Lcom/android/server/BluetoothManagerService;->access$2300(Lcom/android/server/BluetoothManagerService;I)V

    .line 2315
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v12}, Lcom/android/server/BluetoothManagerService;->access$3002(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 2317
    const-string v0, "MESSAGE_RESTORE_USER_SETTING: Setup mEnableExternal = false"

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2319
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    const/16 v3, 0x9

    .line 2321
    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$400(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2319
    invoke-static {v0, v3, v4}, Lcom/android/server/BluetoothManagerService;->access$500(Lcom/android/server/BluetoothManagerService;ILjava/lang/String;)V

    goto/16 :goto_17

    .line 2322
    :cond_28
    iget v0, v2, Landroid/os/Message;->arg1:I

    if-ne v0, v13, :cond_54

    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2100(Lcom/android/server/BluetoothManagerService;)Z

    move-result v0

    if-nez v0, :cond_54

    .line 2324
    const-string v0, "Restore Bluetooth state to enabled"

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2326
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v12}, Lcom/android/server/BluetoothManagerService;->access$2602(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 2327
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v13}, Lcom/android/server/BluetoothManagerService;->access$3002(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 2329
    const-string v0, "MESSAGE_RESTORE_USER_SETTING: Setup mEnableExternal = true"

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2332
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    const/16 v3, 0x9

    .line 2334
    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$400(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2332
    invoke-static {v0, v12, v3, v4}, Lcom/android/server/BluetoothManagerService;->access$3300(Lcom/android/server/BluetoothManagerService;ZILjava/lang/String;)V

    goto/16 :goto_17

    .line 2004
    :cond_29
    const-string v0, "MESSAGE_GET_NAME_AND_ADDRESS"

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2007
    :try_start_d
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 2008
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    if-nez v0, :cond_2b

    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1900(Lcom/android/server/BluetoothManagerService;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 2010
    const-string v0, "Binding to service to get name and address"

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    iput-boolean v13, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->mGetNameAddressOnly:Z

    .line 2013
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2014
    .local v0, "timeoutMsg":Landroid/os/Message;
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2015
    new-instance v3, Landroid/content/Intent;

    const-class v4, Landroid/bluetooth/IBluetooth;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2016
    .local v3, "i":Landroid/content/Intent;
    iget-object v4, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    iget-object v5, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v5}, Lcom/android/server/BluetoothManagerService;->access$2000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v5

    const/16 v6, 0x41

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5, v6, v7}, Lcom/android/server/BluetoothManagerService;->doBind(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_2a

    .line 2019
    iget-object v4, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    goto :goto_b

    .line 2021
    :cond_2a
    iget-object v4, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v4, v13}, Lcom/android/server/BluetoothManagerService;->access$1902(Lcom/android/server/BluetoothManagerService;Z)Z

    goto :goto_b

    .line 2023
    .end local v0    # "timeoutMsg":Landroid/os/Message;
    .end local v3    # "i":Landroid/content/Intent;
    :cond_2b
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    if-eqz v0, :cond_2d

    .line 2025
    :try_start_e
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v3

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v4

    invoke-interface {v4}, Landroid/bluetooth/IBluetooth;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/android/server/BluetoothManagerService;->access$600(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 2028
    goto :goto_a

    .line 2026
    :catch_3
    move-exception v0

    .line 2027
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_f
    const-string v3, "Unable to grab names"

    invoke-static {v14, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2029
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_a
    iget-boolean v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->mGetNameAddressOnly:Z

    if-eqz v0, :cond_2c

    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2100(Lcom/android/server/BluetoothManagerService;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 2030
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v0}, Lcom/android/server/BluetoothManagerService;->unbindAndFinish()V

    .line 2032
    :cond_2c
    iput-boolean v12, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->mGetNameAddressOnly:Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    goto :goto_c

    .line 2023
    :cond_2d
    :goto_b
    nop

    .line 2035
    :goto_c
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 2036
    nop

    .line 2037
    goto/16 :goto_17

    .line 2035
    :catchall_4
    move-exception v0

    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 2036
    throw v0

    .line 2454
    :cond_2e
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 2455
    .local v0, "prevState":I
    iget v5, v2, Landroid/os/Message;->arg2:I

    .line 2457
    .local v5, "newState":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MESSAGE_BLUETOOTH_STATE_CHANGE: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2458
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " > "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2459
    invoke-static {v5}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2457
    invoke-static {v14, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2462
    iget-object v7, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v7, v5}, Lcom/android/server/BluetoothManagerService;->access$2902(Lcom/android/server/BluetoothManagerService;I)I

    .line 2463
    iget-object v7, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v7, v0, v5}, Lcom/android/server/BluetoothManagerService;->access$4500(Lcom/android/server/BluetoothManagerService;II)V

    .line 2466
    const/16 v7, 0xe

    if-ne v0, v7, :cond_2f

    if-ne v5, v3, :cond_2f

    iget-object v7, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 2467
    invoke-static {v7}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v7

    if-eqz v7, :cond_2f

    iget-object v7, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v7}, Lcom/android/server/BluetoothManagerService;->access$2100(Lcom/android/server/BluetoothManagerService;)Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 2468
    iget-object v7, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v7, v12}, Lcom/android/server/BluetoothManagerService;->access$4600(Lcom/android/server/BluetoothManagerService;Z)V

    .line 2470
    :cond_2f
    if-ne v0, v15, :cond_30

    if-ne v5, v3, :cond_30

    iget-object v7, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 2472
    invoke-static {v7}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v7

    if-eqz v7, :cond_30

    iget-object v7, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v7}, Lcom/android/server/BluetoothManagerService;->access$2100(Lcom/android/server/BluetoothManagerService;)Z

    move-result v7

    if-eqz v7, :cond_30

    .line 2473
    iget-object v7, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v7, v12}, Lcom/android/server/BluetoothManagerService;->access$2300(Lcom/android/server/BluetoothManagerService;I)V

    .line 2475
    :cond_30
    if-ne v0, v15, :cond_31

    const/16 v7, 0xf

    if-ne v5, v7, :cond_31

    iget-object v7, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 2477
    invoke-static {v7}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v7

    if-eqz v7, :cond_31

    iget-object v7, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v7}, Lcom/android/server/BluetoothManagerService;->access$2100(Lcom/android/server/BluetoothManagerService;)Z

    move-result v7

    if-eqz v7, :cond_31

    .line 2478
    iget-object v7, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v7, v13}, Lcom/android/server/BluetoothManagerService;->access$4600(Lcom/android/server/BluetoothManagerService;Z)V

    .line 2483
    :cond_31
    const/16 v7, 0x10

    if-ne v0, v7, :cond_32

    if-ne v5, v3, :cond_32

    .line 2485
    iget-object v7, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v7}, Lcom/android/server/BluetoothManagerService;->access$2100(Lcom/android/server/BluetoothManagerService;)Z

    move-result v7

    if-eqz v7, :cond_32

    .line 2486
    const-string v7, "Entering STATE_OFF but mEnabled is true; restarting."

    invoke-static {v14, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2487
    iget-object v7, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v7}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 2488
    iget-object v7, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/android/server/BluetoothManagerService;->access$4400(Lcom/android/server/BluetoothManagerService;Ljava/util/Set;)Z

    .line 2489
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 2490
    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 2491
    .local v3, "restartMsg":Landroid/os/Message;
    iget-object v6, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v7}, Lcom/android/server/BluetoothManagerService;->access$3100(Lcom/android/server/BluetoothManagerService;)I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v6, v3, v7, v8}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2494
    .end local v3    # "restartMsg":Landroid/os/Message;
    :cond_32
    if-eq v5, v4, :cond_33

    const/16 v3, 0xf

    if-ne v5, v3, :cond_54

    .line 2497
    :cond_33
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$4700(Lcom/android/server/BluetoothManagerService;)I

    move-result v3

    if-eqz v3, :cond_54

    .line 2498
    const-string v3, "bluetooth is recovered from error"

    invoke-static {v14, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2499
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3, v12}, Lcom/android/server/BluetoothManagerService;->access$4702(Lcom/android/server/BluetoothManagerService;I)I

    goto/16 :goto_17

    .line 2338
    .end local v0    # "prevState":I
    .end local v5    # "newState":I
    :cond_34
    const-string v0, "MESSAGE_INFORM_ADAPTER_SERVICE_UP"

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2339
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$3400(Lcom/android/server/BluetoothManagerService;)V

    .line 2340
    goto/16 :goto_17

    .line 2245
    :cond_35
    iget v0, v2, Landroid/os/Message;->arg1:I

    if-ne v0, v13, :cond_36

    move v0, v13

    goto :goto_d

    :cond_36
    move v0, v12

    .line 2246
    .local v0, "disabling":Z
    :goto_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MESSAGE_HANDLE_DISABLE_DELAYED: disabling:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2247
    if-nez v0, :cond_3a

    .line 2251
    iget-object v5, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v5}, Lcom/android/server/BluetoothManagerService;->access$2900(Lcom/android/server/BluetoothManagerService;)I

    move-result v5

    const/16 v6, 0xf

    if-ne v5, v6, :cond_37

    iget-object v5, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 2252
    invoke-static {v5}, Lcom/android/server/BluetoothManagerService;->access$3000(Lcom/android/server/BluetoothManagerService;)Z

    move-result v5

    if-nez v5, :cond_37

    iget-object v5, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 2253
    invoke-static {v5}, Lcom/android/server/BluetoothManagerService;->access$3200(Lcom/android/server/BluetoothManagerService;)Z

    move-result v5

    if-nez v5, :cond_37

    iget-object v5, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 2254
    invoke-virtual {v5}, Lcom/android/server/BluetoothManagerService;->isBleAppPresent()Z

    move-result v5

    if-eqz v5, :cond_37

    .line 2255
    const-string v3, "Enable from BLE APP, stay in BLE ON"

    invoke-static {v14, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2256
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3, v12}, Lcom/android/server/BluetoothManagerService;->access$2702(Lcom/android/server/BluetoothManagerService;I)I

    .line 2257
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3, v12}, Lcom/android/server/BluetoothManagerService;->access$2102(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 2258
    goto/16 :goto_17

    .line 2259
    :cond_37
    iget-object v5, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v5}, Lcom/android/server/BluetoothManagerService;->access$2900(Lcom/android/server/BluetoothManagerService;)I

    move-result v5

    if-eq v5, v4, :cond_39

    .line 2260
    iget-object v4, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->access$2700(Lcom/android/server/BluetoothManagerService;)I

    move-result v4

    if-ge v4, v3, :cond_38

    .line 2261
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$2708(Lcom/android/server/BluetoothManagerService;)I

    .line 2262
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    invoke-virtual {v3, v9, v12, v12}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 2264
    .local v3, "disableDelayedMsg":Landroid/os/Message;
    iget-object v4, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v4

    invoke-virtual {v4, v3, v7, v8}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2266
    const-string v4, "Re-Queue MESSAGE_HANDLE_DISABLE_DELAYED(0)"

    invoke-static {v14, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2267
    goto/16 :goto_17

    .line 2269
    .end local v3    # "disableDelayedMsg":Landroid/os/Message;
    :cond_38
    const-string v3, "Wait for STATE_ON timeout"

    invoke-static {v14, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2274
    :cond_39
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3, v12}, Lcom/android/server/BluetoothManagerService;->access$2702(Lcom/android/server/BluetoothManagerService;I)I

    .line 2275
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3, v12}, Lcom/android/server/BluetoothManagerService;->access$2102(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 2276
    const-string v3, "MESSAGE_HANDLE_DISABLE_DELAYED: handleDisable"

    invoke-static {v14, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2277
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$2800(Lcom/android/server/BluetoothManagerService;)V

    .line 2279
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 2280
    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    invoke-virtual {v3, v9, v13, v12}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 2281
    .restart local v3    # "disableDelayedMsg":Landroid/os/Message;
    iget-object v4, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v4

    invoke-virtual {v4, v3, v7, v8}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2282
    const-string v4, "Re-Queue MESSAGE_HANDLE_DISABLE_DELAYED(1)"

    invoke-static {v14, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2283
    .end local v3    # "disableDelayedMsg":Landroid/os/Message;
    goto :goto_e

    .line 2285
    :cond_3a
    iget-object v5, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v5}, Lcom/android/server/BluetoothManagerService;->access$2900(Lcom/android/server/BluetoothManagerService;)I

    move-result v5

    if-ne v5, v4, :cond_3c

    .line 2286
    iget-object v4, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->access$2700(Lcom/android/server/BluetoothManagerService;)I

    move-result v4

    if-ge v4, v3, :cond_3b

    .line 2287
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$2708(Lcom/android/server/BluetoothManagerService;)I

    .line 2288
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    invoke-virtual {v3, v9, v13, v12}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 2290
    .restart local v3    # "disableDelayedMsg":Landroid/os/Message;
    iget-object v4, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v4

    invoke-virtual {v4, v3, v7, v8}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2292
    const-string v4, "Re-Queue MESSAGE_HANDLE_DISABLE_DELAYED(1)"

    invoke-static {v14, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2293
    goto/16 :goto_17

    .line 2295
    .end local v3    # "disableDelayedMsg":Landroid/os/Message;
    :cond_3b
    const-string v3, "Wait for exiting STATE_ON timeout"

    invoke-static {v14, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2300
    :cond_3c
    const-string v3, "Handle disable is finished"

    invoke-static {v14, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2304
    :goto_e
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    iget-object v3, v3, Lcom/android/server/BluetoothManagerService;->mCarkitIdentification:Lcom/oneplus/android/server/OpBluetoothCarkitIdentificationInjector;

    invoke-static {}, Lcom/oneplus/android/server/OpBluetoothCarkitIdentificationInjector;->close()V

    .line 2306
    goto/16 :goto_17

    .line 2199
    .end local v0    # "disabling":Z
    :cond_3d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MESSAGE_HANDLE_ENABLE_DELAYED, mState="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 2200
    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->access$2900(Lcom/android/server/BluetoothManagerService;)I

    move-result v4

    invoke-static {v4}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " mEnableExternal = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 2201
    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->access$3000(Lcom/android/server/BluetoothManagerService;)Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " getServiceRestartMs()="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 2202
    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->access$3100(Lcom/android/server/BluetoothManagerService;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2199
    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2203
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2900(Lcom/android/server/BluetoothManagerService;)I

    move-result v0

    const/16 v4, 0xf

    if-ne v0, v4, :cond_41

    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v0}, Lcom/android/server/BluetoothManagerService;->isBleAppPresent()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 2204
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v12}, Lcom/android/server/BluetoothManagerService;->access$2502(Lcom/android/server/BluetoothManagerService;I)I

    .line 2205
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$3000(Lcom/android/server/BluetoothManagerService;)Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$3200(Lcom/android/server/BluetoothManagerService;)Z

    move-result v0

    if-eqz v0, :cond_3e

    goto :goto_f

    .line 2218
    :cond_3e
    const-string v0, "BLE app running stay in BLE ON state"

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2220
    goto/16 :goto_17

    .line 2207
    :cond_3f
    :goto_f
    :try_start_10
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2208
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 2209
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$2200(Lcom/android/server/BluetoothManagerService;)Z

    move-result v3

    invoke-interface {v0, v3}, Landroid/bluetooth/IBluetooth;->updateQuietModeStatus(Z)V

    .line 2210
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->onLeServiceUp()V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 2215
    :cond_40
    goto :goto_10

    :catchall_5
    move-exception v0

    goto :goto_11

    .line 2212
    :catch_4
    move-exception v0

    .line 2213
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_11
    const-string v3, ""

    invoke-static {v14, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 2215
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2216
    goto/16 :goto_17

    .line 2215
    :goto_11
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2216
    throw v0

    .line 2221
    :cond_41
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2900(Lcom/android/server/BluetoothManagerService;)I

    move-result v0

    if-eq v0, v3, :cond_43

    .line 2222
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2500(Lcom/android/server/BluetoothManagerService;)I

    move-result v0

    if-ge v0, v3, :cond_42

    .line 2223
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2508(Lcom/android/server/BluetoothManagerService;)I

    .line 2224
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 2225
    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2226
    .local v0, "enableDelayedMsg":Landroid/os/Message;
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    invoke-virtual {v3, v0, v7, v8}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2227
    const-string v3, "Re-Queue MESSAGE_HANDLE_ENABLE_DELAYED"

    invoke-static {v14, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2228
    goto/16 :goto_17

    .line 2230
    .end local v0    # "enableDelayedMsg":Landroid/os/Message;
    :cond_42
    const-string v0, "Wait for STATE_OFF timeout"

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2235
    :cond_43
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v12}, Lcom/android/server/BluetoothManagerService;->access$2502(Lcom/android/server/BluetoothManagerService;I)I

    .line 2236
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 2237
    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2238
    .local v0, "restartMsg":Landroid/os/Message;
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->access$3100(Lcom/android/server/BluetoothManagerService;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2239
    const-string v3, "Queue MESSAGE_RESTART_BLUETOOTH_SERVICE"

    invoke-static {v14, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2240
    const-string v3, "Handle enable is finished"

    invoke-static {v14, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2241
    goto/16 :goto_17

    .line 2138
    .end local v0    # "restartMsg":Landroid/os/Message;
    :cond_44
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_48

    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1900(Lcom/android/server/BluetoothManagerService;)Z

    move-result v0

    if-nez v0, :cond_48

    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 2139
    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_45

    goto/16 :goto_12

    .line 2168
    :cond_45
    iget v0, v2, Landroid/os/Message;->arg2:I

    if-nez v0, :cond_46

    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 2169
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 2170
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    iget-object v5, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v5}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v5

    invoke-virtual {v5, v11, v12, v13}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v0, v5, v3, v4}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2172
    const-string v0, "MESSAGE_ENABLE exist. Queue new MESSAGE_DISABLE"

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2173
    goto/16 :goto_17

    .line 2177
    :cond_46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MESSAGE_DISABLE: mBluetooth = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mBinding = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 2178
    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$1900(Lcom/android/server/BluetoothManagerService;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mEnable = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$2100(Lcom/android/server/BluetoothManagerService;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2177
    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2180
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 2182
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2100(Lcom/android/server/BluetoothManagerService;)Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 2183
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v12}, Lcom/android/server/BluetoothManagerService;->access$2702(Lcom/android/server/BluetoothManagerService;I)I

    .line 2184
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 2185
    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    invoke-virtual {v0, v9, v12, v12}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2186
    .local v0, "disableDelayedMsg":Landroid/os/Message;
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    invoke-virtual {v3, v0, v7, v8}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2187
    const-string v3, "Re-Queue MESSAGE_HANDLE_DISABLE_DELAYED(0)"

    invoke-static {v14, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2188
    .end local v0    # "disableDelayedMsg":Landroid/os/Message;
    goto/16 :goto_17

    .line 2189
    :cond_47
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v12}, Lcom/android/server/BluetoothManagerService;->access$2102(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 2190
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2800(Lcom/android/server/BluetoothManagerService;)V

    .line 2191
    const-string v0, "MESSAGE_DISABLE: handleDisable"

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2193
    goto/16 :goto_17

    .line 2140
    :cond_48
    :goto_12
    iget v0, v2, Landroid/os/Message;->arg2:I

    if-nez v0, :cond_4a

    .line 2141
    const/16 v0, 0x12c

    .line 2143
    .local v0, "delay":I
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    invoke-virtual {v3, v13}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 2144
    const/16 v0, 0x258

    .line 2148
    :cond_49
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 2150
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v4

    invoke-virtual {v4, v11, v12, v13}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    int-to-long v5, v0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2152
    const-string v3, "Queue new MESSAGE_DISABLE"

    invoke-static {v14, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2153
    .end local v0    # "delay":I
    goto/16 :goto_17

    .line 2154
    :cond_4a
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    iget-object v5, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v5}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v5

    invoke-virtual {v5, v11, v12, v13}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v0, v5, v7, v8}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2156
    const-string v0, "Re-Queue previous MESSAGE_DISABLE"

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 2160
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 2161
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    iget-object v5, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v5}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v5

    .line 2162
    iget-object v6, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$2600(Lcom/android/server/BluetoothManagerService;)Z

    move-result v6

    .line 2161
    invoke-virtual {v5, v13, v6, v13}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v0, v5, v3, v4}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2164
    const-string v0, "Re-Queue previous MESSAGE_ENABLE"

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    .line 2040
    :cond_4b
    iget v10, v2, Landroid/os/Message;->arg1:I

    .line 2041
    .local v10, "quietEnable":I
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_51

    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 2042
    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4c

    goto/16 :goto_16

    .line 2070
    :cond_4c
    iget v0, v2, Landroid/os/Message;->arg2:I

    if-nez v0, :cond_4d

    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 2071
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 2072
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    iget-object v5, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v5}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v5

    invoke-virtual {v5, v13, v10, v13}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v0, v5, v3, v4}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2074
    const-string v0, "MESSAGE_DISABLE exist. Queue new MESSAGE_ENABLE"

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    goto/16 :goto_17

    .line 2079
    :cond_4d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MESSAGE_ENABLE("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): mBluetooth = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 2080
    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2079
    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 2083
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v13}, Lcom/android/server/BluetoothManagerService;->access$2102(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 2085
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    if-ne v10, v13, :cond_4e

    move v3, v13

    goto :goto_13

    :cond_4e
    move v3, v12

    :goto_13
    invoke-static {v0, v3}, Lcom/android/server/BluetoothManagerService;->access$2202(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 2088
    :try_start_12
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2089
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 2090
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v0

    .line 2091
    .local v0, "state":I
    const/16 v3, 0xf

    if-ne v0, v3, :cond_4f

    .line 2092
    const-string v3, "BT Enable in BLE_ON State, going to ON"

    invoke-static {v14, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2093
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->access$2200(Lcom/android/server/BluetoothManagerService;)Z

    move-result v4

    invoke-interface {v3, v4}, Landroid/bluetooth/IBluetooth;->updateQuietModeStatus(Z)V

    .line 2094
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v3

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->onLeServiceUp()V

    .line 2097
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2098
    .local v3, "callingIdentity":J
    iget-object v6, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v6, v13}, Lcom/android/server/BluetoothManagerService;->access$2300(Lcom/android/server/BluetoothManagerService;I)V

    .line 2099
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_5
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 2106
    iget-object v5, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v5}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2100
    goto/16 :goto_17

    .line 2106
    .end local v0    # "state":I
    .end local v3    # "callingIdentity":J
    :cond_4f
    goto :goto_14

    :catchall_6
    move-exception v0

    goto :goto_15

    .line 2103
    :catch_5
    move-exception v0

    .line 2104
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_13
    const-string v3, ""

    invoke-static {v14, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 2106
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2107
    nop

    .line 2109
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    if-nez v0, :cond_50

    .line 2110
    const-string v0, "MESSAGE_ENABLE: handleEnable"

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2200(Lcom/android/server/BluetoothManagerService;)Z

    move-result v3

    invoke-static {v0, v3}, Lcom/android/server/BluetoothManagerService;->access$2400(Lcom/android/server/BluetoothManagerService;Z)V

    goto/16 :goto_17

    .line 2129
    :cond_50
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v12}, Lcom/android/server/BluetoothManagerService;->access$2502(Lcom/android/server/BluetoothManagerService;I)I

    .line 2130
    const-string v0, "Re-Queue MESSAGE_HANDLE_ENABLE_DELAYED"

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2131
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 2132
    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2133
    .local v0, "enableDelayedMsg":Landroid/os/Message;
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    invoke-virtual {v3, v0, v7, v8}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2135
    .end local v0    # "enableDelayedMsg":Landroid/os/Message;
    goto/16 :goto_17

    .line 2106
    :goto_15
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2107
    throw v0

    .line 2043
    :cond_51
    :goto_16
    iget v0, v2, Landroid/os/Message;->arg2:I

    if-nez v0, :cond_53

    .line 2044
    const/16 v0, 0x12c

    .line 2046
    .local v0, "delay":I
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 2047
    const/16 v0, 0x258

    .line 2051
    :cond_52
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    invoke-virtual {v3, v13}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 2053
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v4

    invoke-virtual {v4, v13, v10, v13}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    int-to-long v5, v0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2055
    const-string v3, "Queue new MESSAGE_ENABLE"

    invoke-static {v14, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    .end local v0    # "delay":I
    goto :goto_17

    .line 2057
    :cond_53
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    iget-object v5, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v5}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v5

    invoke-virtual {v5, v13, v10, v13}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v0, v5, v7, v8}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2059
    const-string v0, "Re-Queue previous MESSAGE_ENABLE"

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 2063
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 2064
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    iget-object v5, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v5}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v5

    invoke-virtual {v5, v11, v12, v13}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v0, v5, v3, v4}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2066
    const-string v0, "Re-Queue previous MESSAGE_DISABLE"

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2745
    .end local v10    # "quietEnable":I
    :cond_54
    :goto_17
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
