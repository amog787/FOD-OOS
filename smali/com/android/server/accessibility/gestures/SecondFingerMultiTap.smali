.class Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;
.super Lcom/android/server/accessibility/gestures/GestureMatcher;
.source "SecondFingerMultiTap.java"


# instance fields
.field mBaseX:F

.field mBaseY:F

.field mCurrentTaps:I

.field mDoubleTapSlop:I

.field mDoubleTapTimeout:I

.field mSecondFingerPointerId:I

.field mTapTimeout:I

.field final mTargetTaps:I

.field mTouchSlop:I


# direct methods
.method constructor <init>(Landroid/content/Context;IILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "taps"    # I
    .param p3, "gesture"    # I
    .param p4, "listener"    # Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p3, v0, p4}, Lcom/android/server/accessibility/gestures/GestureMatcher;-><init>(ILandroid/os/Handler;Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 47
    iput p2, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mTargetTaps:I

    .line 48
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mDoubleTapSlop:I

    .line 49
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mTouchSlop:I

    .line 50
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mTapTimeout:I

    .line 51
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mDoubleTapTimeout:I

    .line 52
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->clear()V

    .line 53
    return-void
.end method

.method private isSecondFingerInsideSlop(Landroid/view/MotionEvent;I)Z
    .locals 9
    .param p1, "rawEvent"    # Landroid/view/MotionEvent;
    .param p2, "slop"    # I

    .line 147
    iget v0, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mSecondFingerPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 148
    .local v0, "pointerIndex":I
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 149
    return v1

    .line 151
    :cond_0
    iget v2, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mBaseX:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v2, v3

    .line 152
    .local v2, "deltaX":F
    iget v3, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mBaseY:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    sub-float/2addr v3, v4

    .line 153
    .local v3, "deltaY":F
    const/4 v4, 0x0

    cmpl-float v5, v2, v4

    const/4 v6, 0x1

    if-nez v5, :cond_1

    cmpl-float v4, v3, v4

    if-nez v4, :cond_1

    .line 154
    return v6

    .line 156
    :cond_1
    float-to-double v4, v2

    float-to-double v7, v3

    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    .line 157
    .local v4, "moveDelta":D
    int-to-double v7, p2

    cmpg-double v7, v4, v7

    if-gtz v7, :cond_2

    move v1, v6

    :cond_2
    return v1
.end method


# virtual methods
.method protected clear()V
    .locals 1

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mCurrentTaps:I

    .line 58
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mBaseX:F

    .line 59
    iput v0, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mBaseY:F

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mSecondFingerPointerId:I

    .line 61
    invoke-super {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->clear()V

    .line 62
    return-void
.end method

.method public getGestureName()Ljava/lang/String;
    .locals 2

    .line 136
    iget v0, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mTargetTaps:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Second Finger "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mTargetTaps:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Taps"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 140
    :cond_0
    const-string v0, "Second Finger Triple Tap"

    return-object v0

    .line 138
    :cond_1
    const-string v0, "Second Finger Double Tap"

    return-object v0
.end method

.method protected onMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 123
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 117
    :cond_0
    iget v0, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mTouchSlop:I

    invoke-direct {p0, p2, v0}, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->isSecondFingerInsideSlop(Landroid/view/MotionEvent;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 118
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 115
    :cond_1
    nop

    .line 126
    :cond_2
    :goto_0
    return-void
.end method

.method protected onPointerDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 66
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 67
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 68
    return-void

    .line 71
    :cond_0
    invoke-static {p1}, Lcom/android/server/accessibility/gestures/GestureUtils;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 72
    .local v0, "index":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mSecondFingerPointerId:I

    .line 73
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->cancelAfterTapTimeout(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 74
    iget v1, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mBaseX:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mBaseY:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mBaseX:F

    .line 76
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mBaseY:F

    .line 78
    :cond_1
    iget v1, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mDoubleTapSlop:I

    invoke-direct {p0, p2, v1}, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->isSecondFingerInsideSlop(Landroid/view/MotionEvent;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 79
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 81
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mBaseX:F

    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mBaseY:F

    .line 83
    return-void
.end method

.method protected onPointerUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 87
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 88
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 89
    return-void

    .line 91
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->cancelAfterDoubleTapTimeout(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 92
    iget v0, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mTouchSlop:I

    invoke-direct {p0, p2, v0}, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->isSecondFingerInsideSlop(Landroid/view/MotionEvent;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 95
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->getState()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 106
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_1

    .line 96
    :cond_3
    :goto_0
    iget v0, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mCurrentTaps:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mCurrentTaps:I

    .line 97
    iget v1, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mTargetTaps:I

    if-ne v0, v1, :cond_4

    .line 99
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->completeGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 100
    return-void

    .line 103
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->cancelAfterDoubleTapTimeout(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 108
    :goto_1
    return-void
.end method

.method protected onUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 131
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 132
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Taps:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mCurrentTaps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBaseX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mBaseX:F

    .line 166
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mBaseY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;->mBaseY:F

    .line 168
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    return-object v0
.end method
