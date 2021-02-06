.class Lcom/android/server/wm/DragDropController;
.super Ljava/lang/Object;
.source "DragDropController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DragDropController$DragHandler;
    }
.end annotation


# static fields
.field private static final DRAG_SHADOW_ALPHA_TRANSPARENT:F = 0.7071f

.field private static final DRAG_TIMEOUT_MS:J = 0x1388L

.field static final MSG_ANIMATION_END:I = 0x2

.field static final MSG_DRAG_END_TIMEOUT:I = 0x0

.field static final MSG_TEAR_DOWN_DRAG_AND_DROP_INPUT:I = 0x1


# instance fields
.field private mCallback:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mDragState:Lcom/android/server/wm/DragState;

.field private final mHandler:Landroid/os/Handler;

.field private mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/Looper;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/android/server/wm/DragDropController$1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DragDropController$1;-><init>(Lcom/android/server/wm/DragDropController;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    .line 83
    iput-object p1, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 84
    new-instance v0, Lcom/android/server/wm/DragDropController$DragHandler;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/DragDropController$DragHandler;-><init>(Lcom/android/server/wm/DragDropController;Lcom/android/server/wm/WindowManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/DragDropController;)Lcom/android/server/wm/DragState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DragDropController;

    .line 46
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    return-object v0
.end method


# virtual methods
.method cancelDragAndDrop(Landroid/os/IBinder;Z)V
    .locals 3
    .param p1, "dragToken"    # Landroid/os/IBinder;
    .param p2, "skipAnimation"    # Z

    .line 240
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_0

    .line 241
    const-string v0, "WindowManager"

    const-string v1, "cancelDragAndDrop"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v0, p1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->preCancelDragAndDrop(Landroid/os/IBinder;)V

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 247
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v1, :cond_2

    .line 252
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v1, v1, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    if-ne v1, p1, :cond_1

    .line 259
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/wm/DragState;->mDragResult:Z

    .line 260
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/DragState;->cancelDragLocked(Z)V

    .line 261
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 263
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v0}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postCancelDragAndDrop()V

    .line 264
    nop

    .line 265
    return-void

    .line 253
    :cond_1
    :try_start_3
    const-string v1, "WindowManager"

    const-string v2, "cancelDragAndDrop() does not match prepareDrag()"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "cancelDragAndDrop() does not match prepareDrag()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wm/DragDropController;
    .end local p1    # "dragToken":Landroid/os/IBinder;
    .end local p2    # "skipAnimation":Z
    throw v1

    .line 248
    .restart local p0    # "this":Lcom/android/server/wm/DragDropController;
    .restart local p1    # "dragToken":Landroid/os/IBinder;
    .restart local p2    # "skipAnimation":Z
    :cond_2
    const-string v1, "WindowManager"

    const-string v2, "cancelDragAndDrop() without prepareDrag()"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "cancelDragAndDrop() without prepareDrag()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wm/DragDropController;
    .end local p1    # "dragToken":Landroid/os/IBinder;
    .end local p2    # "skipAnimation":Z
    throw v1

    .line 261
    .restart local p0    # "this":Lcom/android/server/wm/DragDropController;
    .restart local p1    # "dragToken":Landroid/os/IBinder;
    .restart local p2    # "skipAnimation":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local p0    # "this":Lcom/android/server/wm/DragDropController;
    .end local p1    # "dragToken":Landroid/os/IBinder;
    .end local p2    # "skipAnimation":Z
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 263
    .restart local p0    # "this":Lcom/android/server/wm/DragDropController;
    .restart local p1    # "dragToken":Landroid/os/IBinder;
    .restart local p2    # "skipAnimation":Z
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postCancelDragAndDrop()V

    .line 264
    throw v0
.end method

.method dragDropActiveLocked()Z
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->isClosing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method dragRecipientEntered(Landroid/view/IWindow;)V
    .locals 2
    .param p1, "window"    # Landroid/view/IWindow;

    .line 292
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_0

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Drag into new candidate view @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_0
    return-void
