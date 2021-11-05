.class Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;
.super Ljava/lang/Object;
.source "RulesManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/timezone/RulesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UninstallRunnable"
.end annotation


# instance fields
.field private final mCallback:Landroid/app/timezone/ICallback;

.field private final mCheckToken:Lcom/android/server/timezone/CheckToken;

.field final synthetic this$0:Lcom/android/server/timezone/RulesManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/timezone/RulesManagerService;Lcom/android/server/timezone/CheckToken;Landroid/app/timezone/ICallback;)V
    .locals 0
    .param p2, "checkToken"    # Lcom/android/server/timezone/CheckToken;
    .param p3, "callback"    # Landroid/app/timezone/ICallback;

    .line 363
    iput-object p1, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    iput-object p2, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    .line 365
    iput-object p3, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->mCallback:Landroid/app/timezone/ICallback;

    .line 366
    return-void
.end method

.method private sendUninstallNotificationIntentIfRequired(I)V
    .locals 1
    .param p1, "uninstallResult"    # I

    .line 403
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v0}, Lcom/android/server/timezone/RulesManagerService;->access$600(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/server/timezone/RulesManagerIntentHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/timezone/RulesManagerIntentHelper;->sendTimeZoneOperationUnstaged()V

    .line 409
    goto :goto_0

    .line 405
    :cond_1
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v0}, Lcom/android/server/timezone/RulesManagerService;->access$600(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/server/timezone/RulesManagerIntentHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/timezone/RulesManagerIntentHelper;->sendTimeZoneOperationStaged()V

    .line 406
    nop

    .line 414
    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 370
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    invoke-static {v0}, Lcom/android/server/timezone/RulesManagerService;->access$100(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeTimezoneUninstallStarted(Ljava/lang/String;)V

    .line 371
    const/4 v0, 0x0

    .line 373
    .local v0, "packageTrackerStatus":Z
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v3}, Lcom/android/server/timezone/RulesManagerService;->access$200(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stageUninstall()I

    move-result v3

    .line 376
    .local v3, "uninstallResult":I
    invoke-direct {p0, v3}, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->sendUninstallNotificationIntentIfRequired(I)V

    .line 378
    if-eqz v3, :cond_1

    if-ne v3, v1, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v1

    :goto_1
    move v0, v4

    .line 385
    if-eqz v0, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v1

    .line 386
    .local v4, "callbackResultCode":I
    :goto_2
    iget-object v5, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    .line 387
    invoke-static {v5}, Lcom/android/server/timezone/RulesManagerService;->access$100(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 386
    invoke-static {v5, v4}, Lcom/android/server/EventLogTags;->writeTimezoneUninstallComplete(Ljava/lang/String;I)V

    .line 388
    iget-object v5, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    iget-object v6, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->mCallback:Landroid/app/timezone/ICallback;

    invoke-static {v5, v6, v4}, Lcom/android/server/timezone/RulesManagerService;->access$300(Lcom/android/server/timezone/RulesManagerService;Landroid/app/timezone/ICallback;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v3    # "uninstallResult":I
    .end local v4    # "callbackResultCode":I
    goto :goto_3

    .line 396
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 389
    :catch_0
    move-exception v3

    .line 390
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v4, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    .line 391
    invoke-static {v4}, Lcom/android/server/timezone/RulesManagerService;->access$100(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 390
    invoke-static {v4, v1}, Lcom/android/server/EventLogTags;->writeTimezoneUninstallComplete(Ljava/lang/String;I)V

    .line 392
    const-string v4, "timezone.RulesManagerService"

    const-string v5, "Failed to uninstall distro."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 393
    iget-object v4, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    iget-object v5, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->mCallback:Landroid/app/timezone/ICallback;

    invoke-static {v4, v5, v1}, Lcom/android/server/timezone/RulesManagerService;->access$300(Lcom/android/server/timezone/RulesManagerService;Landroid/app/timezone/ICallback;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 396
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_3
    iget-object v1, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v1}, Lcom/android/server/timezone/RulesManagerService;->access$400(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/server/timezone/PackageTracker;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    invoke-virtual {v1, v3, v0}, Lcom/android/server/timezone/PackageTracker;->recordCheckResult(Lcom/android/server/timezone/CheckToken;Z)V

    .line 398
    iget-object v1, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v1}, Lcom/android/server/timezone/RulesManagerService;->access$500(Lcom/android/server/timezone/RulesManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 399
    nop

    .line 400
    return-void

    .line 396
    :goto_4
    iget-object v3, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v3}, Lcom/android/server/timezone/RulesManagerService;->access$400(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/server/timezone/PackageTracker;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    invoke-virtual {v3, v4, v0}, Lcom/android/server/timezone/PackageTracker;->recordCheckResult(Lcom/android/server/timezone/CheckToken;Z)V

    .line 398
    iget-object v3, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v3}, Lcom/android/server/timezone/RulesManagerService;->access$500(Lcom/android/server/timezone/RulesManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 399
    throw v1
.end method
