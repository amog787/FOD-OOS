.class final Lcom/android/server/am/ActivityManagerService$ProcStatsRunnable;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ProcStatsRunnable"
.end annotation


# instance fields
.field private final mProcessStats:Lcom/android/server/am/ProcessStatsService;

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessStatsService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "mProcessStats"    # Lcom/android/server/am/ProcessStatsService;

    .line 19951
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19952
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$ProcStatsRunnable;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 19953
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$ProcStatsRunnable;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 19954
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 19957
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ProcStatsRunnable;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 19958
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$ProcStatsRunnable;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStatsService;->writeStateAsyncLocked()V

    .line 19959
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 19960
    return-void

    .line 19959
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
