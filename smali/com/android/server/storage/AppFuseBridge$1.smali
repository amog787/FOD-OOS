.class Lcom/android/server/storage/AppFuseBridge$1;
.super Ljava/lang/Object;
.source "AppFuseBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/storage/AppFuseBridge;->onMount(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/storage/AppFuseBridge;

.field final synthetic val$mountId:I


# direct methods
.method constructor <init>(Lcom/android/server/storage/AppFuseBridge;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/storage/AppFuseBridge;

    .line 146
    iput-object p1, p0, Lcom/android/server/storage/AppFuseBridge$1;->this$0:Lcom/android/server/storage/AppFuseBridge;

    iput p2, p0, Lcom/android/server/storage/AppFuseBridge$1;->val$mountId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 149
    monitor-enter p0

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/android/server/storage/AppFuseBridge$1;->this$0:Lcom/android/server/storage/AppFuseBridge;

    invoke-static {v0}, Lcom/android/server/storage/AppFuseBridge;->access$000(Lcom/android/server/storage/AppFuseBridge;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/android/server/storage/AppFuseBridge$1;->val$mountId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/storage/AppFuseBridge$MountScope;

    .line 151
    .local v0, "scope":Lcom/android/server/storage/AppFuseBridge$MountScope;
    if-eqz v0, :cond_0

    .line 152
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/storage/AppFuseBridge$MountScope;->setMountResultLocked(Z)V

    .line 154
    .end local v0    # "scope":Lcom/android/server/storage/AppFuseBridge$MountScope;
    :cond_0
    monitor-exit p0

    .line 155
    return-void

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
