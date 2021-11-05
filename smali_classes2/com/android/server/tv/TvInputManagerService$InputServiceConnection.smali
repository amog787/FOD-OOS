.class final Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;
.super Ljava/lang/Object;
.source "TvInputManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputServiceConnection"
.end annotation


# instance fields
.field private final mComponent:Landroid/content/ComponentName;

.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V
    .locals 0
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I

    .line 2366
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2367
    iput-object p2, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mComponent:Landroid/content/ComponentName;

    .line 2368
    iput p3, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mUserId:I

    .line 2369
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;ILcom/android/server/tv/TvInputManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p2, "x1"    # Landroid/content/ComponentName;
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/android/server/tv/TvInputManagerService$1;

    .line 2362
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 10
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 2376
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2377
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService;->access$6400(Lcom/android/server/tv/TvInputManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 2378
    .local v1, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    if-nez v1, :cond_0

    .line 2380
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->access$4400(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2381
    monitor-exit v0

    return-void

    .line 2383
    :cond_0
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mComponent:Landroid/content/ComponentName;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 2384
    .local v2, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    invoke-static {p2}, Landroid/media/tv/ITvInputService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputService;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2102(Lcom/android/server/tv/TvInputManagerService$ServiceState;Landroid/media/tv/ITvInputService;)Landroid/media/tv/ITvInputService;

    .line 2387
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$3400(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2000(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    move-result-object v3

    if-nez v3, :cond_1

    .line 2388
    new-instance v3, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mComponent:Landroid/content/ComponentName;

    iget v6, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mUserId:I

    invoke-direct {v3, v4, v5, v6}, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V

    invoke-static {v2, v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2002(Lcom/android/server/tv/TvInputManagerService$ServiceState;Lcom/android/server/tv/TvInputManagerService$ServiceCallback;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2390
    :try_start_1
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2100(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v3

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2000(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/media/tv/ITvInputService;->registerCallback(Landroid/media/tv/ITvInputServiceCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2393
    goto :goto_0

    .line 2391
    :catch_0
    move-exception v3

    .line 2392
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "TvInputManagerService"

    const-string v5, "error in registerCallback"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2396
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2399
    .local v3, "tokensToBeRemoved":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$1900(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    .line 2400
    .local v5, "sessionToken":Landroid/os/IBinder;
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2100(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v7

    iget v8, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mUserId:I

    invoke-static {v6, v7, v5, v8}, Lcom/android/server/tv/TvInputManagerService;->access$5000(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputService;Landroid/os/IBinder;I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2401
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2403
    .end local v5    # "sessionToken":Landroid/os/IBinder;
    :cond_2
    goto :goto_1

    .line 2405
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    .line 2406
    .restart local v5    # "sessionToken":Landroid/os/IBinder;
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget v7, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mUserId:I

    invoke-static {v6, v5, v7}, Lcom/android/server/tv/TvInputManagerService;->access$5100(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;I)V

    .line 2407
    .end local v5    # "sessionToken":Landroid/os/IBinder;
    goto :goto_2

    .line 2409
    :cond_4
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1200(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 2410
    .local v5, "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->access$1400(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2411
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->access$4100(Lcom/android/server/tv/TvInputManagerService$TvInputState;)I

    move-result v6

    if-eqz v6, :cond_5

    .line 2412
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->access$1400(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v7

    .line 2413
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->access$4100(Lcom/android/server/tv/TvInputManagerService$TvInputState;)I

    move-result v8

    const/4 v9, 0x0

    .line 2412
    invoke-static {v6, v1, v7, v8, v9}, Lcom/android/server/tv/TvInputManagerService;->access$7100(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;ILandroid/media/tv/ITvInputManagerCallback;)V

    .line 2415
    .end local v5    # "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    :cond_5
    goto :goto_3

    .line 2417
    :cond_6
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$3400(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2418
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$1100(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 2419
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$5900(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/tv/TvInputHardwareManager;->getHardwareList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/tv/TvInputHardwareInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2421
    .local v5, "hardware":Landroid/media/tv/TvInputHardwareInfo;
    :try_start_3
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2100(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/media/tv/ITvInputService;->notifyHardwareAdded(Landroid/media/tv/TvInputHardwareInfo;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2424
    goto :goto_5

    .line 2422
    :catch_1
    move-exception v6

    .line 2423
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v7, "TvInputManagerService"

    const-string v8, "error in notifyHardwareAdded"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2425
    .end local v5    # "hardware":Landroid/media/tv/TvInputHardwareInfo;
    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_5
    goto :goto_4

    .line 2426
    :cond_7
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$5900(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/tv/TvInputHardwareManager;->getHdmiDeviceList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/hdmi/HdmiDeviceInfo;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2428
    .local v5, "device":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :try_start_5
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2100(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/media/tv/ITvInputService;->notifyHdmiDeviceAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2431
    goto :goto_7

    .line 2429
    :catch_2
    move-exception v6

    .line 2430
    .restart local v6    # "e":Landroid/os/RemoteException;
    :try_start_6
    const-string v7, "TvInputManagerService"

    const-string v8, "error in notifyHdmiDeviceAdded"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2432
    .end local v5    # "device":Landroid/hardware/hdmi/HdmiDeviceInfo;
    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_7
    goto :goto_6

    .line 2434
    .end local v1    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    .end local v2    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .end local v3    # "tokensToBeRemoved":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :cond_8
    monitor-exit v0

    .line 2435
    return-void

    .line 2434
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 6
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 2442
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2446
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2447
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget v2, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/server/tv/TvInputManagerService;->access$4300(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v1

    .line 2448
    .local v1, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mComponent:Landroid/content/ComponentName;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 2449
    .local v2, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    if-eqz v2, :cond_0

    .line 2450
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$3302(Lcom/android/server/tv/TvInputManagerService$ServiceState;Z)Z

    .line 2451
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$3502(Lcom/android/server/tv/TvInputManagerService$ServiceState;Z)Z

    .line 2452
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2102(Lcom/android/server/tv/TvInputManagerService$ServiceState;Landroid/media/tv/ITvInputService;)Landroid/media/tv/ITvInputService;

    .line 2453
    invoke-static {v2, v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2002(Lcom/android/server/tv/TvInputManagerService$ServiceState;Lcom/android/server/tv/TvInputManagerService$ServiceCallback;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    .line 2455
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget v5, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mUserId:I

    invoke-static {v4, v2, v3, v5}, Lcom/android/server/tv/TvInputManagerService;->access$7200(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$ServiceState;Ljava/lang/String;I)V

    .line 2457
    .end local v1    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    .end local v2    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    :cond_0
    monitor-exit v0

    .line 2458
    return-void

    .line 2457
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2443
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mismatched ComponentName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (expected), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (actual)."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
