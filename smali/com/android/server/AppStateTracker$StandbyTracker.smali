.class final Lcom/android/server/AppStateTracker$StandbyTracker;
.super Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;
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

    .line 695
    iput-object p1, p0, Lcom/android/server/AppStateTracker$StandbyTracker;->this$0:Lcom/android/server/AppStateTracker;

    invoke-direct {p0}, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppIdleStateChanged(Ljava/lang/String;IZII)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "idle"    # Z
    .param p4, "bucket"    # I
    .param p5, "reason"    # I

    .line 704
    const/4 v0, 0x5

    if-ne p4, v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/android/server/AppStateTracker$StandbyTracker;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v0}, Lcom/android/server/AppStateTracker;->access$700(Lcom/android/server/AppStateTracker;)Landroid/util/SparseSetArray;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    move-result v0

    .local v0, "changed":Z
    goto :goto_0

    .line 707
    .end local v0    # "changed":Z
    :cond_0
    iget-object v0, p0, Lcom/android/server/AppStateTracker$StandbyTracker;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v0}, Lcom/android/server/AppStateTracker;->access$700(Lcom/android/server/AppStateTracker;)Landroid/util/SparseSetArray;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseSetArray;->remove(ILjava/lang/Object;)Z

    move-result v0

    .line 709
    .restart local v0    # "changed":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 710
    iget-object v1, p0, Lcom/android/server/AppStateTracker$StandbyTracker;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$200(Lcom/android/server/AppStateTracker;)Lcom/android/server/AppStateTracker$MyHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/AppStateTracker$MyHandler;->notifyExemptChanged()V

    .line 712
    :cond_1
    return-void
.end method

.method public onParoleStateChanged(Z)V
    .locals 0
    .param p1, "isParoleOn"    # Z

    .line 716
    return-void
.end method
