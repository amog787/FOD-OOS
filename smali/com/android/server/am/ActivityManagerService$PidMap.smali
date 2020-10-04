.class final Lcom/android/server/am/ActivityManagerService$PidMap;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PidMap"
.end annotation


# instance fields
.field private final mPidMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;

    .line 877
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 878
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method get(I)Lcom/android/server/am/ProcessRecord;
    .locals 1
    .param p1, "pid"    # I

    .line 933
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method indexOfKey(I)I
    .locals 1
    .param p1, "key"    # I

    .line 949
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    return v0
.end method

.method keyAt(I)I
    .locals 1
    .param p1, "index"    # I

    .line 945
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    return v0
.end method

.method put(Lcom/android/server/am/ProcessRecord;)V
    .locals 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 886
    monitor-enter p0

    .line 887
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 888
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 889
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onProcessMapped(ILcom/android/server/wm/WindowProcessController;)V

    .line 890
    return-void

    .line 888
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method remove(Lcom/android/server/am/ProcessRecord;)V
    .locals 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 898
    const/4 v0, 0x0

    .line 899
    .local v0, "removed":Z
    monitor-enter p0

    .line 900
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 901
    .local v1, "existingApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_0

    iget-wide v2, v1, Lcom/android/server/am/ProcessRecord;->startSeq:J

    iget-wide v4, p1, Lcom/android/server/am/ProcessRecord;->startSeq:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 902
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 903
    const/4 v0, 0x1

    .line 905
    .end local v1    # "existingApp":Lcom/android/server/am/ProcessRecord;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 906
    if-eqz v0, :cond_1

    .line 907
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onProcessUnMapped(I)V

    .line 909
    :cond_1
    return-void

    .line 905
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method removeIfNoThread(Lcom/android/server/am/ProcessRecord;)Z
    .locals 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 917
    const/4 v0, 0x0

    .line 918
    .local v0, "removed":Z
    monitor-enter p0

    .line 919
    :try_start_0
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    .line 920
    .local v1, "existingApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_0

    iget-wide v2, v1, Lcom/android/server/am/ProcessRecord;->startSeq:J

    iget-wide v4, p1, Lcom/android/server/am/ProcessRecord;->startSeq:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v2, :cond_0

    .line 922
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 923
    const/4 v0, 0x1

    .line 925
    .end local v1    # "existingApp":Lcom/android/server/am/ProcessRecord;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 926
    if-eqz v0, :cond_1

    .line 927
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onProcessUnMapped(I)V

    .line 929
    :cond_1
    return v0

    .line 925
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method size()I
    .locals 1

    .line 937
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method valueAt(I)Lcom/android/server/am/ProcessRecord;
    .locals 1
    .param p1, "index"    # I

    .line 941
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method
