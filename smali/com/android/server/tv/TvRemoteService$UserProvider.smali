.class final Lcom/android/server/tv/TvRemoteService$UserProvider;
.super Ljava/lang/Object;
.source "TvRemoteService.java"

# interfaces
.implements Lcom/android/server/tv/TvRemoteProviderWatcher$ProviderMethods;
.implements Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvRemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UserProvider"
.end annotation


# instance fields
.field private final mService:Lcom/android/server/tv/TvRemoteService;

.field final synthetic this$0:Lcom/android/server/tv/TvRemoteService;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvRemoteService;Lcom/android/server/tv/TvRemoteService;)V
    .locals 0
    .param p2, "service"    # Lcom/android/server/tv/TvRemoteService;

    .line 258
    iput-object p1, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iput-object p2, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->mService:Lcom/android/server/tv/TvRemoteService;

    .line 260
    return-void
.end method


# virtual methods
.method public addProvider(Lcom/android/server/tv/TvRemoteProviderProxy;)V
    .locals 4
    .param p1, "provider"    # Lcom/android/server/tv/TvRemoteProviderProxy;

    .line 371
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteService;->access$100(Lcom/android/server/tv/TvRemoteService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 372
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/android/server/tv/TvRemoteProviderProxy;->setProviderSink(Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;)V

    .line 373
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v1}, Lcom/android/server/tv/TvRemoteService;->access$200(Lcom/android/server/tv/TvRemoteService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    const-string v1, "TvRemoteService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    monitor-exit v0

    .line 376
    return-void

    .line 375
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearInputBridge(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/tv/TvRemoteProviderProxy;
    .param p2, "token"    # Landroid/os/IBinder;

    .line 293
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteService;->access$100(Lcom/android/server/tv/TvRemoteService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 294
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v1}, Lcom/android/server/tv/TvRemoteService;->access$200(Lcom/android/server/tv/TvRemoteService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->mService:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v1, p2}, Lcom/android/server/tv/TvRemoteService;->access$500(Lcom/android/server/tv/TvRemoteService;Landroid/os/IBinder;)V

    .line 297
    :cond_0
    monitor-exit v0

    .line 298
    return-void

    .line 297
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public closeInputBridge(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/tv/TvRemoteProviderProxy;
    .param p2, "token"    # Landroid/os/IBinder;

    .line 282
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteService;->access$100(Lcom/android/server/tv/TvRemoteService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 283
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v1}, Lcom/android/server/tv/TvRemoteService;->access$200(Lcom/android/server/tv/TvRemoteService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->mService:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v1, p2}, Lcom/android/server/tv/TvRemoteService;->access$400(Lcom/android/server/tv/TvRemoteService;Landroid/os/IBinder;)V

    .line 285
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v1}, Lcom/android/server/tv/TvRemoteService;->access$000(Lcom/android/server/tv/TvRemoteService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    :cond_0
    monitor-exit v0

    .line 288
    return-void

    .line 287
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public openInputBridge(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;Ljava/lang/String;III)V
    .locals 9
    .param p1, "provider"    # Lcom/android/server/tv/TvRemoteProviderProxy;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "maxPointers"    # I

    .line 271
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteService;->access$100(Lcom/android/server/tv/TvRemoteService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 272
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v1}, Lcom/android/server/tv/TvRemoteService;->access$200(Lcom/android/server/tv/TvRemoteService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->mService:Lcom/android/server/tv/TvRemoteService;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-static/range {v2 .. v8}, Lcom/android/server/tv/TvRemoteService;->access$300(Lcom/android/server/tv/TvRemoteService;Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;Ljava/lang/String;III)V

    .line 276
    :cond_0
    monitor-exit v0

    .line 277
    return-void

    .line 276
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeProvider(Lcom/android/server/tv/TvRemoteProviderProxy;)V
    .locals 4
    .param p1, "provider"    # Lcom/android/server/tv/TvRemoteProviderProxy;

    .line 381
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteService;->access$100(Lcom/android/server/tv/TvRemoteService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 382
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v1}, Lcom/android/server/tv/TvRemoteService;->access$200(Lcom/android/server/tv/TvRemoteService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 383
    const-string v1, "TvRemoteService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_0
    monitor-exit v0

    .line 386
    return-void

    .line 385
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendKeyDown(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;I)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/tv/TvRemoteProviderProxy;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "keyCode"    # I

    .line 314
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteService;->access$100(Lcom/android/server/tv/TvRemoteService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 315
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v1}, Lcom/android/server/tv/TvRemoteService;->access$200(Lcom/android/server/tv/TvRemoteService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->mService:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v1, p2, p3}, Lcom/android/server/tv/TvRemoteService;->access$700(Lcom/android/server/tv/TvRemoteService;Landroid/os/IBinder;I)V

    .line 318
    :cond_0
    monitor-exit v0

    .line 319
    return-void

    .line 318
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendKeyUp(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;I)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/tv/TvRemoteProviderProxy;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "keyCode"    # I

    .line 326
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteService;->access$100(Lcom/android/server/tv/TvRemoteService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 327
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v1}, Lcom/android/server/tv/TvRemoteService;->access$200(Lcom/android/server/tv/TvRemoteService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->mService:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v1, p2, p3}, Lcom/android/server/tv/TvRemoteService;->access$800(Lcom/android/server/tv/TvRemoteService;Landroid/os/IBinder;I)V

    .line 330
    :cond_0
    monitor-exit v0

    .line 331
    return-void

    .line 330
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendPointerDown(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;III)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/tv/TvRemoteProviderProxy;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pointerId"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .line 339
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteService;->access$100(Lcom/android/server/tv/TvRemoteService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 340
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v1}, Lcom/android/server/tv/TvRemoteService;->access$200(Lcom/android/server/tv/TvRemoteService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->mService:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v1, p2, p3, p4, p5}, Lcom/android/server/tv/TvRemoteService;->access$900(Lcom/android/server/tv/TvRemoteService;Landroid/os/IBinder;III)V

    .line 343
    :cond_0
    monitor-exit v0

    .line 344
    return-void

    .line 343
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendPointerSync(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/tv/TvRemoteProviderProxy;
    .param p2, "token"    # Landroid/os/IBinder;

    .line 361
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteService;->access$100(Lcom/android/server/tv/TvRemoteService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 362
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v1}, Lcom/android/server/tv/TvRemoteService;->access$200(Lcom/android/server/tv/TvRemoteService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 363
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->mService:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v1, p2}, Lcom/android/server/tv/TvRemoteService;->access$1100(Lcom/android/server/tv/TvRemoteService;Landroid/os/IBinder;)V

    .line 365
    :cond_0
    monitor-exit v0

    .line 366
    return-void

    .line 365
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendPointerUp(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;I)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/tv/TvRemoteProviderProxy;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pointerId"    # I

    .line 351
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteService;->access$100(Lcom/android/server/tv/TvRemoteService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 352
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v1}, Lcom/android/server/tv/TvRemoteService;->access$200(Lcom/android/server/tv/TvRemoteService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->mService:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v1, p2, p3}, Lcom/android/server/tv/TvRemoteService;->access$1000(Lcom/android/server/tv/TvRemoteService;Landroid/os/IBinder;I)V

    .line 355
    :cond_0
    monitor-exit v0

    .line 356
    return-void

    .line 355
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendTimeStamp(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;J)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/tv/TvRemoteProviderProxy;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "timestamp"    # J

    .line 302
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteService;->access$100(Lcom/android/server/tv/TvRemoteService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 303
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v1}, Lcom/android/server/tv/TvRemoteService;->access$200(Lcom/android/server/tv/TvRemoteService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->mService:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v1, p2, p3, p4}, Lcom/android/server/tv/TvRemoteService;->access$600(Lcom/android/server/tv/TvRemoteService;Landroid/os/IBinder;J)V

    .line 306
    :cond_0
    monitor-exit v0

    .line 307
    return-void

    .line 306
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
