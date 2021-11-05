.class Lcom/android/server/AlarmManagerService$7;
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

    .line 4836
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$7;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Lcom/android/server/AppStateTracker$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidForeground(IZ)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "foreground"    # Z

    .line 4860
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$7;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4861
    if-eqz p2, :cond_0

    .line 4862
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$7;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 4867
    :cond_0
    monitor-exit v0

    .line 4868
    return-void

    .line 4867
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

    .line 4846
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$7;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4847
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$7;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/AlarmManagerService;->sendPendingBackgroundAlarmsLocked(ILjava/lang/String;)V

    .line 4848
    monitor-exit v0

    .line 4849
    return-void

    .line 4848
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

    .line 4853
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$7;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4854
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$7;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/AlarmManagerService;->sendPendingBackgroundAlarmsLocked(ILjava/lang/String;)V

    .line 4855
    monitor-exit v0

    .line 4856
    return-void

    .line 4855
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unblockAllUnrestrictedAlarms()V
    .locals 2

    .line 4839
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$7;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4840
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$7;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService;->sendAllUnrestrictedPendingBackgroundAlarmsLocked()V

    .line 4841
    monitor-exit v0

    .line 4842
    return-void

    .line 4841
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
