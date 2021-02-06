.class public interface abstract Lcom/android/server/accessibility/EventStreamTransformation;
.super Ljava/lang/Object;
.source "EventStreamTransformation.java"


# virtual methods
.method public clearEvents(I)V
    .locals 1
    .param p1, "inputSource"    # I

    .line 120
    invoke-interface {p0}, Lcom/android/server/accessibility/EventStreamTransformation;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v0

    .line 121
    .local v0, "next":Lcom/android/server/accessibility/EventStreamTransformation;
    if-eqz v0, :cond_0

    .line 122
    invoke-interface {v0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->clearEvents(I)V

    .line 124
    :cond_0
    return-void
.end method

.method public abstract getNext()Lcom/android/server/accessibility/EventStreamTransformation;
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 94
    invoke-interface {p0}, Lcom/android/server/accessibility/EventStreamTransformation;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v0

    .line 95
    .local v0, "next":Lcom/android/server/accessibility/EventStreamTransformation;
    if-eqz v0, :cond_0

    .line 96
    invoke-interface {v0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 98
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 129
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .line 82
    invoke-interface {p0}, Lcom/android/server/accessibility/EventStreamTransformation;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v0

    .line 83
    .local v0, "next":Lcom/android/server/accessibility/EventStreamTransformation;
    if-eqz v0, :cond_0

    .line 84
    invoke-interface {v0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 86
    :cond_0
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 69
    invoke-interface {p0}, Lcom/android/server/accessibility/EventStreamTransformation;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v0

    .line 70
    .local v0, "next":Lcom/android/server/accessibility/EventStreamTransformation;
    if-eqz v0, :cond_0

    .line 71
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 73
    :cond_0
    return-void
.end method

.method public abstract setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
.end method
