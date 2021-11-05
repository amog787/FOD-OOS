.class public Lcom/android/server/accessibility/gestures/TouchState;
.super Ljava/lang/Object;
.source "TouchState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;,
        Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;,
        Lcom/android/server/accessibility/gestures/TouchState$State;
    }
.end annotation


# static fields
.field public static final ALL_POINTER_ID_BITS:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "TouchState"

.field static final MAX_POINTER_COUNT:I = 0x20

.field public static final STATE_CLEAR:I = 0x0

.field public static final STATE_DELEGATING:I = 0x4

.field public static final STATE_DRAGGING:I = 0x3

.field public static final STATE_GESTURE_DETECTING:I = 0x5

.field public static final STATE_TOUCH_EXPLORING:I = 0x2

.field public static final STATE_TOUCH_INTERACTING:I = 0x1


# instance fields
.field private mInjectedPointersDown:I

.field private mLastInjectedDownEventTime:J

.field private mLastInjectedHoverEvent:Landroid/view/MotionEvent;

.field private mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

.field private mLastReceivedEvent:Landroid/view/MotionEvent;

.field private mLastReceivedRawEvent:Landroid/view/MotionEvent;

.field private mLastTouchedWindowId:I

.field private final mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    .line 90
    new-instance v0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;-><init>(Lcom/android/server/accessibility/gestures/TouchState;)V

    iput-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    .line 91
    return-void
.end method

.method public static getStateSymbolicName(I)Ljava/lang/String;
    .locals 2
    .param p0, "state"    # I

    .line 289
    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 301
    :cond_0
    const-string v0, "STATE_GESTURE_DETECTING"

    return-object v0

    .line 299
    :cond_1
    const-string v0, "STATE_DELEGATING"

    return-object v0

    .line 297
    :cond_2
    const-string v0, "STATE_DRAGGING"

    return-object v0

    .line 295
    :cond_3
    const-string v0, "STATE_TOUCH_EXPLORING"

    return-object v0

    .line 293
    :cond_4
    const-string v0, "STATE_TOUCH_INTERACTING"

    return-object v0

    .line 291
    :cond_5
    const-string v0, "STATE_CLEAR"

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    .line 97
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_0

    .line 98
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 99
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedEvent:Landroid/view/MotionEvent;

    .line 101
    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastTouchedWindowId:I

    .line 102
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->clear()V

    .line 103
    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mInjectedPointersDown:I

    .line 104
    return-void
.end method

.method public getInjectedPointerDownCount()I
    .locals 1

    .line 332
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mInjectedPointersDown:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method public getInjectedPointersDown()I
    .locals 1

    .line 337
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mInjectedPointersDown:I

    return v0
.end method

.method public getLastInjectedDownEventTime()J
    .locals 2

    .line 323
    iget-wide v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedDownEventTime:J

    return-wide v0
.end method

.method public getLastInjectedHoverEvent()Landroid/view/MotionEvent;
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public getLastInjectedHoverEventForClick()Landroid/view/MotionEvent;
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public getLastReceivedEvent()Landroid/view/MotionEvent;
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public getLastTouchedWindowId()I
    .locals 1

    .line 327
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastTouchedWindowId:I

    return v0
.end method

.method public getReceivedPointerTracker()Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 220
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    return v0
.end method

.method public isClear()Z
    .locals 1

    .line 281
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDelegating()Z
    .locals 2

    .line 242
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDragging()Z
    .locals 2

    .line 260
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGestureDetecting()Z
    .locals 2

    .line 251
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInjectedPointerDown(I)Z
    .locals 3
    .param p1, "pointerId"    # I

    .line 347
    const/4 v0, 0x1

    shl-int v1, v0, p1

    .line 348
    .local v1, "pointerFlag":I
    iget v2, p0, Lcom/android/server/accessibility/gestures/TouchState;->mInjectedPointersDown:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTouchExploring()Z
    .locals 2

    .line 233
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTouchInteracting()Z
    .locals 2

    .line 269
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onInjectedAccessibilityEvent(I)V
    .locals 1
    .param p1, "type"    # I

    .line 194
    const/16 v0, 0x200

    if-eq p1, v0, :cond_5

    const/16 v0, 0x400

    if-eq p1, v0, :cond_4

    const/high16 v0, 0x40000

    if-eq p1, v0, :cond_3

    const/high16 v0, 0x80000

    if-eq p1, v0, :cond_2

    const/high16 v0, 0x100000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x200000

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState;->clear()V

    .line 200
    goto :goto_0

    .line 196
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState;->startTouchInteracting()V

    .line 197
    goto :goto_0

    .line 211
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState;->startTouchInteracting()V

    .line 212
    goto :goto_0

    .line 208
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState;->startGestureDetecting()V

    .line 209
    goto :goto_0

    .line 205
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState;->startTouchInteracting()V

    .line 206
    goto :goto_0

    .line 202
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState;->startTouchExploring()V

    .line 203
    nop

    .line 216
    :goto_0
    return-void
