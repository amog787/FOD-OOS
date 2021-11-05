.class Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
.super Ljava/lang/Object;
.source "TaskOrganizerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskOrganizerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskOrganizerState"
.end annotation


# instance fields
.field private final mDeathRecipient:Lcom/android/server/wm/TaskOrganizerController$DeathRecipient;

.field private mInterceptBackPressedOnTaskRoot:Z

.field private final mOrganizedTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field private final mOrganizer:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

.field private final mUid:I

.field final synthetic this$0:Lcom/android/server/wm/TaskOrganizerController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/TaskOrganizerController;Landroid/window/ITaskOrganizer;I)V
    .locals 3
    .param p2, "organizer"    # Landroid/window/ITaskOrganizer;
    .param p3, "uid"    # I

    .line 201
    iput-object p1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->this$0:Lcom/android/server/wm/TaskOrganizerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizedTasks:Ljava/util/ArrayList;

    .line 203
    invoke-static {p1}, Lcom/android/server/wm/TaskOrganizerController;->access$200(Lcom/android/server/wm/TaskOrganizerController;)Ljava/util/function/Consumer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    invoke-static {p1}, Lcom/android/server/wm/TaskOrganizerController;->access$200(Lcom/android/server/wm/TaskOrganizerController;)Ljava/util/function/Consumer;

    move-result-object v0

    goto :goto_0

    .line 205
    :cond_0
    invoke-static {p1}, Lcom/android/server/wm/TaskOrganizerController;->access$300(Lcom/android/server/wm/TaskOrganizerController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$vZR5471cvTgvcvM990tM31bi4pI;

    invoke-direct {v1, v0}, Lcom/android/server/wm/-$$Lambda$vZR5471cvTgvcvM990tM31bi4pI;-><init>(Lcom/android/server/wm/WindowAnimator;)V

    move-object v0, v1

    :goto_0
    nop

    .line 206
    .local v0, "deferTaskOrgCallbacksConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Runnable;>;"
    new-instance v1, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    invoke-static {p1}, Lcom/android/server/wm/TaskOrganizerController;->access$300(Lcom/android/server/wm/TaskOrganizerController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v1, p1, v2, p2, v0}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;-><init>(Lcom/android/server/wm/TaskOrganizerController;Lcom/android/server/wm/WindowManagerService;Landroid/window/ITaskOrganizer;Ljava/util/function/Consumer;)V

    iput-object v1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizer:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    .line 208
    new-instance v1, Lcom/android/server/wm/TaskOrganizerController$DeathRecipient;

    invoke-direct {v1, p1, p2}, Lcom/android/server/wm/TaskOrganizerController$DeathRecipient;-><init>(Lcom/android/server/wm/TaskOrganizerController;Landroid/window/ITaskOrganizer;)V

    iput-object v1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mDeathRecipient:Lcom/android/server/wm/TaskOrganizerController$DeathRecipient;

    .line 210
    :try_start_0
    invoke-interface {p2}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mDeathRecipient:Lcom/android/server/wm/TaskOrganizerController$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    goto :goto_1

    .line 211
    :catch_0
    move-exception p1

    .line 212
    .local p1, "e":Landroid/os/RemoteException;
    const-string v1, "TaskOrganizerController"

    const-string v2, "TaskOrganizer failed to register death recipient"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .end local p1    # "e":Landroid/os/RemoteException;
    :goto_1
    iput p3, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mUid:I

    .line 215
    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 194
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizer:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 194
    iget-boolean v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mInterceptBackPressedOnTaskRoot:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 194
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizedTasks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 194
    iget v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mUid:I

    return v0
.end method


# virtual methods
.method addTask(Lcom/android/server/wm/Task;)V
    .locals 1
    .param p1, "t"    # Lcom/android/server/wm/Task;

    .line 222
    iget-boolean v0, p1, Lcom/android/server/wm/Task;->mTaskAppearedSent:Z

    if-eqz v0, :cond_0

    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizedTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizedTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->taskAppearedReady()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/wm/Task;->mTaskAppearedSent:Z

    .line 229
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizer:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->onTaskAppeared(Lcom/android/server/wm/Task;)V

    .line 231
    :cond_2
    return-void
.end method

.method dispose()V
    .locals 4

    .line 244
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->this$0:Lcom/android/server/wm/TaskOrganizerController;

    invoke-static {v0}, Lcom/android/server/wm/TaskOrganizerController;->access$400(Lcom/android/server/wm/TaskOrganizerController;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 245
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->this$0:Lcom/android/server/wm/TaskOrganizerController;

    invoke-static {v2}, Lcom/android/server/wm/TaskOrganizerController;->access$400(Lcom/android/server/wm/TaskOrganizerController;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizer:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    invoke-virtual {v3}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 244
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 250
    .end local v0    # "i":I
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizedTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 251
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizedTasks:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 252
    .local v0, "t":Lcom/android/server/wm/Task;
    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->updateTaskOrganizerState(Z)Z

    .line 253
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizedTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 254
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->removeTask(Lcom/android/server/wm/Task;)V

    .line 256
    .end local v0    # "t":Lcom/android/server/wm/Task;
    :cond_1
    goto :goto_1

    .line 260
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->this$0:Lcom/android/server/wm/TaskOrganizerController;

    invoke-static {v0}, Lcom/android/server/wm/TaskOrganizerController;->access$100(Lcom/android/server/wm/TaskOrganizerController;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->this$0:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskOrganizerController;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    return-void
.end method

.method removeTask(Lcom/android/server/wm/Task;)V
    .locals 1
    .param p1, "t"    # Lcom/android/server/wm/Task;

    .line 234
    iget-boolean v0, p1, Lcom/android/server/wm/Task;->mTaskAppearedSent:Z

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->migrateToNewSurfaceControl()V

    .line 236
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/wm/Task;->mTaskAppearedSent:Z

    .line 237
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizer:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->onTaskVanished(Lcom/android/server/wm/Task;)V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizedTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 240
    return-void
.end method

.method setInterceptBackPressedOnTaskRoot(Z)V
    .locals 0
    .param p1, "interceptBackPressed"    # Z

    .line 218
    iput-boolean p1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mInterceptBackPressedOnTaskRoot:Z

    .line 219
    return-void
.end method

.method unlinkDeath()V
    .locals 3

    .line 264
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizer:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mDeathRecipient:Lcom/android/server/wm/TaskOrganizerController$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 265
    return-void
.end method
