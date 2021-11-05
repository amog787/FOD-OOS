.class Lcom/android/server/print/PrintManagerService$PrintManagerImpl$4;
.super Ljava/lang/Object;
.source "PrintManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->handleUserStopped(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    .line 1009
    iput-object p1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$4;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    iput p2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$4;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1012
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$4;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-static {v0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$200(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1013
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$4;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-static {v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$300(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$4;->val$userId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/print/UserState;

    .line 1014
    .local v1, "userState":Lcom/android/server/print/UserState;
    if-eqz v1, :cond_0

    .line 1015
    invoke-virtual {v1}, Lcom/android/server/print/UserState;->destroyLocked()V

    .line 1016
    iget-object v2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$4;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-static {v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$300(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/util/SparseArray;

    move-result-object v2

    iget v3, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$4;->val$userId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 1018
    .end local v1    # "userState":Lcom/android/server/print/UserState;
    :cond_0
    monitor-exit v0

    .line 1019
    return-void

    .line 1018
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
