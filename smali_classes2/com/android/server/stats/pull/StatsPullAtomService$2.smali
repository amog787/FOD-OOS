.class Lcom/android/server/stats/pull/StatsPullAtomService$2;
.super Ljava/lang/Object;
.source "StatsPullAtomService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/stats/pull/StatsPullAtomService;->pullAttributedAppOpsLocked(ILjava/util/List;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/stats/pull/StatsPullAtomService;


# direct methods
.method constructor <init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 3505
    iput-object p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$2;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 3509
    :try_start_0
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$2;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$5900(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3515
    goto :goto_0

    .line 3510
    :catchall_0
    move-exception v0

    .line 3511
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "StatsPullAtomService"

    const-string v2, "AppOps sampling ratio estimation failed: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3512
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$2;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$5300(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3513
    :try_start_1
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$2;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$2;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$6000(Lcom/android/server/stats/pull/StatsPullAtomService;)I

    move-result v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->access$6002(Lcom/android/server/stats/pull/StatsPullAtomService;I)I

    .line 3514
    monitor-exit v1

    .line 3516
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 3514
    .restart local v0    # "e":Ljava/lang/Throwable;
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2
.end method
