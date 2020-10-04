.class Lcom/android/server/media/MediaSessionService$Controller2Callback;
.super Landroid/media/MediaController2$ControllerCallback;
.source "MediaSessionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Controller2Callback"
.end annotation


# instance fields
.field private final mToken:Landroid/media/Session2Token;

.field final synthetic this$0:Lcom/android/server/media/MediaSessionService;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionService;Landroid/media/Session2Token;)V
    .locals 0
    .param p2, "token"    # Landroid/media/Session2Token;

    .line 2321
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$Controller2Callback;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-direct {p0}, Landroid/media/MediaController2$ControllerCallback;-><init>()V

    .line 2322
    iput-object p2, p0, Lcom/android/server/media/MediaSessionService$Controller2Callback;->mToken:Landroid/media/Session2Token;

    .line 2323
    return-void
.end method


# virtual methods
.method public onConnected(Landroid/media/MediaController2;Landroid/media/Session2CommandGroup;)V
    .locals 4
    .param p1, "controller"    # Landroid/media/MediaController2;
    .param p2, "allowedCommands"    # Landroid/media/Session2CommandGroup;

    .line 2327
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$Controller2Callback;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2328
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$Controller2Callback;->mToken:Landroid/media/Session2Token;

    invoke-virtual {v1}, Landroid/media/Session2Token;->getUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 2329
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$Controller2Callback;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$1100(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$Controller2Callback;->mToken:Landroid/media/Session2Token;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2330
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$Controller2Callback;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v2, v1}, Lcom/android/server/media/MediaSessionService;->pushSession2TokensChangedLocked(I)V

    .line 2331
    .end local v1    # "userId":I
    monitor-exit v0

    .line 2332
    return-void

    .line 2331
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDisconnected(Landroid/media/MediaController2;)V
    .locals 4
    .param p1, "controller"    # Landroid/media/MediaController2;

    .line 2336
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$Controller2Callback;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2337
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$Controller2Callback;->mToken:Landroid/media/Session2Token;

    invoke-virtual {v1}, Landroid/media/Session2Token;->getUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 2338
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$Controller2Callback;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$1100(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$Controller2Callback;->mToken:Landroid/media/Session2Token;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2339
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$Controller2Callback;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v2, v1}, Lcom/android/server/media/MediaSessionService;->pushSession2TokensChangedLocked(I)V

    .line 2340
    .end local v1    # "userId":I
    monitor-exit v0

    .line 2341
    return-void

    .line 2340
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
