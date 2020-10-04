.class final Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
.super Ljava/lang/Object;
.source "BluetoothManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProfileServiceConnections"
.end annotation


# instance fields
.field mClassName:Landroid/content/ComponentName;

.field mIntent:Landroid/content/Intent;

.field mInvokingProxyCallbacks:Z

.field final mProxies:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/bluetooth/IBluetoothProfileServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field mService:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BluetoothManagerService;Landroid/content/Intent;)V
    .locals 0
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1423
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1416
    new-instance p1, Landroid/os/RemoteCallbackList;

    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    .line 1421
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mInvokingProxyCallbacks:Z

    .line 1424
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mService:Landroid/os/IBinder;

    .line 1425
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mClassName:Landroid/content/ComponentName;

    .line 1426
    iput-object p2, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mIntent:Landroid/content/Intent;

    .line 1427
    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;

    .line 1414
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->bindService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;Landroid/bluetooth/IBluetoothProfileServiceConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    .param p1, "x1"    # Landroid/bluetooth/IBluetoothProfileServiceConnection;

    .line 1414
    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->removeProxy(Landroid/bluetooth/IBluetoothProfileServiceConnection;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;

    .line 1414
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->isEmpty()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;

    .line 1414
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->removeAllProxies()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;Landroid/bluetooth/IBluetoothProfileServiceConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    .param p1, "x1"    # Landroid/bluetooth/IBluetoothProfileServiceConnection;

    .line 1414
    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->addProxy(Landroid/bluetooth/IBluetoothProfileServiceConnection;)V

    return-void
.end method

.method private addProxy(Landroid/bluetooth/IBluetoothProfileServiceConnection;)V
    .locals 3
    .param p1, "proxy"    # Landroid/bluetooth/IBluetoothProfileServiceConnection;

    .line 1462
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1463
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mService:Landroid/os/IBinder;

    const-string v1, "BluetoothManagerService"

    if-eqz v0, :cond_0

    .line 1465
    :try_start_0
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mClassName:Landroid/content/ComponentName;

    invoke-interface {p1, v2, v0}, Landroid/bluetooth/IBluetoothProfileServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1466
    :catch_0
    move-exception v0

    .line 1467
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Unable to connect to proxy"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1468
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 1470
    :cond_0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v0}, Lcom/android/server/BluetoothManagerService;->isBluetoothAvailableForBinding()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addProxy: Trying to bind to profile: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mClassName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", while Bluetooth is disabled"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1474
    return-void

    .line 1477
    :cond_1
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    const/16 v1, 0x191

    invoke-virtual {v0, v1, p0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1478
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1479
    .local v0, "msg":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1480
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1483
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    :goto_1
    return-void
.end method

.method private bindService()Z
    .locals 6

    .line 1430
    const-string v0, "BluetoothManagerService"

    const/16 v1, 0xa

    .line 1432
    .local v1, "state":I
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1433
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1434
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v3

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v3

    .line 1440
    :cond_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1441
    nop

    .line 1443
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$1400(Lcom/android/server/BluetoothManagerService;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0xc

    if-eq v1, v3, :cond_1

    goto :goto_0

    .line 1450
    :cond_1
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mIntent:Landroid/content/Intent;

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mService:Landroid/os/IBinder;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    sget-object v5, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, p0, v2, v5}, Lcom/android/server/BluetoothManagerService;->doBind(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1452
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    const/16 v2, 0x191

    invoke-virtual {v0, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1453
    .local v0, "msg":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1454
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v2

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1455
    const/4 v2, 0x1

    return v2

    .line 1457
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to bind with intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    return v2

    .line 1445
    :cond_3
    :goto_0
    const-string v3, "Unable to bindService while Bluetooth is disabled"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    return v2

    .line 1440
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1436
    :catch_0
    move-exception v3

    .line 1437
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v4, "Unable to call getState"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1438
    nop

    .line 1440
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1438
    return v2

    .line 1440
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method private isEmpty()Z
    .locals 1

    .line 1508
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private removeAllProxies()V
    .locals 1

    .line 1503
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mClassName:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 1504
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 1505
    return-void
.end method

.method private removeProxy(Landroid/bluetooth/IBluetoothProfileServiceConnection;)V
    .locals 3
    .param p1, "proxy"    # Landroid/bluetooth/IBluetoothProfileServiceConnection;

    .line 1486
    const-string v0, "BluetoothManagerService"

    if-eqz p1, :cond_1

    .line 1487
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1489
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mClassName:Landroid/content/ComponentName;

    invoke-interface {p1, v1}, Landroid/bluetooth/IBluetoothProfileServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1492
    goto :goto_0

    .line 1490
    :catch_0
    move-exception v1

    .line 1491
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Unable to disconnect proxy"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1495
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removing the proxy, count is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    .line 1496
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1495
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1498
    :cond_1
    const-string v1, "Trying to remove a null proxy"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    :goto_1
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .line 1579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Profile service for profile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mClassName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " died."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mClassName:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 1583
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v0}, Lcom/android/server/BluetoothManagerService;->isBluetoothAvailableForBinding()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied: Trying to bind to profile: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mClassName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", while Bluetooth is disabled"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    return-void

    .line 1589
    :cond_0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    const/16 v1, 0x191

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1590
    .local v0, "msg":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1591
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1592
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 1514
    const-string v0, "BluetoothManagerService"

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v1

    const/16 v2, 0x191

    invoke-virtual {v1, v2, p0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1515
    iput-object p2, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mService:Landroid/os/IBinder;

    .line 1516
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mClassName:Landroid/content/ComponentName;

    .line 1518
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mService:Landroid/os/IBinder;

    invoke-interface {v2, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1521
    goto :goto_0

    .line 1519
    :catch_0
    move-exception v2

    .line 1520
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Unable to linkToDeath"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1523
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mInvokingProxyCallbacks:Z

    if-eqz v2, :cond_0

    .line 1524
    const-string v1, "Proxy callbacks already in progress."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    return-void

    .line 1527
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mInvokingProxyCallbacks:Z

    .line 1529
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1531
    .local v2, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 1533
    :try_start_1
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/IBluetoothProfileServiceConnection;

    invoke-interface {v4, p1, p2}, Landroid/bluetooth/IBluetoothProfileServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1536
    goto :goto_2

    .line 1539
    .end local v3    # "i":I
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 1534
    .restart local v3    # "i":I
    :catch_1
    move-exception v4

    .line 1535
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "Unable to connect to proxy"

    invoke-static {v0, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1531
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1539
    .end local v3    # "i":I
    :goto_3
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1540
    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mInvokingProxyCallbacks:Z

    throw v0

    .line 1539
    :cond_1
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1540
    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mInvokingProxyCallbacks:Z

    .line 1541
    nop

    .line 1542
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 6
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 1546
    const-string v0, "BluetoothManagerService"

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mService:Landroid/os/IBinder;

    if-nez v1, :cond_0

    return-void

    .line 1548
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1551
    goto :goto_0

    .line 1549
    :catch_0
    move-exception v1

    .line 1550
    .local v1, "e":Ljava/util/NoSuchElementException;
    const-string v3, "Unable to unlinkToDeath"

    invoke-static {v0, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1552
    .end local v1    # "e":Ljava/util/NoSuchElementException;
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mService:Landroid/os/IBinder;

    .line 1553
    iput-object v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mClassName:Landroid/content/ComponentName;

    .line 1555
    iget-boolean v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mInvokingProxyCallbacks:Z

    if-eqz v1, :cond_1

    .line 1556
    const-string v1, "Proxy callbacks already in progress."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    return-void

    .line 1559
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mInvokingProxyCallbacks:Z

    .line 1561
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 1563
    .local v1, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 1565
    :try_start_1
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/IBluetoothProfileServiceConnection;

    invoke-interface {v4, p1}, Landroid/bluetooth/IBluetoothProfileServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1568
    goto :goto_2

    .line 1571
    .end local v3    # "i":I
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 1566
    .restart local v3    # "i":I
    :catch_1
    move-exception v4

    .line 1567
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "Unable to disconnect from proxy"

    invoke-static {v0, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1563
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1571
    .end local v3    # "i":I
    :goto_3
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1572
    iput-boolean v2, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mInvokingProxyCallbacks:Z

    throw v0

    .line 1571
    :cond_2
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1572
    iput-boolean v2, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mInvokingProxyCallbacks:Z

    .line 1573
    nop

    .line 1574
    return-void
.end method
