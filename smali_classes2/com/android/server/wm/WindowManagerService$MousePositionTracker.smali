.class Lcom/android/server/wm/WindowManagerService$MousePositionTracker;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MousePositionTracker"
.end annotation


# instance fields
.field private mLatestEventWasMouse:Z

.field private mLatestMouseX:F

.field private mLatestMouseY:F


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 7133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/WindowManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wm/WindowManagerService$1;

    .line 7133
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;-><init>()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/wm/WindowManagerService$MousePositionTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    .line 7133
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestEventWasMouse:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/wm/WindowManagerService$MousePositionTracker;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    .line 7133
    iget v0, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestMouseX:F

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/wm/WindowManagerService$MousePositionTracker;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    .line 7133
    iget v0, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestMouseY:F

    return v0
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 7148
    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7149
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->updatePosition(FF)V

    goto :goto_0

    .line 7151
    :cond_0
    monitor-enter p0

    .line 7152
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestEventWasMouse:Z

    .line 7153
    monitor-exit p0

    .line 7155
    :goto_0
    return-void

    .line 7153
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method updatePosition(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 7139
    monitor-enter p0

    .line 7140
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestEventWasMouse:Z

    .line 7141
    iput p1, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestMouseX:F

    .line 7142
    iput p2, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestMouseY:F

    .line 7143
    monitor-exit p0

    .line 7144
    return-void

    .line 7143
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
