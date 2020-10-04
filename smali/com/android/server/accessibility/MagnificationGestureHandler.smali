.class Lcom/android/server/accessibility/MagnificationGestureHandler;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "MagnificationGestureHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/MagnificationGestureHandler$ScreenStateReceiver;,
        Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;,
        Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;,
        Lcom/android/server/accessibility/MagnificationGestureHandler$DelegatingState;,
        Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;,
        Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;,
        Lcom/android/server/accessibility/MagnificationGestureHandler$State;
    }
.end annotation


# static fields
.field private static final DEBUG_ALL:Z = false

.field private static final DEBUG_DETECTING:Z = false

.field private static final DEBUG_EVENT_STREAM:Z = false

.field private static final DEBUG_PANNING_SCALING:Z = false

.field private static final DEBUG_STATE_TRANSITIONS:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "MagnificationGestureHandler"

.field private static final MAX_SCALE:F = 8.0f

.field private static final MIN_SCALE:F = 2.0f


# instance fields
.field mCurrentState:Lcom/android/server/accessibility/MagnificationGestureHandler$State;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mDebugInputEventHistory:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mDebugOutputEventHistory:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field final mDelegatingState:Lcom/android/server/accessibility/MagnificationGestureHandler$DelegatingState;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field final mDetectShortcutTrigger:Z

.field final mDetectTripleTap:Z

.field final mDetectingState:Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mDisplayId:I

.field final mMagnificationController:Lcom/android/server/accessibility/MagnificationController;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field final mPanningScalingState:Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mPreviousState:Lcom/android/server/accessibility/MagnificationGestureHandler$State;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mScreenStateReceiver:Lcom/android/server/accessibility/MagnificationGestureHandler$ScreenStateReceiver;

.field private mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

