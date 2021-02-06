.class Lcom/android/server/accessibility/gestures/MultiFingerSwipe;
.super Lcom/android/server/accessibility/gestures/GestureMatcher;
.source "MultiFingerSwipe.java"


# static fields
.field public static final DOWN:I = 0x3

.field public static final LEFT:I = 0x0

.field private static final MIN_CM_BETWEEN_SAMPLES:F = 0.25f

.field public static final RIGHT:I = 0x1

.field public static final UP:I = 0x2


# instance fields
.field private mBase:[Landroid/graphics/PointF;

.field private mCurrentFingerCount:I

.field private mDirection:I

.field private final mGestureDetectionThresholdPixels:F

.field private final mMinPixelsBetweenSamplesX:F

.field private final mMinPixelsBetweenSamplesY:F

.field private mPointerIds:[I

.field private mPreviousGesturePoint:[Landroid/graphics/PointF;

.field private final mStrokeBuffers:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetFingerCount:I

.field private mTargetFingerCountReached:Z

.field private mTouchSlop:I


# direct methods
.method constructor <init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fingerCount"    # I
    .param p3, "direction"    # I
    .param p4, "gesture"    # I
    .param p5, "listener"    # Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;

    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p4, v0, p5}, Lcom/android/server/accessibility/gestures/GestureMatcher;-><init>(ILandroid/os/Handler;Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTargetFingerCountReached:Z

    .line 89
    iput p2, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTargetFingerCount:I

    .line 90
    new-array v0, p2, [I

    iput-object v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPointerIds:[I

    .line 91
    new-array v0, p2, [Landroid/graphics/PointF;

    iput-object v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    .line 92
    new-array v0, p2, [Landroid/graphics/PointF;

    iput-object v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    .line 93
    new-array v0, p2, [Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mStrokeBuffers:[Ljava/util/ArrayList;

    .line 94
    iput p3, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mDirection:I

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 96
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    sget v1, Lcom/android/server/accessibility/gestures/GestureUtils;->MM_PER_CM:I

    int-to-float v1, v1

    .line 97
    const/4 v2, 0x5

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mGestureDetectionThresholdPixels:F

    .line 100
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    sget v2, Lcom/android/server/accessibility/gestures/GestureUtils;->CM_PER_INCH:F

    div-float/2addr v1, v2

    .line 101
    .local v1, "pixelsPerCmX":F
    iget v2, v0, Landroid/util/DisplayMetrics;->ydpi:F

    sget v3, Lcom/android/server/accessibility/gestures/GestureUtils;->CM_PER_INCH:F

    div-float/2addr v2, v3

    .line 102
    .local v2, "pixelsPerCmY":F
    const/high16 v3, 0x3e800000    # 0.25f

    mul-float v4, v1, v3

    iput v4, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mMinPixelsBetweenSamplesX:F

    .line 103
    mul-float/2addr v3, v2

    iput v3, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mMinPixelsBetweenSamplesY:F

    .line 104
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTouchSlop:I

    .line 105
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->clear()V

    .line 106
    return-void
.end method

.method private cancelAfterPauseThreshold(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 387
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->cancelPendingTransitions()V

    .line 388
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->getState()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 393
    :cond_0
    const-wide/16 v3, 0x15e

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->cancelAfter(JLandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 394
    goto :goto_0

    .line 390
    :cond_1
    const-wide/16 v6, 0x96

    move-object v5, p0

    move-object v8, p1

    move-object v9, p2

    move v10, p3

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->cancelAfter(JLandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 391
    nop

    .line 398
    :goto_0
    return-void
.end method

.method public static directionToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "direction"    # I

    .line 477
    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 487
    const-string v0, "Unknown Direction"

    return-object v0

    .line 485
    :cond_0
    const-string v0, "down"

    return-object v0

    .line 483
    :cond_1
    const-string/jumbo v0, "up"

    return-object v0

    .line 481
    :cond_2
    const-string/jumbo v0, "right"

    return-object v0

    .line 479
    :cond_3
    const-string/jumbo v0, "left"

    return-object v0
.end method

.method private recognizeGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 408
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTargetFingerCount:I

    if-ge v0, v1, :cond_2

    .line 412
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mStrokeBuffers:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 413
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->getGestureName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Too few points."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 415
    return-void

    .line 417
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mStrokeBuffers:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    .line 423
    .local v1, "path":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/PointF;>;"
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->recognizeGesturePath(Landroid/view/MotionEvent;Landroid/view/MotionEvent;ILjava/util/ArrayList;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 424
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 425
    return-void

    .line 408
    .end local v1    # "path":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/PointF;>;"
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 429
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->completeGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 430
    return-void
.end method

.method private recognizeGesturePath(Landroid/view/MotionEvent;Landroid/view/MotionEvent;ILjava/util/ArrayList;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "Landroid/view/MotionEvent;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;)Z"
        }
    .end annotation

    .line 440
    .local p4, "path":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/PointF;>;"
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v0

    .line 441
    .local v0, "displayId":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_1

    .line 442
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 443
    .local v2, "start":Landroid/graphics/PointF;
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    .line 445
    .local v3, "end":Landroid/graphics/PointF;
    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v5, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    .line 446
    .local v4, "dX":F
    iget v5, v3, Landroid/graphics/PointF;->y:F

    iget v6, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v6

    .line 447
    .local v5, "dY":F
    invoke-static {v4, v5}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->toDirection(FF)I

    move-result v6

    .line 448
    .local v6, "direction":I
    iget v7, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mDirection:I

    if-eq v6, v7, :cond_0

    .line 457
    const/4 v7, 0x0

    return v7

    .line 441
    .end local v2    # "start":Landroid/graphics/PointF;
    .end local v3    # "end":Landroid/graphics/PointF;
    .end local v4    # "dX":F
    .end local v5    # "dY":F
    .end local v6    # "direction":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 463
    .end local v1    # "i":I
    :cond_1
    return v3
.end method

.method private static toDirection(FF)I
    .locals 2
    .param p0, "dX"    # F
    .param p1, "dY"    # F

    .line 467
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 469
    cmpg-float v0, p0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 472
    :cond_1
    cmpg-float v0, p1, v1

    if-gez v0, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    const/4 v0, 0x3

    :goto_1
    return v0
.end method


# virtual methods
.method protected clear()V
    .locals 4

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTargetFingerCountReached:Z

    .line 111
    iput v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mCurrentFingerCount:I

    .line 112
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTargetFingerCount:I

    if-ge v0, v1, :cond_3

    .line 113
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPointerIds:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 114
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object v2, v1, v0

    if-nez v2, :cond_0

    .line 115
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    aput-object v2, v1, v0

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object v1, v1, v0

    const/high16 v2, 0x7fc00000    # Float.NaN

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 118
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object v1, v1, v0

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 119
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    aget-object v3, v1, v0

    if-nez v3, :cond_1

    .line 120
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    aput-object v3, v1, v0

    .line 122
    :cond_1
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    aget-object v1, v1, v0

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 123
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    aget-object v1, v1, v0

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 124
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mStrokeBuffers:[Ljava/util/ArrayList;

    aget-object v2, v1, v0

    if-nez v2, :cond_2

    .line 125
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    aput-object v2, v1, v0

    .line 127
    :cond_2
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mStrokeBuffers:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    .end local v0    # "i":I
    :cond_3
    invoke-super {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->clear()V

    .line 130
    return-void
.end method

.method getGestureName()Ljava/lang/String;
    .locals 2

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 494
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTargetFingerCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-finger "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    const-string v1, "Swipe "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mDirection:I

    invoke-static {v1}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->directionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected onDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 134
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mCurrentFingerCount:I

    if-lez v0, :cond_0

    .line 135
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 136
    return-void

    .line 138
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mCurrentFingerCount:I

    .line 139
    invoke-static {p2}, Lcom/android/server/accessibility/gestures/GestureUtils;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v1

    .line 140
    .local v1, "actionIndex":I
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 141
    .local v2, "pointerId":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    sub-int/2addr v3, v0

    .line 142
    .local v3, "pointerIndex":I
    if-gez v2, :cond_1

    .line 144
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 145
    return-void

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPointerIds:[I

    aget v4, v0, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 149
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 150
    return-void

    .line 152
    :cond_2
    aput v2, v0, v3

    .line 153
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->cancelAfterPauseThreshold(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 154
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object v0, v0, v3

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object v0, v0, v3

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 155
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 156
    .local v0, "x":F
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 157
    .local v4, "y":F
    const/4 v5, 0x0

    cmpg-float v6, v0, v5

    if-ltz v6, :cond_4

    cmpg-float v5, v4, v5

    if-gez v5, :cond_3

    goto :goto_0

    .line 161
    :cond_3
    iget-object v5, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object v5, v5, v3

    iput v0, v5, Landroid/graphics/PointF;->x:F

    .line 162
    iget-object v5, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object v5, v5, v3

    iput v4, v5, Landroid/graphics/PointF;->y:F

    .line 163
    iget-object v5, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    aget-object v5, v5, v3

    iput v0, v5, Landroid/graphics/PointF;->x:F

    .line 164
    iget-object v5, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    aget-object v5, v5, v3

    iput v4, v5, Landroid/graphics/PointF;->y:F

    .line 165
    .end local v0    # "x":F
    .end local v4    # "y":F
    nop

    .line 170
    return-void

    .line 158
    .restart local v0    # "x":F
    .restart local v4    # "y":F
    :cond_4
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 159
    return-void

    .line 167
    .end local v0    # "x":F
    .end local v4    # "y":F
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 168
    return-void
.end method

.method protected onMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 15
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 253
    move-object v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    .local v2, "pointerIndex":I
    :goto_0
    iget v3, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTargetFingerCount:I

    if-ge v2, v3, :cond_c

    .line 254
    iget-object v3, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPointerIds:[I

    aget v4, v3, v2

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 260
    goto/16 :goto_2

    .line 265
    :cond_0
    aget v3, v3, v2

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 266
    .local v3, "index":I
    if-gez v3, :cond_1

    .line 274
    goto/16 :goto_2

    .line 276
    :cond_1
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 277
    .local v4, "x":F
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 278
    .local v5, "y":F
    const/4 v6, 0x0

    cmpg-float v7, v4, v6

    if-ltz v7, :cond_b

    cmpg-float v6, v5, v6

    if-gez v6, :cond_2

    goto/16 :goto_3

    .line 282
    :cond_2
    iget-object v6, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    aget-object v6, v6, v2

    iget v6, v6, Landroid/graphics/PointF;->x:F

    sub-float v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 283
    .local v6, "dX":F
    iget-object v7, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    aget-object v7, v7, v2

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float v7, v5, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 284
    .local v7, "dY":F
    iget-object v8, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object v8, v8, v2

    iget v8, v8, Landroid/graphics/PointF;->x:F

    sub-float v8, v4, v8

    .line 286
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v8, v8

    iget-object v10, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object v10, v10, v2

    iget v10, v10, Landroid/graphics/PointF;->y:F

    sub-float v10, v5, v10

    .line 287
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-double v10, v10

    .line 285
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    .line 296
    .local v8, "moveDelta":D
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->getState()I

    move-result v10

    if-nez v10, :cond_8

    .line 297
    iget v10, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTouchSlop:I

    int-to-double v10, v10

    cmpg-double v10, v8, v10

    if-gez v10, :cond_3

    .line 299
    goto/16 :goto_2

    .line 300
    :cond_3
    iget-object v10, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mStrokeBuffers:[Ljava/util/ArrayList;

    aget-object v10, v10, v2

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_6

    .line 302
    iget v10, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mCurrentFingerCount:I

    iget v11, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTargetFingerCount:I

    if-eq v10, v11, :cond_4

    .line 303
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 304
    return-void

    .line 307
    :cond_4
    iget-object v10, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object v10, v10, v2

    iget v10, v10, Landroid/graphics/PointF;->x:F

    sub-float v10, v4, v10

    iget-object v11, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object v11, v11, v2

    iget v11, v11, Landroid/graphics/PointF;->y:F

    sub-float v11, v5, v11

    .line 308
    invoke-static {v10, v11}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->toDirection(FF)I

    move-result v10

    .line 309
    .local v10, "direction":I
    iget v11, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mDirection:I

    if-eq v10, v11, :cond_5

    .line 310
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 311
    return-void

    .line 314
    :cond_5
    invoke-direct/range {p0 .. p3}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->cancelAfterPauseThreshold(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 315
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    iget v12, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTargetFingerCount:I

    if-ge v11, v12, :cond_6

    .line 316
    iget-object v12, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mStrokeBuffers:[Ljava/util/ArrayList;

    aget-object v12, v12, v11

    new-instance v13, Landroid/graphics/PointF;

    iget-object v14, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object v14, v14, v11

    invoke-direct {v13, v14}, Landroid/graphics/PointF;-><init>(Landroid/graphics/PointF;)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 320
    .end local v10    # "direction":I
    .end local v11    # "i":I
    :cond_6
    iget v10, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mGestureDetectionThresholdPixels:F

    float-to-double v10, v10

    cmpl-double v10, v8, v10

    if-lez v10, :cond_8

    .line 323
    iget-object v10, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object v10, v10, v2

    iget v10, v10, Landroid/graphics/PointF;->x:F

    sub-float v10, v4, v10

    iget-object v11, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object v11, v11, v2

    iget v11, v11, Landroid/graphics/PointF;->y:F

    sub-float v11, v5, v11

    .line 324
    invoke-static {v10, v11}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->toDirection(FF)I

    move-result v10

    .line 325
    .restart local v10    # "direction":I
    iget v11, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mDirection:I

    if-eq v10, v11, :cond_7

    .line 326
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 327
    return-void

    .line 331
    :cond_7
    iget-object v11, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object v11, v11, v2

    iput v4, v11, Landroid/graphics/PointF;->x:F

    .line 332
    iget-object v11, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object v11, v11, v2

    iput v5, v11, Landroid/graphics/PointF;->y:F

    .line 333
    iget-object v11, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    aget-object v11, v11, v2

    iput v4, v11, Landroid/graphics/PointF;->x:F

    .line 334
    iget-object v11, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    aget-object v11, v11, v2

    iput v5, v11, Landroid/graphics/PointF;->y:F

    .line 335
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->getState()I

    move-result v11

    if-nez v11, :cond_8

    .line 336
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->startGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 337
    invoke-direct/range {p0 .. p3}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->cancelAfterPauseThreshold(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 341
    .end local v10    # "direction":I
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->getState()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_a

    .line 342
    iget v10, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mMinPixelsBetweenSamplesX:F

    cmpl-float v10, v6, v10

    if-gez v10, :cond_9

    iget v10, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mMinPixelsBetweenSamplesY:F

    cmpl-float v10, v7, v10

    if-ltz v10, :cond_a

    .line 344
    :cond_9
    iget-object v10, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    aget-object v10, v10, v2

    iput v4, v10, Landroid/graphics/PointF;->x:F

    .line 345
    iget-object v10, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    aget-object v10, v10, v2

    iput v5, v10, Landroid/graphics/PointF;->y:F

    .line 346
    iget-object v10, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mStrokeBuffers:[Ljava/util/ArrayList;

    aget-object v10, v10, v2

    new-instance v11, Landroid/graphics/PointF;

    invoke-direct {v11, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    invoke-direct/range {p0 .. p3}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->cancelAfterPauseThreshold(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 253
    .end local v3    # "index":I
    .end local v4    # "x":F
    .end local v5    # "y":F
    .end local v6    # "dX":F
    .end local v7    # "dY":F
    .end local v8    # "moveDelta":D
    :cond_a
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 279
    .restart local v3    # "index":I
    .restart local v4    # "x":F
    .restart local v5    # "y":F
    :cond_b
    :goto_3
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 280
    return-void

    .line 351
    .end local v2    # "pointerIndex":I
    .end local v3    # "index":I
    .end local v4    # "x":F
    .end local v5    # "y":F
    :cond_c
    return-void
.end method

.method protected onPointerDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 174
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTargetFingerCount:I

    if-le v0, v1, :cond_0

    .line 175
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 176
    return-void

    .line 178
    :cond_0
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mCurrentFingerCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mCurrentFingerCount:I

    .line 179
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 180
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 181
    return-void

    .line 183
    :cond_1
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mCurrentFingerCount:I

    iget v2, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTargetFingerCount:I

    if-ne v0, v2, :cond_2

    .line 184
    iput-boolean v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTargetFingerCountReached:Z

    .line 186
    :cond_2
    invoke-static {p2}, Lcom/android/server/accessibility/gestures/GestureUtils;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 187
    .local v0, "actionIndex":I
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 188
    .local v2, "pointerId":I
    if-gez v2, :cond_3

    .line 190
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 191
    return-void

    .line 193
    :cond_3
    iget v3, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mCurrentFingerCount:I

    sub-int/2addr v3, v1

    .line 194
    .local v3, "pointerIndex":I
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPointerIds:[I

    aget v4, v1, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    .line 196
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 197
    return-void

    .line 199
    :cond_4
    aput v2, v1, v3

    .line 200
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->cancelAfterPauseThreshold(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 201
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object v1, v1, v3

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object v1, v1, v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 202
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 203
    .local v1, "x":F
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 204
    .local v4, "y":F
    const/4 v5, 0x0

    cmpg-float v6, v1, v5

    if-ltz v6, :cond_6

    cmpg-float v5, v4, v5

    if-gez v5, :cond_5

    goto :goto_0

    .line 208
    :cond_5
    iget-object v5, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object v5, v5, v3

    iput v1, v5, Landroid/graphics/PointF;->x:F

    .line 209
    iget-object v5, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object v5, v5, v3

    iput v4, v5, Landroid/graphics/PointF;->y:F

    .line 210
    iget-object v5, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    aget-object v5, v5, v3

    iput v1, v5, Landroid/graphics/PointF;->x:F

    .line 211
    iget-object v5, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    aget-object v5, v5, v3

    iput v4, v5, Landroid/graphics/PointF;->y:F

    .line 212
    .end local v1    # "x":F
    .end local v4    # "y":F
    nop

    .line 216
    return-void

    .line 205
    .restart local v1    # "x":F
    .restart local v4    # "y":F
    :cond_6
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 206
    return-void

    .line 213
    .end local v1    # "x":F
    .end local v4    # "y":F
    :cond_7
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 214
    return-void
.end method

.method protected onPointerUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 220
    iget-boolean v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTargetFingerCountReached:Z

    if-nez v0, :cond_0

    .line 221
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 222
    return-void

    .line 224
    :cond_0
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mCurrentFingerCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mCurrentFingerCount:I

    .line 225
    invoke-static {p1}, Lcom/android/server/accessibility/gestures/GestureUtils;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 226
    .local v0, "actionIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 227
    .local v1, "pointerId":I
    if-gez v1, :cond_1

    .line 229
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 230
    return-void

    .line 232
    :cond_1
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPointerIds:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v2

    .line 233
    .local v2, "pointerIndex":I
    if-gez v2, :cond_2

    .line 234
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 235
    return-void

    .line 237
    :cond_2
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 238
    .local v3, "x":F
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 239
    .local v4, "y":F
    const/4 v5, 0x0

    cmpg-float v6, v3, v5

    if-ltz v6, :cond_6

    cmpg-float v5, v4, v5

    if-gez v5, :cond_3

    goto :goto_0

    .line 243
    :cond_3
    iget-object v5, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    aget-object v5, v5, v2

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 244
    .local v5, "dX":F
    iget-object v6, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    aget-object v6, v6, v2

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 245
    .local v6, "dY":F
    iget v7, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mMinPixelsBetweenSamplesX:F

    cmpl-float v7, v5, v7

    if-gez v7, :cond_4

    iget v7, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mMinPixelsBetweenSamplesY:F

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_5

    .line 246
    :cond_4
    iget-object v7, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mStrokeBuffers:[Ljava/util/ArrayList;

    aget-object v7, v7, v2

    new-instance v8, Landroid/graphics/PointF;

    invoke-direct {v8, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_5
    return-void

    .line 240
    .end local v5    # "dX":F
    .end local v6    # "dY":F
    :cond_6
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 241
    return-void
.end method

.method protected onUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 355
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 356
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 357
    return-void

    .line 359
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mCurrentFingerCount:I

    .line 360
    invoke-static {p1}, Lcom/android/server/accessibility/gestures/GestureUtils;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 361
    .local v0, "actionIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 362
    .local v1, "pointerId":I
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPointerIds:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v2

    .line 363
    .local v2, "pointerIndex":I
    if-gez v2, :cond_1

    .line 364
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 365
    return-void

    .line 367
    :cond_1
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 368
    .local v3, "x":F
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 369
    .local v4, "y":F
    const/4 v5, 0x0

    cmpg-float v6, v3, v5

    if-ltz v6, :cond_5

    cmpg-float v5, v4, v5

    if-gez v5, :cond_2

    goto :goto_0

    .line 373
    :cond_2
    iget-object v5, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    aget-object v5, v5, v2

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 374
    .local v5, "dX":F
    iget-object v6, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    aget-object v6, v6, v2

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 375
    .local v6, "dY":F
    iget v7, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mMinPixelsBetweenSamplesX:F

    cmpl-float v7, v5, v7

    if-gez v7, :cond_3

    iget v7, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mMinPixelsBetweenSamplesY:F

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_4

    .line 376
    :cond_3
    iget-object v7, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mStrokeBuffers:[Ljava/util/ArrayList;

    aget-object v7, v7, v2

    new-instance v8, Landroid/graphics/PointF;

    invoke-direct {v8, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->recognizeGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 379
    return-void

    .line 370
    .end local v5    # "dX":F
    .end local v6    # "dY":F
    :cond_5
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 371
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 502
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 503
    const-string v1, ", mBase: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    .line 504
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    const-string v1, ", mGestureDetectionThreshold:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mGestureDetectionThresholdPixels:F

    .line 506
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 507
    const-string v1, ", mMinPixelsBetweenSamplesX:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mMinPixelsBetweenSamplesX:F

    .line 508
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 509
    const-string v1, ", mMinPixelsBetweenSamplesY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mMinPixelsBetweenSamplesY:F

    .line 510
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 512
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
