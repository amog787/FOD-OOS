.class Lcom/android/server/job/JobSchedulerService$ConstantsObserver;
.super Landroid/database/ContentObserver;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConstantsObserver"
.end annotation


# instance fields
.field private mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 342
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 343
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 344
    return-void
.end method

.method private updateConstants()V
    .locals 4

    .line 359
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 361
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "job_scheduler_constants"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/job/JobSchedulerService$Constants;->updateConstantsLocked(Ljava/lang/String;)V

    .line 363
    const/4 v1, 0x0

    .local v1, "controller":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 364
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/StateController;

    .line 365
    .local v2, "sc":Lcom/android/server/job/controllers/StateController;
    invoke-virtual {v2}, Lcom/android/server/job/controllers/StateController;->onConstantsUpdatedLocked()V

    .line 363
    .end local v2    # "sc":Lcom/android/server/job/controllers/StateController;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 367
    .end local v1    # "controller":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService;->updateQuotaTracker()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    goto :goto_1

    .line 373
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 368
    :catch_0
    move-exception v1

    .line 371
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string v2, "JobScheduler"

    const-string v3, "Bad jobscheduler settings"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 373
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    monitor-exit v0

    .line 374
    return-void

    .line 373
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 355
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->updateConstants()V

    .line 356
    return-void
.end method

.method public start(Landroid/content/ContentResolver;)V
    .locals 2
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .line 347
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 348
    const-string/jumbo v0, "job_scheduler_constants"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 350
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->updateConstants()V

    .line 351
    return-void
.end method
