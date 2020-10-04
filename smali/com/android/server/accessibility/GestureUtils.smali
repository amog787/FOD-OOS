.class final Lcom/android/server/accessibility/GestureUtils;
.super Ljava/lang/Object;
.source "GestureUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static distance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)D
    .locals 4
    .param p0, "first"    # Landroid/view/MotionEvent;
    .param p1, "second"    # Landroid/view/MotionEvent;

    .line 35
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/util/MathUtils;->dist(FFFF)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method private static eventsWithinTimeAndDistanceSlop(Landroid/view/MotionEvent;Landroid/view/MotionEvent;II)Z
    .locals 6
    .param p0, "first"    # Landroid/view/MotionEvent;
    .param p1, "second"    # Landroid/view/MotionEvent;
    .param p2, "timeout"    # I
    .param p3, "distance"    # I

    .line 24
    invoke-static {p0, p1, p2}, Lcom/android/server/accessibility/GestureUtils;->isTimedOut(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 25
    return v1

    .line 27
    :cond_0
    invoke-static {p0, p1}, Lcom/android/server/accessibility/GestureUtils;->distance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)D

    move-result-wide v2

    .line 28
    .local v2, "deltaMove":D
    int-to-double v4, p3

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_1

    .line 29
    return v1

    .line 31
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static isDraggingGesture(FFFFFFFFF)Z
    .locals 13
    .param p0, "firstPtrDownX"    # F
    .param p1, "firstPtrDownY"    # F
    .param p2, "secondPtrDownX"    # F
    .param p3, "secondPtrDownY"    # F
    .param p4, "firstPtrX"    # F
    .param p5, "firstPtrY"    # F
    .param p6, "secondPtrX"    # F
    .param p7, "secondPtrY"    # F
    .param p8, "maxDraggingAngleCos"    # F

    .line 53
    sub-float v0, p4, p0

    .line 54
    .local v0, "firstDeltaX":F
    sub-float v1, p5, p1

    .line 56
    .local v1, "firstDeltaY":F
    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    const/4 v4, 0x1

    if-nez v3, :cond_0

    cmpl-float v3, v1, v2

    if-nez v3, :cond_0

    .line 57
    return v4

    .line 60
    :cond_0
    float-to-double v5, v0

    float-to-double v7, v1

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    double-to-float v3, v5

    .line 62
    .local v3, "firstMagnitude":F
    cmpl-float v5, v3, v2

    if-lez v5, :cond_1

    div-float v5, v0, v3

    goto :goto_0

    :cond_1
    move v5, v0

    .line 64
    .local v5, "firstXNormalized":F
    :goto_0
    cmpl-float v6, v3, v2

    if-lez v6, :cond_2

    div-float v6, v1, v3

    goto :goto_1

    :cond_2
    move v6, v1

    .line 66
    .local v6, "firstYNormalized":F
    :goto_1
    sub-float v7, p6, p2

    .line 67
    .local v7, "secondDeltaX":F
    sub-float v8, p7, p3

    .line 69
    .local v8, "secondDeltaY":F
    cmpl-float v9, v7, v2

    if-nez v9, :cond_3

    cmpl-float v9, v8, v2

    if-nez v9, :cond_3

    .line 70
    return v4

    .line 73
    :cond_3
    float-to-double v9, v7

    float-to-double v11, v8

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v9

    double-to-float v9, v9

    .line 75
    .local v9, "secondMagnitude":F
    cmpl-float v10, v9, v2

    if-lez v10, :cond_4

    div-float v10, v7, v9

    goto :goto_2

    :cond_4
    move v10, v7

    .line 77
    .local v10, "secondXNormalized":F
    :goto_2
    cmpl-float v2, v9, v2

    if-lez v2, :cond_5

    div-float v2, v8, v9

    goto :goto_3

    :cond_5
    move v2, v8

    .line 79
    .local v2, "secondYNormalized":F
    :goto_3
    mul-float v11, v5, v10

    mul-float v12, v6, v2

    add-float/2addr v11, v12

    .line 82
    .local v11, "angleCos":F
    cmpg-float v12, v11, p8

    if-gez v12, :cond_6

    .line 83
    const/4 v4, 0x0

    return v4

    .line 86
    :cond_6
    return v4
.end method

.method public static isMultiTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;II)Z
    .locals 1
    .param p0, "firstUp"    # Landroid/view/MotionEvent;
    .param p1, "secondUp"    # Landroid/view/MotionEvent;
    .param p2, "multiTapTimeSlop"    # I
    .param p3, "multiTapDistanceSlop"    # I

    .line 17
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/accessibility/GestureUtils;->eventsWithinTimeAndDistanceSlop(Landroid/view/MotionEvent;Landroid/view/MotionEvent;II)Z

    move-result v0

    return v0

    .line 17
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isTimedOut(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z
    .locals 4
    .param p0, "firstUp"    # Landroid/view/MotionEvent;
    .param p1, "secondUp"    # Landroid/view/MotionEvent;
    .param p2, "timeout"    # I

    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 40
    .local v0, "deltaTime":J
    int-to-long v2, p2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method
