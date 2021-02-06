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
    if-nez v0, :cond_0

    .line 55
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPerfObj:Landroid/util/BoostFramework;

    .line 57
    :cond_0
    return-void
.end method

.method private restorePointerIcon(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 60
    iget v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 61
    iput v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    .line 63
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x37

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 64
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 67
    :cond_0
    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_d

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto/16 :goto_4

    .line 126
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 127
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 128
    .local v1, "y":I
    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/TaskTapPointerEventListener;->restorePointerIcon(II)V

    goto/16 :goto_4

    .line 86
    .end local v0    # "x":I
    .end local v1    # "y":I
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 87
    .restart local v0    # "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 88
    .restart local v1    # "y":I
    iget-object v2, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 89
    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/TaskTapPointerEventListener;->restorePointerIcon(II)V

    .line 90
    goto/16 :goto_4

    .line 92
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/DisplayContent;->findTaskForResizePoint(II)Lcom/android/server/wm/Task;

    move-result-object v2

    .line 93
    .local v2, "task":Lcom/android/server/wm/Task;
    const/4 v3, 0x1

    .line 94
    .local v3, "iconType":I
    if-eqz v2, :cond_a

    .line 95
    iget-object v4, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 96
    iget-object v4, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-nez v4, :cond_a

    .line 97
    iget-object v4, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    const/16 v5, 0x3f6

    const/16 v6, 0x3f8

    const/16 v7, 0x3f9

    if-ge v0, v4, :cond_5

    .line 99
    iget-object v4, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-ge v1, v4, :cond_3

    move v5, v7

    goto :goto_0

    .line 100
    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-le v1, v4, :cond_4

    move v5, v6

    goto :goto_0

    .line 101
    :cond_4
    nop

    :goto_0
    move v3, v5

    goto :goto_2

    .line 102
    :cond_5
    iget-object v4, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    if-le v0, v4, :cond_8

    .line 104
    iget-object v4, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-ge v1, v4, :cond_6

    move v5, v6

    goto :goto_1

    .line 105
    :cond_6
    iget-object v4, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-le v1, v4, :cond_7

    move v5, v7

    goto :goto_1

    .line 106
    :cond_7
    nop

    :goto_1
    move v3, v5

    goto :goto_2

    .line 107
    :cond_8
    iget-object v4, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-lt v1, v4, :cond_9

    iget-object v4, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-le v1, v4, :cond_a

    .line 108
    :cond_9
    const/16 v3, 0x3f7

    .line 112
    :cond_a
    :goto_2
    iget v4, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    if-eq v4, v3, :cond_c

    .line 113
    iput v3, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    .line 114
    const/4 v4, 0x1

    if-ne v3, v4, :cond_b

    .line 116
    iget-object v4, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v5, 0x37

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 117
    iget-object v4, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4, v5, v0, v1, v6}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 118
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    .line 120
    :cond_b
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    invoke-virtual {v4, v5}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    .line 124
    .end local v0    # "x":I
    .end local v1    # "y":I
    .end local v2    # "task":Lcom/android/server/wm/Task;
    .end local v3    # "iconType":I
    :cond_c
    :goto_3
    goto :goto_4

    .line 73
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 74
    .restart local v0    # "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 76
    .restart local v1    # "y":I
    monitor-enter p0

    .line 77
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v2

    if-nez v2, :cond_e

    .line 78
    iget-object v2, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    iget-object v3, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/wm/TaskPositioningController;->handleTapOutsideTask(Lcom/android/server/wm/DisplayContent;II)V

    .line 81
    :cond_e
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .end local v0    # "x":I
    .end local v1    # "y":I
    nop

    .line 132
    :goto_4
    sget-boolean v0, Lcom/android/server/wm/ActivityStackSupervisor;->mIsPerfBoostAcquired:Z

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPerfObj:Landroid/util/BoostFramework;

    if-eqz v0, :cond_10

    .line 133
    sget v0, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfHandle:I

    if-lez v0, :cond_f

    .line 134
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPerfObj:Landroid/util/BoostFramework;

    sget v3, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfHandle:I

    invoke-virtual {v0, v3}, Landroid/util/BoostFramework;->perfLockReleaseHandler(I)I

    .line 135
    sput v1, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfHandle:I

    .line 137
    :cond_f
    sput-boolean v2, Lcom/android/server/wm/ActivityStackSupervisor;->mIsPerfBoostAcquired:Z

    .line 139
    :cond_10
    sget-boolean v0, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfSendTapHint:Z

    const/4 v3, 0x0

    const/16 v4, 0x1043

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPerfObj:Landroid/util/BoostFramework;

    if-eqz v0, :cond_11

    .line 140
    invoke-virtual {v0, v4, v3}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;)I

    .line 141
    sput-boolean v2, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfSendTapHint:Z

    .line 143
    :cond_11
    sget-boolean v0, Lcom/android/server/wm/TaskDisplayArea;->mIsPerfBoostAcquired:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPerfObj:Landroid/util/BoostFramework;

    if-eqz v0, :cond_13

    .line 144
    sget v0, Lcom/android/server/wm/TaskDisplayArea;->mPerfHandle:I

    if-lez v0, :cond_12

    .line 145
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPerfObj:Landroid/util/BoostFramework;

    sget v5, Lcom/android/server/wm/TaskDisplayArea;->mPerfHandle:I

    invoke-virtual {v0, v5}, Landroid/util/BoostFramework;->perfLockReleaseHandler(I)I

    .line 146
    sput v1, Lcom/android/server/wm/TaskDisplayArea;->mPerfHandle:I

    .line 148
    :cond_12
    sput-boolean v2, Lcom/android/server/wm/TaskDisplayArea;->mIsPerfBoostAcquired:Z

    .line 150
    :cond_13
    sget-boolean v0, Lcom/android/server/wm/TaskDisplayArea;->mPerfSendTapHint:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPerfObj:Landroid/util/BoostFramework;

    if-eqz v0, :cond_14

    .line 151
    invoke-virtual {v0, v4, v3}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;)I

    .line 152
    sput-boolean v2, Lcom/android/server/wm/TaskDisplayArea;->mPerfSendTapHint:Z

    .line 154
    :cond_14
    return-void

    .line 81
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

    .line 157
    monitor-enter p0

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 159
    monitor-exit p0

    .line 160
    return-void

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
