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

    .line 1992
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 1993
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1990
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->mGetNameAddressOnly:Z

    .line 1994
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .line 1998
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v3, 0x3

    const/16 v4, 0x2a

    const-wide/16 v5, 0x12c

    const/4 v7, 0x4

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string v11, "BluetoothManagerService"

    if-eq v0, v9, :cond_48

    const/4 v12, 0x2

    if-eq v0, v12, :cond_44

    const/16 v13, 0xa

    if-eq v0, v3, :cond_3d

    const/16 v3, 0xc

    if-eq v0, v7, :cond_35

    const/16 v5, 0x16

    if-eq v0, v5, :cond_34

    const/16 v14, 0x3c

    const/16 v15, 0xb

    if-eq v0, v14, :cond_2e

    const/16 v6, 0xc8

    const/16 v8, 0x64

    if-eq v0, v6, :cond_29

    const/16 v5, 0x1f4

    if-eq v0, v5, :cond_27

    const/16 v5, 0x1e

    if-eq v0, v5, :cond_26

    const/16 v5, 0x1f

    if-eq v0, v5, :cond_25

    if-eq v0, v8, :cond_23

    const/16 v5, 0x65

    if-eq v0, v5, :cond_22

    const/4 v5, 0x0

    const/16 v8, 0x12c

    const/16 v6, 0xd

    if-eq v0, v8, :cond_15

    const/16 v8, 0x12d

    if-eq v0, v8, :cond_14

    const/16 v8, 0x190

    if-eq v0, v8, :cond_12

    const/16 v8, 0x191

    if-eq v0, v8, :cond_10

    const/16 v8, 0x258

    if-eq v0, v8, :cond_f

    const/16 v8, 0x259

    if-eq v0, v8, :cond_e

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_17

    .line 2481
    :pswitch_0
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$4708(Lcom/android/server/BluetoothManagerService;)I

    .line 2482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MESSAGE_RESTART_BLUETOOTH_SERVICE: retry count="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 2483
    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$4700(Lcom/android/server/BluetoothManagerService;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2482
    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2484
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$4700(Lcom/android/server/BluetoothManagerService;)I

    move-result v0

    const/4 v3, 0x6

    if-ge v0, v3, :cond_0

    .line 2488
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v9}, Lcom/android/server/BluetoothManagerService;->access$2102(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 2489
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 2490
    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$400(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2489
    invoke-static {v0, v7, v3, v9}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;ILjava/lang/String;Z)V

    .line 2491
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2200(Lcom/android/server/BluetoothManagerService;)Z

    move-result v3

    invoke-static {v0, v3}, Lcom/android/server/BluetoothManagerService;->access$2400(Lcom/android/server/BluetoothManagerService;Z)V

    goto/16 :goto_17

    .line 2493
    :cond_0
    const-string v0, "Reach maximum retry to restart Bluetooth!"

    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2495
    goto/16 :goto_17

    .line 2429
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MESSAGE_BLUETOOTH_SERVICE_DISCONNECTED("

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2431
    :try_start_0
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 2432
    iget v0, v2, Landroid/os/Message;->arg1:I

    if-ne v0, v9, :cond_6

    .line 2434
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 2446
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 2435
    goto/16 :goto_17

    .line 2437
    :cond_1
    :try_start_1
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v5}, Lcom/android/server/BluetoothManagerService;->access$1202(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2446
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 2447
    nop

    .line 2450
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$4800(Lcom/android/server/BluetoothManagerService;)V

    .line 2451
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v5, 0x7

    .line 2452
    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$400(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 2451
    invoke-static {v0, v5, v7, v10}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;ILjava/lang/String;Z)V

    .line 2453
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2100(Lcom/android/server/BluetoothManagerService;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2454
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v10}, Lcom/android/server/BluetoothManagerService;->access$2102(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 2456
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 2457
    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2458
    .local v0, "restartMsg":Landroid/os/Message;
    iget-object v4, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v5}, Lcom/android/server/BluetoothManagerService;->access$3100(Lcom/android/server/BluetoothManagerService;)I

    move-result v5

    int-to-long v7, v5

    invoke-virtual {v4, v0, v7, v8}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2461
    .end local v0    # "restartMsg":Landroid/os/Message;
    :cond_2
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$4900(Lcom/android/server/BluetoothManagerService;)V

    .line 2465
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2800(Lcom/android/server/BluetoothManagerService;)I

    move-result v0

    if-eq v0, v15, :cond_3

    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2800(Lcom/android/server/BluetoothManagerService;)I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 2467
    :cond_3
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v3, v6}, Lcom/android/server/BluetoothManagerService;->access$4500(Lcom/android/server/BluetoothManagerService;II)V

    .line 2469
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v6}, Lcom/android/server/BluetoothManagerService;->access$2802(Lcom/android/server/BluetoothManagerService;I)I

    .line 2471
    :cond_4
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2800(Lcom/android/server/BluetoothManagerService;)I

    move-result v0

    if-ne v0, v6, :cond_5

    .line 2472
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v6, v13}, Lcom/android/server/BluetoothManagerService;->access$4500(Lcom/android/server/BluetoothManagerService;II)V

    .line 2476
    :cond_5
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 2477
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v13}, Lcom/android/server/BluetoothManagerService;->access$2802(Lcom/android/server/BluetoothManagerService;I)I

    .line 2478
    goto/16 :goto_17

    .line 2438
    :cond_6
    :try_start_2
    iget v0, v2, Landroid/os/Message;->arg1:I

    if-ne v0, v12, :cond_7

    .line 2439
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v5}, Lcom/android/server/BluetoothManagerService;->access$3802(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2446
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 2440
    goto/16 :goto_17

    .line 2442
    :cond_7
    :try_start_3
    const-string v0, "Unknown argument for service disconnect!"

    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2446
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 2443
    goto/16 :goto_17

    .line 2446
    :catchall_0
    move-exception v0

    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 2447
    throw v0

    .line 2302
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MESSAGE_BLUETOOTH_SERVICE_CONNECTED: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2305
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/IBinder;

    .line 2307
    .local v4, "service":Landroid/os/IBinder;
    :try_start_4
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 2308
    iget v0, v2, Landroid/os/Message;->arg1:I

    if-ne v0, v12, :cond_8

    .line 2309
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 2310
    invoke-static {v4}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGatt;

    move-result-object v3

    .line 2309
    invoke-static {v0, v3}, Lcom/android/server/BluetoothManagerService;->access$3802(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;

    .line 2311
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$3900(Lcom/android/server/BluetoothManagerService;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2348
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 2312
    goto/16 :goto_17

    .line 2315
    :cond_8
    :try_start_5
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v10}, Lcom/android/server/BluetoothManagerService;->access$1902(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 2316
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v10}, Lcom/android/server/BluetoothManagerService;->access$4002(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 2317
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v4}, Lcom/android/server/BluetoothManagerService;->access$4102(Lcom/android/server/BluetoothManagerService;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 2318
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v4}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/server/BluetoothManagerService;->access$1202(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;

    .line 2320
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$4200(Lcom/android/server/BluetoothManagerService;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2321
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    const/16 v5, 0xc8

    invoke-virtual {v0, v5}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2322
    .local v0, "getMsg":Landroid/os/Message;
    iget-object v5, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v5}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2323
    iget-boolean v5, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->mGetNameAddressOnly:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v5, :cond_9

    .line 2348
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 2324
    return-void

    .line 2330
    .end local v0    # "getMsg":Landroid/os/Message;
    :cond_9
    :try_start_6
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    iget-object v5, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v5}, Lcom/android/server/BluetoothManagerService;->access$4300(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetoothCallback;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/bluetooth/IBluetooth;->registerCallback(Landroid/bluetooth/IBluetoothCallback;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2333
    goto :goto_0

    .line 2331
    :catch_0
    move-exception v0

    .line 2332
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_7
    const-string v5, "Unable to register BluetoothCallback"

    invoke-static {v11, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2335
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 2336
    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    const/16 v5, 0x16

    invoke-virtual {v0, v5}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    move-object v5, v0

    .line 2337
    .local v5, "informMsg":Landroid/os/Message;
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2341
    :try_start_8
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    iget-object v7, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v7}, Lcom/android/server/BluetoothManagerService;->access$2200(Lcom/android/server/BluetoothManagerService;)Z

    move-result v7

    invoke-interface {v0, v7}, Landroid/bluetooth/IBluetooth;->enable(Z)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2342
    const-string v0, "IBluetooth.enable() returned false"

    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2346
    :cond_a
    goto :goto_1

    .line 2344
    :catch_1
    move-exception v0

    .line 2345
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_9
    const-string v7, "Unable to call enable()"

    invoke-static {v11, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 2348
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v5    # "informMsg":Landroid/os/Message;
    :goto_1
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 2349
    nop

    .line 2351
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2100(Lcom/android/server/BluetoothManagerService;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 2355
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    const/16 v5, 0xf

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 2356
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 2355
    invoke-static {v7, v5}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/server/BluetoothManagerService;->access$4400(Lcom/android/server/BluetoothManagerService;Ljava/util/Set;)Z

    .line 2358
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v0}, Lcom/android/server/BluetoothManagerService;->getState()I

    move-result v0

    .line 2359
    .local v0, "st":I
    if-eq v0, v15, :cond_c

    const/16 v5, 0xf

    if-ne v0, v5, :cond_b

    iget-object v5, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 2361
    invoke-static {v5}, Lcom/android/server/BluetoothManagerService;->access$2900(Lcom/android/server/BluetoothManagerService;)Z

    move-result v5

    if-nez v5, :cond_c

    iget-object v5, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v5}, Lcom/android/server/BluetoothManagerService;->access$3000(Lcom/android/server/BluetoothManagerService;)Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_2

    .line 2363
    :cond_b
    const/16 v3, 0xf

    if-ne v0, v3, :cond_d

    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v3}, Lcom/android/server/BluetoothManagerService;->isBleAppPresent()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2364
    const-string v3, "MESSAGE_BLUETOOTH_SERVICE_CONNECTED: ble app present"

    invoke-static {v11, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2365
    goto/16 :goto_17

    .line 2362
    :cond_c
    :goto_2
    iget-object v5, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/server/BluetoothManagerService;->access$4400(Lcom/android/server/BluetoothManagerService;Ljava/util/Set;)Z

    .line 2367
    :cond_d
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$2700(Lcom/android/server/BluetoothManagerService;)V

    .line 2368
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 2369
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 2370
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 2371
    const/16 v5, 0xe

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 2372
    const/16 v5, 0xf

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v5, 0x10

    .line 2373
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 2368
    invoke-static/range {v7 .. v12}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/BluetoothManagerService;->access$4400(Lcom/android/server/BluetoothManagerService;Ljava/util/Set;)Z

    .line 2374
    .end local v0    # "st":I
    goto/16 :goto_17

    .line 2348
    :catchall_1
    move-exception v0

    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 2349
    throw v0

    .line 2663
    .end local v4    # "service":Landroid/os/IBinder;
    :cond_e
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    const-string v3, "Device Shut Down"

    invoke-static {v0, v3}, Lcom/android/server/BluetoothManagerService;->access$5300(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;)V

    .line 2664
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$5400(Lcom/android/server/BluetoothManagerService;)V

    goto/16 :goto_17

    .line 2658
    :cond_f
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$5200(Lcom/android/server/BluetoothManagerService;)V

    .line 2659
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    const-string v3, " Device Boot up"

    invoke-static {v0, v3}, Lcom/android/server/BluetoothManagerService;->access$5300(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;)V

    .line 2660
    goto/16 :goto_17

    .line 2289
    :cond_10
    const-string v0, "MESSAGE_BIND_PROFILE_SERVICE"

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2290
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;

    .line 2291
    .local v0, "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v8, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2292
    if-nez v0, :cond_11

    .line 2293
    const-string/jumbo v3, "psc is null, breaking"

    invoke-static {v11, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2294
    goto/16 :goto_17

    .line 2296
    :cond_11
    const-string v3, "Calling psc.bindService from MESSAGE_BIND_PROFILE_SERVICE"

    invoke-static {v11, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2297
    invoke-static {v0}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->access$1400(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;)Z

    .line 2298
    goto/16 :goto_17

    .line 2279
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

    .line 2280
    .restart local v0    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    if-nez v0, :cond_13

    .line 2281
    goto/16 :goto_17

    .line 2283
    :cond_13
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/bluetooth/IBluetoothProfileServiceConnection;

    .line 2285
    .local v3, "proxy":Landroid/bluetooth/IBluetoothProfileServiceConnection;
    invoke-static {v0, v3}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->access$3700(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;Landroid/bluetooth/IBluetoothProfileServiceConnection;)V

    .line 2286
    goto/16 :goto_17

    .line 2640
    .end local v0    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    .end local v3    # "proxy":Landroid/bluetooth/IBluetoothProfileServiceConnection;
    :cond_14
    const-string v0, "MESSAGE_USER_UNLOCKED"

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2642
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    const/16 v3, 0x12c

    invoke-virtual {v0, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 2644
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2100(Lcom/android/server/BluetoothManagerService;)Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1900(Lcom/android/server/BluetoothManagerService;)Z

    move-result v0

    if-nez v0, :cond_4e

    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    if-nez v0, :cond_4e

    .line 2649
    const-string v0, "Enabled but not bound; retrying after unlock"

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2651
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2200(Lcom/android/server/BluetoothManagerService;)Z

    move-result v3

    invoke-static {v0, v3}, Lcom/android/server/BluetoothManagerService;->access$2400(Lcom/android/server/BluetoothManagerService;Z)V

    goto/16 :goto_17

    .line 2523
    :cond_15
    const-string v0, "MESSAGE_USER_SWITCHED"

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2525
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    const/16 v4, 0x12c

    invoke-virtual {v0, v4}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 2528
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v0}, Lcom/android/server/BluetoothManagerService;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2530
    :try_start_a
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2531
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 2532
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->access$4300(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetoothCallback;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/bluetooth/IBluetooth;->unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 2537
    :cond_16
    goto :goto_3

    :catchall_2
    move-exception v0

    goto/16 :goto_7

    .line 2534
    :catch_2
    move-exception v0

    .line 2535
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_b
    const-string v4, "Unable to unregister"

    invoke-static {v11, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 2537
    nop

    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_3
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2538
    nop

    .line 2540
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2800(Lcom/android/server/BluetoothManagerService;)I

    move-result v0

    if-ne v0, v6, :cond_17

    .line 2542
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2800(Lcom/android/server/BluetoothManagerService;)I

    move-result v4

    invoke-static {v0, v4, v13}, Lcom/android/server/BluetoothManagerService;->access$4500(Lcom/android/server/BluetoothManagerService;II)V

    .line 2543
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v13}, Lcom/android/server/BluetoothManagerService;->access$2802(Lcom/android/server/BluetoothManagerService;I)I

    .line 2545
    :cond_17
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2800(Lcom/android/server/BluetoothManagerService;)I

    move-result v0

    if-ne v0, v13, :cond_18

    .line 2546
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2800(Lcom/android/server/BluetoothManagerService;)I

    move-result v4

    invoke-static {v0, v4, v15}, Lcom/android/server/BluetoothManagerService;->access$4500(Lcom/android/server/BluetoothManagerService;II)V

    .line 2547
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v15}, Lcom/android/server/BluetoothManagerService;->access$2802(Lcom/android/server/BluetoothManagerService;I)I

    .line 2551
    :cond_18
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    const/16 v4, 0xf

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 2552
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2551
    invoke-static {v7, v4}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/server/BluetoothManagerService;->access$4400(Lcom/android/server/BluetoothManagerService;Ljava/util/Set;)Z

    .line 2554
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2800(Lcom/android/server/BluetoothManagerService;)I

    move-result v0

    if-ne v0, v15, :cond_19

    .line 2555
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2800(Lcom/android/server/BluetoothManagerService;)I

    move-result v4

    invoke-static {v0, v4, v3}, Lcom/android/server/BluetoothManagerService;->access$4500(Lcom/android/server/BluetoothManagerService;II)V

    .line 2558
    :cond_19
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$5100(Lcom/android/server/BluetoothManagerService;)V

    .line 2560
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    const/16 v4, 0x8

    .line 2561
    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$400(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 2560
    invoke-static {v0, v4, v7, v10}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;ILjava/lang/String;Z)V

    .line 2563
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)V

    .line 2565
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2700(Lcom/android/server/BluetoothManagerService;)V

    .line 2567
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v3, v6}, Lcom/android/server/BluetoothManagerService;->access$4500(Lcom/android/server/BluetoothManagerService;II)V

    .line 2574
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 2575
    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2576
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2575
    invoke-static {v4, v3}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/BluetoothManagerService;->access$4400(Lcom/android/server/BluetoothManagerService;Ljava/util/Set;)Z

    move-result v0

    xor-int/2addr v0, v9

    .line 2578
    .local v0, "didDisableTimeout":Z
    if-nez v0, :cond_1b

    .line 2579
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v3}, Lcom/android/server/BluetoothManagerService;->getState()I

    move-result v3

    .line 2581
    .local v3, "state":I
    const/16 v4, 0xf

    if-ne v3, v4, :cond_1a

    .line 2582
    iget-object v7, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v7, v6, v4}, Lcom/android/server/BluetoothManagerService;->access$4500(Lcom/android/server/BluetoothManagerService;II)V

    .line 2586
    :cond_1a
    iget-object v4, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 2587
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/server/BluetoothManagerService;->access$4400(Lcom/android/server/BluetoothManagerService;Ljava/util/Set;)Z

    move-result v4

    xor-int/2addr v4, v9

    move v0, v4

    move v3, v0

    goto :goto_4

    .line 2578
    .end local v3    # "state":I
    :cond_1b
    move v3, v0

    .line 2589
    .end local v0    # "didDisableTimeout":Z
    .local v3, "didDisableTimeout":Z
    :goto_4
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v6, v13}, Lcom/android/server/BluetoothManagerService;->access$4500(Lcom/android/server/BluetoothManagerService;II)V

    .line 2591
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$4900(Lcom/android/server/BluetoothManagerService;)V

    .line 2593
    if-nez v3, :cond_1d

    .line 2595
    :try_start_c
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 2596
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 2597
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v5}, Lcom/android/server/BluetoothManagerService;->access$1202(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;

    .line 2599
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$400(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->access$2000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2601
    :cond_1c
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v5}, Lcom/android/server/BluetoothManagerService;->access$3802(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 2603
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 2604
    goto :goto_5

    .line 2603
    :catchall_3
    move-exception v0

    iget-object v4, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 2604
    throw v0

    .line 2612
    :cond_1d
    :goto_5
    if-eqz v3, :cond_1e

    .line 2613
    const-wide/16 v4, 0xbb8

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 2614
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    const/16 v4, 0x29

    invoke-virtual {v0, v4}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    goto :goto_6

    .line 2616
    :cond_1e
    const-wide/16 v4, 0x64

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 2619
    :goto_6
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 2620
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v13}, Lcom/android/server/BluetoothManagerService;->access$2802(Lcom/android/server/BluetoothManagerService;I)I

    .line 2622
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    const/16 v4, 0x8

    .line 2623
    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$400(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 2622
    invoke-static {v0, v4, v5, v9}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;ILjava/lang/String;Z)V

    .line 2625
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v9}, Lcom/android/server/BluetoothManagerService;->access$2102(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 2626
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2200(Lcom/android/server/BluetoothManagerService;)Z

    move-result v4

    invoke-static {v0, v4}, Lcom/android/server/BluetoothManagerService;->access$2400(Lcom/android/server/BluetoothManagerService;Z)V

    .end local v3    # "didDisableTimeout":Z
    goto :goto_8

    .line 2537
    :goto_7
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2538
    throw v0

    .line 2627
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

    .line 2628
    :cond_21
    :goto_9
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    const/16 v3, 0x12c

    invoke-virtual {v0, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2629
    .local v0, "userMsg":Landroid/os/Message;
    iget v3, v2, Landroid/os/Message;->arg2:I

    add-int/2addr v3, v9

    iput v3, v0, Landroid/os/Message;->arg2:I

    .line 2631
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2633
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retry MESSAGE_USER_SWITCHED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2635
    .end local v0    # "userMsg":Landroid/os/Message;
    goto/16 :goto_17

    .line 2514
    :cond_22
    const-string v0, "MESSAGE_TIMEOUT_UNBIND"

    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2515
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 2516
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v10}, Lcom/android/server/BluetoothManagerService;->access$5002(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 2517
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 2518
    goto/16 :goto_17

    .line 2498
    :cond_23
    const-string v0, "MESSAGE_TIMEOUT_BIND"

    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2499
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 2500
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v10}, Lcom/android/server/BluetoothManagerService;->access$1902(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 2501
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 2503
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$4000(Lcom/android/server/BluetoothManagerService;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 2504
    const-string v0, " Trying to Bind again"

    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2505
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v9}, Lcom/android/server/BluetoothManagerService;->access$4002(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 2506
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2200(Lcom/android/server/BluetoothManagerService;)Z

    move-result v3

    invoke-static {v0, v3}, Lcom/android/server/BluetoothManagerService;->access$2400(Lcom/android/server/BluetoothManagerService;Z)V

    goto/16 :goto_17

    .line 2508
    :cond_24
    const-string v0, "Bind trails excedded"

    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2509
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v10}, Lcom/android/server/BluetoothManagerService;->access$4002(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 2511
    goto/16 :goto_17

    .line 2273
    :cond_25
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 2275
    .local v0, "callback":Landroid/bluetooth/IBluetoothStateChangeCallback;
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$3500(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 2276
    goto/16 :goto_17

    .line 2267
    .end local v0    # "callback":Landroid/bluetooth/IBluetoothStateChangeCallback;
    :cond_26
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 2269
    .restart local v0    # "callback":Landroid/bluetooth/IBluetoothStateChangeCallback;
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$3500(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 2270
    goto/16 :goto_17

    .line 2234
    .end local v0    # "callback":Landroid/bluetooth/IBluetoothStateChangeCallback;
    :cond_27
    iget v0, v2, Landroid/os/Message;->arg1:I

    const/16 v3, 0x9

    if-nez v0, :cond_28

    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2100(Lcom/android/server/BluetoothManagerService;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2236
    const-string v0, "Restore Bluetooth state to disabled"

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2238
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v10}, Lcom/android/server/BluetoothManagerService;->access$2300(Lcom/android/server/BluetoothManagerService;I)V

    .line 2239
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v10}, Lcom/android/server/BluetoothManagerService;->access$2902(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 2241
    const-string v0, "MESSAGE_RESTORE_USER_SETTING: Setup mEnableExternal = false"

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2243
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 2245
    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$400(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2243
    invoke-static {v0, v3, v4}, Lcom/android/server/BluetoothManagerService;->access$500(Lcom/android/server/BluetoothManagerService;ILjava/lang/String;)V

    goto/16 :goto_17

    .line 2246
    :cond_28
    iget v0, v2, Landroid/os/Message;->arg1:I

    if-ne v0, v9, :cond_4e

    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2100(Lcom/android/server/BluetoothManagerService;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 2248
    const-string v0, "Restore Bluetooth state to enabled"

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2250
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v10}, Lcom/android/server/BluetoothManagerService;->access$3202(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 2251
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v9}, Lcom/android/server/BluetoothManagerService;->access$2902(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 2253
    const-string v0, "MESSAGE_RESTORE_USER_SETTING: Setup mEnableExternal = true"

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2256
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 2258
    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$400(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2256
    invoke-static {v0, v10, v3, v4}, Lcom/android/server/BluetoothManagerService;->access$3300(Lcom/android/server/BluetoothManagerService;ZILjava/lang/String;)V

    goto/16 :goto_17

    .line 2001
    :cond_29
    const-string v0, "MESSAGE_GET_NAME_AND_ADDRESS"

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    :try_start_d
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 2005
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    if-nez v0, :cond_2b

    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1900(Lcom/android/server/BluetoothManagerService;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 2007
    const-string v0, "Binding to service to get name and address"

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    iput-boolean v9, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->mGetNameAddressOnly:Z

    .line 2010
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2011
    .local v0, "timeoutMsg":Landroid/os/Message;
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2012
    new-instance v3, Landroid/content/Intent;

    const-class v4, Landroid/bluetooth/IBluetooth;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2013
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

    .line 2016
    iget-object v4, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    goto :goto_b

    .line 2018
    :cond_2a
    iget-object v4, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v4, v9}, Lcom/android/server/BluetoothManagerService;->access$1902(Lcom/android/server/BluetoothManagerService;Z)Z

    goto :goto_b

    .line 2020
    .end local v0    # "timeoutMsg":Landroid/os/Message;
    .end local v3    # "i":Landroid/content/Intent;
    :cond_2b
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    if-eqz v0, :cond_2d

    .line 2022
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

    .line 2025
    goto :goto_a

    .line 2023
    :catch_3
    move-exception v0

    .line 2024
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_f
    const-string v3, "Unable to grab names"

    invoke-static {v11, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2026
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_a
    iget-boolean v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->mGetNameAddressOnly:Z

    if-eqz v0, :cond_2c

    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2100(Lcom/android/server/BluetoothManagerService;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 2027
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v0}, Lcom/android/server/BluetoothManagerService;->unbindAndFinish()V

    .line 2029
    :cond_2c
    iput-boolean v10, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->mGetNameAddressOnly:Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    goto :goto_c

    .line 2020
    :cond_2d
    :goto_b
    nop

    .line 2032
    :goto_c
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 2033
    nop

    .line 2034
    goto/16 :goto_17

    .line 2032
    :catchall_4
    move-exception v0

    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 2033
    throw v0

    .line 2378
    :cond_2e
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 2379
    .local v0, "prevState":I
    iget v5, v2, Landroid/os/Message;->arg2:I

    .line 2381
    .local v5, "newState":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MESSAGE_BLUETOOTH_STATE_CHANGE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2382
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2383
    invoke-static {v5}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2381
    invoke-static {v11, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2386
    iget-object v6, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v6, v5}, Lcom/android/server/BluetoothManagerService;->access$2802(Lcom/android/server/BluetoothManagerService;I)I

    .line 2387
    iget-object v6, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v6, v0, v5}, Lcom/android/server/BluetoothManagerService;->access$4500(Lcom/android/server/BluetoothManagerService;II)V

    .line 2390
    const/16 v6, 0xe

    if-ne v0, v6, :cond_2f

    if-ne v5, v13, :cond_2f

    iget-object v6, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 2391
    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v6

    if-eqz v6, :cond_2f

    iget-object v6, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$2100(Lcom/android/server/BluetoothManagerService;)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 2392
    iget-object v6, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v6, v10}, Lcom/android/server/BluetoothManagerService;->access$4600(Lcom/android/server/BluetoothManagerService;Z)V

    .line 2394
    :cond_2f
    if-ne v0, v15, :cond_30

    if-ne v5, v13, :cond_30

    iget-object v6, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 2396
    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v6

    if-eqz v6, :cond_30

    iget-object v6, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$2100(Lcom/android/server/BluetoothManagerService;)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 2397
    iget-object v6, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v6, v10}, Lcom/android/server/BluetoothManagerService;->access$2300(Lcom/android/server/BluetoothManagerService;I)V

    .line 2399
    :cond_30
    if-ne v0, v15, :cond_31

    const/16 v6, 0xf

    if-ne v5, v6, :cond_31

    iget-object v6, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 2401
    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v6

    if-eqz v6, :cond_31

    iget-object v6, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$2100(Lcom/android/server/BluetoothManagerService;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 2402
    iget-object v6, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v6, v9}, Lcom/android/server/BluetoothManagerService;->access$4600(Lcom/android/server/BluetoothManagerService;Z)V

    .line 2407
    :cond_31
    const/16 v6, 0x10

    if-ne v0, v6, :cond_32

    if-ne v5, v13, :cond_32

    .line 2409
    iget-object v6, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$2100(Lcom/android/server/BluetoothManagerService;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 2410
    const-string v6, "Entering STATE_OFF but mEnabled is true; restarting."

    invoke-static {v11, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2411
    iget-object v6, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 2412
    iget-object v6, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/BluetoothManagerService;->access$4400(Lcom/android/server/BluetoothManagerService;Ljava/util/Set;)Z

    .line 2413
    iget-object v6, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 2414
    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 2415
    .local v4, "restartMsg":Landroid/os/Message;
    iget-object v6, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v7}, Lcom/android/server/BluetoothManagerService;->access$3100(Lcom/android/server/BluetoothManagerService;)I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v6, v4, v7, v8}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2418
    .end local v4    # "restartMsg":Landroid/os/Message;
    :cond_32
    if-eq v5, v3, :cond_33

    const/16 v3, 0xf

    if-ne v5, v3, :cond_4e

    .line 2421
    :cond_33
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$4700(Lcom/android/server/BluetoothManagerService;)I

    move-result v3

    if-eqz v3, :cond_4e

    .line 2422
    const-string v3, "bluetooth is recovered from error"

    invoke-static {v11, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2423
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3, v10}, Lcom/android/server/BluetoothManagerService;->access$4702(Lcom/android/server/BluetoothManagerService;I)I

    goto/16 :goto_17

    .line 2262
    .end local v0    # "prevState":I
    .end local v5    # "newState":I
    :cond_34
    const-string v0, "MESSAGE_INFORM_ADAPTER_SERVICE_UP"

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2263
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$3400(Lcom/android/server/BluetoothManagerService;)V

    .line 2264
    goto/16 :goto_17

    .line 2173
    :cond_35
    iget v0, v2, Landroid/os/Message;->arg1:I

    if-ne v0, v9, :cond_36

    move v0, v9

    goto :goto_d

    :cond_36
    move v0, v10

    .line 2174
    .local v0, "disabling":Z
    :goto_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MESSAGE_HANDLE_DISABLE_DELAYED: disabling:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2175
    if-nez v0, :cond_3a

    .line 2179
    iget-object v4, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->access$2800(Lcom/android/server/BluetoothManagerService;)I

    move-result v4

    const/16 v8, 0xf

    if-ne v4, v8, :cond_37

    iget-object v4, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 2180
    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->access$2900(Lcom/android/server/BluetoothManagerService;)Z

    move-result v4

    if-nez v4, :cond_37

    iget-object v4, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 2181
    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->access$3000(Lcom/android/server/BluetoothManagerService;)Z

    move-result v4

    if-nez v4, :cond_37

    iget-object v4, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 2182
    invoke-virtual {v4}, Lcom/android/server/BluetoothManagerService;->isBleAppPresent()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 2183
    const-string v3, "Enable from BLE APP, stay in BLE ON"

    invoke-static {v11, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2184
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3, v10}, Lcom/android/server/BluetoothManagerService;->access$2602(Lcom/android/server/BluetoothManagerService;I)I

    .line 2185
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3, v10}, Lcom/android/server/BluetoothManagerService;->access$2102(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 2186
    goto/16 :goto_17

    .line 2187
    :cond_37
    iget-object v4, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->access$2800(Lcom/android/server/BluetoothManagerService;)I

    move-result v4

    if-eq v4, v3, :cond_39

    .line 2188
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$2600(Lcom/android/server/BluetoothManagerService;)I

    move-result v3

    if-ge v3, v13, :cond_38

    .line 2189
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$2608(Lcom/android/server/BluetoothManagerService;)I

    .line 2190
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    invoke-virtual {v3, v7, v10, v10}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 2192
    .local v3, "disableDelayedMsg":Landroid/os/Message;
    iget-object v4, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v4

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2194
    goto/16 :goto_17

    .line 2196
    .end local v3    # "disableDelayedMsg":Landroid/os/Message;
    :cond_38
    const-string v3, "Wait for STATE_ON timeout"

    invoke-static {v11, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2201
    :cond_39
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3, v10}, Lcom/android/server/BluetoothManagerService;->access$2602(Lcom/android/server/BluetoothManagerService;I)I

    .line 2202
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3, v10}, Lcom/android/server/BluetoothManagerService;->access$2102(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 2203
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$2700(Lcom/android/server/BluetoothManagerService;)V

    .line 2205
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 2206
    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    invoke-virtual {v3, v7, v9, v10}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 2207
    .restart local v3    # "disableDelayedMsg":Landroid/os/Message;
    iget-object v4, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v4

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2208
    .end local v3    # "disableDelayedMsg":Landroid/os/Message;
    goto :goto_e

    .line 2210
    :cond_3a
    iget-object v4, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->access$2800(Lcom/android/server/BluetoothManagerService;)I

    move-result v4

    if-ne v4, v3, :cond_3c

    .line 2211
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$2600(Lcom/android/server/BluetoothManagerService;)I

    move-result v3

    if-ge v3, v13, :cond_3b

    .line 2212
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$2608(Lcom/android/server/BluetoothManagerService;)I

    .line 2213
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    invoke-virtual {v3, v7, v9, v10}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 2215
    .restart local v3    # "disableDelayedMsg":Landroid/os/Message;
    iget-object v4, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v4

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2217
    goto/16 :goto_17

    .line 2219
    .end local v3    # "disableDelayedMsg":Landroid/os/Message;
    :cond_3b
    const-string v3, "Wait for exiting STATE_ON timeout"

    invoke-static {v11, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2224
    :cond_3c
    const-string v3, "Handle disable is finished"

    invoke-static {v11, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2228
    :goto_e
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    iget-object v3, v3, Lcom/android/server/BluetoothManagerService;->mCarkitIdentification:Lcom/oneplus/android/server/OpBluetoothCarkitIdentificationInjector;

    invoke-static {}, Lcom/oneplus/android/server/OpBluetoothCarkitIdentificationInjector;->close()V

    .line 2230
    goto/16 :goto_17

    .line 2133
    .end local v0    # "disabling":Z
    :cond_3d
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2800(Lcom/android/server/BluetoothManagerService;)I

    move-result v0

    const/16 v7, 0xf

    if-ne v0, v7, :cond_41

    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v0}, Lcom/android/server/BluetoothManagerService;->isBleAppPresent()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 2134
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v10}, Lcom/android/server/BluetoothManagerService;->access$2502(Lcom/android/server/BluetoothManagerService;I)I

    .line 2135
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2900(Lcom/android/server/BluetoothManagerService;)Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$3000(Lcom/android/server/BluetoothManagerService;)Z

    move-result v0

    if-eqz v0, :cond_3e

    goto :goto_f

    .line 2148
    :cond_3e
    const-string v0, "BLE app running stay in BLE ON state"

    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    goto/16 :goto_17

    .line 2137
    :cond_3f
    :goto_f
    :try_start_10
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2138
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 2139
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$2200(Lcom/android/server/BluetoothManagerService;)Z

    move-result v3

    invoke-interface {v0, v3}, Landroid/bluetooth/IBluetooth;->updateQuietModeStatus(Z)V

    .line 2140
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->onLeServiceUp()V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 2145
    :cond_40
    goto :goto_10

    :catchall_5
    move-exception v0

    goto :goto_11

    .line 2142
    :catch_4
    move-exception v0

    .line 2143
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_11
    const-string v3, ""

    invoke-static {v11, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 2145
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2146
    goto/16 :goto_17

    .line 2145
    :goto_11
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2146
    throw v0

    .line 2151
    :cond_41
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2800(Lcom/android/server/BluetoothManagerService;)I

    move-result v0

    if-eq v0, v13, :cond_43

    .line 2152
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2500(Lcom/android/server/BluetoothManagerService;)I

    move-result v0

    if-ge v0, v13, :cond_42

    .line 2153
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2508(Lcom/android/server/BluetoothManagerService;)I

    .line 2154
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 2155
    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2156
    .local v0, "enableDelayedMsg":Landroid/os/Message;
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    invoke-virtual {v3, v0, v5, v6}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2157
    goto/16 :goto_17

    .line 2159
    .end local v0    # "enableDelayedMsg":Landroid/os/Message;
    :cond_42
    const-string v0, "Wait for STATE_OFF timeout"

    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    :cond_43
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v10}, Lcom/android/server/BluetoothManagerService;->access$2502(Lcom/android/server/BluetoothManagerService;I)I

    .line 2165
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 2166
    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2167
    .local v0, "restartMsg":Landroid/os/Message;
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->access$3100(Lcom/android/server/BluetoothManagerService;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2168
    const-string v3, "Handle enable is finished"

    invoke-static {v11, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2169
    goto/16 :goto_17

    .line 2104
    .end local v0    # "restartMsg":Landroid/os/Message;
    :cond_44
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_47

    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1900(Lcom/android/server/BluetoothManagerService;)Z

    move-result v0

    if-nez v0, :cond_47

    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 2105
    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_45

    goto :goto_12

    .line 2113
    :cond_45
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

    .line 2114
    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$1900(Lcom/android/server/BluetoothManagerService;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2113
    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 2118
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2100(Lcom/android/server/BluetoothManagerService;)Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 2119
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v10}, Lcom/android/server/BluetoothManagerService;->access$2602(Lcom/android/server/BluetoothManagerService;I)I

    .line 2120
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 2121
    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    invoke-virtual {v0, v7, v10, v10}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2122
    .local v0, "disableDelayedMsg":Landroid/os/Message;
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    invoke-virtual {v3, v0, v5, v6}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2123
    .end local v0    # "disableDelayedMsg":Landroid/os/Message;
    goto/16 :goto_17

    .line 2124
    :cond_46
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v10}, Lcom/android/server/BluetoothManagerService;->access$2102(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 2125
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2700(Lcom/android/server/BluetoothManagerService;)V

    .line 2127
    goto/16 :goto_17

    .line 2107
    :cond_47
    :goto_12
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3, v5, v6}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2109
    goto/16 :goto_17

    .line 2037
    :cond_48
    iget v8, v2, Landroid/os/Message;->arg1:I

    .line 2038
    .local v8, "quietEnable":I
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_4d

    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 2039
    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_49

    goto/16 :goto_16

    .line 2047
    :cond_49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MESSAGE_ENABLE("

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "): mBluetooth = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 2048
    invoke-static {v7}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2047
    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 2051
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v9}, Lcom/android/server/BluetoothManagerService;->access$2102(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 2053
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    if-ne v8, v9, :cond_4a

    move v4, v9

    goto :goto_13

    :cond_4a
    move v4, v10

    :goto_13
    invoke-static {v0, v4}, Lcom/android/server/BluetoothManagerService;->access$2202(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 2056
    :try_start_12
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2057
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 2058
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v0

    .line 2059
    .local v0, "state":I
    const/16 v4, 0xf

    if-ne v0, v4, :cond_4b

    .line 2060
    const-string v4, "BT Enable in BLE_ON State, going to ON"

    invoke-static {v11, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    iget-object v4, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v4

    iget-object v7, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v7}, Lcom/android/server/BluetoothManagerService;->access$2200(Lcom/android/server/BluetoothManagerService;)Z

    move-result v7

    invoke-interface {v4, v7}, Landroid/bluetooth/IBluetooth;->updateQuietModeStatus(Z)V

    .line 2062
    iget-object v4, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v4

    invoke-interface {v4}, Landroid/bluetooth/IBluetooth;->onLeServiceUp()V

    .line 2065
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 2066
    .local v12, "callingIdentity":J
    iget-object v4, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v4, v9}, Lcom/android/server/BluetoothManagerService;->access$2300(Lcom/android/server/BluetoothManagerService;I)V

    .line 2067
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_5
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 2074
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2068
    goto :goto_17

    .line 2074
    .end local v0    # "state":I
    .end local v12    # "callingIdentity":J
    :cond_4b
    goto :goto_14

    :catchall_6
    move-exception v0

    goto :goto_15

    .line 2071
    :catch_5
    move-exception v0

    .line 2072
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_13
    const-string v4, ""

    invoke-static {v11, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 2074
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2075
    nop

    .line 2077
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    if-nez v0, :cond_4c

    .line 2078
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2200(Lcom/android/server/BluetoothManagerService;)Z

    move-result v3

    invoke-static {v0, v3}, Lcom/android/server/BluetoothManagerService;->access$2400(Lcom/android/server/BluetoothManagerService;Z)V

    goto :goto_17

    .line 2096
    :cond_4c
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v10}, Lcom/android/server/BluetoothManagerService;->access$2502(Lcom/android/server/BluetoothManagerService;I)I

    .line 2097
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 2098
    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2099
    .local v0, "enableDelayedMsg":Landroid/os/Message;
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    invoke-virtual {v3, v0, v5, v6}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2101
    .end local v0    # "enableDelayedMsg":Landroid/os/Message;
    goto :goto_17

    .line 2074
    :goto_15
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2075
    throw v0

    .line 2041
    :cond_4d
    :goto_16
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    invoke-virtual {v3, v9, v8, v10}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3, v5, v6}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2043
    nop

    .line 2669
    .end local v8    # "quietEnable":I
    :cond_4e
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
