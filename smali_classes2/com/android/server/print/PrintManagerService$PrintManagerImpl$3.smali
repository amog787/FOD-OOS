.class Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;
.super Ljava/lang/Object;
.source "PrintManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->handleUserUnlocked(I)V
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

    .line 987
    iput-object p1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    iput p2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 990
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-static {v0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$500(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/os/UserManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;->val$userId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 993
    :cond_0
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-static {v0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$200(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 994
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    iget v2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;->val$userId:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$600(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;IZZ)Lcom/android/server/print/UserState;

    move-result-object v1

    .line 996
    .local v1, "userState":Lcom/android/server/print/UserState;
    invoke-virtual {v1}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V

    .line 997
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1001
    invoke-virtual {v1}, Lcom/android/server/print/UserState;->removeObsoletePrintJobs()V

    .line 1002
    return-void

    .line 997
    .end local v1    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
