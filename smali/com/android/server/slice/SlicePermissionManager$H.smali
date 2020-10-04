.class final Lcom/android/server/slice/SlicePermissionManager$H;
.super Landroid/os/Handler;
.source "SlicePermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/slice/SlicePermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field private static final MSG_ADD_DIRTY:I = 0x1

.field private static final MSG_CLEAR_CLIENT:I = 0x4

.field private static final MSG_CLEAR_PROVIDER:I = 0x5

.field private static final MSG_PERSIST:I = 0x2

.field private static final MSG_REMOVE:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/android/server/slice/SlicePermissionManager;


# direct methods
.method public constructor <init>(Lcom/android/server/slice/SlicePermissionManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 374
    iput-object p1, p0, Lcom/android/server/slice/SlicePermissionManager$H;->this$0:Lcom/android/server/slice/SlicePermissionManager;

    .line 375
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 376
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 380
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager$H;->this$0:Lcom/android/server/slice/SlicePermissionManager;

    invoke-static {v0}, Lcom/android/server/slice/SlicePermissionManager;->access$700(Lcom/android/server/slice/SlicePermissionManager;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    .line 397
    :try_start_0
    iget-object v1, p0, Lcom/android/server/slice/SlicePermissionManager$H;->this$0:Lcom/android/server/slice/SlicePermissionManager;

    invoke-static {v1}, Lcom/android/server/slice/SlicePermissionManager;->access$700(Lcom/android/server/slice/SlicePermissionManager;)Landroid/util/ArrayMap;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager$H;->this$0:Lcom/android/server/slice/SlicePermissionManager;

    invoke-static {v0}, Lcom/android/server/slice/SlicePermissionManager;->access$600(Lcom/android/server/slice/SlicePermissionManager;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    .line 392
    :try_start_1
    iget-object v1, p0, Lcom/android/server/slice/SlicePermissionManager$H;->this$0:Lcom/android/server/slice/SlicePermissionManager;

    invoke-static {v1}, Lcom/android/server/slice/SlicePermissionManager;->access$600(Lcom/android/server/slice/SlicePermissionManager;)Landroid/util/ArrayMap;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    monitor-exit v0

    .line 394
    goto :goto_0

    .line 393
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 388
    :cond_2
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager$H;->this$0:Lcom/android/server/slice/SlicePermissionManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    invoke-static {v0, v1}, Lcom/android/server/slice/SlicePermissionManager;->access$500(Lcom/android/server/slice/SlicePermissionManager;Lcom/android/server/slice/SlicePermissionManager$PkgUser;)V

    .line 389
    goto :goto_0

    .line 385
    :cond_3
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager$H;->this$0:Lcom/android/server/slice/SlicePermissionManager;

    invoke-virtual {v0}, Lcom/android/server/slice/SlicePermissionManager;->handlePersist()V

    .line 386
    goto :goto_0

    .line 382
    :cond_4
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager$H;->this$0:Lcom/android/server/slice/SlicePermissionManager;

    invoke-static {v0}, Lcom/android/server/slice/SlicePermissionManager;->access$400(Lcom/android/server/slice/SlicePermissionManager;)Landroid/util/ArraySet;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/slice/DirtyTracker$Persistable;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 383
    nop

    .line 401
    :goto_0
    return-void
.end method
