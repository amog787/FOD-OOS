.class Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;
.super Ljava/lang/Object;
.source "PackageInstallerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionFinished(Lcom/android/server/pm/PackageInstallerSession;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

.field final synthetic val$session:Lcom/android/server/pm/PackageInstallerSession;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageInstallerService$InternalCallback;Lcom/android/server/pm/PackageInstallerSession;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    .line 1348
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->this$1:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->val$session:Lcom/android/server/pm/PackageInstallerSession;

    iput-boolean p3, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1351
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->val$session:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->isStaged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1352
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->val$success:Z

    if-nez v0, :cond_0

    .line 1353
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->this$1:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerService;->access$1000(Lcom/android/server/pm/PackageInstallerService;)Lcom/android/server/pm/StagingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->val$session:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/StagingManager;->abortSession(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 1356
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->this$1:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerService;->access$000(Lcom/android/server/pm/PackageInstallerService;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 1357
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->val$session:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->isStaged()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->val$success:Z

    if-nez v1, :cond_2

    .line 1358
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->this$1:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerService;->access$000(Lcom/android/server/pm/PackageInstallerService;)Landroid/util/SparseArray;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->val$session:Lcom/android/server/pm/PackageInstallerSession;

    iget v2, v2, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 1360
    :cond_2
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->this$1:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->val$session:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v1, v2}, Lcom/android/server/pm/PackageInstallerService;->access$1100(Lcom/android/server/pm/PackageInstallerService;Lcom/android/server/pm/PackageInstallerSession;)V

    .line 1362
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->this$1:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->val$session:Lcom/android/server/pm/PackageInstallerSession;

    iget v2, v2, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-static {v1, v2}, Lcom/android/server/pm/PackageInstallerService;->access$1200(Lcom/android/server/pm/PackageInstallerService;I)Ljava/io/File;

    move-result-object v1

    .line 1363
    .local v1, "appIconFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1364
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1367
    :cond_3
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->this$1:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    iget-object v2, v2, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageInstallerService;->access$100(Lcom/android/server/pm/PackageInstallerService;)V

    .line 1368
    .end local v1    # "appIconFile":Ljava/io/File;
    monitor-exit v0

    .line 1369
    return-void

    .line 1368
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