.field final mViewportDraggingState:Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/MagnificationController;ZZI)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "magnificationController"    # Lcom/android/server/accessibility/MagnificationController;
    .param p3, "detectTripleTap"    # Z
    .param p4, "detectShortcutTrigger"    # Z
    .param p5, "displayId"    # I

    .line 172
    invoke-direct {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;-><init>()V

    .line 179
    iput-object p2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    .line 180
    iput p5, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDisplayId:I

    .line 182
    new-instance v0, Lcom/android/server/accessibility/MagnificationGestureHandler$DelegatingState;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DelegatingState;-><init>(Lcom/android/server/accessibility/MagnificationGestureHandler;)V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDelegatingState:Lcom/android/server/accessibility/MagnificationGestureHandler$DelegatingState;

    .line 183
    new-instance v0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;

    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;-><init>(Lcom/android/server/accessibility/MagnificationGestureHandler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;

    .line 184
    new-instance v0, Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;-><init>(Lcom/android/server/accessibility/MagnificationGestureHandler;)V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mViewportDraggingState:Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;

    .line 185
    new-instance v0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;

    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;-><init>(Lcom/android/server/accessibility/MagnificationGestureHandler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mPanningScalingState:Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;

    .line 187
    iput-boolean p3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectTripleTap:Z

    .line 188
    iput-boolean p4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectShortcutTrigger:Z

    .line 190
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectShortcutTrigger:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 191
    new-instance v0, Lcom/android/server/accessibility/MagnificationGestureHandler$ScreenStateReceiver;

    invoke-direct {v0, p1, p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$ScreenStateReceiver;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/MagnificationGestureHandler;)V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mScreenStateReceiver:Lcom/android/server/accessibility/MagnificationGestureHandler$ScreenStateReceiver;

    .line 192
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mScreenStateReceiver:Lcom/android/server/accessibility/MagnificationGestureHandler$ScreenStateReceiver;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$ScreenStateReceiver;->register()V

    goto :goto_0

    .line 194
    :cond_0
    iput-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mScreenStateReceiver:Lcom/android/server/accessibility/MagnificationGestureHandler$ScreenStateReceiver;

    .line 197
    :goto_0
    iput-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDebugInputEventHistory:Ljava/util/Queue;

    .line 198
    iput-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDebugOutputEventHistory:Ljava/util/Queue;

    .line 200
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/MagnificationGestureHandler$State;)V

    .line 201
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/accessibility/MagnificationGestureHandler;Lcom/android/server/accessibility/MagnificationGestureHandler$State;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/MagnificationGestureHandler;
    .param p1, "x1"    # Lcom/android/server/accessibility/MagnificationGestureHandler$State;

    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/MagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/MagnificationGestureHandler$State;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/accessibility/MagnificationGestureHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/MagnificationGestureHandler;

    .line 109
    iget v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDisplayId:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/accessibility/MagnificationGestureHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/MagnificationGestureHandler;

    .line 109
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->zoomOff()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/accessibility/MagnificationGestureHandler;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/MagnificationGestureHandler;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # Landroid/view/MotionEvent;
    .param p3, "x3"    # I

    .line 109
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/MagnificationGestureHandler;->dispatchTransformedEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/accessibility/MagnificationGestureHandler;Lcom/android/server/accessibility/MagnificationGestureHandler$State;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/MagnificationGestureHandler;
    .param p1, "x1"    # Lcom/android/server/accessibility/MagnificationGestureHandler$State;
    .param p2, "x2"    # Landroid/view/MotionEvent;
    .param p3, "x3"    # Landroid/view/MotionEvent;
    .param p4, "x4"    # I

    .line 109
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/MagnificationGestureHandler;->handleEventWith(Lcom/android/server/accessibility/MagnificationGestureHandler$State;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/accessibility/MagnificationGestureHandler;FF)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/MagnificationGestureHandler;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/MagnificationGestureHandler;->zoomOn(FF)V

    return-void
.end method

.method static synthetic access$900(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 1
    .param p0, "x0"    # Landroid/view/MotionEvent;

    .line 109
    invoke-static {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->recycleAndNullify(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method private dispatchTransformedEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 296
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 298
    return-void
.end method

.method private getTempPointerCoordsWithMinSize(I)[Landroid/view/MotionEvent$PointerCoords;
    .locals 4
    .param p1, "size"    # I

    .line 309
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 310
    .local v0, "oldSize":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 311
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 312
    .local v2, "oldTempPointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    new-array v3, p1, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 313
    if-eqz v2, :cond_1

    .line 314
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    invoke-static {v2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 317
    .end local v2    # "oldTempPointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    :cond_1
    move v1, v0

    .local v1, "i":I
    :goto_1
    if-ge v1, p1, :cond_2

    .line 318
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v3, v2, v1

    .line 317
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 320
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    return-object v1
.end method

.method private getTempPointerPropertiesWithMinSize(I)[Landroid/view/MotionEvent$PointerProperties;
    .locals 4
    .param p1, "size"    # I

    .line 324
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    .line 325
    :cond_0
    move v0, v1

    :goto_0
    nop

    .line 326
    .local v0, "oldSize":I
    if-ge v0, p1, :cond_1

    .line 327
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 328
    .local v2, "oldTempPointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    new-array v3, p1, [Landroid/view/MotionEvent$PointerProperties;

    iput-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 329
    if-eqz v2, :cond_1

    .line 330
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    invoke-static {v2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 334
    .end local v2    # "oldTempPointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    :cond_1
    move v1, v0

    .local v1, "i":I
    :goto_1
    if-ge v1, p1, :cond_2

    .line 335
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v3, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v3, v2, v1

    .line 334
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 337
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    return-object v1
.end method

.method private handleEventWith(Lcom/android/server/accessibility/MagnificationGestureHandler$State;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 1
    .param p1, "stateHandler"    # Lcom/android/server/accessibility/MagnificationGestureHandler$State;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .param p3, "rawEvent"    # Landroid/view/MotionEvent;
    .param p4, "policyFlags"    # I

    .line 233
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mPanningScalingState:Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->access$000(Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 234
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mPanningScalingState:Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->access$100(Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;)Landroid/view/ScaleGestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 236
    invoke-interface {p1, p2, p3, p4}, Lcom/android/server/accessibility/MagnificationGestureHandler$State;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 237
    return-void
.end method

.method private onMotionEventInternal(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 221
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectTripleTap:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectShortcutTrigger:Z

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x1002

    .line 222
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 223
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/MagnificationGestureHandler;->dispatchTransformedEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 224
    return-void

    .line 227
    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/MagnificationGestureHandler$State;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/accessibility/MagnificationGestureHandler;->handleEventWith(Lcom/android/server/accessibility/MagnificationGestureHandler$State;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 228
    return-void
.end method

.method private static recycleAndNullify(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 1
    .param p0, "event"    # Landroid/view/MotionEvent;

    .line 965
    if-eqz p0, :cond_0

    .line 966
    invoke-virtual {p0}, Landroid/view/MotionEvent;->recycle()V

    .line 968
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static storeEventInto(Ljava/util/Queue;Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Landroid/view/MotionEvent;",
            ">;",
            "Landroid/view/MotionEvent;",
            ")V"
        }
    .end annotation

    .line 301
    .local p0, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Landroid/view/MotionEvent;>;"
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 303
    :goto_0
    invoke-interface {p0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-interface {p0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 304
    invoke-interface {p0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    .line 306
    :cond_0
    return-void
.end method

.method private transitionTo(Lcom/android/server/accessibility/MagnificationGestureHandler$State;)V
    .locals 1
    .param p1, "state"    # Lcom/android/server/accessibility/MagnificationGestureHandler$State;

    .line 347
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/MagnificationGestureHandler$State;

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mPreviousState:Lcom/android/server/accessibility/MagnificationGestureHandler$State;

    .line 348
    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/MagnificationGestureHandler$State;

    .line 349
    return-void
.end method

.method private zoomOff()V
    .locals 3

    .line 961
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    iget v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDisplayId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/MagnificationController;->reset(IZ)Z

    .line 962
    return-void
.end method

.method private zoomOn(FF)V
    .locals 10
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F

    .line 950
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    .line 951
    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController;->getPersistedScale()F

    move-result v0

    .line 950
    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    .line 953
    .local v0, "scale":F
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    iget v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDisplayId:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    move v5, v0

    move v6, p1

    move v7, p2

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/accessibility/MagnificationController;->setScaleAndCenter(IFFFZI)Z

    .line 957
    return-void
.end method


# virtual methods
.method clearAndTransitionToStateDetecting()V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/MagnificationGestureHandler$State;

    .line 278
    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->clear()V

    .line 279
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mViewportDraggingState:Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;->clear()V

    .line 280
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mPanningScalingState:Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->clear()V

    .line 281
    return-void
.end method

.method public clearEvents(I)V
    .locals 1
    .param p1, "inputSource"    # I

    .line 241
    const/16 v0, 0x1002

    if-ne p1, v0, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->clearAndTransitionToStateDetecting()V

    .line 245
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->clearEvents(I)V

    .line 246
    return-void
.end method

.method notifyShortcutTriggered()V
    .locals 3

    .line 265
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectShortcutTrigger:Z

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    iget v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDisplayId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/MagnificationController;->resetIfNeeded(IZ)Z

    move-result v0

    .line 268
    .local v0, "wasMagnifying":Z
    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->clearAndTransitionToStateDetecting()V

    goto :goto_0

    .line 271
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;

    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->toggleShortcutTriggered()V

    .line 274
    .end local v0    # "wasMagnifying":Z
    :cond_1
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mScreenStateReceiver:Lcom/android/server/accessibility/MagnificationGestureHandler$ScreenStateReceiver;

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$ScreenStateReceiver;->unregister()V

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/MagnificationController;->resetAllIfNeeded(I)V

    .line 261
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->clearAndTransitionToStateDetecting()V

    .line 262
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 214
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/MagnificationGestureHandler;->onMotionEventInternal(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 216
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 973
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MagnificationGesture{mDetectingState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDelegatingState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDelegatingState:Lcom/android/server/accessibility/MagnificationGestureHandler$DelegatingState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMagnifiedInteractionState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mPanningScalingState:Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mViewportDraggingState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mViewportDraggingState:Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDetectTripleTap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectTripleTap:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDetectShortcutTrigger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectShortcutTrigger:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/MagnificationGestureHandler$State;

    .line 980
    invoke-static {v1}, Lcom/android/server/accessibility/MagnificationGestureHandler$State;->nameOf(Lcom/android/server/accessibility/MagnificationGestureHandler$State;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPreviousState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mPreviousState:Lcom/android/server/accessibility/MagnificationGestureHandler$State;

    .line 981
    invoke-static {v1}, Lcom/android/server/accessibility/MagnificationGestureHandler$State;->nameOf(Lcom/android/server/accessibility/MagnificationGestureHandler$State;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mMagnificationController="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 973
    return-object v0
.end method
