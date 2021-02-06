.class Lcom/android/server/pm/UserManagerService$WatchedUserStates;
.super Ljava/lang/Object;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/UserManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WatchedUserStates"
.end annotation


# instance fields
.field final states:Landroid/util/SparseIntArray;

.field final synthetic this$0:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/UserManagerService;)V
    .locals 0

    .line 510
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 511
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    .line 512
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->invalidateIsUserUnlockedCache()V

    .line 513
    return-void
.end method

.method private invalidateIsUserUnlockedCache()V
    .locals 0

    .line 533
    invoke-static {}, Landroid/os/UserManager;->invalidateIsUserUnlockedCache()V

    .line 534
    return-void
.end method


# virtual methods
.method public delete(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 525
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 526
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->invalidateIsUserUnlockedCache()V

    .line 527
    return-void
.end method

.method public get(I)I
    .locals 1
    .param p1, "userId"    # I

    .line 515
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method

.method public get(II)I
    .locals 1
    .param p1, "userId"    # I
    .param p2, "fallback"    # I

    .line 518
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    return v0
.end method

.method public put(II)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "state"    # I

    .line 521
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 522
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->invalidateIsUserUnlockedCache()V

    .line 523
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
