.class Lcom/android/server/wm/SystemGesturesPointerEventListener;
.super Ljava/lang/Object;
.source "SystemGesturesPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;,
        Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_FLING_TIME_MILLIS:I = 0x1388

.field private static final MAX_TRACKED_POINTERS:I = 0x20

.field private static final SWIPE_FROM_BOTTOM:I = 0x2

.field private static final SWIPE_FROM_LEFT:I = 0x4

.field private static final SWIPE_FROM_RIGHT:I = 0x3

.field private static final SWIPE_FROM_TOP:I = 0x1

.field private static final SWIPE_NONE:I = 0x0

.field private static final SWIPE_TIMEOUT_MS:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "SystemGestures"

.field private static final UNTRACKED_POINTER:I = -0x1


# instance fields
.field private final mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

.field private final mContext:Landroid/content/Context;

.field private mDebugFireable:Z

.field private mDisplayCutoutTouchableRegionSize:I

.field private final mDownPointerId:[I

.field private mDownPointers:I

.field private final mDownTime:[J

.field private final mDownX:[F

.field private final mDownY:[F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private mLastFlingTime:J

.field private mMouseHoveringAtEdge:Z

.field private mScrollFired:Z

.field private mSwipeDistanceThreshold:I

.field private mSwipeFireable:Z

.field private mSwipeStartThreshold:I

.field screenHeight:I

.field screenWidth:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "callbacks"    # Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/16 v0, 0x20

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointerId:[I

    .line 63
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownX:[F

    .line 64
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownY:[F

    .line 65
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownTime:[J

    .line 79
    const-string v0, "context"

    invoke-static {v0, p1}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mHandler:Landroid/os/Handler;

    .line 81
    const-string v0, "callbacks"

    invoke-static {v0, p3}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    iput-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    .line 83
    invoke-virtual {p0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->onConfigurationChanged()V

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/SystemGesturesPointerEventListener;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/SystemGesturesPointerEventListener;

    .line 42
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/SystemGesturesPointerEventListener;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wm/SystemGesturesPointerEventListener;

    .line 42
    iget-wide v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mLastFlingTime:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/android/server/wm/SystemGesturesPointerEventListener;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/SystemGesturesPointerEventListener;
    .param p1, "x1"    # J

    .line 42
    iput-wide p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mLastFlingTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/server/wm/SystemGesturesPointerEventListener;)Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/SystemGesturesPointerEventListener;

    .line 42
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/SystemGesturesPointerEventListener;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/SystemGesturesPointerEventListener;

    .line 42
    iget-boolean v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mScrollFired:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/wm/SystemGesturesPointerEventListener;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/SystemGesturesPointerEventListener;
    .param p1, "x1"    # Z

    .line 42
    iput-boolean p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mScrollFired:Z

    return p1
.end method

.method private captureDown(Landroid/view/MotionEvent;I)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .line 214
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 215
    .local v0, "pointerId":I
    invoke-direct {p0, v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->findIndex(I)I

    move-result v1

    .line 218
    .local v1, "i":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 219
    iget-object v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownX:[F

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    aput v3, v2, v1

    .line 220
    iget-object v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownY:[F

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    aput v3, v2, v1

    .line 221
    iget-object v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownTime:[J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 225
    :cond_0
    return-void
.end method

.method private static checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 117
    .local p1, "arg":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    .line 120
    return-object p1

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must not be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private detectSwipe(IJFF)I
    .locals 10
    .param p1, "i"    # I
    .param p2, "time"    # J
    .param p4, "x"    # F
    .param p5, "y"    # F

    .line 270
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownX:[F

    aget v0, v0, p1

    .line 271
    .local v0, "fromX":F
    iget-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownY:[F

    aget v1, v1, p1

    .line 272
    .local v1, "fromY":F
    iget-object v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownTime:[J

    aget-wide v2, v2, p1

    sub-long v2, p2, v2

    .line 285
    .local v2, "elapsed":J
    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->isOneHandModeRunning()Z

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    const-wide/16 v7, 0x1f4

    if-eqz v4, :cond_1

    .line 286
    iget v4, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->getOffsetY()I

    move-result v9

    add-int/2addr v4, v9

    int-to-float v4, v4

    cmpg-float v4, v1, v4

    if-gtz v4, :cond_3

    .line 287
    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->getOffsetY()I

    move-result v4

    iget v9, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    sub-int/2addr v4, v9

    int-to-float v4, v4

    cmpg-float v4, v4, v1

    if-gtz v4, :cond_3

    int-to-float v4, v9

    add-float/2addr v4, v1

    cmpl-float v4, p5, v4

    if-lez v4, :cond_3

    cmp-long v4, v2, v7

    if-gez v4, :cond_3

    .line 292
    float-to-int v4, v0

    float-to-int v7, v1

    invoke-static {v4, v7}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->gameModeShowToolBox(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 293
    return v5

    .line 296
    :cond_0
    return v6

    .line 299
    :cond_1
    iget v4, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    int-to-float v4, v4

    cmpg-float v4, v1, v4

    if-gtz v4, :cond_3

    iget v4, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v4, v4

    add-float/2addr v4, v1

    cmpl-float v4, p5, v4

    if-lez v4, :cond_3

    cmp-long v4, v2, v7

    if-gez v4, :cond_3

    .line 304
    float-to-int v4, v0

    float-to-int v7, v1

    invoke-static {v4, v7}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->gameModeShowToolBox(II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 305
    return v5

    .line 308
    :cond_2
    return v6

    .line 319
    :cond_3
    iget v4, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    .line 320
    .local v4, "swipeStartThreshold":I
    invoke-static {}, Lcom/android/server/policy/OpPhoneWindowManagerInjector;->isGestureButtonWithoutHideBarEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 321
    iget-object v5, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x50601ba

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 324
    :cond_4
    iget v5, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenHeight:I

    sub-int/2addr v5, v4

    int-to-float v5, v5

    cmpl-float v5, v1, v5

    if-ltz v5, :cond_5

    iget v5, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v5, v5

    sub-float v5, v1, v5

    cmpg-float v5, p5, v5

    if-gez v5, :cond_5

    cmp-long v5, v2, v7

    if-gez v5, :cond_5

    .line 328
    const/4 v5, 0x2

    return v5

    .line 330
    :cond_5
    iget v5, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenWidth:I

    iget v6, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v5, v0, v5

    if-ltz v5, :cond_6

    iget v5, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v5, v5

    sub-float v5, v0, v5

    cmpg-float v5, p4, v5

    if-gez v5, :cond_6

    cmp-long v5, v2, v7

    if-gez v5, :cond_6

    .line 333
    const/4 v5, 0x3

    return v5

    .line 335
    :cond_6
    iget v5, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    int-to-float v5, v5

    cmpg-float v5, v0, v5

    if-gtz v5, :cond_7

    iget v5, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v5, v5

    add-float/2addr v5, v0

    cmpl-float v5, p4, v5

    if-lez v5, :cond_7

    cmp-long v5, v2, v7

    if-gez v5, :cond_7

    .line 338
    const/4 v5, 0x4

    return v5

    .line 340
    :cond_7
    const/4 v5, 0x0

    return v5
.end method

.method private detectSwipe(Landroid/view/MotionEvent;)I
    .locals 18
    .param p1, "move"    # Landroid/view/MotionEvent;

    .line 245
    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v1

    .line 246
    .local v1, "historySize":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 247
    .local v2, "pointerCount":I
    const/4 v3, 0x0

    .local v3, "p":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 248
    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 249
    .local v4, "pointerId":I
    move-object/from16 v11, p0

    invoke-direct {v11, v4}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->findIndex(I)I

    move-result v12

    .line 250
    .local v12, "i":I
    const/4 v5, -0x1

    if-eq v12, v5, :cond_2

    .line 251
    const/4 v5, 0x0

    move v13, v5

    .local v13, "h":I
    :goto_1
    if-ge v13, v1, :cond_1

    .line 252
    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v14

    .line 253
    .local v14, "time":J
    invoke-virtual {v0, v3, v13}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v16

    .line 254
    .local v16, "x":F
    invoke-virtual {v0, v3, v13}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v17

    .line 255
    .local v17, "y":F
    move-object/from16 v5, p0

    move v6, v12

    move-wide v7, v14

    move/from16 v9, v16

    move/from16 v10, v17

    invoke-direct/range {v5 .. v10}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->detectSwipe(IJFF)I

    move-result v5

    .line 256
    .local v5, "swipe":I
    if-eqz v5, :cond_0

    .line 257
    return v5

    .line 251
    .end local v5    # "swipe":I
    .end local v14    # "time":J
    .end local v16    # "x":F
    .end local v17    # "y":F
    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 260
    .end local v13    # "h":I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    move-object/from16 v5, p0

    move v6, v12

    invoke-direct/range {v5 .. v10}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->detectSwipe(IJFF)I

    move-result v5

    .line 261
    .restart local v5    # "swipe":I
    if-eqz v5, :cond_2

    .line 262
    return v5

    .line 247
    .end local v4    # "pointerId":I
    .end local v5    # "swipe":I
    .end local v12    # "i":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v11, p0

    .line 266
    .end local v3    # "p":I
    const/4 v3, 0x0

    return v3
.end method

.method private findIndex(I)I
    .locals 3
    .param p1, "pointerId"    # I

    .line 232
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointers:I

    if-ge v0, v1, :cond_1

    .line 233
    iget-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointerId:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 234
    return v0

    .line 232
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    .end local v0    # "i":I
    :cond_1
    const/16 v0, 0x20

    const/4 v2, -0x1

    if-eq v1, v0, :cond_3

    if-ne p1, v2, :cond_2

    goto :goto_1

    .line 240
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointerId:[I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointers:I

    aput p1, v0, v1

    .line 241
    iget v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointers:I

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 238
    :cond_3
    :goto_1
    return v2
.end method


# virtual methods
.method protected currentGestureStartedInRegion(Landroid/graphics/Region;)Z
    .locals 3
    .param p1, "r"    # Landroid/graphics/Region;

    .line 228
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownX:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-int v0, v0

    iget-object v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownY:[F

    aget v1, v2, v1

    float-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$systemReady$0$SystemGesturesPointerEventListener()V
    .locals 4

    .line 133
    new-instance v0, Lcom/android/server/wm/SystemGesturesPointerEventListener$1;

    iget-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;

    invoke-direct {v2, p0}, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;-><init>(Lcom/android/server/wm/SystemGesturesPointerEventListener;)V

    iget-object v3, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/server/wm/SystemGesturesPointerEventListener$1;-><init>(Lcom/android/server/wm/SystemGesturesPointerEventListener;Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method onConfigurationChanged()V
    .locals 5

    .line 87
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 88
    const v1, 0x105020e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    .line 90
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    .line 91
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 92
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    .line 93
    .local v1, "displayCutout":Landroid/view/DisplayCutout;
    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object v2

    .line 95
    .local v2, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 98
    iget-object v3, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10500f4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDisplayCutoutTouchableRegionSize:I

    .line 100
    iget v3, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    iget v4, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDisplayCutoutTouchableRegionSize:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    .line 103
    .end local v2    # "bounds":Landroid/graphics/Rect;
    :cond_0
    iget v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    iput v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    .line 110
    sget-boolean v2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSwipeStartThreshold="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mDisplayCutoutTouchableRegionSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDisplayCutoutTouchableRegionSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mSwipeDistanceThreshold="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SystemGestures"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_1
    return-void
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 139
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 142
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    if-eq v0, v1, :cond_c

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_6

    if-eq v0, v3, :cond_c

    const/4 v3, 0x5

    if-eq v0, v3, :cond_4

    const/4 v3, 0x7

    if-eq v0, v3, :cond_1

    goto/16 :goto_2

    .line 185
    :cond_1
    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 186
    iget-boolean v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    const/4 v3, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onMouseHoverAtTop()V

    .line 188
    iput-boolean v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    goto/16 :goto_2

    .line 189
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v4, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenHeight:I

    sub-int/2addr v4, v1

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_3

    .line 190
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onMouseHoverAtBottom()V

    .line 191
    iput-boolean v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    goto/16 :goto_2

    .line 192
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    if-eqz v0, :cond_10

    .line 193
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenHeight:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    cmpg-float v0, v0, v1

    if-gez v0, :cond_10

    .line 194
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onMouseLeaveFromEdge()V

    .line 195
    iput-boolean v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    goto/16 :goto_2

    .line 156
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->captureDown(Landroid/view/MotionEvent;I)V

    .line 157
    iget-boolean v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDebugFireable:Z

    if-eqz v0, :cond_10

    .line 158
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ge v0, v3, :cond_5

    goto :goto_0

    :cond_5
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDebugFireable:Z

    .line 159
    iget-boolean v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDebugFireable:Z

    if-nez v0, :cond_10

    .line 161
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onDebug()V

    goto :goto_2

    .line 166
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    if-eqz v0, :cond_10

    .line 167
    invoke-direct {p0, p1}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->detectSwipe(Landroid/view/MotionEvent;)I

    move-result v0

    .line 168
    .local v0, "swipe":I
    if-nez v0, :cond_7

    move v2, v1

    :cond_7
    iput-boolean v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    .line 169
    if-ne v0, v1, :cond_8

    .line 171
    iget-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v1}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromTop()V

    goto :goto_1

    .line 172
    :cond_8
    if-ne v0, v4, :cond_9

    .line 174
    iget-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v1}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromBottom()V

    goto :goto_1

    .line 175
    :cond_9
    if-ne v0, v3, :cond_a

    .line 177
    iget-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v1}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromRight()V

    goto :goto_1

    .line 178
    :cond_a
    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    .line 180
    iget-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v1}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromLeft()V

    .line 182
    .end local v0    # "swipe":I
    :cond_b
    :goto_1
    goto :goto_2

    .line 201
    :cond_c
    iput-boolean v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    .line 202
    iput-boolean v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDebugFireable:Z

    .line 203
    iget-boolean v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mScrollFired:Z

    if-eqz v0, :cond_d

    .line 204
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v0, v2}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onScroll(Z)V

    .line 205
    :cond_d
    iput-boolean v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mScrollFired:Z

    .line 206
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onUpOrCancel()V

    .line 207
    goto :goto_2

    .line 144
    :cond_e
    iput-boolean v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    .line 145
    iput-boolean v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDebugFireable:Z

    .line 146
    iput-boolean v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mScrollFired:Z

    .line 147
    iput v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointers:I

    .line 148
    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->captureDown(Landroid/view/MotionEvent;I)V

    .line 149
    iget-boolean v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    if-eqz v0, :cond_f

    .line 150
    iput-boolean v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    .line 151
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onMouseLeaveFromEdge()V

    .line 153
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onDown()V

    .line 154
    nop

    .line 211
    :cond_10
    :goto_2
    return-void
.end method

.method public systemReady()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$SystemGesturesPointerEventListener$9Iw39fjTtjXO5kacgrpdxfxjuSY;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$SystemGesturesPointerEventListener$9Iw39fjTtjXO5kacgrpdxfxjuSY;-><init>(Lcom/android/server/wm/SystemGesturesPointerEventListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 135
    return-void
.end method
