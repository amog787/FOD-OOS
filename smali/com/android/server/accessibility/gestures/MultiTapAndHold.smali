.class Lcom/android/server/accessibility/gestures/MultiTapAndHold;
.super Lcom/android/server/accessibility/gestures/MultiTap;
.source "MultiTapAndHold.java"


# direct methods
.method constructor <init>(Landroid/content/Context;IILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "taps"    # I
    .param p3, "gesture"    # I
    .param p4, "listener"    # Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/gestures/MultiTap;-><init>(Landroid/content/Context;IILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 30
    return-void
.end method


# virtual methods
.method public getGestureName()Ljava/lang/String;
    .locals 2

    .line 48
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiTapAndHold;->mTargetTaps:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiTapAndHold;->mTargetTaps:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Taps and Hold"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 52
    :cond_0
    const-string v0, "Triple Tap and Hold"

    return-object v0

    .line 50
    :cond_1
    const-string v0, "Double Tap and Hold"

    return-object v0
.end method

.method protected onDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 34
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiTap;->onDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 35
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiTapAndHold;->mCurrentTaps:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiTapAndHold;->mTargetTaps:I

    if-ne v0, v1, :cond_0

    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiTapAndHold;->completeAfterLongPressTimeout(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 38
    :cond_0
    return-void
.end method

.method protected onUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 42
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiTap;->onUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 43
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiTapAndHold;->cancelAfterDoubleTapTimeout(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 44
    return-void
.end method
