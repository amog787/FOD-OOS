.class Lcom/android/server/NetworkManagementService$Injector;
.super Ljava/lang/Object;
.source "NetworkManagementService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Injector"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;


# direct methods
.method constructor <init>(Lcom/android/server/NetworkManagementService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/NetworkManagementService;

    .line 2357
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method reset()V
    .locals 7

    .line 2383
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$1700(Lcom/android/server/NetworkManagementService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2384
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/NetworkManagementService$Injector;->setDataSaverMode(Z)V

    .line 2385
    const/4 v2, 0x3

    new-array v3, v2, [I

    const/4 v4, 0x1

    aput v4, v3, v1

    const/4 v5, 0x2

    aput v5, v3, v4

    aput v2, v3, v5

    move-object v2, v3

    .line 2390
    .local v2, "chains":[I
    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_0

    aget v5, v2, v4

    .line 2391
    .local v5, "chain":I
    invoke-virtual {p0, v5, v1}, Lcom/android/server/NetworkManagementService$Injector;->setFirewallChainState(IZ)V

    .line 2392
    iget-object v6, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v6, v5}, Lcom/android/server/NetworkManagementService;->access$1800(Lcom/android/server/NetworkManagementService;I)Landroid/util/SparseIntArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->clear()V

    .line 2390
    .end local v5    # "chain":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2394
    :cond_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v1}, Lcom/android/server/NetworkManagementService;->access$2000(Lcom/android/server/NetworkManagementService;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2395
    iget-object v1, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v1}, Lcom/android/server/NetworkManagementService;->access$1900(Lcom/android/server/NetworkManagementService;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2396
    .end local v2    # "chains":[I
    monitor-exit v0

    .line 2397
    return-void

    .line 2396
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setDataSaverMode(Z)V
    .locals 1
    .param p1, "dataSaverMode"    # Z

    .line 2359
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0, p1}, Lcom/android/server/NetworkManagementService;->access$1502(Lcom/android/server/NetworkManagementService;Z)Z

    .line 2360
    return-void
.end method

.method setFirewallChainState(IZ)V
    .locals 1
    .param p1, "chain"    # I
    .param p2, "state"    # Z

    .line 2363
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0, p1, p2}, Lcom/android/server/NetworkManagementService;->access$1600(Lcom/android/server/NetworkManagementService;IZ)V

    .line 2364
    return-void
.end method

.method setFirewallRule(III)V
    .locals 2
    .param p1, "chain"    # I
    .param p2, "uid"    # I
    .param p3, "rule"    # I

    .line 2367
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$1700(Lcom/android/server/NetworkManagementService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2368
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v1, p1}, Lcom/android/server/NetworkManagementService;->access$1800(Lcom/android/server/NetworkManagementService;I)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2369
    monitor-exit v0

    .line 2370
    return-void

    .line 2369
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setUidOnMeteredNetworkList(ZIZ)V
    .locals 2
    .param p1, "blacklist"    # Z
    .param p2, "uid"    # I
    .param p3, "enable"    # Z

    .line 2373
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$1700(Lcom/android/server/NetworkManagementService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2374
    if-eqz p1, :cond_0

    .line 2375
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v1}, Lcom/android/server/NetworkManagementService;->access$1900(Lcom/android/server/NetworkManagementService;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    .line 2377
    :cond_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v1}, Lcom/android/server/NetworkManagementService;->access$2000(Lcom/android/server/NetworkManagementService;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2379
    :goto_0
    monitor-exit v0

    .line 2380
    return-void

    .line 2379
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
