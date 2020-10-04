.class Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;
.super Landroid/content/pm/PackageInstaller$SessionCallback;
.source "RollbackManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/rollback/RollbackManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SessionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V
    .locals 0

    .line 1297
    iput-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-direct {p0}, Landroid/content/pm/PackageInstaller$SessionCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;Lcom/android/server/rollback/RollbackManagerServiceImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/rollback/RollbackManagerServiceImpl;
    .param p2, "x1"    # Lcom/android/server/rollback/RollbackManagerServiceImpl$1;

    .line 1297
    invoke-direct {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    return-void
.end method


# virtual methods
.method public onActiveChanged(IZ)V
    .locals 0
    .param p1, "sessionId"    # I
    .param p2, "active"    # Z

    .line 1306
    return-void
.end method

.method public onBadgingChanged(I)V
    .locals 0
    .param p1, "sessionId"    # I

    .line 1303
    return-void
.end method

.method public onCreated(I)V
    .locals 0
    .param p1, "sessionId"    # I

    .line 1300
    return-void
.end method

.method public onFinished(IZ)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "success"    # Z

    .line 1314
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->access$300(Lcom/android/server/rollback/RollbackManagerServiceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1315
    :try_start_0
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-virtual {v1, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getNewRollbackForPackageSessionLocked(I)Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;

    move-result-object v1

    .line 1316
    .local v1, "newRollback":Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;
    if-eqz v1, :cond_0

    .line 1317
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {v2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->access$400(Lcom/android/server/rollback/RollbackManagerServiceImpl;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1319
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1321
    if-eqz v1, :cond_1

    .line 1322
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {v0, v1, p2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->access$1300(Lcom/android/server/rollback/RollbackManagerServiceImpl;Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;Z)Lcom/android/server/rollback/RollbackData;

    move-result-object v0

    .line 1323
    .local v0, "rollback":Lcom/android/server/rollback/RollbackData;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/rollback/RollbackData;->isStaged()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1324
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {v2, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->access$1400(Lcom/android/server/rollback/RollbackManagerServiceImpl;Lcom/android/server/rollback/RollbackData;)V

    .line 1327
    .end local v0    # "rollback":Lcom/android/server/rollback/RollbackData;
    :cond_1
    return-void

    .line 1319
    .end local v1    # "newRollback":Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onProgressChanged(IF)V
    .locals 0
    .param p1, "sessionId"    # I
    .param p2, "progress"    # F

    .line 1309
    return-void
.end method
