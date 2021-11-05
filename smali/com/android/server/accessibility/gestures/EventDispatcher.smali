.class Lcom/android/server/accessibility/gestures/EventDispatcher;
.super Ljava/lang/Object;
.source "EventDispatcher.java"


# static fields
.field private static final CLICK_LOCATION_ACCESSIBILITY_FOCUS:I = 0x1

.field private static final CLICK_LOCATION_LAST_TOUCH_EXPLORED:I = 0x2

.field private static final CLICK_LOCATION_NONE:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "EventDispatcher"


# instance fields
.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private mContext:Landroid/content/Context;

.field private mLongPressingPointerDeltaX:I

.field private mLongPressingPointerDeltaY:I

.field private mLongPressingPointerId:I

.field private mReceiver:Lcom/android/server/accessibility/EventStreamTransformation;

.field private mState:Lcom/android/server/accessibility/gestures/TouchState;

.field private final mTempPoint:Landroid/graphics/Point;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/EventStreamTransformation;Lcom/android/server/accessibility/gestures/TouchState;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ams"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p3, "receiver"    # Lcom/android/server/accessibility/EventStreamTransformation;
    .param p4, "state"    # Lcom/android/server/accessibility/gestures/TouchState;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerId:I

    .line 62
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mTempPoint:Landroid/graphics/Point;

    .line 71
    iput-object p1, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mContext:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 73
    iput-object p3, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mReceiver:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 74
    iput-object p4, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 75
    return-void
.end method

