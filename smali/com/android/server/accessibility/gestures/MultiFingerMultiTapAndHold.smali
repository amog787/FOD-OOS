.class Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;
.super Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;
.source "MultiFingerMultiTapAndHold.java"


# direct methods
.method constructor <init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fingers"    # I
    .param p3, "taps"    # I
    .param p4, "gestureId"    # I
    .param p5, "listener"    # Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;

    .line 34
    invoke-direct/range {p0 .. p5}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 35
    return-void
.end method


# virtual methods
.method public getGestureName()Ljava/lang/String;
    .locals 3

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;->mTargetFingerCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-Finger "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;->mTargetTapCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 61
    const-string v1, "Single"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 62
    :cond_0
    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;->mTargetTapCount:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 63
    const-string v1, "Double"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 64
    :cond_1
    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;->mTargetTapCount:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 65
    const-string v1, "Triple"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 66
    :cond_2
    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;->mTargetTapCount:I

    if-le v1, v2, :cond_3

    .line 67
    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;->mTargetTapCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    :cond_3
    :goto_0
    const-string v1, " Tap and hold"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected onPointerDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 39
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->onPointerDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 40
    iget-boolean v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;->mIsTargetFingerCountReached:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;->mCompletedTapCount:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;->mTargetTapCount:I

    if-ne v0, v1, :cond_0

    .line 41
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;->completeAfterLongPressTimeout(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 43
    :cond_0
    return-void
.end method

.method protected onUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 47
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;->mCompletedTapCount:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;->mTargetFingerCount:I

    if-ne v0, v1, :cond_0

    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 51
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->onUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 52
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;->cancelAfterDoubleTapTimeout(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 54
    :goto_0
    return-void
.end method
