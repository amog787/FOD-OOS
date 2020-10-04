.class final Lcom/android/server/job/JobSchedulerService$ThermalStatusListener;
.super Landroid/os/IThermalStatusListener$Stub;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ThermalStatusListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method private constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$ThermalStatusListener;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-direct {p0}, Landroid/os/IThermalStatusListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/JobSchedulerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/job/JobSchedulerService;
    .param p2, "x1"    # Lcom/android/server/job/JobSchedulerService$1;

    .line 336
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService$ThermalStatusListener;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    return-void
.end method


# virtual methods
.method public onStatusChange(I)V
    .locals 3
    .param p1, "status"    # I

    .line 339
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$ThermalStatusListener;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 340
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$ThermalStatusListener;->this$0:Lcom/android/server/job/JobSchedulerService;

    const/4 v2, 0x3

    if-lt p1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lcom/android/server/job/JobSchedulerService;->access$002(Lcom/android/server/job/JobSchedulerService;Z)Z

    .line 341
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$ThermalStatusListener;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged()V

    .line 343
    return-void

    .line 341
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
