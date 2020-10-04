.class Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;
.super Ljava/lang/Object;
.source "PendingRemoteAnimationRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/PendingRemoteAnimationRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Entry"
.end annotation


# instance fields
.field final adapter:Landroid/view/RemoteAnimationAdapter;

.field final packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/wm/PendingRemoteAnimationRegistry;


# direct methods
.method constructor <init>(Lcom/android/server/wm/PendingRemoteAnimationRegistry;Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;)V
    .locals 3
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "adapter"    # Landroid/view/RemoteAnimationAdapter;

    .line 75
    iput-object p1, p0, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;->this$0:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p2, p0, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;->packageName:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;->adapter:Landroid/view/RemoteAnimationAdapter;

    .line 78
    invoke-static {p1}, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->access$000(Lcom/android/server/wm/PendingRemoteAnimationRegistry;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$PendingRemoteAnimationRegistry$Entry$giivzkMgzIxukCXvO2EVzLb0oxo;

    invoke-direct {v0, p0, p2}, Lcom/android/server/wm/-$$Lambda$PendingRemoteAnimationRegistry$Entry$giivzkMgzIxukCXvO2EVzLb0oxo;-><init>(Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;Ljava/lang/String;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 86
    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$PendingRemoteAnimationRegistry$Entry(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;->this$0:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    invoke-static {v0}, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->access$100(Lcom/android/server/wm/PendingRemoteAnimationRegistry;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 80
    iget-object v1, p0, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;->this$0:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    invoke-static {v1}, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->access$200(Lcom/android/server/wm/PendingRemoteAnimationRegistry;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;

    .line 81
    .local v1, "entry":Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;
    if-ne v1, p0, :cond_0

    .line 82
    iget-object v2, p0, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;->this$0:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    invoke-static {v2}, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->access$200(Lcom/android/server/wm/PendingRemoteAnimationRegistry;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .end local v1    # "entry":Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 85
    return-void

    .line 84
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