.end method

.method onInjectedMotionEvent(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 128
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 129
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 130
    .local v1, "pointerId":I
    const/4 v2, 0x1

    shl-int v3, v2, v1

    .line 131
    .local v3, "pointerFlag":I
    if-eqz v0, :cond_6

    if-eq v0, v2, :cond_5

    const/4 v2, 0x5

    if-eq v0, v2, :cond_6

    const/4 v2, 0x6

    if-eq v0, v2, :cond_5

    const/4 v2, 0x7

    if-eq v0, v2, :cond_3

    const/16 v2, 0x9

    if-eq v0, v2, :cond_3

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_1

    .line 153
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 155
    :cond_1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEvent:Landroid/view/MotionEvent;

    .line 156
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    if-eqz v2, :cond_2

    .line 157
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 159
    :cond_2
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    goto :goto_0

    .line 146
    :cond_3
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_4

    .line 147
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 149
    :cond_4
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEvent:Landroid/view/MotionEvent;

    .line 150
    goto :goto_0

    .line 139
    :cond_5
    iget v2, p0, Lcom/android/server/accessibility/gestures/TouchState;->mInjectedPointersDown:I

    not-int v4, v3

    and-int/2addr v2, v4

    iput v2, p0, Lcom/android/server/accessibility/gestures/TouchState;->mInjectedPointersDown:I

    .line 140
    if-nez v2, :cond_7

    .line 141
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedDownEventTime:J

    goto :goto_0

    .line 134
    :cond_6
    iget v2, p0, Lcom/android/server/accessibility/gestures/TouchState;->mInjectedPointersDown:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/accessibility/gestures/TouchState;->mInjectedPointersDown:I

    .line 135
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedDownEventTime:J

    .line 136
    nop

    .line 165
    :cond_7
    :goto_0
    return-void
.end method

.method public onReceivedAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 171
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    const/16 v1, 0x100

    if-eq v0, v1, :cond_0

    const v1, 0x8000

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 182
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastTouchedWindowId:I

    goto :goto_0

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    if-eqz v0, :cond_2

    .line 175
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    .line 178
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastTouchedWindowId:I

    .line 179
    nop

    .line 185
    :goto_0
    return-void
.end method

.method public onReceivedMotionEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "rawEvent"    # Landroid/view/MotionEvent;

    .line 112
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedRawEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    .line 116
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 118
    :cond_1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedEvent:Landroid/view/MotionEvent;

    .line 119
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 120
    return-void
.end method

.method public setState(I)V
    .locals 1
    .param p1, "state"    # I

    .line 225
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    if-ne v0, p1, :cond_0

    return-void

    .line 229
    :cond_0
    iput p1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    .line 230
    return-void
.end method

.method public startDelegating()V
    .locals 1

    .line 247
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    .line 248
    return-void
.end method

.method public startDragging()V
    .locals 1

    .line 265
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    .line 266
    return-void
.end method

.method public startGestureDetecting()V
    .locals 1

    .line 256
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    .line 257
    return-void
.end method

.method public startTouchExploring()V
    .locals 1

    .line 238
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    .line 239
    return-void
.end method

.method public startTouchInteracting()V
    .locals 1

    .line 277
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    .line 278
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TouchState { mState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    invoke-static {v1}, Lcom/android/server/accessibility/gestures/TouchState;->getStateSymbolicName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