.end method

.method dragRecipientExited(Landroid/view/IWindow;)V
    .locals 2
    .param p1, "window"    # Landroid/view/IWindow;

    .line 298
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_0

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Drag from old candidate view @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_0
    return-void
.end method

.method handleMotionEvent(ZFF)V
    .locals 2
    .param p1, "keepHandling"    # Z
    .param p2, "newX"    # F
    .param p3, "newY"    # F

    .line 275
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 276
    invoke-virtual {p0}, Lcom/android/server/wm/DragDropController;->dragDropActiveLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 280
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 283
    :cond_0
    if-eqz p1, :cond_1

    .line 284
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v1, p2, p3}, Lcom/android/server/wm/DragState;->notifyMoveLocked(FF)V

    goto :goto_0

    .line 286
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v1, p2, p3}, Lcom/android/server/wm/DragState;->notifyDropLocked(FF)V

    .line 288
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 289
    return-void

    .line 288
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method onDragStateClosedLocked(Lcom/android/server/wm/DragState;)V
    .locals 2
    .param p1, "dragState"    # Lcom/android/server/wm/DragState;

    .line 323
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eq v0, p1, :cond_0

    .line 324
    const-string v0, "WindowManager"

    const-string v1, "Unknown drag state is closed"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    return-void

    .line 327
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    .line 328
    return-void
.end method

