.class final Lcom/android/server/am/ActivityManagerService$PidMap;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
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


# direct methods
.method constructor <init>()V
    .locals 1

    .line 984
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 985
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method doAddInternal(Lcom/android/server/am/ProcessRecord;)V
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 1008
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1009
    return-void
.end method

.method doRemoveIfNoThreadInternal(Lcom/android/server/am/ProcessRecord;)Z
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 1021
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1024
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->doRemoveInternal(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    return v0

    .line 1022
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method doRemoveInternal(Lcom/android/server/am/ProcessRecord;)Z
    .locals 5
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 1012
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 1013
    .local v0, "existingApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_0

    iget-wide v1, v0, Lcom/android/server/am/ProcessRecord;->startSeq:J

    iget-wide v3, p1, Lcom/android/server/am/ProcessRecord;->startSeq:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 1014
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 1015
    const/4 v1, 0x1

    return v1

    .line 1017
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method get(I)Lcom/android/server/am/ProcessRecord;
    .locals 1
    .param p1, "pid"    # I

    .line 988
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method indexOfKey(I)I
    .locals 1
    .param p1, "key"    # I

    .line 1004
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    return v0
.end method

.method keyAt(I)I
    .locals 1
    .param p1, "index"    # I

    .line 1000
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    return v0
.end method

.method size()I
    .locals 1

    .line 992
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method valueAt(I)Lcom/android/server/am/ProcessRecord;
    .locals 1
    .param p1, "index"    # I

    .line 996
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method
