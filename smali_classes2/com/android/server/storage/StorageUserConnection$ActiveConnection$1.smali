.class Lcom/android/server/storage/StorageUserConnection$ActiveConnection$1;
.super Ljava/lang/Object;
.source "StorageUserConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->bind()Ljava/util/concurrent/CountDownLatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/storage/StorageUserConnection$ActiveConnection;


# direct methods
.method constructor <init>(Lcom/android/server/storage/StorageUserConnection$ActiveConnection;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/storage/StorageUserConnection$ActiveConnection;

    .line 392
    iput-object p1, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$1;->this$1:Lcom/android/server/storage/StorageUserConnection$ActiveConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private handleConnection(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "service"    # Landroid/os/IBinder;

    .line 422
    iget-object v0, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$1;->this$1:Lcom/android/server/storage/StorageUserConnection$ActiveConnection;

    iget-object v0, v0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    invoke-static {v0}, Lcom/android/server/storage/StorageUserConnection;->access$100(Lcom/android/server/storage/StorageUserConnection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 423
    :try_start_0
    iget-object v1, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$1;->this$1:Lcom/android/server/storage/StorageUserConnection$ActiveConnection;

    invoke-static {v1}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->access$600(Lcom/android/server/storage/StorageUserConnection$ActiveConnection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 424
    iget-object v1, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$1;->this$1:Lcom/android/server/storage/StorageUserConnection$ActiveConnection;

    invoke-static {p1}, Landroid/service/storage/IExternalStorageService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/storage/IExternalStorageService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->access$702(Lcom/android/server/storage/StorageUserConnection$ActiveConnection;Landroid/service/storage/IExternalStorageService;)Landroid/service/storage/IExternalStorageService;

    .line 425
    iget-object v1, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$1;->this$1:Lcom/android/server/storage/StorageUserConnection$ActiveConnection;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->access$602(Lcom/android/server/storage/StorageUserConnection$ActiveConnection;Z)Z

    .line 426
    iget-object v1, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$1;->this$1:Lcom/android/server/storage/StorageUserConnection$ActiveConnection;

    invoke-static {v1}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->access$800(Lcom/android/server/storage/StorageUserConnection$ActiveConnection;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 428
    monitor-exit v0

    return-void

    .line 430
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection closed to the ExternalStorageService for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$1;->this$1:Lcom/android/server/storage/StorageUserConnection$ActiveConnection;

    iget-object v1, v1, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    .line 432
    invoke-static {v1}, Lcom/android/server/storage/StorageUserConnection;->access$200(Lcom/android/server/storage/StorageUserConnection;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 431
    const-string v1, "StorageUserConnection"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    return-void

    .line 430
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private handleDisconnection()V
    .locals 1

    .line 440
    iget-object v0, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$1;->this$1:Lcom/android/server/storage/StorageUserConnection$ActiveConnection;

    invoke-virtual {v0}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->close()V

    .line 441
    iget-object v0, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$1;->this$1:Lcom/android/server/storage/StorageUserConnection$ActiveConnection;

    iget-object v0, v0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    invoke-virtual {v0}, Lcom/android/server/storage/StorageUserConnection;->resetUserSessions()V

    .line 442
    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] died. User ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$1;->this$1:Lcom/android/server/storage/StorageUserConnection$ActiveConnection;

    iget-object v1, v1, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    invoke-static {v1}, Lcom/android/server/storage/StorageUserConnection;->access$200(Lcom/android/server/storage/StorageUserConnection;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageUserConnection"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-direct {p0}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$1;->handleDisconnection()V

    .line 414
    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] is null. User ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$1;->this$1:Lcom/android/server/storage/StorageUserConnection$ActiveConnection;

    iget-object v1, v1, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    invoke-static {v1}, Lcom/android/server/storage/StorageUserConnection;->access$200(Lcom/android/server/storage/StorageUserConnection;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageUserConnection"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] connected. User ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$1;->this$1:Lcom/android/server/storage/StorageUserConnection$ActiveConnection;

    iget-object v1, v1, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    invoke-static {v1}, Lcom/android/server/storage/StorageUserConnection;->access$200(Lcom/android/server/storage/StorageUserConnection;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageUserConnection"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-direct {p0, p2}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$1;->handleConnection(Landroid/os/IBinder;)V

    .line 397
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] disconnected. User ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$1;->this$1:Lcom/android/server/storage/StorageUserConnection$ActiveConnection;

    iget-object v1, v1, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    invoke-static {v1}, Lcom/android/server/storage/StorageUserConnection;->access$200(Lcom/android/server/storage/StorageUserConnection;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageUserConnection"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-direct {p0}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$1;->handleDisconnection()V

    .line 406
    return-void
.end method
