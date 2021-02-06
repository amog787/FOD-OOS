.class Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;
.super Landroid/view/IPinnedStackController$Stub;
.source "PinnedStackController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/PinnedStackController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PinnedStackControllerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/PinnedStackController;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/PinnedStackController;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;->this$0:Lcom/android/server/wm/PinnedStackController;

    invoke-direct {p0}, Landroid/view/IPinnedStackController$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/PinnedStackController;Lcom/android/server/wm/PinnedStackController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wm/PinnedStackController;
    .param p2, "x1"    # Lcom/android/server/wm/PinnedStackController$1;

    .line 91
    invoke-direct {p0, p1}, Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;-><init>(Lcom/android/server/wm/PinnedStackController;)V

    return-void
.end method


# virtual methods
.method public getDisplayRotation()I
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;->this$0:Lcom/android/server/wm/PinnedStackController;

    invoke-static {v0}, Lcom/android/server/wm/PinnedStackController;->access$200(Lcom/android/server/wm/PinnedStackController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 95
    iget-object v1, p0, Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;->this$0:Lcom/android/server/wm/PinnedStackController;

    invoke-static {v1}, Lcom/android/server/wm/PinnedStackController;->access$300(Lcom/android/server/wm/PinnedStackController;)Landroid/view/DisplayInfo;

    move-result-object v1

    iget v1, v1, Landroid/view/DisplayInfo;->rotation:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 96
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
