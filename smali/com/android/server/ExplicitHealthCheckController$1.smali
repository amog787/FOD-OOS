.class Lcom/android/server/ExplicitHealthCheckController$1;
.super Ljava/lang/Object;
.source "ExplicitHealthCheckController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ExplicitHealthCheckController;->bindService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ExplicitHealthCheckController;


# direct methods
.method constructor <init>(Lcom/android/server/ExplicitHealthCheckController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/ExplicitHealthCheckController;

    .line 311
    iput-object p1, p0, Lcom/android/server/ExplicitHealthCheckController$1;->this$0:Lcom/android/server/ExplicitHealthCheckController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Explicit health check service binding is dead. Rebind: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExplicitHealthCheckController"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController$1;->this$0:Lcom/android/server/ExplicitHealthCheckController;

    invoke-static {v0}, Lcom/android/server/ExplicitHealthCheckController;->access$300(Lcom/android/server/ExplicitHealthCheckController;)V

    .line 335
    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController$1;->this$0:Lcom/android/server/ExplicitHealthCheckController;

    invoke-static {v0}, Lcom/android/server/ExplicitHealthCheckController;->access$400(Lcom/android/server/ExplicitHealthCheckController;)V

    .line 336
    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Explicit health check service binding is null?? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExplicitHealthCheckController"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Explicit health check service is connected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExplicitHealthCheckController"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController$1;->this$0:Lcom/android/server/ExplicitHealthCheckController;

    invoke-static {v0, p2}, Lcom/android/server/ExplicitHealthCheckController;->access$000(Lcom/android/server/ExplicitHealthCheckController;Landroid/os/IBinder;)V

    .line 316
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Explicit health check service is disconnected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExplicitHealthCheckController"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController$1;->this$0:Lcom/android/server/ExplicitHealthCheckController;

    invoke-static {v0}, Lcom/android/server/ExplicitHealthCheckController;->access$100(Lcom/android/server/ExplicitHealthCheckController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 325
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ExplicitHealthCheckController$1;->this$0:Lcom/android/server/ExplicitHealthCheckController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/ExplicitHealthCheckController;->access$202(Lcom/android/server/ExplicitHealthCheckController;Landroid/service/watchdog/IExplicitHealthCheckService;)Landroid/service/watchdog/IExplicitHealthCheckService;

    .line 326
    monitor-exit v0

    .line 327
    return-void

    .line 326
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
