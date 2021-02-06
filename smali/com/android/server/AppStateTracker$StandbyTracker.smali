.class final Lcom/android/server/AppStateTracker$StandbyTracker;
.super Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;
.source "AppStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "StandbyTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppStateTracker;


# direct methods
.method constructor <init>(Lcom/android/server/AppStateTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/AppStateTracker;

    .line 703
    iput-object p1, p0, Lcom/android/server/AppStateTracker$StandbyTracker;->this$0:Lcom/android/server/AppStateTracker;

    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppIdleStateChanged(Ljava/lang/String;IZII)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "idle"    # Z
    .param p4, "bucket"    # I
    .param p5, "reason"    # I

    .line 711
    iget-object v0, p0, Lcom/android/server/AppStateTracker$StandbyTracker;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v0}, Lcom/android/server/AppStateTracker;->access$100(Lcom/android/server/AppStateTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 713
    const/4 v1, 0x5

    if-ne p4, v1, :cond_0

    .line 714
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppStateTracker$StandbyTracker;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$700(Lcom/android/server/AppStateTracker;)Landroid/util/SparseSetArray;

    move-result-object v1

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    move-result v1

    .local v1, "changed":Z
    goto :goto_0

    .line 716
    .end local v1    # "changed":Z
    :cond_0
    iget-object v1, p0, Lcom/android/server/AppStateTracker$StandbyTracker;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$700(Lcom/android/server/AppStateTracker;)Landroid/util/SparseSetArray;

    move-result-object v1

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseSetArray;->remove(ILjava/lang/Object;)Z

    move-result v1

    .line 718
    .restart local v1    # "changed":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 719
    iget-object v2, p0, Lcom/android/server/AppStateTracker$StandbyTracker;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v2}, Lcom/android/server/AppStateTracker;->access$200(Lcom/android/server/AppStateTracker;)Lcom/android/server/AppStateTracker$MyHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/AppStateTracker$MyHandler;->notifyExemptChanged()V

    .line 721
    .end local v1    # "changed":Z
    :cond_1
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
