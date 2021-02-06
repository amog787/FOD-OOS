.class final Lcom/android/server/wm/WindowProcessControllerMap;
.super Ljava/lang/Object;
.source "WindowProcessControllerMap.java"


# instance fields
.field private final mPidMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/WindowProcessController;",
            ">;"
        }
    .end annotation
.end field

.field private final mUidMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowProcessController;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowProcessControllerMap;->mPidMap:Landroid/util/SparseArray;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowProcessControllerMap;->mUidMap:Ljava/util/Map;

    return-void
.end method

.method private removeProcessFromUidMap(Lcom/android/server/wm/WindowProcessController;)V
    .locals 4
    .param p1, "proc"    # Lcom/android/server/wm/WindowProcessController;

    .line 74
    if-nez p1, :cond_0

    .line 75
    return-void

    .line 77
    :cond_0
    iget v0, p1, Lcom/android/server/wm/WindowProcessController;->mUid:I

    .line 78
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessControllerMap;->mUidMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 79
    .local v1, "procSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    if-eqz v1, :cond_1

    .line 80
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 81
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessControllerMap;->mUidMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_1
    return-void
.end method


# virtual methods
.method getPidMap()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/WindowProcessController;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessControllerMap;->mPidMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method getProcess(I)Lcom/android/server/wm/WindowProcessController;
    .locals 1
    .param p1, "pid"    # I

    .line 34
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessControllerMap;->mPidMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowProcessController;

    return-object v0
.end method

.method getProcesses(I)Landroid/util/ArraySet;
    .locals 2
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowProcessController;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessControllerMap;->mUidMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    return-object v0
.end method

.method put(ILcom/android/server/wm/WindowProcessController;)V
    .locals 5
    .param p1, "pid"    # I
    .param p2, "proc"    # Lcom/android/server/wm/WindowProcessController;

    .line 49
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessControllerMap;->mPidMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowProcessController;

    .line 50
    .local v0, "prevProc":Lcom/android/server/wm/WindowProcessController;
    if-eqz v0, :cond_0

    .line 51
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowProcessControllerMap;->removeProcessFromUidMap(Lcom/android/server/wm/WindowProcessController;)V

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessControllerMap;->mPidMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 56
    iget v1, p2, Lcom/android/server/wm/WindowProcessController;->mUid:I

    .line 57
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessControllerMap;->mUidMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 59
    .local v2, "procSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    invoke-virtual {v2, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessControllerMap;->mUidMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method

.method remove(I)V
    .locals 2
    .param p1, "pid"    # I

    .line 64
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessControllerMap;->mPidMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowProcessController;

    .line 65
    .local v0, "proc":Lcom/android/server/wm/WindowProcessController;
    if-eqz v0, :cond_0

    .line 67
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessControllerMap;->mPidMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 69
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowProcessControllerMap;->removeProcessFromUidMap(Lcom/android/server/wm/WindowProcessController;)V

    .line 71
    :cond_0
    return-void
.end method