.method private computeClickLocation(Landroid/graphics/Point;)I
    .locals 4
    .param p1, "outLocation"    # Landroid/graphics/Point;

    .line 373
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->getLastInjectedHoverEventForClick()Landroid/view/MotionEvent;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 374
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 375
    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->getLastInjectedHoverEventForClick()Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 376
    .local v0, "lastExplorePointerIndex":I
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 377
    invoke-virtual {v2}, Lcom/android/server/accessibility/gestures/TouchState;->getLastInjectedHoverEventForClick()Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Point;->x:I

    .line 378
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 379
    invoke-virtual {v2}, Lcom/android/server/accessibility/gestures/TouchState;->getLastInjectedHoverEventForClick()Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Point;->y:I

    .line 380
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->accessibilityFocusOnlyInActiveWindow()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 381
    invoke-virtual {v2}, Lcom/android/server/accessibility/gestures/TouchState;->getLastTouchedWindowId()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->getActiveWindowId()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 382
    :cond_0
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAccessibilityFocusClickPointInScreen(Landroid/graphics/Point;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 383
    return v1

    .line 385
    :cond_1
    const/4 v1, 0x2

    return v1

    .line 389
    .end local v0    # "lastExplorePointerIndex":I
    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAccessibilityFocusClickPointInScreen(Landroid/graphics/Point;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 390
    return v1

    .line 392
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private computeInjectionAction(II)I
    .locals 3
    .param p1, "actionMasked"    # I
    .param p2, "pointerIndex"    # I

    .line 237
    const/4 v0, 0x5

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    .line 256
    return p1

    .line 249
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState;->getInjectedPointerDownCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 250
    return v2

    .line 252
    :cond_1
    shl-int/lit8 v1, p2, 0x8

    or-int/2addr v0, v1

    return v0

    .line 241
    :cond_2
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState;->getInjectedPointerDownCount()I

    move-result v1

    if-nez v1, :cond_3

    .line 242
    const/4 v0, 0x0

    return v0

    .line 244
    :cond_3
    shl-int/lit8 v1, p2, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method private offsetEvent(Landroid/view/MotionEvent;II)Landroid/view/MotionEvent;
    .locals 25
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "offsetX"    # I
    .param p3, "offsetY"    # I

    .line 196
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    .line 197
    return-object v0

    .line 199
    :cond_0
    move-object/from16 v3, p0

    iget v4, v3, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerId:I

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 200
    .local v4, "remappedIndex":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    .line 201
    .local v5, "pointerCount":I
    invoke-static {v5}, Landroid/view/MotionEvent$PointerProperties;->createArray(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v23

    .line 202
    .local v23, "props":[Landroid/view/MotionEvent$PointerProperties;
    invoke-static {v5}, Landroid/view/MotionEvent$PointerCoords;->createArray(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v24

    .line 203
    .local v24, "coords":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_2

    .line 204
    aget-object v7, v23, v6

    invoke-virtual {v0, v6, v7}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 205
    aget-object v7, v24, v6

    invoke-virtual {v0, v6, v7}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 206
    if-ne v6, v4, :cond_1

    .line 207
    aget-object v7, v24, v6

    iget v8, v7, Landroid/view/MotionEvent$PointerCoords;->x:F

    int-to-float v9, v1

    add-float/2addr v8, v9

    iput v8, v7, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 208
    aget-object v7, v24, v6

    iget v8, v7, Landroid/view/MotionEvent$PointerCoords;->y:F

    int-to-float v9, v2

    add-float/2addr v8, v9

    iput v8, v7, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 203
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 211
    .end local v6    # "i":I
    :cond_2
    nop

    .line 212
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    .line 213
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    .line 214
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    .line 215
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v11

    .line 218
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v14

    .line 219
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v15

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    .line 222
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v18

    .line 223
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v19

    .line 224
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v20

    .line 225
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v21

    .line 226
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v22

    .line 211
    move-object/from16 v12, v23

    move-object/from16 v13, v24

    invoke-static/range {v6 .. v22}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIII)Landroid/view/MotionEvent;

    move-result-object v6

    return-object v6
.end method

.method private sendActionDownAndUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;IZ)V
    .locals 8
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I
    .param p4, "targetAccessibilityFocus"    # Z

    .line 401
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 402
    .local v0, "pointerId":I
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    .line 403
    .local v1, "pointerIdBits":I
    invoke-virtual {p1, p4}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    .line 404
    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move v6, v1

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    .line 405
    invoke-virtual {p1, p4}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    .line 406
    const/4 v4, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    .line 407
    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    .line 326
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerId:I

    .line 327
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerDeltaX:I

    .line 328
    iput v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerDeltaY:I

    .line 329
    return-void
.end method

.method public clickWithTouchEvents(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 27
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 332
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 333
    .local v2, "pointerIndex":I
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 334
    .local v3, "pointerId":I
    iget-object v4, v0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mTempPoint:Landroid/graphics/Point;

    .line 335
    .local v4, "clickLocation":Landroid/graphics/Point;
    invoke-direct {v0, v4}, Lcom/android/server/accessibility/gestures/EventDispatcher;->computeClickLocation(Landroid/graphics/Point;)I

    move-result v5

    .line 336
    .local v5, "result":I
    if-nez v5, :cond_0

    .line 337
    const-string v6, "EventDispatcher"

    const-string v7, "Unable to compute click location."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    return-void

    .line 343
    :cond_0
    const/4 v6, 0x1

    new-array v15, v6, [Landroid/view/MotionEvent$PointerProperties;

    .local v15, "properties":[Landroid/view/MotionEvent$PointerProperties;
    move-object v13, v15

    .line 344
    new-instance v7, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v7}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    const/16 v24, 0x0

    aput-object v7, v15, v24

    .line 345
    aget-object v7, v15, v24

    invoke-virtual {v1, v2, v7}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 346
    new-array v12, v6, [Landroid/view/MotionEvent$PointerCoords;

    .local v12, "coords":[Landroid/view/MotionEvent$PointerCoords;
    move-object v14, v12

    .line 347
    new-instance v7, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v7}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v7, v12, v24

    .line 348
    aget-object v7, v12, v24

    iget v8, v4, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    iput v8, v7, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 349
    aget-object v7, v12, v24

    iget v8, v4, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    iput v8, v7, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 350
    nop

    .line 352
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v7

    .line 353
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    const/4 v11, 0x0

    const/16 v16, 0x1

    move-object/from16 v25, v12

    .end local v12    # "coords":[Landroid/view/MotionEvent$PointerCoords;
    .local v25, "coords":[Landroid/view/MotionEvent$PointerCoords;
    move/from16 v12, v16

    const/16 v16, 0x0

    move-object/from16 v26, v15

    .end local v15    # "properties":[Landroid/view/MotionEvent$PointerProperties;
    .local v26, "properties":[Landroid/view/MotionEvent$PointerProperties;
    move/from16 v15, v16

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    .line 362
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v19

    const/16 v20, 0x0

    .line 364
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v21

    .line 365
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v22

    .line 366
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v23

    .line 351
    invoke-static/range {v7 .. v23}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIII)Landroid/view/MotionEvent;

    move-result-object v7

    .line 367
    .local v7, "clickEvent":Landroid/view/MotionEvent;
    if-ne v5, v6, :cond_1

    goto :goto_0

    :cond_1
    move/from16 v6, v24

    .line 368
    .local v6, "targetAccessibilityFocus":Z
    :goto_0
    move-object/from16 v8, p2

    move/from16 v9, p3

    invoke-direct {v0, v7, v8, v9, v6}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendActionDownAndUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;IZ)V

    .line 369
    invoke-virtual {v7}, Landroid/view/MotionEvent;->recycle()V

    .line 370
    return-void
.end method

.method public longPressWithTouchEvents(Landroid/view/MotionEvent;I)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .line 311
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 312
    .local v0, "pointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 313
    .local v1, "pointerId":I
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mTempPoint:Landroid/graphics/Point;

    .line 314
    .local v2, "clickLocation":Landroid/graphics/Point;
    invoke-direct {p0, v2}, Lcom/android/server/accessibility/gestures/EventDispatcher;->computeClickLocation(Landroid/graphics/Point;)I

    move-result v3

    .line 315
    .local v3, "result":I
    if-nez v3, :cond_0

    .line 316
    const/4 v4, 0x0

    return v4

    .line 318
    :cond_0
    iput v1, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerId:I

    .line 319
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    iget v5, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerDeltaX:I

    .line 320
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iget v5, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerDeltaY:I

    .line 321
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    .line 322
    const/4 v4, 0x1

    return v4
.end method

.method sendAccessibilityEvent(I)V
    .locals 3
    .param p1, "type"    # I

    .line 153
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 154
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 156
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getActiveWindowId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setWindowId(I)V

    .line 157
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 166
    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/gestures/TouchState;->onInjectedAccessibilityEvent(I)V

    .line 167
    return-void
.end method

.method sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V
    .locals 11
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .line 269
    const/4 v0, 0x0

    .line 270
    .local v0, "pointerIdBits":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 271
    .local v1, "pointerCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 272
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 274
    .local v3, "pointerId":I
    iget-object v4, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v4, v3}, Lcom/android/server/accessibility/gestures/TouchState;->isInjectedPointerDown(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 275
    const/4 v4, 0x1

    shl-int/2addr v4, v3

    or-int/2addr v0, v4

    .line 276
    const/4 v4, 0x0

    invoke-direct {p0, v4, v2}, Lcom/android/server/accessibility/gestures/EventDispatcher;->computeInjectionAction(II)I

    move-result v4

    .line 277
    .local v4, "action":I
    iget-object v5, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 280
    invoke-virtual {v5}, Lcom/android/server/accessibility/gestures/TouchState;->getLastReceivedEvent()Landroid/view/MotionEvent;

    move-result-object v8

    .line 277
    move-object v5, p0

    move-object v6, p1

    move v7, v4

    move v9, v0

    move v10, p2

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    .line 271
    .end local v3    # "pointerId":I
    .end local v4    # "action":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 285
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V
    .locals 5
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "action"    # I
    .param p3, "rawEvent"    # Landroid/view/MotionEvent;
    .param p4, "pointerIdBits"    # I
    .param p5, "policyFlags"    # I

    .line 96
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, "event":Landroid/view/MotionEvent;
    const-string v1, "EventDispatcher"

    const/4 v2, -0x1

    if-ne p4, v2, :cond_0

    .line 100
    move-object v0, p1

    goto :goto_0

    .line 103
    :cond_0
    :try_start_0
    invoke-virtual {p1, p4}, Landroid/view/MotionEvent;->split(I)Landroid/view/MotionEvent;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 107
    nop

    .line 109
    :goto_0
    if-nez p2, :cond_1

    .line 110
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->setDownTime(J)V

    goto :goto_1

    .line 112
    :cond_1
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v2}, Lcom/android/server/accessibility/gestures/TouchState;->getLastInjectedDownEventTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->setDownTime(J)V

    .line 120
    :goto_1
    iget v2, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerId:I

    if-ltz v2, :cond_2

    .line 121
    iget v2, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerDeltaX:I

    neg-int v2, v2

    iget v3, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerDeltaY:I

    neg-int v3, v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/accessibility/gestures/EventDispatcher;->offsetEvent(Landroid/view/MotionEvent;II)Landroid/view/MotionEvent;

    move-result-object v0

    .line 134
    :cond_2
    const/high16 v2, 0x40000000    # 2.0f

    or-int/2addr p5, v2

    .line 135
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mReceiver:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v2, :cond_3

    .line 136
    invoke-interface {v2, v0, p3, p5}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_2

    .line 138
    :cond_3
    const-string v2, "Error sending event: no receiver specified."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :goto_2
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/gestures/TouchState;->onInjectedMotionEvent(Landroid/view/MotionEvent;)V

    .line 142
    if-eq v0, p1, :cond_4

    .line 143
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 145
    :cond_4
    return-void

    .line 104
    :catch_0
    move-exception v2

    .line 105
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendMotionEvent: Failed to split motion event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void
.end method

.method sendUpForInjectedDownPointers(Landroid/view/MotionEvent;I)V
    .locals 11
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .line 295
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v0

    .line 296
    .local v0, "pointerIdBits":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 297
    .local v1, "pointerCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 298
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    .line 300
    .local v9, "pointerId":I
    iget-object v3, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v3, v9}, Lcom/android/server/accessibility/gestures/TouchState;->isInjectedPointerDown(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 301
    goto :goto_1

    .line 303
    :cond_0
    const/4 v3, 0x6

    invoke-direct {p0, v3, v2}, Lcom/android/server/accessibility/gestures/EventDispatcher;->computeInjectionAction(II)I

    move-result v10

    .line 304
    .local v10, "action":I
    iget-object v3, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 305
    invoke-virtual {v3}, Lcom/android/server/accessibility/gestures/TouchState;->getLastReceivedEvent()Landroid/view/MotionEvent;

    move-result-object v6

    .line 304
    move-object v3, p0

    move-object v4, p1

    move v5, v10

    move v7, v0

    move v8, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    .line 306
    const/4 v3, 0x1

    shl-int/2addr v3, v9

    not-int v3, v3

    and-int/2addr v0, v3

    .line 297
    .end local v9    # "pointerId":I
    .end local v10    # "action":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 308
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public setReceiver(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 0
    .param p1, "receiver"    # Lcom/android/server/accessibility/EventStreamTransformation;

    .line 78
    iput-object p1, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mReceiver:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 79
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "========================="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    const-string v1, "\nDown pointers #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState;->getInjectedPointersDown()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    const-string v1, " [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_1

    .line 177
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v2, v1}, Lcom/android/server/accessibility/gestures/TouchState;->isInjectedPointerDown(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 182
    .end local v1    # "i":I
    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const-string v1, "\n========================="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
