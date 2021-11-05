.class Lcom/android/server/utils/ManagedApplicationService$1;
.super Ljava/lang/Object;
.source "ManagedApplicationService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/utils/ManagedApplicationService;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/utils/ManagedApplicationService;


# direct methods
.method constructor <init>(Lcom/android/server/utils/ManagedApplicationService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/utils/ManagedApplicationService;

    .line 310
    iput-object p1, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onBindingDied$0$ManagedApplicationService$1(J)V
    .locals 4
    .param p1, "timestamp"    # J

    .line 320
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v0}, Lcom/android/server/utils/ManagedApplicationService;->access$1000(Lcom/android/server/utils/ManagedApplicationService;)Lcom/android/server/utils/ManagedApplicationService$EventCallback;

    move-result-object v0

    new-instance v1, Lcom/android/server/utils/ManagedApplicationService$LogEvent;

    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v2}, Lcom/android/server/utils/ManagedApplicationService;->access$900(Lcom/android/server/utils/ManagedApplicationService;)Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, p1, p2, v2, v3}, Lcom/android/server/utils/ManagedApplicationService$LogEvent;-><init>(JLandroid/content/ComponentName;I)V

    invoke-interface {v0, v1}, Lcom/android/server/utils/ManagedApplicationService$EventCallback;->onServiceEvent(Lcom/android/server/utils/ManagedApplicationService$LogEvent;)V

    .line 322
    return-void
.end method

.method public synthetic lambda$onServiceConnected$1$ManagedApplicationService$1(J)V
    .locals 4
    .param p1, "timestamp"    # J

    .line 341
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v0}, Lcom/android/server/utils/ManagedApplicationService;->access$1000(Lcom/android/server/utils/ManagedApplicationService;)Lcom/android/server/utils/ManagedApplicationService$EventCallback;

    move-result-object v0

    new-instance v1, Lcom/android/server/utils/ManagedApplicationService$LogEvent;

    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v2}, Lcom/android/server/utils/ManagedApplicationService;->access$900(Lcom/android/server/utils/ManagedApplicationService;)Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, p1, p2, v2, v3}, Lcom/android/server/utils/ManagedApplicationService$LogEvent;-><init>(JLandroid/content/ComponentName;I)V

    invoke-interface {v0, v1}, Lcom/android/server/utils/ManagedApplicationService$EventCallback;->onServiceEvent(Lcom/android/server/utils/ManagedApplicationService$LogEvent;)V

    .line 343
    return-void
.end method

