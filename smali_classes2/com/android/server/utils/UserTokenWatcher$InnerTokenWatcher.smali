.class final Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;
.super Landroid/os/TokenWatcher;
.source "UserTokenWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/utils/UserTokenWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InnerTokenWatcher"
.end annotation


# instance fields
.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/utils/UserTokenWatcher;


# direct methods
.method private constructor <init>(Lcom/android/server/utils/UserTokenWatcher;ILandroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p2, "userId"    # I
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "tag"    # Ljava/lang/String;

    .line 142
    iput-object p1, p0, Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;->this$0:Lcom/android/server/utils/UserTokenWatcher;

    .line 143
    invoke-direct {p0, p3, p4}, Landroid/os/TokenWatcher;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    .line 144
    iput p2, p0, Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;->mUserId:I

    .line 145
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/utils/UserTokenWatcher;ILandroid/os/Handler;Ljava/lang/String;Lcom/android/server/utils/UserTokenWatcher$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/utils/UserTokenWatcher;
    .param p2, "x1"    # I
    .param p3, "x2"    # Landroid/os/Handler;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Lcom/android/server/utils/UserTokenWatcher$1;

    .line 139
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;-><init>(Lcom/android/server/utils/UserTokenWatcher;ILandroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public acquired()V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;->this$0:Lcom/android/server/utils/UserTokenWatcher;

    invoke-static {v0}, Lcom/android/server/utils/UserTokenWatcher;->access$100(Lcom/android/server/utils/UserTokenWatcher;)Lcom/android/server/utils/UserTokenWatcher$Callback;

    move-result-object v0

    iget v1, p0, Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;->mUserId:I

    invoke-interface {v0, v1}, Lcom/android/server/utils/UserTokenWatcher$Callback;->acquired(I)V

    .line 151
    return-void
.end method

.method public released()V
    .locals 4

    .line 156
    iget-object v0, p0, Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;->this$0:Lcom/android/server/utils/UserTokenWatcher;

    invoke-static {v0}, Lcom/android/server/utils/UserTokenWatcher;->access$100(Lcom/android/server/utils/UserTokenWatcher;)Lcom/android/server/utils/UserTokenWatcher$Callback;

    move-result-object v0

    iget v1, p0, Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;->mUserId:I

    invoke-interface {v0, v1}, Lcom/android/server/utils/UserTokenWatcher$Callback;->released(I)V

    .line 158
    iget-object v0, p0, Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;->this$0:Lcom/android/server/utils/UserTokenWatcher;

    invoke-static {v0}, Lcom/android/server/utils/UserTokenWatcher;->access$200(Lcom/android/server/utils/UserTokenWatcher;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;->this$0:Lcom/android/server/utils/UserTokenWatcher;

    invoke-static {v1}, Lcom/android/server/utils/UserTokenWatcher;->access$200(Lcom/android/server/utils/UserTokenWatcher;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/TokenWatcher;

    .line 160
    .local v1, "watcher":Landroid/os/TokenWatcher;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/TokenWatcher;->isAcquired()Z

    move-result v2

    if-nez v2, :cond_0

    .line 161
    iget-object v2, p0, Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;->this$0:Lcom/android/server/utils/UserTokenWatcher;

    invoke-static {v2}, Lcom/android/server/utils/UserTokenWatcher;->access$200(Lcom/android/server/utils/UserTokenWatcher;)Landroid/util/SparseArray;

    move-result-object v2

    iget v3, p0, Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 163
    .end local v1    # "watcher":Landroid/os/TokenWatcher;
    :cond_0
    monitor-exit v0

    .line 164
    return-void

    .line 163
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
