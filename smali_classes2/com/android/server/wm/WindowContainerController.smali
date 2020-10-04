.class Lcom/android/server/wm/WindowContainerController;
.super Ljava/lang/Object;
.source "WindowContainerController.java"

# interfaces
.implements Lcom/android/server/wm/ConfigurationContainerListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/android/server/wm/WindowContainer;",
        "I::",
        "Lcom/android/server/wm/WindowContainerListener;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/server/wm/ConfigurationContainerListener;"
    }
.end annotation


# instance fields
.field mContainer:Lcom/android/server/wm/WindowContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field final mListener:Lcom/android/server/wm/WindowContainerListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field

.field final mRoot:Lcom/android/server/wm/RootWindowContainer;

.field final mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowContainerListener;Lcom/android/server/wm/WindowManagerService;)V
    .locals 2
    .param p2, "service"    # Lcom/android/server/wm/WindowManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;",
            "Lcom/android/server/wm/WindowManagerService;",
            ")V"
        }
    .end annotation

    .line 42
    .local p0, "this":Lcom/android/server/wm/WindowContainerController;, "Lcom/android/server/wm/WindowContainerController<TE;TI;>;"
    .local p1, "listener":Lcom/android/server/wm/WindowContainerListener;, "TI;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/server/wm/WindowContainerController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    .line 44
    iput-object p2, p0, Lcom/android/server/wm/WindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 45
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/android/server/wm/WindowContainerController;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 46
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    :cond_1
    iput-object v1, p0, Lcom/android/server/wm/WindowContainerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 47
    return-void
.end method


# virtual methods
.method public onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "overrideConfiguration"    # Landroid/content/res/Configuration;

    .line 76
    .local p0, "this":Lcom/android/server/wm/WindowContainerController;, "Lcom/android/server/wm/WindowContainerController<TE;TI;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 77
    iget-object v1, p0, Lcom/android/server/wm/WindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_0

    .line 78
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 80
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/WindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 81
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 82
    return-void

    .line 81
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method removeContainer()V
    .locals 2

    .line 63
    .local p0, "this":Lcom/android/server/wm/WindowContainerController;, "Lcom/android/server/wm/WindowContainerController<TE;TI;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v0, :cond_0

    .line 64
    return-void

    .line 67
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->setController(Lcom/android/server/wm/WindowContainerController;)V

    .line 68
    iput-object v1, p0, Lcom/android/server/wm/WindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 69
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    if-eqz v0, :cond_1

    .line 70
    invoke-interface {v0, p0}, Lcom/android/server/wm/WindowContainerListener;->unregisterConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    .line 72
    :cond_1
    return-void
.end method

.method setContainer(Lcom/android/server/wm/WindowContainer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 50
    .local p0, "this":Lcom/android/server/wm/WindowContainerController;, "Lcom/android/server/wm/WindowContainerController<TE;TI;>;"
    .local p1, "container":Lcom/android/server/wm/WindowContainer;, "TE;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t set container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for controller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " Already set to="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/server/wm/WindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 55
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowContainerController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    if-eqz v0, :cond_2

    .line 56
    invoke-interface {v0, p0}, Lcom/android/server/wm/WindowContainerListener;->registerConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    .line 58
    :cond_2
    return-void
.end method