.method performDrag(Landroid/view/SurfaceSession;IILandroid/view/IWindow;ILandroid/view/SurfaceControl;IFFFFLandroid/content/ClipData;)Landroid/os/IBinder;
    .locals 19
    .param p1, "session"    # Landroid/view/SurfaceSession;
    .param p2, "callerPid"    # I
    .param p3, "callerUid"    # I
    .param p4, "window"    # Landroid/view/IWindow;
    .param p5, "flags"    # I
    .param p6, "surface"    # Landroid/view/SurfaceControl;
    .param p7, "touchSource"    # I
    .param p8, "touchX"    # F
    .param p9, "touchY"    # F
    .param p10, "thumbCenterX"    # F
    .param p11, "thumbCenterY"    # F
    .param p12, "data"    # Landroid/content/ClipData;

    .line 94
    move-object/from16 v8, p0

    move-object/from16 v6, p4

    move-object/from16 v5, p6

    move/from16 v3, p8

    move/from16 v2, p9

    move/from16 v1, p10

    move/from16 v4, p11

    move-object/from16 v7, p12

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_0

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "perform drag: win="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " surface="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " flags="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " data="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    const-string v9, "WindowManager"

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    move-object v15, v0

    .line 100
    .local v15, "dragToken":Landroid/os/IBinder;
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    move-object/from16 v10, p4

    move-object v11, v15

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    move-object/from16 v18, v15

    .end local v15    # "dragToken":Landroid/os/IBinder;
    .local v18, "dragToken":Landroid/os/IBinder;
    move/from16 v15, p10

    move/from16 v16, p11

    move-object/from16 v17, p12

    invoke-interface/range {v9 .. v17}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->prePerformDrag(Landroid/view/IWindow;Landroid/os/IBinder;IFFFFLandroid/content/ClipData;)Z

    move-result v9

    .line 103
    .local v9, "callbackResult":Z
    :try_start_0
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_10

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_d

    .line 105
    const/4 v0, 0x0

    if-nez v9, :cond_3

    .line 106
    :try_start_2
    const-string v11, "WindowManager"

    const-string v12, "IDragDropCallback rejects the performDrag request"

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 107
    nop

    .line 185
    if-eqz v5, :cond_1

    .line 186
    :try_start_3
    invoke-virtual/range {p6 .. p6}, Landroid/view/SurfaceControl;->release()V

    .line 188
    :cond_1
    iget-object v11, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v11, :cond_2

    iget-object v11, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v11}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v11

    if-nez v11, :cond_2

    .line 189
    iget-object v11, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v11}, Lcom/android/server/wm/DragState;->closeLocked()V

    :cond_2
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 195
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v10, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v10}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    .line 107
    return-object v0

    .line 192
    :catchall_0
    move-exception v0

    move/from16 v15, p7

    move-object v1, v5

    move-object v13, v6

    move/from16 v16, v9

    move-object/from16 v5, v18

    move v6, v2

    goto/16 :goto_5

    .line 185
    :catchall_1
    move-exception v0

    move/from16 v15, p7

    move-object v1, v5

    move-object v13, v6

    move/from16 v16, v9

    move-object/from16 v5, v18

    move v6, v2

    goto/16 :goto_4

    .line 110
    :cond_3
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DragDropController;->dragDropActiveLocked()Z

    move-result v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_d

    if-eqz v11, :cond_6

    .line 111
    :try_start_5
    const-string v11, "WindowManager"

    const-string v12, "Drag already in progress"

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 112
    nop

    .line 185
    if-eqz v5, :cond_4

    .line 186
    :try_start_6
    invoke-virtual/range {p6 .. p6}, Landroid/view/SurfaceControl;->release()V

    .line 188
    :cond_4
    iget-object v11, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v11, :cond_5

    iget-object v11, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v11}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v11

    if-nez v11, :cond_5

    .line 189
    iget-object v11, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v11}, Lcom/android/server/wm/DragState;->closeLocked()V

    :cond_5
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 195
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v10, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v10}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    .line 112
    return-object v0

    .line 115
    :cond_6
    :try_start_7
    iget-object v11, v8, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v12, 0x0

    invoke-virtual {v11, v0, v6, v12}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v11

    .line 117
    .local v11, "callingWin":Lcom/android/server/wm/WindowState;
    if-eqz v11, :cond_13

    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->cantReceiveTouchInput()Z

    move-result v12

    if-eqz v12, :cond_7

    move/from16 v15, p7

    move-object v13, v6

    move/from16 v16, v9

    move-object/from16 v5, v18

    move v6, v2

    goto/16 :goto_3

    .line 134
    :cond_7
    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_d

    .line 135
    .local v12, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v12, :cond_a

    .line 136
    :try_start_8
    const-string v13, "WindowManager"

    const-string v14, "display content is null"

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 137
    nop

    .line 185
    if-eqz v5, :cond_8

    .line 186
    :try_start_9
    invoke-virtual/range {p6 .. p6}, Landroid/view/SurfaceControl;->release()V

    .line 188
    :cond_8
    iget-object v13, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v13, :cond_9

    iget-object v13, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v13}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v13

    if-nez v13, :cond_9

    .line 189
    iget-object v13, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v13}, Lcom/android/server/wm/DragState;->closeLocked()V

    :cond_9
    monitor-exit v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 195
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v10, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v10}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    .line 137
    return-object v0

    .line 140
    :cond_a
    move/from16 v13, p5

    and-int/lit16 v14, v13, 0x200

    if-nez v14, :cond_b

    .line 141
    const v14, 0x3f350481    # 0.7071f

    goto :goto_0

    :cond_b
    const/high16 v14, 0x3f800000    # 1.0f

    .line 142
    .local v14, "alpha":F
    :goto_0
    :try_start_a
    invoke-interface/range {p4 .. p4}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v15
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_d

    move/from16 v16, v9

    move-object v9, v7

    .end local v9    # "callbackResult":Z
    .local v16, "callbackResult":Z
    move-object v7, v15

    .line 143
    .local v7, "winBinder":Landroid/os/IBinder;
    :try_start_b
    new-instance v15, Landroid/os/Binder;

    invoke-direct {v15}, Landroid/os/Binder;-><init>()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    move v13, v4

    move-object v4, v15

    .line 144
    .local v4, "token":Landroid/os/IBinder;
    :try_start_c
    new-instance v15, Lcom/android/server/wm/DragState;

    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    move v13, v1

    move-object v1, v15

    move v13, v2

    move-object v2, v0

    move v13, v3

    move-object/from16 v3, p0

    move-object/from16 v5, p6

    move-object v13, v6

    move/from16 v6, p5

    :try_start_d
    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/DragState;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DragDropController;Landroid/os/IBinder;Landroid/view/SurfaceControl;ILandroid/os/IBinder;)V

    iput-object v15, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 145
    const/4 v1, 0x0

    .line 146
    .end local p6    # "surface":Landroid/view/SurfaceControl;
    .local v1, "surface":Landroid/view/SurfaceControl;
    move/from16 v2, p2

    :try_start_e
    iput v2, v15, Lcom/android/server/wm/DragState;->mPid:I

    .line 147
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    move/from16 v3, p3

    iput v3, v0, Lcom/android/server/wm/DragState;->mUid:I

    .line 148
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iput v14, v0, Lcom/android/server/wm/DragState;->mOriginalAlpha:F

    .line 149
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    move-object/from16 v5, v18

    .end local v18    # "dragToken":Landroid/os/IBinder;
    .local v5, "dragToken":Landroid/os/IBinder;
    :try_start_f
    iput-object v5, v0, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    .line 150
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iput-object v12, v0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 152
    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 153
    .local v0, "display":Landroid/view/Display;
    iget-object v6, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    iget-object v15, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v3, v11, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    invoke-interface {v6, v15, v0, v2, v3}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->registerInputChannel(Lcom/android/server/wm/DragState;Landroid/view/Display;Lcom/android/server/input/InputManagerService;Landroid/view/InputChannel;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 156
    const-string v2, "WindowManager"

    const-string v3, "Unable to transfer touch focus"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 157
    nop

    .line 185
    if-eqz v1, :cond_c

    .line 186
    :try_start_10
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->release()V

    .line 188
    :cond_c
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v2, :cond_d

    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v2

    if-nez v2, :cond_d

    .line 189
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->closeLocked()V

    :cond_d
    monitor-exit v10
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 195
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v2}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    .line 157
    const/4 v2, 0x0

    return-object v2

    .line 192
    .end local v0    # "display":Landroid/view/Display;
    .end local v4    # "token":Landroid/os/IBinder;
    .end local v7    # "winBinder":Landroid/os/IBinder;
    .end local v11    # "callingWin":Lcom/android/server/wm/WindowState;
    .end local v12    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v14    # "alpha":F
    :catchall_2
    move-exception v0

    move/from16 v15, p7

    move/from16 v3, p8

    move/from16 v6, p9

    move/from16 v4, p11

    goto/16 :goto_5

    .line 160
    .restart local v0    # "display":Landroid/view/Display;
    .restart local v4    # "token":Landroid/os/IBinder;
    .restart local v7    # "winBinder":Landroid/os/IBinder;
    .restart local v11    # "callingWin":Lcom/android/server/wm/WindowState;
    .restart local v12    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v14    # "alpha":F
    :cond_e
    :try_start_11
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iput-object v9, v2, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    .line 161
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    move/from16 v3, p8

    move/from16 v6, p9

    :try_start_12
    invoke-virtual {v2, v3, v6}, Lcom/android/server/wm/DragState;->broadcastDragStartedLocked(FF)V

    .line 162
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    move/from16 v15, p7

    :try_start_13
    invoke-virtual {v2, v15}, Lcom/android/server/wm/DragState;->overridePointerIconLocked(I)V

    .line 164
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    move-object/from16 v17, v4

    move/from16 v4, p10

    .end local v4    # "token":Landroid/os/IBinder;
    .local v17, "token":Landroid/os/IBinder;
    iput v4, v2, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    .line 165
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    move/from16 v4, p11

    :try_start_14
    iput v4, v2, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    .line 168
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v2, v2, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 169
    .local v2, "surfaceControl":Landroid/view/SurfaceControl;
    sget-boolean v18, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v18, :cond_f

    move-object/from16 p6, v0

    .end local v0    # "display":Landroid/view/Display;
    .local p6, "display":Landroid/view/Display;
    const-string v0, "WindowManager"

    move-object/from16 v18, v7

    .end local v7    # "winBinder":Landroid/os/IBinder;
    .local v18, "winBinder":Landroid/os/IBinder;
    const-string v7, ">>> OPEN TRANSACTION performDrag"

    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v18    # "winBinder":Landroid/os/IBinder;
    .end local p6    # "display":Landroid/view/Display;
    .restart local v0    # "display":Landroid/view/Display;
    .restart local v7    # "winBinder":Landroid/os/IBinder;
    :cond_f
    move-object/from16 p6, v0

    move-object/from16 v18, v7

    .line 171
    .end local v0    # "display":Landroid/view/Display;
    .end local v7    # "winBinder":Landroid/os/IBinder;
    .restart local v18    # "winBinder":Landroid/os/IBinder;
    .restart local p6    # "display":Landroid/view/Display;
    :goto_1
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v0, v0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 172
    .local v0, "transaction":Landroid/view/SurfaceControl$Transaction;
    iget-object v7, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget v7, v7, Lcom/android/server/wm/DragState;->mOriginalAlpha:F

    invoke-virtual {v0, v2, v7}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 173
    sub-float v7, v3, p10

    sub-float v9, v6, v4

    invoke-virtual {v0, v2, v7, v9}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 175
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 176
    invoke-virtual {v12, v0, v2}, Lcom/android/server/wm/DisplayContent;->reparentToOverlay(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 177
    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->scheduleAnimation()V

    .line 179
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v7, :cond_10

    .line 180
    const-string v7, "WindowManager"

    const-string v9, "<<< CLOSE TRANSACTION performDrag"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_10
    iget-object v7, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v7, v3, v6}, Lcom/android/server/wm/DragState;->notifyLocationLocked(FF)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 185
    .end local v0    # "transaction":Landroid/view/SurfaceControl$Transaction;
    .end local v2    # "surfaceControl":Landroid/view/SurfaceControl;
    .end local v11    # "callingWin":Lcom/android/server/wm/WindowState;
    .end local v12    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v14    # "alpha":F
    .end local v17    # "token":Landroid/os/IBinder;
    .end local v18    # "winBinder":Landroid/os/IBinder;
    .end local p6    # "display":Landroid/view/Display;
    if-eqz v1, :cond_11

    .line 186
    :try_start_15
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->release()V

    .line 188
    :cond_11
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v0, :cond_12

    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_12

    .line 189
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->closeLocked()V

    .line 192
    :cond_12
    monitor-exit v10
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_e

    :try_start_16
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_f

    .line 193
    nop

    .line 195
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v0}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    .line 193
    return-object v5

    .line 185
    :catchall_3
    move-exception v0

    goto/16 :goto_4

    :catchall_4
    move-exception v0

    goto :goto_2

    :catchall_5
    move-exception v0

    move/from16 v15, p7

    goto :goto_2

    :catchall_6
    move-exception v0

    move/from16 v15, p7

    move/from16 v3, p8

    move/from16 v6, p9

    :goto_2
    move/from16 v4, p11

    goto/16 :goto_4

    .end local v5    # "dragToken":Landroid/os/IBinder;
    .local v18, "dragToken":Landroid/os/IBinder;
    :catchall_7
    move-exception v0

    move/from16 v15, p7

    move/from16 v3, p8

    move/from16 v6, p9

    move/from16 v4, p11

    move-object/from16 v5, v18

    .end local v18    # "dragToken":Landroid/os/IBinder;
    .restart local v5    # "dragToken":Landroid/os/IBinder;
    goto/16 :goto_4

    .end local v1    # "surface":Landroid/view/SurfaceControl;
    .end local v5    # "dragToken":Landroid/os/IBinder;
    .restart local v18    # "dragToken":Landroid/os/IBinder;
    .local p6, "surface":Landroid/view/SurfaceControl;
    :catchall_8
    move-exception v0

    move/from16 v15, p7

    move/from16 v3, p8

    move/from16 v6, p9

    move/from16 v4, p11

    move-object/from16 v5, v18

    move-object/from16 v1, p6

    .end local v18    # "dragToken":Landroid/os/IBinder;
    .restart local v5    # "dragToken":Landroid/os/IBinder;
    goto/16 :goto_4

    .end local v5    # "dragToken":Landroid/os/IBinder;
    .restart local v18    # "dragToken":Landroid/os/IBinder;
    :catchall_9
    move-exception v0

    move/from16 v15, p7

    move v4, v13

    move-object/from16 v5, v18

    move-object v13, v6

    move v6, v2

    move-object/from16 v1, p6

    .end local v18    # "dragToken":Landroid/os/IBinder;
    .restart local v5    # "dragToken":Landroid/os/IBinder;
    goto/16 :goto_4

    .end local v5    # "dragToken":Landroid/os/IBinder;
    .restart local v18    # "dragToken":Landroid/os/IBinder;
    :catchall_a
    move-exception v0

    move/from16 v15, p7

    move-object v13, v6

    move-object/from16 v5, v18

    move v6, v2

    move-object/from16 v1, p6

    .end local v18    # "dragToken":Landroid/os/IBinder;
    .restart local v5    # "dragToken":Landroid/os/IBinder;
    goto :goto_4

    .line 117
    .end local v5    # "dragToken":Landroid/os/IBinder;
    .end local v16    # "callbackResult":Z
    .restart local v9    # "callbackResult":Z
    .restart local v11    # "callingWin":Lcom/android/server/wm/WindowState;
    .restart local v18    # "dragToken":Landroid/os/IBinder;
    :cond_13
    move/from16 v15, p7

    move-object v13, v6

    move/from16 v16, v9

    move-object/from16 v5, v18

    move v6, v2

    .line 118
    .end local v9    # "callbackResult":Z
    .end local v18    # "dragToken":Landroid/os/IBinder;
    .restart local v5    # "dragToken":Landroid/os/IBinder;
    .restart local v16    # "callbackResult":Z
    :goto_3
    :try_start_17
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad requesting window "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_c

    .line 119
    nop

    .line 185
    if-eqz p6, :cond_14

    .line 186
    :try_start_18
    invoke-virtual/range {p6 .. p6}, Landroid/view/SurfaceControl;->release()V

    .line 188
    :cond_14
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v0, :cond_15

    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_15

    .line 189
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->closeLocked()V

    :cond_15
    monitor-exit v10
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_b

    .line 195
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v0}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    .line 119
    const/4 v0, 0x0

    return-object v0

    .line 192
    .end local v11    # "callingWin":Lcom/android/server/wm/WindowState;
    :catchall_b
    move-exception v0

    move-object/from16 v1, p6

    goto :goto_5

    .line 185
    :catchall_c
    move-exception v0

    move-object/from16 v1, p6

    goto :goto_4

    .end local v5    # "dragToken":Landroid/os/IBinder;
    .end local v16    # "callbackResult":Z
    .restart local v9    # "callbackResult":Z
    .restart local v18    # "dragToken":Landroid/os/IBinder;
    :catchall_d
    move-exception v0

    move/from16 v15, p7

    move-object v13, v6

    move/from16 v16, v9

    move-object/from16 v5, v18

    move v6, v2

    move-object/from16 v1, p6

    .end local v9    # "callbackResult":Z
    .end local v18    # "dragToken":Landroid/os/IBinder;
    .end local p6    # "surface":Landroid/view/SurfaceControl;
    .restart local v1    # "surface":Landroid/view/SurfaceControl;
    .restart local v5    # "dragToken":Landroid/os/IBinder;
    .restart local v16    # "callbackResult":Z
    :goto_4
    if-eqz v1, :cond_16

    .line 186
    :try_start_19
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->release()V

    .line 188
    :cond_16
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v2, :cond_17

    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v2

    if-nez v2, :cond_17

    .line 189
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->closeLocked()V

    .line 191
    :cond_17
    nop

    .end local v1    # "surface":Landroid/view/SurfaceControl;
    .end local v5    # "dragToken":Landroid/os/IBinder;
    .end local v16    # "callbackResult":Z
    .end local p0    # "this":Lcom/android/server/wm/DragDropController;
    .end local p1    # "session":Landroid/view/SurfaceSession;
    .end local p2    # "callerPid":I
    .end local p3    # "callerUid":I
    .end local p4    # "window":Landroid/view/IWindow;
    .end local p5    # "flags":I
    .end local p7    # "touchSource":I
    .end local p8    # "touchX":F
    .end local p9    # "touchY":F
    .end local p10    # "thumbCenterX":F
    .end local p11    # "thumbCenterY":F
    .end local p12    # "data":Landroid/content/ClipData;
    throw v0

    .line 192
    .restart local v1    # "surface":Landroid/view/SurfaceControl;
    .restart local v5    # "dragToken":Landroid/os/IBinder;
    .restart local v16    # "callbackResult":Z
    .restart local p0    # "this":Lcom/android/server/wm/DragDropController;
    .restart local p1    # "session":Landroid/view/SurfaceSession;
    .restart local p2    # "callerPid":I
    .restart local p3    # "callerUid":I
    .restart local p4    # "window":Landroid/view/IWindow;
    .restart local p5    # "flags":I
    .restart local p7    # "touchSource":I
    .restart local p8    # "touchX":F
    .restart local p9    # "touchY":F
    .restart local p10    # "thumbCenterX":F
    .restart local p11    # "thumbCenterY":F
    .restart local p12    # "data":Landroid/content/ClipData;
    :catchall_e
    move-exception v0

    :goto_5
    monitor-exit v10
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_e

    :try_start_1a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v1    # "surface":Landroid/view/SurfaceControl;
    .end local v5    # "dragToken":Landroid/os/IBinder;
    .end local v16    # "callbackResult":Z
    .end local p0    # "this":Lcom/android/server/wm/DragDropController;
    .end local p1    # "session":Landroid/view/SurfaceSession;
    .end local p2    # "callerPid":I
    .end local p3    # "callerUid":I
    .end local p4    # "window":Landroid/view/IWindow;
    .end local p5    # "flags":I
    .end local p7    # "touchSource":I
    .end local p8    # "touchX":F
    .end local p9    # "touchY":F
    .end local p10    # "thumbCenterX":F
    .end local p11    # "thumbCenterY":F
    .end local p12    # "data":Landroid/content/ClipData;
    throw v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_f

    .line 195
    .restart local v1    # "surface":Landroid/view/SurfaceControl;
    .restart local v5    # "dragToken":Landroid/os/IBinder;
    .restart local v16    # "callbackResult":Z
    .restart local p0    # "this":Lcom/android/server/wm/DragDropController;
    .restart local p1    # "session":Landroid/view/SurfaceSession;
    .restart local p2    # "callerPid":I
    .restart local p3    # "callerUid":I
    .restart local p4    # "window":Landroid/view/IWindow;
    .restart local p5    # "flags":I
    .restart local p7    # "touchSource":I
    .restart local p8    # "touchX":F
    .restart local p9    # "touchY":F
    .restart local p10    # "thumbCenterX":F
    .restart local p11    # "thumbCenterY":F
    .restart local p12    # "data":Landroid/content/ClipData;
    :catchall_f
    move-exception v0

    goto :goto_6

    .end local v1    # "surface":Landroid/view/SurfaceControl;
    .end local v5    # "dragToken":Landroid/os/IBinder;
    .end local v16    # "callbackResult":Z
    .restart local v9    # "callbackResult":Z
    .restart local v18    # "dragToken":Landroid/os/IBinder;
    .restart local p6    # "surface":Landroid/view/SurfaceControl;
    :catchall_10
    move-exception v0

    move/from16 v15, p7

    move-object v13, v6

    move/from16 v16, v9

    move-object/from16 v5, v18

    move v6, v2

    move-object/from16 v1, p6

    .end local v9    # "callbackResult":Z
    .end local v18    # "dragToken":Landroid/os/IBinder;
    .end local p6    # "surface":Landroid/view/SurfaceControl;
    .restart local v1    # "surface":Landroid/view/SurfaceControl;
    .restart local v5    # "dragToken":Landroid/os/IBinder;
    .restart local v16    # "callbackResult":Z
    :goto_6
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v2}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    .line 196
    throw v0
