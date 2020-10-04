.class public Lcom/android/server/wm/TaskTapPointerEventListener;
.super Ljava/lang/Object;
.source "TaskTapPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# instance fields
.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mPerfObj:Landroid/util/BoostFramework;

.field private mPointerIconType:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTouchExcludeRegion:Landroid/graphics/Region;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    .line 47
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPerfObj:Landroid/util/BoostFramework;

    .line 52
    iput-object p1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 53
    iput-object p2, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 54
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPerfObj:Landroid/util/BoostFramework;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPerfObj:Landroid/util/BoostFramework;

    .line 57
    :cond_0
    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v1, 0x7

    const/4 v2, 0x1

    const/16 v3, 0x37

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto/16 :goto_4

    .line 112
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 113
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 114
    .local v1, "y":I
    iget v4, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    if-eq v4, v2, :cond_e

    .line 115
    iput v2, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    .line 117
    iget-object v2, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 118
    iget-object v2, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v4, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 119
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_4

    .line 76
    .end local v0    # "x":I
    .end local v1    # "y":I
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 77
    .restart local v0    # "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 78
    .restart local v1    # "y":I
    iget-object v4, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4, v0, v1}, Lcom/android/server/wm/DisplayContent;->findTaskForResizePoint(II)Lcom/android/server/wm/Task;

    move-result-object v4

    .line 79
    .local v4, "task":Lcom/android/server/wm/Task;
    const/4 v5, 0x1

    .line 80
    .local v5, "iconType":I
    if-eqz v4, :cond_9

    .line 81
    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v6}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 82
    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-nez v6, :cond_9

    .line 83
    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    const/16 v7, 0x3f6

    const/16 v8, 0x3f8

    const/16 v9, 0x3f9

    if-ge v0, v6, :cond_4

    .line 85
    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    if-ge v1, v6, :cond_2

    move v7, v9

    goto :goto_0

    .line 86
    :cond_2
    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    if-le v1, v6, :cond_3

    move v7, v8

    goto :goto_0

    .line 87
    :cond_3
    nop

    :goto_0
    move v5, v7

    goto :goto_2

    .line 88
    :cond_4
    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    if-le v0, v6, :cond_7

    .line 90
    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    if-ge v1, v6, :cond_5

    move v7, v8

    goto :goto_1

    .line 91
    :cond_5
    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    if-le v1, v6, :cond_6

    move v7, v9

    goto :goto_1

    .line 92
    :cond_6
    nop

    :goto_1
    move v5, v7

    goto :goto_2

    .line 93
    :cond_7
    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    if-lt v1, v6, :cond_8

    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    if-le v1, v6, :cond_9

    .line 94
    :cond_8
    const/16 v5, 0x3f7

    .line 98
    :cond_9
    :goto_2
    iget v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    if-eq v6, v5, :cond_b

    .line 99
    iput v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    .line 100
    iget v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    if-ne v6, v2, :cond_a

    .line 102
    iget-object v2, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 103
    iget-object v2, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v3, v0, v1, v6}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 104
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    .line 106
    :cond_a
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    invoke-virtual {v2, v3}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    .line 110
    .end local v0    # "x":I
    .end local v1    # "y":I
    .end local v4    # "task":Lcom/android/server/wm/Task;
    .end local v5    # "iconType":I
    :cond_b
    :goto_3
    goto :goto_4

    .line 63
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 64
    .restart local v0    # "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 66
    .restart local v1    # "y":I
    monitor-enter p0

    .line 67
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v2

    if-nez v2, :cond_d

    .line 68
    iget-object v2, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    iget-object v3, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/wm/TaskPositioningController;->handleTapOutsideTask(Lcom/android/server/wm/DisplayContent;II)V

    .line 71
    :cond_d
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .end local v0    # "x":I
    .end local v1    # "y":I
    nop

    .line 124
    :cond_e
    :goto_4
    sget-boolean v0, Lcom/android/server/wm/ActivityStackSupervisor;->mIsPerfBoostAcquired:Z

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPerfObj:Landroid/util/BoostFramework;

    if-eqz v0, :cond_10

    .line 125
    sget v0, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfHandle:I

    if-lez v0, :cond_f

    .line 126
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPerfObj:Landroid/util/BoostFramework;

    sget v3, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfHandle:I

    invoke-virtual {v0, v3}, Landroid/util/BoostFramework;->perfLockReleaseHandler(I)I

    .line 127
    sput v1, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfHandle:I

    .line 129
    :cond_f
    sput-boolean v2, Lcom/android/server/wm/ActivityStackSupervisor;->mIsPerfBoostAcquired:Z

    .line 131
    :cond_10
    sget-boolean v0, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfSendTapHint:Z

    const/4 v3, 0x0

    const/16 v4, 0x1043

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPerfObj:Landroid/util/BoostFramework;

    if-eqz v0, :cond_11

    .line 132
    invoke-virtual {v0, v4, v3}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;)I

    .line 133
    sput-boolean v2, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfSendTapHint:Z

    .line 135
    :cond_11
    sget-boolean v0, Lcom/android/server/wm/ActivityDisplay;->mIsPerfBoostAcquired:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPerfObj:Landroid/util/BoostFramework;

    if-eqz v0, :cond_13

    .line 136
    sget v0, Lcom/android/server/wm/ActivityDisplay;->mPerfHandle:I

    if-lez v0, :cond_12

    .line 137
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPerfObj:Landroid/util/BoostFramework;

    sget v5, Lcom/android/server/wm/ActivityDisplay;->mPerfHandle:I

    invoke-virtual {v0, v5}, Landroid/util/BoostFramework;->perfLockReleaseHandler(I)I

    .line 138
    sput v1, Lcom/android/server/wm/ActivityDisplay;->mPerfHandle:I

    .line 140
    :cond_12
    sput-boolean v2, Lcom/android/server/wm/ActivityDisplay;->mIsPerfBoostAcquired:Z

    .line 142
    :cond_13
    sget-boolean v0, Lcom/android/server/wm/ActivityDisplay;->mPerfSendTapHint:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPerfObj:Landroid/util/BoostFramework;

    if-eqz v0, :cond_14

    .line 143
    invoke-virtual {v0, v4, v3}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;)I

    .line 144
    sput-boolean v2, Lcom/android/server/wm/ActivityDisplay;->mPerfSendTapHint:Z

    .line 146
    :cond_14
    return-void

    .line 71
    .restart local v0    # "x":I
    .restart local v1    # "y":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method setTouchExcludeRegion(Landroid/graphics/Region;)V
    .locals 1
    .param p1, "newRegion"    # Landroid/graphics/Region;

    .line 149
    monitor-enter p0

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 151
    monitor-exit p0

    .line 152
    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
