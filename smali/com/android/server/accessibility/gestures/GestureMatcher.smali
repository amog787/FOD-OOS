.class abstract Lcom/android/server/accessibility/gestures/GestureMatcher;
.super Ljava/lang/Object;
.source "GestureMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;,
        Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;,
        Lcom/android/server/accessibility/gestures/GestureMatcher$State;
    }
.end annotation


# static fields
.field static final STATE_CLEAR:I = 0x0

.field static final STATE_GESTURE_CANCELED:I = 0x3

.field static final STATE_GESTURE_COMPLETED:I = 0x2

.field static final STATE_GESTURE_STARTED:I = 0x1


# instance fields
.field protected final mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

.field private final mGestureId:I

.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;

.field private mState:I


# direct methods
.method constructor <init>(ILandroid/os/Handler;Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V
    .locals 1
    .param p1, "gestureId"    # I
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "listener"    # Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    .line 67
    iput p1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mGestureId:I

    .line 68
    iput-object p2, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mHandler:Landroid/os/Handler;

    .line 69
    new-instance v0, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;-><init>(Lcom/android/server/accessibility/gestures/GestureMatcher;)V

    iput-object v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

    .line 70
    iput-object p3, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mListener:Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/accessibility/gestures/GestureMatcher;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/gestures/GestureMatcher;

    .line 35
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/accessibility/gestures/GestureMatcher;ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/gestures/GestureMatcher;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/MotionEvent;
    .param p3, "x3"    # Landroid/view/MotionEvent;
    .param p4, "x4"    # I

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public static getStateSymbolicName(I)Ljava/lang/String;
    .locals 2
    .param p0, "state"    # I

    .line 276
    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 284
    :cond_0
    const-string v0, "STATE_GESTURE_CANCELED"

    return-object v0

    .line 282
    :cond_1
    const-string v0, "STATE_GESTURE_COMPLETED"

    return-object v0

    .line 280
    :cond_2
    const-string v0, "STATE_GESTURE_STARTED"

    return-object v0

    .line 278
    :cond_3
    const-string v0, "STATE_CLEAR"

    return-object v0
.end method

.method private setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "event"    # Landroid/view/MotionEvent;
    .param p3, "rawEvent"    # Landroid/view/MotionEvent;
    .param p4, "policyFlags"    # I

    .line 93
    iput p1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    .line 94
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelPendingTransitions()V

    .line 95
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mListener:Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;

    iget v1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mGestureId:I

    iget v2, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;->onStateChanged(IILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 96
    return-void
.end method


# virtual methods
.method protected final cancelAfter(JLandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 8
    .param p1, "timeout"    # J
    .param p3, "event"    # Landroid/view/MotionEvent;
    .param p4, "rawEvent"    # Landroid/view/MotionEvent;
    .param p5, "policyFlags"    # I

    .line 225
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->cancel()V

    .line 226
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

    const/4 v2, 0x3

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->post(IJLandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 227
    return-void
.end method

.method protected final cancelAfterDoubleTapTimeout(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 216
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    int-to-long v2, v0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelAfter(JLandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 217
    return-void
.end method

.method protected cancelAfterTapTimeout(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 210
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v2, v0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelAfter(JLandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 211
    return-void
.end method

.method protected final cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 105
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 106
    return-void
.end method

.method protected final cancelPendingTransitions()V
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->cancel()V

    .line 232
    return-void
.end method

.method protected clear()V
    .locals 1

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    .line 80
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelPendingTransitions()V

    .line 81
    return-void
.end method

.method protected final completeAfter(JLandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 8
    .param p1, "timeout"    # J
    .param p3, "event"    # Landroid/view/MotionEvent;
    .param p4, "rawEvent"    # Landroid/view/MotionEvent;
    .param p5, "policyFlags"    # I

    .line 261
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->cancel()V

    .line 262
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

    const/4 v2, 0x2

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->post(IJLandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 263
    return-void
.end method

.method protected final completeAfterDoubleTapTimeout(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 272
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    int-to-long v2, v0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/GestureMatcher;->completeAfter(JLandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 273
    return-void
.end method

.method protected final completeAfterLongPressTimeout(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 241
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v2, v0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/GestureMatcher;->completeAfter(JLandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 242
    return-void
.end method

.method protected final completeAfterTapTimeout(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 251
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v2, v0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/GestureMatcher;->completeAfter(JLandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 252
    return-void
.end method

.method protected final completeGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 110
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 111
    return-void
.end method

.method public getGestureId()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mGestureId:I

    return v0
.end method

.method abstract getGestureName()Ljava/lang/String;
.end method

.method public getState()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    return v0
.end method

.method protected onDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 159
    return-void
.end method

.method public final onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)I
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 127
    iget v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 130
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_3

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    .line 148
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->onPointerUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 142
    goto :goto_0

    .line 135
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->onPointerDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 136
    goto :goto_0

    .line 138
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->onMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 139
    goto :goto_0

    .line 144
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->onUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 145
    goto :goto_0

    .line 132
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->onDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 133
    nop

    .line 151
    :goto_0
    iget v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    return v0

    .line 128
    :cond_6
    :goto_1
    iget v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    return v0
.end method

.method protected onMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 182
    return-void
.end method

.method protected onPointerDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 171
    return-void
.end method

.method protected onPointerUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 194
    return-void
.end method

.method protected onUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 206
    return-void
.end method

.method protected final startGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 100
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 101
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->getGestureName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    invoke-static {v1}, Lcom/android/server/accessibility/gestures/GestureMatcher;->getStateSymbolicName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
