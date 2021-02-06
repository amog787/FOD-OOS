.class final Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;
.super Ljava/lang/Object;
.source "MultiClientInputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UserDataMap"
.end annotation


# instance fields
.field private final mMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 705
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 706
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;->mMap:Landroid/util/SparseArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$1;

    .line 705
    invoke-direct {p0}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;-><init>()V

    return-void
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "ipw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 734
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;->mMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 735
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;->mMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 736
    iget-object v2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;->mMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 737
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;->mMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    .line 738
    .local v3, "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", data="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 739
    if-eqz v3, :cond_0

    .line 740
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 741
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->dump(Ljava/io/FileDescriptor;Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 742
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 735
    .end local v2    # "userId":I
    .end local v3    # "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 745
    .end local v1    # "i":I
    :cond_1
    monitor-exit v0

    .line 746
    return-void

    .line 745
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method get(I)Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    .locals 2
    .param p1, "userId"    # I

    .line 712
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;->mMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 713
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;->mMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    monitor-exit v0

    return-object v1

    .line 714
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method put(ILcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "data"    # Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    .line 719
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;->mMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 720
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;->mMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 721
    monitor-exit v0

    .line 722
    return-void

    .line 721
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeReturnOld(I)Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    .locals 2
    .param p1, "userId"    # I

    .line 727
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;->mMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 728
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;->mMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    monitor-exit v0

    return-object v1

    .line 729
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
