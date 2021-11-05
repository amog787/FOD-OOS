.class final Lcom/android/server/am/PendingTempWhitelists;
.super Ljava/lang/Object;
.source "PendingTempWhitelists.java"


# instance fields
.field private final mPendingTempWhitelist:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/ActivityManagerService$PendingTempWhitelist;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingTempWhitelists;->mPendingTempWhitelist:Landroid/util/SparseArray;

    .line 30
    iput-object p1, p0, Lcom/android/server/am/PendingTempWhitelists;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 31
    return-void
.end method


# virtual methods
.method get(I)Lcom/android/server/am/ActivityManagerService$PendingTempWhitelist;
    .locals 1
    .param p1, "uid"    # I

    .line 45
    iget-object v0, p0, Lcom/android/server/am/PendingTempWhitelists;->mPendingTempWhitelist:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService$PendingTempWhitelist;

    return-object v0
.end method

.method indexOfKey(I)I
    .locals 1
    .param p1, "key"    # I

    .line 57
    iget-object v0, p0, Lcom/android/server/am/PendingTempWhitelists;->mPendingTempWhitelist:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    return v0
.end method

.method put(ILcom/android/server/am/ActivityManagerService$PendingTempWhitelist;)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "value"    # Lcom/android/server/am/ActivityManagerService$PendingTempWhitelist;

    .line 34
    iget-object v0, p0, Lcom/android/server/am/PendingTempWhitelists;->mPendingTempWhitelist:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lcom/android/server/am/PendingTempWhitelists;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v1, p2, Lcom/android/server/am/ActivityManagerService$PendingTempWhitelist;->tag:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onUidAddedToPendingTempWhitelist(ILjava/lang/String;)V

    .line 36
    return-void
.end method

.method removeAt(I)V
    .locals 2
    .param p1, "index"    # I

    .line 39
    iget-object v0, p0, Lcom/android/server/am/PendingTempWhitelists;->mPendingTempWhitelist:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 40
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/am/PendingTempWhitelists;->mPendingTempWhitelist:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 41
    iget-object v1, p0, Lcom/android/server/am/PendingTempWhitelists;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onUidRemovedFromPendingTempWhitelist(I)V

    .line 42
    return-void
.end method

.method size()I
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/android/server/am/PendingTempWhitelists;->mPendingTempWhitelist:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method valueAt(I)Lcom/android/server/am/ActivityManagerService$PendingTempWhitelist;
    .locals 1
    .param p1, "index"    # I

    .line 53
    iget-object v0, p0, Lcom/android/server/am/PendingTempWhitelists;->mPendingTempWhitelist:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService$PendingTempWhitelist;

    return-object v0
.end method
