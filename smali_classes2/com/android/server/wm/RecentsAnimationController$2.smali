.class Lcom/android/server/wm/RecentsAnimationController$2;
.super Landroid/view/IRecentsAnimationController$Stub;
.source "RecentsAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/RecentsAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/RecentsAnimationController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/RecentsAnimationController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/RecentsAnimationController;

    .line 154
    iput-object p1, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-direct {p0}, Landroid/view/IRecentsAnimationController$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cleanupScreenshot()V
    .locals 3

    .line 292
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    iget-object v0, v0, Lcom/android/server/wm/RecentsAnimationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 293
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    iget-object v1, v1, Lcom/android/server/wm/RecentsAnimationController;->mRecentScreenshotAnimator:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz v1, :cond_0

    .line 294
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    iget-object v1, v1, Lcom/android/server/wm/RecentsAnimationController;->mRecentScreenshotAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation()V

    .line 295
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/wm/RecentsAnimationController;->mRecentScreenshotAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 297
    :cond_0
    monitor-exit v0

    .line 298
    return-void

    .line 297
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public finish(ZZ)V
    .locals 5
    .param p1, "moveHomeToTop"    # Z
    .param p2, "sendUserLeaveHint"    # Z

    .line 188
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_RECENTS_ANIMATIONS:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/wm/RecentsAnimationController;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "): mCanceled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    .line 189
    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController;->access$300(Lcom/android/server/wm/RecentsAnimationController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 188
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 192
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController;->access$100(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 193
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v3}, Lcom/android/server/wm/RecentsAnimationController;->access$300(Lcom/android/server/wm/RecentsAnimationController;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 194
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 194
    return-void

    .line 196
    :cond_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 200
    :try_start_3
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController;->access$600(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    .line 201
    move v4, v3

    goto :goto_0

    .line 202
    :cond_2
    const/4 v4, 0x2

    :goto_0
    nop

    .line 200
    invoke-interface {v2, v4, v3, p2}, Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;->onAnimationFinished(IZZ)V

    .line 204
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController;->access$100(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v4, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v4}, Lcom/android/server/wm/RecentsAnimationController;->access$000(Lcom/android/server/wm/RecentsAnimationController;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 205
    .local v2, "dc":Lcom/android/server/wm/DisplayContent;
    iget-object v4, v2, Lcom/android/server/wm/DisplayContent;->mBoundsAnimationController:Lcom/android/server/wm/BoundsAnimationController;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/BoundsAnimationController;->setAnimationType(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 207
    .end local v2    # "dc":Lcom/android/server/wm/DisplayContent;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 208
    nop

    .line 209
    return-void

    .line 196
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/wm/RecentsAnimationController$2;
    .end local p1    # "moveHomeToTop":Z
    .end local p2    # "sendUserLeaveHint":Z
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 207
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/wm/RecentsAnimationController$2;
    .restart local p1    # "moveHomeToTop":Z
    .restart local p2    # "sendUserLeaveHint":Z
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public hideCurrentInputMethod()V
    .locals 3

    .line 271
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 273
    .local v0, "token":J
    :try_start_0
    const-class v2, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 274
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 275
    .local v2, "inputMethodManagerInternal":Lcom/android/server/inputmethod/InputMethodManagerInternal;
    if-eqz v2, :cond_0

    .line 276
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->hideCurrentInputMethod()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    .end local v2    # "inputMethodManagerInternal":Lcom/android/server/inputmethod/InputMethodManagerInternal;
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 280
    nop

    .line 281
    return-void

    .line 279
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public screenshotTask(I)Landroid/app/ActivityManager$TaskSnapshot;
    .locals 9
    .param p1, "taskId"    # I

    .line 158
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_RECENTS_ANIMATIONS:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/wm/RecentsAnimationController;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screenshotTask("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): mCanceled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    .line 159
    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController;->access$300(Lcom/android/server/wm/RecentsAnimationController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 162
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController;->access$100(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 163
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v3}, Lcom/android/server/wm/RecentsAnimationController;->access$300(Lcom/android/server/wm/RecentsAnimationController;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 164
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 164
    return-object v4

    .line 166
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v3}, Lcom/android/server/wm/RecentsAnimationController;->access$400(Lcom/android/server/wm/RecentsAnimationController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_3

    .line 167
    iget-object v6, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v6}, Lcom/android/server/wm/RecentsAnimationController;->access$400(Lcom/android/server/wm/RecentsAnimationController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    .line 168
    .local v6, "adapter":Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;
    invoke-static {v6}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->access$500(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;

    move-result-object v7

    .line 169
    .local v7, "task":Lcom/android/server/wm/Task;
    iget v8, v7, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v8, p1, :cond_2

    .line 170
    iget-object v4, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    .line 171
    invoke-static {v4}, Lcom/android/server/wm/RecentsAnimationController;->access$100(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 172
    .local v4, "snapshotController":Lcom/android/server/wm/TaskSnapshotController;
    new-array v5, v5, [Lcom/android/server/wm/Task;

    const/4 v8, 0x0

    aput-object v7, v5, v8

    invoke-static {v5}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v5

    .line 173
    .local v5, "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v4, v5}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;)V

    .line 174
    invoke-virtual {v4, v5}, Lcom/android/server/wm/TaskSnapshotController;->addSkipClosingAppSnapshotTasks(Landroid/util/ArraySet;)V

    .line 175
    invoke-virtual {v4, p1, v8, v8, v8}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshot(IIZZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v8

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 182
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 175
    return-object v8

    .line 166
    .end local v4    # "snapshotController":Lcom/android/server/wm/TaskSnapshotController;
    .end local v5    # "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/Task;>;"
    .end local v6    # "adapter":Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;
    .end local v7    # "task":Lcom/android/server/wm/Task;
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 179
    .end local v3    # "i":I
    :cond_3
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 182
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 179
    return-object v4

    .line 180
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/wm/RecentsAnimationController$2;
    .end local p1    # "taskId":I
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 182
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/wm/RecentsAnimationController$2;
    .restart local p1    # "taskId":I
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setAnimationTargetsBehindSystemBars(Z)V
    .locals 7
    .param p1, "behindSystemBars"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 214
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 216
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController;->access$100(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 217
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v3}, Lcom/android/server/wm/RecentsAnimationController;->access$400(Lcom/android/server/wm/RecentsAnimationController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 218
    iget-object v4, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v4}, Lcom/android/server/wm/RecentsAnimationController;->access$400(Lcom/android/server/wm/RecentsAnimationController;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    invoke-static {v4}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->access$500(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;

    move-result-object v4

    .line 219
    .local v4, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v6}, Lcom/android/server/wm/RecentsAnimationController;->access$700(Lcom/android/server/wm/RecentsAnimationController;)I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 220
    invoke-virtual {v4, p1}, Lcom/android/server/wm/Task;->setCanAffectSystemUiFlags(Z)V

    .line 217
    .end local v4    # "task":Lcom/android/server/wm/Task;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 223
    .end local v3    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v3}, Lcom/android/server/wm/RecentsAnimationController;->access$100(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 224
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 227
    nop

    .line 228
    return-void

    .line 224
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/wm/RecentsAnimationController$2;
    .end local p1    # "behindSystemBars":Z
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 226
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/wm/RecentsAnimationController$2;
    .restart local p1    # "behindSystemBars":Z
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setCancelWithDeferredScreenshot(Z)V
    .locals 2
    .param p1, "screenshot"    # Z

    .line 285
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    iget-object v0, v0, Lcom/android/server/wm/RecentsAnimationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 286
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RecentsAnimationController;->setCancelWithDeferredScreenshotLocked(Z)V

    .line 287
    monitor-exit v0

    .line 288
    return-void

    .line 287
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setInputConsumerEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .line 232
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_RECENTS_ANIMATIONS:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/wm/RecentsAnimationController;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInputConsumerEnabled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "): mCanceled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    .line 233
    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController;->access$300(Lcom/android/server/wm/RecentsAnimationController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 232
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 236
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController;->access$100(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 237
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v3}, Lcom/android/server/wm/RecentsAnimationController;->access$300(Lcom/android/server/wm/RecentsAnimationController;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 238
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 238
    return-void

    .line 241
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v3, p1}, Lcom/android/server/wm/RecentsAnimationController;->access$802(Lcom/android/server/wm/RecentsAnimationController;Z)Z

    .line 242
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    .line 243
    invoke-static {v3}, Lcom/android/server/wm/RecentsAnimationController;->access$100(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v4, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v4}, Lcom/android/server/wm/RecentsAnimationController;->access$000(Lcom/android/server/wm/RecentsAnimationController;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v3

    .line 244
    .local v3, "inputMonitor":Lcom/android/server/wm/InputMonitor;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 245
    iget-object v4, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v4}, Lcom/android/server/wm/RecentsAnimationController;->access$100(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 246
    .end local v3    # "inputMonitor":Lcom/android/server/wm/InputMonitor;
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 248
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 249
    nop

    .line 250
    return-void

    .line 246
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/wm/RecentsAnimationController$2;
    .end local p1    # "enabled":Z
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 248
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/wm/RecentsAnimationController$2;
    .restart local p1    # "enabled":Z
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setSplitScreenMinimized(Z)V
    .locals 5
    .param p1, "minimized"    # Z

    .line 254
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 256
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController;->access$100(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 257
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v3}, Lcom/android/server/wm/RecentsAnimationController;->access$300(Lcom/android/server/wm/RecentsAnimationController;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 258
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 258
    return-void

    .line 261
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v3, p1}, Lcom/android/server/wm/RecentsAnimationController;->access$902(Lcom/android/server/wm/RecentsAnimationController;Z)Z

    .line 262
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v3}, Lcom/android/server/wm/RecentsAnimationController;->access$100(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->checkSplitScreenMinimizedChanged(Z)V

    .line 263
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 265
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 266
    nop

    .line 267
    return-void

    .line 263
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/wm/RecentsAnimationController$2;
    .end local p1    # "minimized":Z
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 265
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/wm/RecentsAnimationController$2;
    .restart local p1    # "minimized":Z
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
