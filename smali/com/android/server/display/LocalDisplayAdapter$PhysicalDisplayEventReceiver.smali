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
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1147
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$PhysicalDisplayEventReceiver;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 1148
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/view/DisplayEventReceiver;-><init>(Landroid/os/Looper;II)V

    .line 1149
    return-void
.end method


# virtual methods
.method public onConfigChanged(JJI)V
    .locals 2
    .param p1, "timestampNanos"    # J
    .param p3, "physicalDisplayId"    # J
    .param p5, "configId"    # I

    .line 1170
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$PhysicalDisplayEventReceiver;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/LocalDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 1171
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$PhysicalDisplayEventReceiver;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/LocalDisplayAdapter;->access$900(Lcom/android/server/display/LocalDisplayAdapter;)Landroid/util/LongSparseArray;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 1172
    .local v1, "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    if-nez v1, :cond_0

    .line 1177
    monitor-exit v0

    return-void

    .line 1179
    :cond_0
    invoke-virtual {v1, p5}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->onActiveDisplayConfigChangedLocked(I)V

    .line 1180
    .end local v1    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    monitor-exit v0

    .line 1181
    return-void

    .line 1180
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

    .line 1153
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$PhysicalDisplayEventReceiver;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/LocalDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 1154
    if-eqz p5, :cond_0

    .line 1155
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$PhysicalDisplayEventReceiver;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v1, p3, p4}, Lcom/android/server/display/LocalDisplayAdapter;->access$700(Lcom/android/server/display/LocalDisplayAdapter;J)V

    goto :goto_0

    .line 1157
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$PhysicalDisplayEventReceiver;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v1, p3, p4}, Lcom/android/server/display/LocalDisplayAdapter;->access$800(Lcom/android/server/display/LocalDisplayAdapter;J)V

    .line 1159
    :goto_0
    monitor-exit v0

    .line 1160
    return-void

    .line 1159
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
