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

    .line 206
    iput-object p1, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-direct {p0}, Landroid/view/IRecentsAnimationController$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cleanupScreenshot()V
    .locals 3

    .line 350
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RecentsAnimationController;->access$400(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 351
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    iget-object v1, v1, Lcom/android/server/wm/RecentsAnimationController;->mRecentScreenshotAnimator:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz v1, :cond_0

    .line 352
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    iget-object v1, v1, Lcom/android/server/wm/RecentsAnimationController;->mRecentScreenshotAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation()V

    .line 353
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/wm/RecentsAnimationController;->mRecentScreenshotAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 355
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 356
    return-void

    .line 355
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public finish(ZZ)V
    .locals 11
    .param p1, "moveHomeToTop"    # Z
    .param p2, "sendUserLeaveHint"    # Z

    .line 256
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, p1

    .local v0, "protoLogParam0":Z
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v3}, Lcom/android/server/wm/RecentsAnimationController;->access$100(Lcom/android/server/wm/RecentsAnimationController;)Z

    move-result v3

    .local v3, "protoLogParam1":Z
    sget-object v4, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v5, -0x1a9493ea

    const/16 v6, 0xf

    const/4 v7, 0x0

    new-array v8, v1, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 258
    .end local v0    # "protoLogParam0":Z
    .end local v3    # "protoLogParam1":Z
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 260
    .local v3, "token":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RecentsAnimationController;->access$400(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 263
    :try_start_1
    sget-boolean v5, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    if-eqz v5, :cond_1

    .line 264
    invoke-static {p1}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->resetZoomAnimationFinished(Z)V

    .line 267
    :cond_1
    iget-object v5, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v5}, Lcom/android/server/wm/RecentsAnimationController;->access$100(Lcom/android/server/wm/RecentsAnimationController;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 268
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 268
    return-void

    .line 271
    :cond_2
    :try_start_2
    iget-object v5, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v5}, Lcom/android/server/wm/RecentsAnimationController;->access$800(Lcom/android/server/wm/RecentsAnimationController;)Landroid/util/IntArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/IntArray;->size()I

    move-result v5

    sub-int/2addr v5, v2

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_3

    .line 272
    iget-object v6, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    iget-object v7, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v7}, Lcom/android/server/wm/RecentsAnimationController;->access$800(Lcom/android/server/wm/RecentsAnimationController;)Landroid/util/IntArray;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/util/IntArray;->get(I)I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/server/wm/RecentsAnimationController;->access$900(Lcom/android/server/wm/RecentsAnimationController;I)Z

    .line 271
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 274
    .end local v5    # "i":I
    :cond_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 278
    :try_start_3
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RecentsAnimationController;->access$1000(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;

    move-result-object v0

    if-eqz p1, :cond_4

    .line 279
    move v1, v2

    goto :goto_1

    .line 280
    :cond_4
    nop

    .line 278
    :goto_1
    invoke-interface {v0, v1, p2}, Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;->onAnimationFinished(IZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 282
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 283
    nop

    .line 284
    return-void

    .line 274
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v3    # "token":J
    .end local p0    # "this":Lcom/android/server/wm/RecentsAnimationController$2;
    .end local p1    # "moveHomeToTop":Z
    .end local p2    # "sendUserLeaveHint":Z
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 282
    .restart local v3    # "token":J
    .restart local p0    # "this":Lcom/android/server/wm/RecentsAnimationController$2;
    .restart local p1    # "moveHomeToTop":Z
    .restart local p2    # "sendUserLeaveHint":Z
    :catchall_1
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 283
    throw v0
.end method

.method public finishZoom(ZZIILandroid/graphics/Rect;ILandroid/os/Bundle;)V
    .locals 12
    .param p1, "moveHomeToTop"    # Z
    .param p2, "sendUserLeaveHint"    # Z
    .param p3, "taskId"    # I
    .param p4, "type"    # I
    .param p5, "rect"    # Landroid/graphics/Rect;
    .param p6, "orientation"    # I
    .param p7, "bOptions"    # Landroid/os/Bundle;

    .line 242
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 244
    .local v1, "token":J
    move-object v3, p0

    :try_start_0
    iget-object v0, v3, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    .line 245
    invoke-static {v0}, Lcom/android/server/wm/RecentsAnimationController;->access$700(Lcom/android/server/wm/RecentsAnimationController;)Landroid/view/IRecentsAnimationController;

    move-result-object v9

    .line 244
    move v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move v10, p1

    move v11, p2

    invoke-static/range {v4 .. v11}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->recentsAnimationFinished(IILandroid/graphics/Rect;ILandroid/os/Bundle;Landroid/view/IRecentsAnimationController;ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/RecentsAnimationController$2;->finish(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    :cond_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 250
    nop

    .line 251
    return-void

    .line 249
    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 250
    throw v0
.end method

.method public hideCurrentInputMethod()V
    .locals 4

    .line 328
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 330
    .local v0, "token":J
    :try_start_0
    const-class v2, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 331
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 332
    .local v2, "inputMethodManagerInternal":Lcom/android/server/inputmethod/InputMethodManagerInternal;
    if-eqz v2, :cond_0

    .line 333
    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->hideCurrentInputMethod(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    .end local v2    # "inputMethodManagerInternal":Lcom/android/server/inputmethod/InputMethodManagerInternal;
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 338
    nop

    .line 339
    return-void

    .line 337
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 338
    throw v2
.end method

.method public removeTask(I)Z
    .locals 4
    .param p1, "taskId"    # I

    .line 367
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 369
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController;->access$400(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 370
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v3, p1}, Lcom/android/server/wm/RecentsAnimationController;->access$900(Lcom/android/server/wm/RecentsAnimationController;I)Z

    move-result v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 373
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 370
    return v3

    .line 371
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/wm/RecentsAnimationController$2;
    .end local p1    # "taskId":I
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 373
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/wm/RecentsAnimationController$2;
    .restart local p1    # "taskId":I
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 374
    throw v2
.end method

.method public screenshotTask(I)Landroid/app/ActivityManager$TaskSnapshot;
    .locals 11
    .param p1, "taskId"    # I

    .line 210
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    int-to-long v4, p1

    .local v4, "protoLogParam0":J
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RecentsAnimationController;->access$100(Lcom/android/server/wm/RecentsAnimationController;)Z

    move-result v0

    .local v0, "protoLogParam1":Z
    sget-object v6, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v7, 0xafd244c

    const/16 v8, 0xd

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v1

    invoke-static {v6, v7, v8, v2, v9}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 212
    .end local v0    # "protoLogParam1":Z
    .end local v4    # "protoLogParam0":J
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 214
    .local v4, "token":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RecentsAnimationController;->access$400(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 215
    :try_start_1
    iget-object v6, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v6}, Lcom/android/server/wm/RecentsAnimationController;->access$100(Lcom/android/server/wm/RecentsAnimationController;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 216
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 216
    return-object v2

    .line 218
    :cond_1
    :try_start_2
    iget-object v6, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v6}, Lcom/android/server/wm/RecentsAnimationController;->access$500(Lcom/android/server/wm/RecentsAnimationController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v1

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_3

    .line 219
    iget-object v7, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v7}, Lcom/android/server/wm/RecentsAnimationController;->access$500(Lcom/android/server/wm/RecentsAnimationController;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    .line 220
    .local v7, "adapter":Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;
    invoke-static {v7}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->access$600(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;

    move-result-object v8

    .line 221
    .local v8, "task":Lcom/android/server/wm/Task;
    iget v9, v8, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v9, p1, :cond_2

    .line 222
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    .line 223
    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController;->access$400(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 224
    .local v2, "snapshotController":Lcom/android/server/wm/TaskSnapshotController;
    new-array v1, v1, [Lcom/android/server/wm/Task;

    aput-object v8, v1, v3

    invoke-static {v1}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v1

    .line 225
    .local v1, "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v2, v1}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;)V

    .line 226
    invoke-virtual {v2, v1}, Lcom/android/server/wm/TaskSnapshotController;->addSkipClosingAppSnapshotTasks(Landroid/util/ArraySet;)V

    .line 227
    invoke-virtual {v2, p1, v3, v3, v3}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshot(IIZZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v3

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 234
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 227
    return-object v3

    .line 218
    .end local v1    # "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/Task;>;"
    .end local v2    # "snapshotController":Lcom/android/server/wm/TaskSnapshotController;
    .end local v7    # "adapter":Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;
    .end local v8    # "task":Lcom/android/server/wm/Task;
    :cond_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 231
    .end local v6    # "i":I
    :cond_3
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 234
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 231
    return-object v2

    .line 232
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v4    # "token":J
    .end local p0    # "this":Lcom/android/server/wm/RecentsAnimationController$2;
    .end local p1    # "taskId":I
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 234
    .restart local v4    # "token":J
    .restart local p0    # "this":Lcom/android/server/wm/RecentsAnimationController$2;
    .restart local p1    # "taskId":I
    :catchall_1
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 235
    throw v0
.end method

.method public setAnimationTargetsBehindSystemBars(Z)V
    .locals 7
    .param p1, "behindSystemBars"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 289
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 291
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController;->access$400(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 292
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v3}, Lcom/android/server/wm/RecentsAnimationController;->access$500(Lcom/android/server/wm/RecentsAnimationController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 293
    iget-object v4, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v4}, Lcom/android/server/wm/RecentsAnimationController;->access$500(Lcom/android/server/wm/RecentsAnimationController;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    invoke-static {v4}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->access$600(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;

    move-result-object v4

    .line 294
    .local v4, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v6}, Lcom/android/server/wm/RecentsAnimationController;->access$1100(Lcom/android/server/wm/RecentsAnimationController;)I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 295
    invoke-virtual {v4, p1}, Lcom/android/server/wm/Task;->setCanAffectSystemUiFlags(Z)V

    .line 292
    .end local v4    # "task":Lcom/android/server/wm/Task;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 298
    .end local v3    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v3}, Lcom/android/server/wm/RecentsAnimationController;->access$400(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 299
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 301
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 302
    nop

    .line 303
    return-void

    .line 299
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

    .line 301
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/wm/RecentsAnimationController$2;
    .restart local p1    # "behindSystemBars":Z
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 302
    throw v2
.end method

.method public setDeferCancelUntilNextTransition(ZZ)V
    .locals 2
    .param p1, "defer"    # Z
    .param p2, "screenshot"    # Z

    .line 343
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RecentsAnimationController;->access$400(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 344
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/RecentsAnimationController;->setDeferredCancel(ZZ)V

    .line 345
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 346
    return-void

    .line 345
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setInputConsumerEnabled(Z)V
    .locals 9
    .param p1, "enabled"    # Z

    .line 307
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController;->access$100(Lcom/android/server/wm/RecentsAnimationController;)Z

    move-result v2

    .local v2, "protoLogParam1":Z
    sget-object v3, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v4, -0x48b44425

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 309
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .end local v2    # "protoLogParam1":Z
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 311
    .local v2, "token":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RecentsAnimationController;->access$400(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 312
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v4}, Lcom/android/server/wm/RecentsAnimationController;->access$100(Lcom/android/server/wm/RecentsAnimationController;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 313
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 322
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 313
    return-void

    .line 316
    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v4, p1}, Lcom/android/server/wm/RecentsAnimationController;->access$1202(Lcom/android/server/wm/RecentsAnimationController;Z)Z

    .line 317
    iget-object v4, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v4}, Lcom/android/server/wm/RecentsAnimationController;->access$000(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v4

    .line 318
    .local v4, "inputMonitor":Lcom/android/server/wm/InputMonitor;
    invoke-virtual {v4, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 319
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v1}, Lcom/android/server/wm/RecentsAnimationController;->access$400(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 320
    .end local v4    # "inputMonitor":Lcom/android/server/wm/InputMonitor;
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 322
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 323
    nop

    .line 324
    return-void

    .line 320
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v2    # "token":J
    .end local p0    # "this":Lcom/android/server/wm/RecentsAnimationController$2;
    .end local p1    # "enabled":Z
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 322
    .restart local v2    # "token":J
    .restart local p0    # "this":Lcom/android/server/wm/RecentsAnimationController$2;
    .restart local p1    # "enabled":Z
    :catchall_1
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 323
    throw v0
.end method

.method public setWillFinishToHome(Z)V
    .locals 2
    .param p1, "willFinishToHome"    # Z

    .line 360
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RecentsAnimationController;->access$400(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 361
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v1, p1}, Lcom/android/server/wm/RecentsAnimationController;->access$1302(Lcom/android/server/wm/RecentsAnimationController;Z)Z

    .line 362
    monitor-exit v0

    .line 363
    return-void

    .line 362
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
