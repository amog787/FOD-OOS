.class Lcom/android/server/wm/WindowManagerThreadPriorityBooster;
.super Lcom/android/server/ThreadPriorityBooster;
.source "WindowManagerThreadPriorityBooster.java"


# instance fields
.field private final mAnimationThreadId:I

.field private mAppTransitionRunning:Z

.field private mBoundsAnimationRunning:Z

.field private final mLock:Ljava/lang/Object;

.field private final mSurfaceAnimationThreadId:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 47
    const/4 v0, -0x4

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/android/server/ThreadPriorityBooster;-><init>(II)V

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->mLock:Ljava/lang/Object;

    .line 48
    invoke-static {}, Lcom/android/server/AnimationThread;->get()Lcom/android/server/AnimationThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/AnimationThread;->getThreadId()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->mAnimationThreadId:I

    .line 49
    invoke-static {}, Lcom/android/server/wm/SurfaceAnimationThread;->get()Lcom/android/server/wm/SurfaceAnimationThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimationThread;->getThreadId()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->mSurfaceAnimationThreadId:I

    .line 50
    return-void
.end method

.method private updatePriorityLocked()V
    .locals 2

    .line 95
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->mAppTransitionRunning:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->mBoundsAnimationRunning:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    const/4 v0, -0x4

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, -0xa

    .line 97
    .local v0, "priority":I
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->setBoostToPriority(I)V

    .line 98
    iget v1, p0, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->mAnimationThreadId:I

    invoke-static {v1, v0}, Landroid/os/Process;->setThreadPriority(II)V

    .line 99
    iget v1, p0, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->mSurfaceAnimationThreadId:I

    invoke-static {v1, v0}, Landroid/os/Process;->setThreadPriority(II)V

    .line 100
    return-void
.end method


# virtual methods
.method public boost()V
    .locals 2

    .line 57
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    .line 58
    .local v0, "myTid":I
    iget v1, p0, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->mAnimationThreadId:I

    if-eq v0, v1, :cond_1

    iget v1, p0, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->mSurfaceAnimationThreadId:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    invoke-super {p0}, Lcom/android/server/ThreadPriorityBooster;->boost()V

    .line 62
    return-void

    .line 59
    :cond_1
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 2

    .line 68
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    .line 69
    .local v0, "myTid":I
    iget v1, p0, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->mAnimationThreadId:I

    if-eq v0, v1, :cond_1

    iget v1, p0, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->mSurfaceAnimationThreadId:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    invoke-super {p0}, Lcom/android/server/ThreadPriorityBooster;->reset()V

    .line 73
    return-void

    .line 70
    :cond_1
    :goto_0
    return-void
.end method

.method setAppTransitionRunning(Z)V
    .locals 2
    .param p1, "running"    # Z

    .line 76
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 77
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->mAppTransitionRunning:Z

    if-eq v1, p1, :cond_0

    .line 78
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->mAppTransitionRunning:Z

    .line 79
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->updatePriorityLocked()V

    .line 81
    :cond_0
    monitor-exit v0

    .line 82
    return-void

    .line 81
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setBoundsAnimationRunning(Z)V
    .locals 2
    .param p1, "running"    # Z

    .line 85
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 86
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->mBoundsAnimationRunning:Z

    if-eq v1, p1, :cond_0

    .line 87
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->mBoundsAnimationRunning:Z

    .line 88
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->updatePriorityLocked()V

    .line 90
    :cond_0
    monitor-exit v0

    .line 91
    return-void

    .line 90
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