.method public synthetic lambda$onServiceDisconnected$2$ManagedApplicationService$1(J)V
    .locals 4
    .param p1, "timestamp"    # J

    .line 382
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v0}, Lcom/android/server/utils/ManagedApplicationService;->access$1000(Lcom/android/server/utils/ManagedApplicationService;)Lcom/android/server/utils/ManagedApplicationService$EventCallback;

    move-result-object v0

    new-instance v1, Lcom/android/server/utils/ManagedApplicationService$LogEvent;

    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v2}, Lcom/android/server/utils/ManagedApplicationService;->access$900(Lcom/android/server/utils/ManagedApplicationService;)Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, p1, p2, v2, v3}, Lcom/android/server/utils/ManagedApplicationService$LogEvent;-><init>(JLandroid/content/ComponentName;I)V

    invoke-interface {v0, v1}, Lcom/android/server/utils/ManagedApplicationService$EventCallback;->onServiceEvent(Lcom/android/server/utils/ManagedApplicationService$LogEvent;)V

    .line 384
    return-void
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 313
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 314
    .local v0, "timestamp":J
    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v2}, Lcom/android/server/utils/ManagedApplicationService;->access$000(Lcom/android/server/utils/ManagedApplicationService;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service binding died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v2}, Lcom/android/server/utils/ManagedApplicationService;->access$100(Lcom/android/server/utils/ManagedApplicationService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 316
    :try_start_0
    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v3}, Lcom/android/server/utils/ManagedApplicationService;->access$200(Lcom/android/server/utils/ManagedApplicationService;)Landroid/content/ServiceConnection;

    move-result-object v3

    if-eq v3, p0, :cond_0

    .line 317
    monitor-exit v2

    return-void

    .line 319
    :cond_0
    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v3}, Lcom/android/server/utils/ManagedApplicationService;->access$300(Lcom/android/server/utils/ManagedApplicationService;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/server/utils/-$$Lambda$ManagedApplicationService$1$u8NdnzWjrb-KhRpDHf8fTyh3KVU;

    invoke-direct {v4, p0, v0, v1}, Lcom/android/server/utils/-$$Lambda$ManagedApplicationService$1$u8NdnzWjrb-KhRpDHf8fTyh3KVU;-><init>(Lcom/android/server/utils/ManagedApplicationService$1;J)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 324
    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/utils/ManagedApplicationService;->access$402(Lcom/android/server/utils/ManagedApplicationService;Landroid/os/IInterface;)Landroid/os/IInterface;

    .line 325
    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v3}, Lcom/android/server/utils/ManagedApplicationService;->access$500(Lcom/android/server/utils/ManagedApplicationService;)V

    .line 326
    monitor-exit v2

    .line 327
    return-void

    .line 326
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "iBinder"    # Landroid/os/IBinder;

    .line 331
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 332
    .local v0, "timestamp":J
    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v2}, Lcom/android/server/utils/ManagedApplicationService;->access$000(Lcom/android/server/utils/ManagedApplicationService;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service connected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const/4 v2, 0x0

    .line 334
    .local v2, "iface":Landroid/os/IInterface;
    const/4 v3, 0x0

    .line 335
    .local v3, "pendingEvent":Lcom/android/server/utils/ManagedApplicationService$PendingEvent;
    iget-object v4, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v4}, Lcom/android/server/utils/ManagedApplicationService;->access$100(Lcom/android/server/utils/ManagedApplicationService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 336
    :try_start_0
    iget-object v5, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v5}, Lcom/android/server/utils/ManagedApplicationService;->access$200(Lcom/android/server/utils/ManagedApplicationService;)Landroid/content/ServiceConnection;

    move-result-object v5

    if-eq v5, p0, :cond_0

    .line 338
    monitor-exit v4

    return-void

    .line 340
    :cond_0
    iget-object v5, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v5}, Lcom/android/server/utils/ManagedApplicationService;->access$300(Lcom/android/server/utils/ManagedApplicationService;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/server/utils/-$$Lambda$ManagedApplicationService$1$IyJ0KZQns9OXjnHsop6Gzx7uhvA;

    invoke-direct {v6, p0, v0, v1}, Lcom/android/server/utils/-$$Lambda$ManagedApplicationService$1$IyJ0KZQns9OXjnHsop6Gzx7uhvA;-><init>(Lcom/android/server/utils/ManagedApplicationService$1;J)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 345
    iget-object v5, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v5}, Lcom/android/server/utils/ManagedApplicationService;->access$600(Lcom/android/server/utils/ManagedApplicationService;)V

    .line 347
    iget-object v5, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/server/utils/ManagedApplicationService;->access$402(Lcom/android/server/utils/ManagedApplicationService;Landroid/os/IInterface;)Landroid/os/IInterface;

    .line 348
    iget-object v5, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v5}, Lcom/android/server/utils/ManagedApplicationService;->access$700(Lcom/android/server/utils/ManagedApplicationService;)Lcom/android/server/utils/ManagedApplicationService$BinderChecker;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 349
    iget-object v5, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    iget-object v7, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v7}, Lcom/android/server/utils/ManagedApplicationService;->access$700(Lcom/android/server/utils/ManagedApplicationService;)Lcom/android/server/utils/ManagedApplicationService$BinderChecker;

    move-result-object v7

    invoke-interface {v7, p2}, Lcom/android/server/utils/ManagedApplicationService$BinderChecker;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/utils/ManagedApplicationService;->access$402(Lcom/android/server/utils/ManagedApplicationService;Landroid/os/IInterface;)Landroid/os/IInterface;

    .line 350
    iget-object v5, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v5}, Lcom/android/server/utils/ManagedApplicationService;->access$700(Lcom/android/server/utils/ManagedApplicationService;)Lcom/android/server/utils/ManagedApplicationService$BinderChecker;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v7}, Lcom/android/server/utils/ManagedApplicationService;->access$400(Lcom/android/server/utils/ManagedApplicationService;)Landroid/os/IInterface;

    move-result-object v7

    invoke-interface {v5, v7}, Lcom/android/server/utils/ManagedApplicationService$BinderChecker;->checkType(Landroid/os/IInterface;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 352
    iget-object v5, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v5, v6}, Lcom/android/server/utils/ManagedApplicationService;->access$402(Lcom/android/server/utils/ManagedApplicationService;Landroid/os/IInterface;)Landroid/os/IInterface;

    .line 353
    iget-object v5, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v5}, Lcom/android/server/utils/ManagedApplicationService;->access$000(Lcom/android/server/utils/ManagedApplicationService;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid binder from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v5, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v5}, Lcom/android/server/utils/ManagedApplicationService;->access$500(Lcom/android/server/utils/ManagedApplicationService;)V

    .line 355
    monitor-exit v4

    return-void

    .line 357
    :cond_1
    iget-object v5, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v5}, Lcom/android/server/utils/ManagedApplicationService;->access$400(Lcom/android/server/utils/ManagedApplicationService;)Landroid/os/IInterface;

    move-result-object v5

    move-object v2, v5

    .line 358
    iget-object v5, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v5}, Lcom/android/server/utils/ManagedApplicationService;->access$800(Lcom/android/server/utils/ManagedApplicationService;)Lcom/android/server/utils/ManagedApplicationService$PendingEvent;

    move-result-object v5

    move-object v3, v5

    .line 359
    iget-object v5, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v5, v6}, Lcom/android/server/utils/ManagedApplicationService;->access$802(Lcom/android/server/utils/ManagedApplicationService;Lcom/android/server/utils/ManagedApplicationService$PendingEvent;)Lcom/android/server/utils/ManagedApplicationService$PendingEvent;

    .line 361
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    .line 364
    :try_start_1
    invoke-interface {v3, v2}, Lcom/android/server/utils/ManagedApplicationService$PendingEvent;->runEvent(Landroid/os/IInterface;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 368
    goto :goto_0

    .line 365
    :catch_0
    move-exception v4

    .line 366
    .local v4, "ex":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v5}, Lcom/android/server/utils/ManagedApplicationService;->access$000(Lcom/android/server/utils/ManagedApplicationService;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Received exception from user service: "

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 367
    iget-object v5, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v5}, Lcom/android/server/utils/ManagedApplicationService;->access$500(Lcom/android/server/utils/ManagedApplicationService;)V

    .line 370
    .end local v4    # "ex":Ljava/lang/Exception;
    :cond_3
    :goto_0
    return-void

    .line 361
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 374
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 375
    .local v0, "timestamp":J
    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v2}, Lcom/android/server/utils/ManagedApplicationService;->access$000(Lcom/android/server/utils/ManagedApplicationService;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service disconnected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v2}, Lcom/android/server/utils/ManagedApplicationService;->access$100(Lcom/android/server/utils/ManagedApplicationService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 377
    :try_start_0
    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v3}, Lcom/android/server/utils/ManagedApplicationService;->access$200(Lcom/android/server/utils/ManagedApplicationService;)Landroid/content/ServiceConnection;

    move-result-object v3

    if-eq v3, p0, :cond_0

    .line 378
    monitor-exit v2

    return-void

    .line 381
    :cond_0
    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v3}, Lcom/android/server/utils/ManagedApplicationService;->access$300(Lcom/android/server/utils/ManagedApplicationService;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/server/utils/-$$Lambda$ManagedApplicationService$1$iBg5-L6PAieAfuWNXxIPqvSlAAg;

    invoke-direct {v4, p0, v0, v1}, Lcom/android/server/utils/-$$Lambda$ManagedApplicationService$1$iBg5-L6PAieAfuWNXxIPqvSlAAg;-><init>(Lcom/android/server/utils/ManagedApplicationService$1;J)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 386
    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/utils/ManagedApplicationService;->access$402(Lcom/android/server/utils/ManagedApplicationService;Landroid/os/IInterface;)Landroid/os/IInterface;

    .line 387
    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v3}, Lcom/android/server/utils/ManagedApplicationService;->access$500(Lcom/android/server/utils/ManagedApplicationService;)V

    .line 388
    monitor-exit v2

    .line 389
    return-void

    .line 388
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
