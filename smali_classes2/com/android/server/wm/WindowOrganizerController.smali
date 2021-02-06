.class Lcom/android/server/wm/WindowOrganizerController;
.super Landroid/window/IWindowOrganizerController$Stub;
.source "WindowOrganizerController.java"

# interfaces
.implements Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;


# static fields
.field static final CONTROLLABLE_CONFIGS:I = 0x20000c00

.field static final CONTROLLABLE_WINDOW_CONFIGS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "WindowOrganizerController"

.field private static final TRANSACT_EFFECTS_CLIENT_CONFIG:I = 0x1

.field private static final TRANSACT_EFFECTS_LIFECYCLE:I = 0x2


# instance fields
.field private final mBLASTSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

.field final mDisplayAreaOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

.field private final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field final mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

.field private final mTransactionCallbacksByPendingSyncId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/window/IWindowContainerTransactionCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 2
    .param p1, "atm"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 89
    invoke-direct {p0}, Landroid/window/IWindowOrganizerController$Stub;-><init>()V

    .line 82
    new-instance v0, Lcom/android/server/wm/BLASTSyncEngine;

    invoke-direct {v0}, Lcom/android/server/wm/BLASTSyncEngine;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mBLASTSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransactionCallbacksByPendingSyncId:Ljava/util/HashMap;

    .line 90
    iput-object p1, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 91
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 92
    new-instance v0, Lcom/android/server/wm/TaskOrganizerController;

    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskOrganizerController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 93
    new-instance v0, Lcom/android/server/wm/DisplayAreaOrganizerController;

    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/wm/DisplayAreaOrganizerController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mDisplayAreaOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

    .line 94
    return-void
.end method

