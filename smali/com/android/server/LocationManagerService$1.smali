.class Lcom/android/server/LocationManagerService$1;
.super Landroid/app/AppOpsManager$OnOpChangedInternalListener;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LocationManagerService;->initializeLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/LocationManagerService;

    .line 424
    iput-object p1, p0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Landroid/app/AppOpsManager$OnOpChangedInternalListener;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onOpChanged$0$LocationManagerService$1()V
    .locals 2

    .line 429
    iget-object v0, p0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$100(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 430
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$500(Lcom/android/server/LocationManagerService;)V

    .line 431
    monitor-exit v0

    .line 432
    return-void

    .line 431
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onOpChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 428
    iget-object v0, p0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$400(Lcom/android/server/LocationManagerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/-$$Lambda$LocationManagerService$1$HAAnoF9DI9FvCHK_geH89--2z2I;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$LocationManagerService$1$HAAnoF9DI9FvCHK_geH89--2z2I;-><init>(Lcom/android/server/LocationManagerService$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 433
    return-void
.end method
