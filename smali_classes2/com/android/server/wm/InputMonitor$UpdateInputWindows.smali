.class Lcom/android/server/wm/InputMonitor$UpdateInputWindows;
.super Ljava/lang/Object;
.source "InputMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/InputMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateInputWindows"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/InputMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/InputMonitor;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputWindows;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/InputMonitor;Lcom/android/server/wm/InputMonitor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wm/InputMonitor;
    .param p2, "x1"    # Lcom/android/server/wm/InputMonitor$1;

    .line 125
    invoke-direct {p0, p1}, Lcom/android/server/wm/InputMonitor$UpdateInputWindows;-><init>(Lcom/android/server/wm/InputMonitor;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputWindows;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v0}, Lcom/android/server/wm/InputMonitor;->access$200(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 129
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputWindows;->this$0:Lcom/android/server/wm/InputMonitor;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/wm/InputMonitor;->access$302(Lcom/android/server/wm/InputMonitor;Z)Z

    .line 130
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputWindows;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v1, v2}, Lcom/android/server/wm/InputMonitor;->access$402(Lcom/android/server/wm/InputMonitor;Z)Z

    .line 132
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputWindows;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v1}, Lcom/android/server/wm/InputMonitor;->access$500(Lcom/android/server/wm/InputMonitor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 143
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputWindows;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v1}, Lcom/android/server/wm/InputMonitor;->access$200(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-virtual {v1}, Lcom/android/server/wm/DragDropController;->dragDropActiveLocked()Z

    move-result v1

    .line 146
    .local v1, "inDrag":Z
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputWindows;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v2}, Lcom/android/server/wm/InputMonitor;->access$600(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->access$700(Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;Z)V

    .line 147
    .end local v1    # "inDrag":Z
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 148
    return-void

    .line 147
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
