.class final Lcom/android/server/am/ActiveUids;
.super Ljava/lang/Object;
.source "ActiveUids.java"


# instance fields
.field private final mActiveUids:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/UidRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mPostChangesToAtm:Z

.field private mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Z)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "postChangesToAtm"    # Z

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    .line 30
    iput-object p1, p0, Lcom/android/server/am/ActiveUids;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 31
    iput-boolean p2, p0, Lcom/android/server/am/ActiveUids;->mPostChangesToAtm:Z

    .line 32
    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 50
    iget-boolean v0, p0, Lcom/android/server/am/ActiveUids;->mPostChangesToAtm:Z

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/android/server/am/ActiveUids;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onActiveUidsCleared()V

    .line 53
    :cond_0
    return-void
.end method

.method get(I)Lcom/android/server/am/UidRecord;
    .locals 1
    .param p1, "uid"    # I

    .line 56
    iget-object v0, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/UidRecord;

    return-object v0
.end method

.method indexOfKey(I)I
    .locals 1
    .param p1, "uid"    # I

    .line 72
    iget-object v0, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    return v0
.end method

.method keyAt(I)I
    .locals 1
    .param p1, "index"    # I

    .line 68
    iget-object v0, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    return v0
.end method

.method put(ILcom/android/server/am/UidRecord;)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "value"    # Lcom/android/server/am/UidRecord;

    .line 35
    iget-object v0, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 36
    iget-boolean v0, p0, Lcom/android/server/am/ActiveUids;->mPostChangesToAtm:Z

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/android/server/am/ActiveUids;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p2}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onUidActive(II)V

    .line 39
    :cond_0
    return-void
.end method

.method remove(I)V
    .locals 1
    .param p1, "uid"    # I

    .line 42
    iget-object v0, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 43
    iget-boolean v0, p0, Lcom/android/server/am/ActiveUids;->mPostChangesToAtm:Z

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/android/server/am/ActiveUids;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onUidInactive(I)V

    .line 46
    :cond_0
    return-void
.end method

.method size()I
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method valueAt(I)Lcom/android/server/am/UidRecord;
    .locals 1
    .param p1, "index"    # I

    .line 64
    iget-object v0, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/UidRecord;

    return-object v0
.end method
