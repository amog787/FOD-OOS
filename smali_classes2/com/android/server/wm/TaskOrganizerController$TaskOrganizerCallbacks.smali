.class Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;
.super Ljava/lang/Object;
.source "TaskOrganizerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskOrganizerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskOrganizerCallbacks"
.end annotation


# instance fields
.field final mDeferTaskOrgCallbacksConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field final mTaskOrganizer:Landroid/window/ITaskOrganizer;

.field private final mTransaction:Landroid/view/SurfaceControl$Transaction;

.field final synthetic this$0:Lcom/android/server/wm/TaskOrganizerController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/TaskOrganizerController;Lcom/android/server/wm/WindowManagerService;Landroid/window/ITaskOrganizer;Ljava/util/function/Consumer;)V
    .locals 0
    .param p2, "wm"    # Lcom/android/server/wm/WindowManagerService;
    .param p3, "taskOrg"    # Landroid/window/ITaskOrganizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowManagerService;",
            "Landroid/window/ITaskOrganizer;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .line 105
    .local p4, "deferTaskOrgCallbacksConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Runnable;>;"
    iput-object p1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->this$0:Lcom/android/server/wm/TaskOrganizerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p2, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 107
    iput-object p4, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->mDeferTaskOrgCallbacksConsumer:Ljava/util/function/Consumer;

    .line 108
    iput-object p3, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 109
    iget-object p1, p2, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    iput-object p1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 110
    return-void
.end method


# virtual methods
.method getBinder()Landroid/os/IBinder;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    invoke-interface {v0}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$onBackPressedOnTaskRoot$3$TaskOrganizerController$TaskOrganizerCallbacks(Lcom/android/server/wm/Task;)V
    .locals 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 181
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    return-void

    .line 186
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/window/ITaskOrganizer;->onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    goto :goto_0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TaskOrganizerController"

    const-string v2, "Exception sending onBackPressedOnTaskRoot callback"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public synthetic lambda$onTaskAppeared$0$TaskOrganizerController$TaskOrganizerCallbacks(Lcom/android/server/wm/Task;ZLandroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 4
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "visible"    # Z
    .param p3, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 123
    const-string v0, "TaskOrganizerController"

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    if-nez v1, :cond_0

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "task surface is null, caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void

    .line 128
    :cond_0
    new-instance v1, Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    const-string v3, "TaskOrganizerController.onTaskAppeared"

    invoke-direct {v1, v2, v3}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 130
    .local v1, "outSurfaceControl":Landroid/view/SurfaceControl;
    iget-boolean v2, p1, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-nez v2, :cond_1

    if-nez p2, :cond_1

    .line 133
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2, v1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 134
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 136
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    invoke-interface {v2, p3, v1}, Landroid/window/ITaskOrganizer;->onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v1    # "outSurfaceControl":Landroid/view/SurfaceControl;
    goto :goto_0

    .line 137
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Exception sending onTaskAppeared callback"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public synthetic lambda$onTaskInfoChanged$2$TaskOrganizerController$TaskOrganizerCallbacks(Lcom/android/server/wm/Task;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 3
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 162
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    return-void

    .line 167
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    invoke-interface {v0, p2}, Landroid/window/ITaskOrganizer;->onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TaskOrganizerController"

    const-string v2, "Exception sending onTaskInfoChanged callback"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public synthetic lambda$onTaskVanished$1$TaskOrganizerController$TaskOrganizerCallbacks(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 3
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    invoke-interface {v0, p1}, Landroid/window/ITaskOrganizer;->onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TaskOrganizerController"

    const-string v2, "Exception sending onTaskVanished callback"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method onBackPressedOnTaskRoot(Lcom/android/server/wm/Task;)V
    .locals 2
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 175
    iget-boolean v0, p1, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/wm/Task;->mTaskAppearedSent:Z

    if-nez v0, :cond_0

    .line 178
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->mDeferTaskOrgCallbacksConsumer:Ljava/util/function/Consumer;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$TaskOrganizerCallbacks$41HmeSfw9YPckTtDYqtDtvgJ3pM;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$TaskOrganizerCallbacks$41HmeSfw9YPckTtDYqtDtvgJ3pM;-><init>(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;Lcom/android/server/wm/Task;)V

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 191
    return-void
.end method

.method onTaskAppeared(Lcom/android/server/wm/Task;)V
    .locals 4
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 117
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v0

    .line 118
    .local v0, "visible":Z
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    .line 119
    .local v1, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->mDeferTaskOrgCallbacksConsumer:Ljava/util/function/Consumer;

    new-instance v3, Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$TaskOrganizerCallbacks$3B2ajcX1016FWhhrvdadLQoIOlk;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$TaskOrganizerCallbacks$3B2ajcX1016FWhhrvdadLQoIOlk;-><init>(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;Lcom/android/server/wm/Task;ZLandroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-interface {v2, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 141
    return-void
.end method

.method onTaskInfoChanged(Lcom/android/server/wm/Task;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 156
    iget-boolean v0, p1, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/wm/Task;->mTaskAppearedSent:Z

    if-nez v0, :cond_0

    .line 159
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->mDeferTaskOrgCallbacksConsumer:Ljava/util/function/Consumer;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$TaskOrganizerCallbacks$0vq-lXzpiq-wIq4e4iVbdijNaZU;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$TaskOrganizerCallbacks$0vq-lXzpiq-wIq4e4iVbdijNaZU;-><init>(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;Lcom/android/server/wm/Task;Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 172
    return-void
.end method

.method onTaskVanished(Lcom/android/server/wm/Task;)V
    .locals 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 145
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    .line 146
    .local v0, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->mDeferTaskOrgCallbacksConsumer:Ljava/util/function/Consumer;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$TaskOrganizerCallbacks$z4tQUSxn6WAFBTLse5CB3j-b8c8;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$TaskOrganizerCallbacks$z4tQUSxn6WAFBTLse5CB3j-b8c8;-><init>(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 153
    return-void
.end method