.method private applyChanges(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;)I
    .locals 5
    .param p1, "container"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "change"    # Landroid/window/WindowContainerTransaction$Change;

    .line 241
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getConfigSetMask()I

    move-result v0

    const v1, 0x20000c00

    and-int/2addr v0, v1

    .line 242
    .local v0, "configMask":I
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getWindowSetMask()I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    .line 243
    .local v1, "windowMask":I
    const/4 v2, 0x0

    .line 244
    .local v2, "effects":I
    if-eqz v0, :cond_0

    .line 245
    new-instance v3, Landroid/content/res/Configuration;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 246
    .local v3, "c":Landroid/content/res/Configuration;
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;II)V

    .line 247
    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 250
    invoke-direct {p0, p1, v0, v1, v3}, Lcom/android/server/wm/WindowOrganizerController;->resizePinnedStackIfNeeded(Lcom/android/server/wm/ConfigurationContainer;IILandroid/content/res/Configuration;)V

    .line 251
    or-int/lit8 v2, v2, 0x1

    .line 253
    .end local v3    # "c":Landroid/content/res/Configuration;
    :cond_0
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    .line 254
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getFocusable()Z

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowContainer;->setFocusable(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 255
    or-int/lit8 v2, v2, 0x2

    .line 259
    :cond_1
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getWindowingMode()I

    move-result v3

    .line 260
    .local v3, "windowingMode":I
    const/4 v4, -0x1

    if-le v3, v4, :cond_2

    .line 261
    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowContainer;->setWindowingMode(I)V

    .line 263
    :cond_2
    return v2
.end method

.method private applyTaskChanges(Lcom/android/server/wm/Task;Landroid/window/WindowContainerTransaction$Change;)I
    .locals 6
    .param p1, "tr"    # Lcom/android/server/wm/Task;
    .param p2, "c"    # Landroid/window/WindowContainerTransaction$Change;

    .line 267
    const/4 v0, 0x0

    .line 268
    .local v0, "effects":I
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getBoundsChangeTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    .line 270
    .local v1, "t":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    .line 271
    const/4 v2, 0x2

    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getHidden()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/android/server/wm/Task;->setForceHidden(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 272
    const/4 v0, 0x2

    .line 276
    :cond_0
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getActivityWindowingMode()I

    move-result v2

    .line 277
    .local v2, "childWindowingMode":I
    const/4 v3, -0x1

    if-le v2, v3, :cond_1

    .line 278
    invoke-virtual {p1, v2}, Lcom/android/server/wm/Task;->setActivityWindowingMode(I)V

    .line 281
    :cond_1
    if-eqz v1, :cond_2

    .line 282
    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 285
    :cond_2
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getEnterPipBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 286
    .local v3, "enterPipBounds":Landroid/graphics/Rect;
    if-eqz v3, :cond_3

    .line 287
    iget-object v4, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v3, v5}, Lcom/android/server/wm/ActivityStackSupervisor;->updatePictureInPictureMode(Lcom/android/server/wm/Task;Landroid/graphics/Rect;Z)V

    .line 290
    :cond_3
    return v0
.end method

.method private applyWindowContainerChange(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;)I
    .locals 2
    .param p1, "wc"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "c"    # Landroid/window/WindowContainerTransaction$Change;

    .line 373
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowOrganizerController;->sanitizeWindowContainer(Lcom/android/server/wm/WindowContainer;)V

    .line 375
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowOrganizerController;->applyChanges(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;)I

    move-result v0

    .line 377
    .local v0, "effects":I
    instance-of v1, p1, Lcom/android/server/wm/Task;

    if-eqz v1, :cond_0

    .line 378
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/wm/WindowOrganizerController;->applyTaskChanges(Lcom/android/server/wm/Task;Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/2addr v0, v1

    .line 381
    :cond_0
    return v0
.end method

.method private enforceStackPermission(Ljava/lang/String;)V
    .locals 2
    .param p1, "func"    # Ljava/lang/String;

    .line 483
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    return-void
.end method

.method private resizePinnedStackIfNeeded(Lcom/android/server/wm/ConfigurationContainer;IILandroid/content/res/Configuration;)V
    .locals 3
    .param p1, "container"    # Lcom/android/server/wm/ConfigurationContainer;
    .param p2, "configMask"    # I
    .param p3, "windowMask"    # I
    .param p4, "config"    # Landroid/content/res/Configuration;

    .line 386
    instance-of v0, p1, Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_0

    const/high16 v0, 0x20000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    .line 389
    move-object v0, p1

    check-cast v0, Lcom/android/server/wm/ActivityStack;

    .line 390
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 391
    iget-object v1, p4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/wm/ActivityStack;->resize(Landroid/graphics/Rect;ZZ)V

    .line 395
    .end local v0    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_0
    return-void
.end method

.method private sanitizeAndApplyHierarchyOp(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$HierarchyOp;)I
    .locals 11
    .param p1, "container"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "hop"    # Landroid/window/WindowContainerTransaction$HierarchyOp;

    .line 295
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 296
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_11

    .line 299
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 300
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    const-string v2, "WindowOrganizerController"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 301
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Container is no longer attached: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return v3

    .line 304
    :cond_0
    move-object v4, v0

    check-cast v4, Lcom/android/server/wm/ActivityStack;

    .line 306
    .local v4, "as":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->isReparent()Z

    move-result v5

    const v6, 0x7fffffff

    const/high16 v7, -0x80000000

    if-eqz v5, :cond_d

    .line 307
    nop

    .line 308
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v5, v0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v5, :cond_2

    .line 309
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v5, :cond_3

    :cond_2
    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    move v5, v3

    .line 310
    .local v5, "isNonOrganizedRootableTask":Z
    :goto_0
    if-eqz v5, :cond_c

    .line 311
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v8

    if-nez v8, :cond_4

    const/4 v8, 0x0

    goto :goto_1

    .line 312
    :cond_4
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v8

    :goto_1
    nop

    .line 313
    .local v8, "newParent":Lcom/android/server/wm/Task;
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v9

    if-eq v9, v8, :cond_9

    .line 314
    const-string v9, " task="

    if-nez v8, :cond_6

    .line 317
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v7

    if-ne v6, v7, :cond_5

    .line 318
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t reparent task to DefaultTaskDisplayArea if its parent is already DefaultTaskDisplayArea task.getParent()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 318
    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    return v3

    .line 324
    :cond_5
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v3

    invoke-virtual {v4, v2, v3}, Lcom/android/server/wm/ActivityStack;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    goto :goto_4

    .line 325
    :cond_6
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->inMultiWindowMode()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v10

    if-nez v10, :cond_7

    .line 326
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 327
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t support task that doesn\'t support multi-window mode in multi-window mode... newParent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    return v3

    .line 331
    :cond_7
    move-object v2, v8

    check-cast v2, Lcom/android/server/wm/ActivityStack;

    .line 332
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v9

    if-eqz v9, :cond_8

    goto :goto_2

    :cond_8
    move v6, v7

    .line 331
    :goto_2
    const-string v7, "sanitizeAndApplyHierarchyOp"

    invoke-virtual {v0, v2, v6, v3, v7}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/ActivityStack;IZLjava/lang/String;)V

    goto :goto_4

    .line 337
    :cond_9
    if-eqz v8, :cond_a

    move-object v2, v8

    goto :goto_3

    :cond_a
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    :goto_3
    check-cast v2, Lcom/android/server/wm/ActivityStack;

    .line 338
    .local v2, "rootTask":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 339
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAtTop(Lcom/android/server/wm/ActivityStack;Z)V

    goto :goto_4

    .line 342
    :cond_b
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAtBottom(Lcom/android/server/wm/ActivityStack;)V

    .line 345
    .end local v2    # "rootTask":Lcom/android/server/wm/ActivityStack;
    .end local v8    # "newParent":Lcom/android/server/wm/Task;
    :goto_4
    nop

    .line 348
    .end local v5    # "isNonOrganizedRootableTask":Z
    goto :goto_6

    .line 346
    .restart local v5    # "isNonOrganizedRootableTask":Z
    :cond_c
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Reparenting leaf Tasks is not supported now."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 350
    .end local v5    # "isNonOrganizedRootableTask":Z
    :cond_d
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 351
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 352
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {v2, v4, v3}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAtTop(Lcom/android/server/wm/ActivityStack;Z)V

    goto :goto_6

    .line 354
    :cond_e
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAtBottom(Lcom/android/server/wm/ActivityStack;)V

    goto :goto_6

    .line 357
    :cond_f
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    .line 358
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v5

    if-eqz v5, :cond_10

    goto :goto_5

    :cond_10
    move v6, v7

    .line 357
    :goto_5
    invoke-virtual {v2, v6, v0, v3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 362
    :goto_6
    const/4 v2, 0x2

    return v2

    .line 297
    .end local v1    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v4    # "as":Lcom/android/server/wm/ActivityStack;
    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid container in hierarchy op"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private sanitizeWindowContainer(Lcom/android/server/wm/WindowContainer;)V
    .locals 2
    .param p1, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 366
    instance-of v0, p1, Lcom/android/server/wm/Task;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/android/server/wm/DisplayArea;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 367
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid token in task or displayArea transaction"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method addToSyncSet(ILcom/android/server/wm/WindowContainer;)V
    .locals 1
    .param p1, "syncId"    # I
    .param p2, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 423
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mBLASTSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/BLASTSyncEngine;->addToSyncSet(ILcom/android/server/wm/WindowContainer;)Z

    .line 424
    return-void
.end method

.method public applySyncTransaction(Landroid/window/WindowContainerTransaction;Landroid/window/IWindowContainerTransactionCallback;)I
    .locals 17
    .param p1, "t"    # Landroid/window/WindowContainerTransaction;
    .param p2, "callback"    # Landroid/window/IWindowContainerTransactionCallback;

    .line 104
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v0, "applySyncTransaction()"

    invoke-direct {v1, v0}, Lcom/android/server/wm/WindowOrganizerController;->enforceStackPermission(Ljava/lang/String;)V

    .line 105
    const/4 v3, -0x1

    .line 106
    .local v3, "syncId":I
    if-eqz p1, :cond_15

    .line 110
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 112
    .local v4, "ident":J
    :try_start_0
    iget-object v6, v1, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 113
    const/4 v7, 0x0

    .line 127
    .local v7, "effects":I
    if-eqz v2, :cond_0

    .line 128
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowOrganizerController;->startSyncWithOrganizer(Landroid/window/IWindowContainerTransactionCallback;)I

    move-result v0

    move v3, v0

    .line 130
    :cond_0
    iget-object v0, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 132
    :try_start_2
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v8, v0

    .line 133
    .local v8, "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    nop

    .line 134
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getChanges()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 135
    .local v0, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 136
    nop

    .line 137
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 138
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/IBinder;

    invoke-static {v10}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v10

    .line 139
    .local v10, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v11

    if-nez v11, :cond_1

    .line 140
    const-string v11, "WindowOrganizerController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Attempt to operate on detached container: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    goto :goto_0

    .line 146
    :cond_1
    if-ltz v3, :cond_2

    .line 147
    invoke-virtual {v1, v3, v10}, Lcom/android/server/wm/WindowOrganizerController;->addToSyncSet(ILcom/android/server/wm/WindowContainer;)V

    .line 150
    :cond_2
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/window/WindowContainerTransaction$Change;

    invoke-direct {v1, v10, v11}, Lcom/android/server/wm/WindowOrganizerController;->applyWindowContainerChange(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;)I

    move-result v11

    .line 151
    .local v11, "containerEffect":I
    or-int/2addr v7, v11

    .line 154
    and-int/lit8 v12, v7, 0x2

    if-nez v12, :cond_3

    and-int/lit8 v12, v11, 0x1

    if-eqz v12, :cond_3

    .line 156
    invoke-virtual {v8, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 158
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;"
    .end local v10    # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v11    # "containerEffect":I
    :cond_3
    goto :goto_0

    .line 160
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    move-result-object v9

    .line 161
    .local v9, "hops":Ljava/util/List;, "Ljava/util/List<Landroid/window/WindowContainerTransaction$HierarchyOp;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    .local v11, "n":I
    :goto_1
    if-ge v10, v11, :cond_7

    .line 162
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/window/WindowContainerTransaction$HierarchyOp;

    .line 163
    .local v12, "hop":Landroid/window/WindowContainerTransaction$HierarchyOp;
    invoke-virtual {v12}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v13

    .line 164
    .local v13, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v14

    if-nez v14, :cond_5

    .line 165
    const-string v14, "WindowOrganizerController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    .end local v0    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    .local v16, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    const-string v0, "Attempt to operate on detached container: "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    goto :goto_2

    .line 168
    .end local v16    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    .restart local v0    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    :cond_5
    move-object/from16 v16, v0

    .end local v0    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    .restart local v16    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    if-ltz v3, :cond_6

    .line 169
    invoke-virtual {v1, v3, v13}, Lcom/android/server/wm/WindowOrganizerController;->addToSyncSet(ILcom/android/server/wm/WindowContainer;)V

    .line 171
    :cond_6
    invoke-direct {v1, v13, v12}, Lcom/android/server/wm/WindowOrganizerController;->sanitizeAndApplyHierarchyOp(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$HierarchyOp;)I

    move-result v0

    or-int/2addr v7, v0

    .line 161
    .end local v12    # "hop":Landroid/window/WindowContainerTransaction$HierarchyOp;
    .end local v13    # "wc":Lcom/android/server/wm/WindowContainer;
    :goto_2
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, v16

    goto :goto_1

    .end local v16    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    .restart local v0    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    :cond_7
    move-object/from16 v16, v0

    .line 175
    .end local v0    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    .end local v10    # "i":I
    .end local v11    # "n":I
    .restart local v16    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getChanges()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v10, v0

    .line 176
    .end local v16    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    .local v10, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 177
    nop

    .line 178
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 179
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/IBinder;

    invoke-static {v12}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v12

    .line 180
    .local v12, "task":Lcom/android/server/wm/Task;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/window/WindowContainerTransaction$Change;

    invoke-virtual {v13}, Landroid/window/WindowContainerTransaction$Change;->getBoundsChangeSurfaceBounds()Landroid/graphics/Rect;

    move-result-object v13

    .line 181
    .local v13, "surfaceBounds":Landroid/graphics/Rect;
    if-eqz v12, :cond_d

    invoke-virtual {v12}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v14

    if-eqz v14, :cond_d

    if-nez v13, :cond_8

    .line 182
    goto :goto_3

    .line 184
    :cond_8
    invoke-virtual {v12}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v14

    if-nez v14, :cond_b

    .line 186
    invoke-virtual {v12}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v14

    if-eqz v14, :cond_9

    invoke-virtual {v12}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v14

    goto :goto_4

    :cond_9
    const/4 v14, 0x0

    .line 189
    .local v14, "parent":Lcom/android/server/wm/Task;
    :goto_4
    if-eqz v14, :cond_a

    iget-boolean v15, v14, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v15, :cond_a

    move-object/from16 v16, v0

    goto :goto_5

    .line 190
    :cond_a
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;"
    .local v16, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;"
    const-string v0, "Can\'t manipulate non-organized task surface "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "syncId":I
    .end local v4    # "ident":J
    .end local v7    # "effects":I
    .end local p0    # "this":Lcom/android/server/wm/WindowOrganizerController;
    .end local p1    # "t":Landroid/window/WindowContainerTransaction;
    .end local p2    # "callback":Landroid/window/IWindowContainerTransactionCallback;
    throw v11

    .line 184
    .end local v14    # "parent":Lcom/android/server/wm/Task;
    .end local v16    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;"
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;"
    .restart local v3    # "syncId":I
    .restart local v4    # "ident":J
    .restart local v7    # "effects":I
    .restart local p0    # "this":Lcom/android/server/wm/WindowOrganizerController;
    .restart local p1    # "t":Landroid/window/WindowContainerTransaction;
    .restart local p2    # "callback":Landroid/window/IWindowContainerTransactionCallback;
    :cond_b
    move-object/from16 v16, v0

    .line 194
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;"
    .restart local v16    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;"
    :goto_5
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 195
    .local v0, "sft":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual {v12}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v14

    .line 196
    .local v14, "sc":Landroid/view/SurfaceControl;
    iget v15, v13, Landroid/graphics/Rect;->left:I

    int-to-float v15, v15

    iget v11, v13, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    invoke-virtual {v0, v14, v15, v11}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 197
    invoke-virtual {v13}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 198
    const/4 v11, 0x0

    invoke-virtual {v0, v14, v11}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_6

    .line 200
    :cond_c
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v15

    invoke-virtual {v0, v14, v11, v15}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 202
    :goto_6
    invoke-virtual {v12, v0}, Lcom/android/server/wm/Task;->setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 203
    .end local v0    # "sft":Landroid/view/SurfaceControl$Transaction;
    .end local v12    # "task":Lcom/android/server/wm/Task;
    .end local v13    # "surfaceBounds":Landroid/graphics/Rect;
    .end local v14    # "sc":Landroid/view/SurfaceControl;
    .end local v16    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;"
    goto/16 :goto_3

    .line 181
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;"
    .restart local v12    # "task":Lcom/android/server/wm/Task;
    .restart local v13    # "surfaceBounds":Landroid/graphics/Rect;
    :cond_d
    move-object/from16 v16, v0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;"
    .restart local v16    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;"
    goto/16 :goto_3

    .line 204
    .end local v12    # "task":Lcom/android/server/wm/Task;
    .end local v13    # "surfaceBounds":Landroid/graphics/Rect;
    .end local v16    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;"
    :cond_e
    and-int/lit8 v0, v7, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v0, :cond_f

    .line 206
    iget-object v0, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v13, 0x0

    invoke-virtual {v0, v13, v11, v12}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    goto :goto_8

    .line 208
    :cond_f
    and-int/lit8 v0, v7, 0x1

    if-eqz v0, :cond_11

    .line 209
    sget-object v0, Lcom/android/server/wm/-$$Lambda$1uR2GodW3-TXQGLlsV_nCi1hRIE;->INSTANCE:Lcom/android/server/wm/-$$Lambda$1uR2GodW3-TXQGLlsV_nCi1hRIE;

    const-class v13, Lcom/android/server/wm/ActivityRecord;

    .line 211
    invoke-static {v13}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v13

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 212
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    .line 209
    invoke-static {v0, v13, v11, v14}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v11, v0

    .line 214
    .local v11, "f":Lcom/android/internal/util/function/pooled/PooledConsumer;
    :try_start_3
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v0

    sub-int/2addr v0, v12

    .local v0, "i":I
    :goto_7
    if-ltz v0, :cond_10

    .line 215
    invoke-virtual {v8, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v13, v11}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 214
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 218
    .end local v0    # "i":I
    :cond_10
    :try_start_4
    invoke-interface {v11}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 219
    goto :goto_8

    .line 218
    :catchall_0
    move-exception v0

    invoke-interface {v11}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 219
    nop

    .end local v3    # "syncId":I
    .end local v4    # "ident":J
    .end local v7    # "effects":I
    .end local p0    # "this":Lcom/android/server/wm/WindowOrganizerController;
    .end local p1    # "t":Landroid/window/WindowContainerTransaction;
    .end local p2    # "callback":Landroid/window/IWindowContainerTransactionCallback;
    throw v0

    .line 222
    .end local v11    # "f":Lcom/android/internal/util/function/pooled/PooledConsumer;
    .restart local v3    # "syncId":I
    .restart local v4    # "ident":J
    .restart local v7    # "effects":I
    .restart local p0    # "this":Lcom/android/server/wm/WindowOrganizerController;
    .restart local p1    # "t":Landroid/window/WindowContainerTransaction;
    .restart local p2    # "callback":Landroid/window/IWindowContainerTransactionCallback;
    :cond_11
    :goto_8
    and-int/lit8 v0, v7, 0x1

    if-nez v0, :cond_12

    .line 223
    iget-object v0, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, v12}, Lcom/android/server/wm/ActivityTaskManagerService;->addWindowLayoutReasons(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 226
    .end local v8    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .end local v9    # "hops":Ljava/util/List;, "Ljava/util/List<Landroid/window/WindowContainerTransaction$HierarchyOp;>;"
    .end local v10    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    :cond_12
    :try_start_5
    iget-object v0, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 227
    if-ltz v3, :cond_13

    .line 228
    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowOrganizerController;->setSyncReady(I)V

    .line 231
    .end local v7    # "effects":I
    :cond_13
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 233
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 234
    nop

    .line 235
    return v3

    .line 226
    .restart local v7    # "effects":I
    :catchall_1
    move-exception v0

    :try_start_7
    iget-object v8, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 227
    if-ltz v3, :cond_14

    .line 228
    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowOrganizerController;->setSyncReady(I)V

    .line 230
    :cond_14
    nop

    .end local v3    # "syncId":I
    .end local v4    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/WindowOrganizerController;
    .end local p1    # "t":Landroid/window/WindowContainerTransaction;
    .end local p2    # "callback":Landroid/window/IWindowContainerTransactionCallback;
    throw v0

    .line 231
    .end local v7    # "effects":I
    .restart local v3    # "syncId":I
    .restart local v4    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/WindowOrganizerController;
    .restart local p1    # "t":Landroid/window/WindowContainerTransaction;
    .restart local p2    # "callback":Landroid/window/IWindowContainerTransactionCallback;
    :catchall_2
    move-exception v0

    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v3    # "syncId":I
    .end local v4    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/WindowOrganizerController;
    .end local p1    # "t":Landroid/window/WindowContainerTransaction;
    .end local p2    # "callback":Landroid/window/IWindowContainerTransactionCallback;
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 233
    .restart local v3    # "syncId":I
    .restart local v4    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/WindowOrganizerController;
    .restart local p1    # "t":Landroid/window/WindowContainerTransaction;
    .restart local p2    # "callback":Landroid/window/IWindowContainerTransactionCallback;
    :catchall_3
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 234
    throw v0

    .line 107
    .end local v4    # "ident":J
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "Null transaction passed to applySyncTransaction"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public applyTransaction(Landroid/window/WindowContainerTransaction;)V
    .locals 1
    .param p1, "t"    # Landroid/window/WindowContainerTransaction;

    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowOrganizerController;->applySyncTransaction(Landroid/window/WindowContainerTransaction;Landroid/window/IWindowContainerTransactionCallback;)I

    .line 99
    return-void
.end method

.method public getDisplayAreaOrganizerController()Landroid/window/IDisplayAreaOrganizerController;
    .locals 1

    .line 405
    const-string v0, "getDisplayAreaOrganizerController()"

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowOrganizerController;->enforceStackPermission(Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mDisplayAreaOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

    return-object v0
.end method

.method public getTaskOrganizerController()Landroid/window/ITaskOrganizerController;
    .locals 1

    .line 399
    const-string v0, "getTaskOrganizerController()"

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowOrganizerController;->enforceStackPermission(Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    return-object v0
.end method

.method public onTransactionReady(ILjava/util/Set;)V
    .locals 4
    .param p1, "mSyncId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;)V"
        }
    .end annotation

    .line 428
    .local p2, "windowContainersReady":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wm/WindowContainer;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransactionCallbacksByPendingSyncId:Ljava/util/HashMap;

    .line 429
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/IWindowContainerTransactionCallback;

    .line 431
    .local v0, "callback":Landroid/window/IWindowContainerTransactionCallback;
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 432
    .local v1, "mergedTransaction":Landroid/view/SurfaceControl$Transaction;
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 433
    .local v3, "container":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowContainer;->mergeBlastSyncTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 434
    .end local v3    # "container":Lcom/android/server/wm/WindowContainer;
    goto :goto_0

    .line 437
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, v1}, Landroid/window/IWindowContainerTransactionCallback;->onTransactionReady(ILandroid/view/SurfaceControl$Transaction;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    goto :goto_1

    .line 438
    :catch_0
    move-exception v2

    .line 441
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 444
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    iget-object v2, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransactionCallbacksByPendingSyncId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    return-void
.end method

.method setSyncReady(I)V
    .locals 1
    .param p1, "id"    # I

    .line 418
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mBLASTSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/BLASTSyncEngine;->setReady(I)V

    .line 419
    return-void
.end method

.method startSyncWithOrganizer(Landroid/window/IWindowContainerTransactionCallback;)I
    .locals 3
    .param p1, "callback"    # Landroid/window/IWindowContainerTransactionCallback;

    .line 411
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mBLASTSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/BLASTSyncEngine;->startSyncSet(Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;)I

    move-result v0

    .line 412
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransactionCallbacksByPendingSyncId:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    return v0
.end method

.method public takeScreenshot(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;)Z
    .locals 8
    .param p1, "token"    # Landroid/window/WindowContainerToken;
    .param p2, "outSurfaceControl"    # Landroid/view/SurfaceControl;

    .line 449
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.READ_FRAME_BUFFER"

    const-string v2, "takeScreenshot()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 451
    .local v0, "wc":Lcom/android/server/wm/WindowContainer;
    if-eqz v0, :cond_2

    .line 455
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 456
    .local v1, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->getBounds(Landroid/graphics/Rect;)V

    .line 457
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 458
    nop

    .line 459
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    .line 458
    invoke-static {v3, v1, v4}, Landroid/view/SurfaceControl;->captureLayers(Landroid/view/SurfaceControl;Landroid/graphics/Rect;F)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object v3

    .line 461
    .local v3, "buffer":Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 465
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mSurfaceControlFactory:Ljava/util/function/Function;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl$Builder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 466
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " - Organizer Screenshot"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 467
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    const/4 v5, -0x3

    .line 468
    invoke-virtual {v2, v5}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 469
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 470
    const-string v5, "WindowOrganizerController.takeScreenshot"

    invoke-virtual {v2, v5}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 471
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v2

    .line 473
    .local v2, "screenshot":Landroid/view/SurfaceControl;
    new-instance v6, Landroid/view/Surface;

    invoke-direct {v6}, Landroid/view/Surface;-><init>()V

    .line 474
    .local v6, "surface":Landroid/view/Surface;
    invoke-virtual {v6, v2}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 475
    invoke-virtual {v3}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Landroid/view/Surface;->attachAndQueueBufferWithColorSpace(Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;)V

    .line 476
    invoke-virtual {v6}, Landroid/view/Surface;->release()V

    .line 478
    invoke-virtual {p2, v2, v5}, Landroid/view/SurfaceControl;->copyFrom(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 479
    const/4 v4, 0x1

    return v4

    .line 462
    .end local v2    # "screenshot":Landroid/view/SurfaceControl;
    .end local v6    # "surface":Landroid/view/Surface;
    :cond_1
    :goto_0
    return v2

    .line 452
    .end local v1    # "bounds":Landroid/graphics/Rect;
    .end local v3    # "buffer":Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Invalid token in screenshot transaction"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
