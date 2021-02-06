.class Lcom/android/server/wm/RootWindowContainer$1;
.super Ljava/lang/Object;
.source "RootWindowContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/RootWindowContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/RootWindowContainer;


# direct methods
.method constructor <init>(Lcom/android/server/wm/RootWindowContainer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/RootWindowContainer;

    .line 279
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$1;->this$0:Lcom/android/server/wm/RootWindowContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$run$0(Ljava/lang/Object;Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # Lcom/android/server/wm/ActivityRecord;

    .line 287
    move-object v0, p0

    check-cast v0, Lcom/android/server/wm/RootWindowContainer;

    invoke-static {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->access$000(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 282
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$1;->this$0:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 284
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$1;->this$0:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->beginDeferResume()V

    .line 286
    sget-object v1, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$1$HOnR_rhPvM6ZPX8yI-4GFhkGqUs;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$1$HOnR_rhPvM6ZPX8yI-4GFhkGqUs;

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer$1;->this$0:Lcom/android/server/wm/RootWindowContainer;

    const-class v3, Lcom/android/server/wm/ActivityRecord;

    .line 288
    invoke-static {v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v3

    .line 286
    invoke-static {v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v1

    .line 289
    .local v1, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer$1;->this$0:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 290
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    .end local v1    # "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$1;->this$0:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->endDeferResume()V

    .line 293
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$1;->this$0:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    .line 294
    nop

    .line 295
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 296
    return-void

    .line 292
    :catchall_0
    move-exception v1

    :try_start_2
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer$1;->this$0:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStackSupervisor;->endDeferResume()V

    .line 293
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer$1;->this$0:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    .line 294
    nop

    .end local p0    # "this":Lcom/android/server/wm/RootWindowContainer$1;
    throw v1

    .line 295
    .restart local p0    # "this":Lcom/android/server/wm/RootWindowContainer$1;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
