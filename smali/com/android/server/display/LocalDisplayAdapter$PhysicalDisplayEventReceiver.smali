.class final Lcom/android/server/display/LocalDisplayAdapter$PhysicalDisplayEventReceiver;
.super Landroid/view/DisplayEventReceiver;
.source "LocalDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/LocalDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PhysicalDisplayEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/LocalDisplayAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 945
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$PhysicalDisplayEventReceiver;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 946
    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Landroid/view/DisplayEventReceiver;-><init>(Landroid/os/Looper;I)V

    .line 947
    return-void
.end method


# virtual methods
.method public onConfigChanged(JJI)V
    .locals 2
    .param p1, "timestampNanos"    # J
    .param p3, "physicalDisplayId"    # J
    .param p5, "physIndex"    # I

    .line 968
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$PhysicalDisplayEventReceiver;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/LocalDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 969
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$PhysicalDisplayEventReceiver;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/LocalDisplayAdapter;->access$700(Lcom/android/server/display/LocalDisplayAdapter;)Landroid/util/LongSparseArray;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 970
    .local v1, "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    if-nez v1, :cond_0

    .line 975
    monitor-exit v0

    return-void

    .line 977
    :cond_0
    invoke-virtual {v1, p5}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->onActivePhysicalDisplayModeChangedLocked(I)V

    .line 978
    .end local v1    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    monitor-exit v0

    .line 979
    return-void

    .line 978
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onHotplug(JJZ)V
    .locals 2
    .param p1, "timestampNanos"    # J
    .param p3, "physicalDisplayId"    # J
    .param p5, "connected"    # Z

    .line 951
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$PhysicalDisplayEventReceiver;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/LocalDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 952
    if-eqz p5, :cond_0

    .line 953
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$PhysicalDisplayEventReceiver;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v1, p3, p4}, Lcom/android/server/display/LocalDisplayAdapter;->access$500(Lcom/android/server/display/LocalDisplayAdapter;J)V

    goto :goto_0

    .line 955
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$PhysicalDisplayEventReceiver;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v1, p3, p4}, Lcom/android/server/display/LocalDisplayAdapter;->access$600(Lcom/android/server/display/LocalDisplayAdapter;J)V

    .line 957
    :goto_0
    monitor-exit v0

    .line 958
    return-void

    .line 957
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
