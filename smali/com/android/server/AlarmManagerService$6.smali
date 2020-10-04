.class Lcom/android/server/AlarmManagerService$6;
.super Lcom/android/server/AppStateTracker$Listener;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/AlarmManagerService;

    .line 4796
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$6;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Lcom/android/server/AppStateTracker$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidForeground(IZ)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "foreground"    # Z

    .line 4820
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$6;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4821
    if-eqz p2, :cond_0

    .line 4822
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$6;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 4827
    :cond_0
    monitor-exit v0

    .line 4828
    return-void

    .line 4827
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unblockAlarmsForUid(I)V
    .locals 3
    .param p1, "uid"    # I

    .line 4806
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$6;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4807
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$6;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/AlarmManagerService;->sendPendingBackgroundAlarmsLocked(ILjava/lang/String;)V

    .line 4808
    monitor-exit v0

    .line 4809
    return-void

    .line 4808
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unblockAlarmsForUidPackage(ILjava/lang/String;)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 4813
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$6;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4814
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$6;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/AlarmManagerService;->sendPendingBackgroundAlarmsLocked(ILjava/lang/String;)V

    .line 4815
    monitor-exit v0

    .line 4816
    return-void

    .line 4815
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unblockAllUnrestrictedAlarms()V
    .locals 2

    .line 4799
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$6;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4800
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$6;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService;->sendAllUnrestrictedPendingBackgroundAlarmsLocked()V

    .line 4801
    monitor-exit v0

    .line 4802
    return-void

    .line 4801
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
