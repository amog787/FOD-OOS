.class public Lcom/android/server/pm/UserManagerService$LifeCycle;
.super Lcom/android/server/SystemService;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/UserManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LifeCycle"
.end annotation


# instance fields
.field private mUms:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 555
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 556
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .line 566
    const/16 v0, 0x226

    if-ne p1, v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->cleanupPartialUsers()V

    .line 569
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$300(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->cleanupPreCreatedUsers()V

    .line 573
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 560
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    .line 561
    const-string/jumbo v1, "user"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/UserManagerService$LifeCycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 562
    return-void
.end method

.method public onStartUser(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 577
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$400(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 578
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1, p1}, Lcom/android/server/pm/UserManagerService;->access$500(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    .line 579
    .local v1, "user":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v1, :cond_0

    .line 580
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->startRealtime:J

    .line 582
    .end local v1    # "user":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_0
    monitor-exit v0

    .line 583
    return-void

    .line 582
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onStopUser(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 597
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$400(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 598
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1, p1}, Lcom/android/server/pm/UserManagerService;->access$500(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    .line 599
    .local v1, "user":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v1, :cond_0

    .line 600
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->startRealtime:J

    .line 601
    iput-wide v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->unlockRealtime:J

    .line 603
    .end local v1    # "user":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_0
    monitor-exit v0

    .line 604
    return-void

    .line 603
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onUnlockUser(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 587
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$400(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 588
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1, p1}, Lcom/android/server/pm/UserManagerService;->access$500(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    .line 589
    .local v1, "user":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v1, :cond_0

    .line 590
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->unlockRealtime:J

    .line 592
    .end local v1    # "user":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_0
    monitor-exit v0

    .line 593
    return-void

    .line 592
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
