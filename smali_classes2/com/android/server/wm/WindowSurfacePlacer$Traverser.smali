.class Lcom/android/server/wm/WindowSurfacePlacer$Traverser;
.super Ljava/lang/Object;
.source "WindowSurfacePlacer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowSurfacePlacer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Traverser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowSurfacePlacer;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/WindowSurfacePlacer;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/android/server/wm/WindowSurfacePlacer$Traverser;->this$0:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/WindowSurfacePlacer;Lcom/android/server/wm/WindowSurfacePlacer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wm/WindowSurfacePlacer;
    .param p2, "x1"    # Lcom/android/server/wm/WindowSurfacePlacer$1;

    .line 54
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowSurfacePlacer$Traverser;-><init>(Lcom/android/server/wm/WindowSurfacePlacer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer$Traverser;->this$0:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-static {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->access$000(Lcom/android/server/wm/WindowSurfacePlacer;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 58
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer$Traverser;->this$0:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 59
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 60
    return-void

    .line 59
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