.end method

.method registerCallback(Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    .line 78
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method reportDropResult(Landroid/view/IWindow;Z)V
    .locals 6
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "consumed"    # Z

    .line 200
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 201
    .local v0, "token":Landroid/os/IBinder;
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v1, :cond_0

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Drop result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " reported by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v1, p1, p2}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->preReportDropResult(Landroid/view/IWindow;Z)V

    .line 207
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 208
    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-nez v2, :cond_1

    .line 211
    const-string v2, "WindowManager"

    const-string v3, "Drop result given but no drag in progress"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postReportDropResult()V

    .line 212
    return-void

    .line 215
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v2, v2, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    if-ne v2, v0, :cond_3

    .line 224
    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 225
    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1, v4}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 226
    .local v2, "callingWin":Lcom/android/server/wm/WindowState;
    if-nez v2, :cond_2

    .line 227
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad result-reporting window "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 235
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postReportDropResult()V

    .line 228
    return-void

    .line 231
    :cond_2
    :try_start_3
    iget-object v3, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iput-boolean p2, v3, Lcom/android/server/wm/DragState;->mDragResult:Z

    .line 232
    iget-object v3, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v3}, Lcom/android/server/wm/DragState;->endDragLocked()V

    .line 233
    .end local v2    # "callingWin":Lcom/android/server/wm/WindowState;
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 235
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postReportDropResult()V

    .line 236
    nop

    .line 237
    return-void

    .line 217
    :cond_3
    :try_start_5
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid drop-result claim by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "reportDropResult() by non-recipient"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "token":Landroid/os/IBinder;
    .end local p0    # "this":Lcom/android/server/wm/DragDropController;
    .end local p1    # "window":Landroid/view/IWindow;
    .end local p2    # "consumed":Z
    throw v2

    .line 233
    .restart local v0    # "token":Landroid/os/IBinder;
    .restart local p0    # "this":Lcom/android/server/wm/DragDropController;
    .restart local p1    # "window":Landroid/view/IWindow;
    .restart local p2    # "consumed":Z
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "token":Landroid/os/IBinder;
    .end local p0    # "this":Lcom/android/server/wm/DragDropController;
    .end local p1    # "window":Landroid/view/IWindow;
    .end local p2    # "consumed":Z
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 235
    .restart local v0    # "token":Landroid/os/IBinder;
    .restart local p0    # "this":Lcom/android/server/wm/DragDropController;
    .restart local p1    # "window":Landroid/view/IWindow;
    .restart local p2    # "consumed":Z
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v2}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postReportDropResult()V

    .line 236
    throw v1
.end method

.method sendDragStartedIfNeededLocked(Lcom/android/server/wm/WindowState;)V
    .locals 1
    .param p1, "window"    # Lcom/android/server/wm/WindowState;

    .line 88
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DragState;->sendDragStartedIfNeededLocked(Lcom/android/server/wm/WindowState;)V

    .line 89
    return-void
.end method

.method sendHandlerMessage(ILjava/lang/Object;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg"    # Ljava/lang/Object;

    .line 307
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 308
    return-void
.end method

.method sendTimeoutMessage(ILjava/lang/Object;)V
    .locals 4
    .param p1, "what"    # I
    .param p2, "arg"    # Ljava/lang/Object;

    .line 314
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 315
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 316
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 317
    return-void
.end method
