.class Lcom/android/server/accessibility/TouchExplorer;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "TouchExplorer.java"

# interfaces
.implements Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;,
        Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;,
        Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;,
        Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;,
        Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;,
        Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;
    }
.end annotation


# static fields
.field private static final ALL_POINTER_ID_BITS:I = -0x1

.field private static final CLICK_LOCATION_ACCESSIBILITY_FOCUS:I = 0x1

.field private static final CLICK_LOCATION_LAST_TOUCH_EXPLORED:I = 0x2

.field private static final CLICK_LOCATION_NONE:I = 0x0

.field private static final DEBUG:Z = false

.field private static final EXIT_GESTURE_DETECTION_TIMEOUT:I = 0x7d0

.field private static final INVALID_POINTER_ID:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "TouchExplorer"

.field private static final MAX_DRAGGING_ANGLE_COS:F = 0.52532196f

.field private static final MAX_POINTER_COUNT:I = 0x20

.field private static final MIN_POINTER_DISTANCE_TO_USE_MIDDLE_LOCATION_DIP:I = 0xc8

.field private static final STATE_DELEGATING:I = 0x4

.field private static final STATE_DRAGGING:I = 0x2

.field private static final STATE_GESTURE_DETECTING:I = 0x5

.field private static final STATE_TOUCH_EXPLORING:I = 0x1


# instance fields
.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private final mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private final mDetermineUserIntentTimeout:I

.field private final mDoubleTapSlop:I

.field private mDraggingPointerId:I

.field private final mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;

.field private final mGestureDetector:Lcom/android/server/accessibility/AccessibilityGestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private final mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

.field private mLastTouchedWindowId:I

.field private mLongPressingPointerDeltaX:I

.field private mLongPressingPointerDeltaY:I

.field private mLongPressingPointerId:I

.field private final mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

.field private final mScaledMinPointerDistanceToUseMiddleLocation:I

.field private final mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

.field private final mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

.field private final mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

.field private final mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

.field private final mTempPoint:Landroid/graphics/Point;

.field private mTouchExplorationInProgress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/accessibility/TouchExplorer;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityGestureDetector;)V

    .line 174
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityGestureDetector;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p3, "detector"    # Lcom/android/server/accessibility/AccessibilityGestureDetector;

    .line 186
    invoke-direct {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;-><init>()V

    .line 105
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 145
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mTempPoint:Landroid/graphics/Point;

    .line 151
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    .line 187
    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mContext:Landroid/content/Context;

    .line 188
    iput-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 189
    new-instance v0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;-><init>(Lcom/android/server/accessibility/TouchExplorer;)V

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    .line 190
    new-instance v0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;-><init>(Lcom/android/server/accessibility/TouchExplorer;)V

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    .line 191
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mDetermineUserIntentTimeout:I

    .line 192
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapSlop:I

    .line 193
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mHandler:Landroid/os/Handler;

    .line 194
    new-instance v0, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;Lcom/android/server/accessibility/TouchExplorer$1;)V

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;

    .line 195
    new-instance v0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;)V

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    .line 196
    new-instance v0, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;)V

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    .line 197
    new-instance v0, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mDetermineUserIntentTimeout:I

    const/16 v2, 0x400

    invoke-direct {v0, p0, v2, v1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;II)V

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    .line 200
    new-instance v0, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mDetermineUserIntentTimeout:I

    const/high16 v2, 0x200000

    invoke-direct {v0, p0, v2, v1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;II)V

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    .line 203
    if-nez p3, :cond_0

    .line 204
    new-instance v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;

    invoke-direct {v0, p1, p0}, Lcom/android/server/accessibility/AccessibilityGestureDetector;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;)V

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/AccessibilityGestureDetector;

    goto :goto_0

    .line 206
    :cond_0
    iput-object p3, p0, Lcom/android/server/accessibility/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/AccessibilityGestureDetector;

    .line 208
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 209
    .local v0, "density":F
    const/high16 v1, 0x43480000    # 200.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mScaledMinPointerDistanceToUseMiddleLocation:I

    .line 211
    return-void
.end method

.method static synthetic access$300(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;

    .line 58
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/accessibility/TouchExplorer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;
    .param p1, "x1"    # I

    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/accessibility/TouchExplorer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;

    .line 58
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer;->clear()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/accessibility/TouchExplorer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;

    .line 58
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mDetermineUserIntentTimeout:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/accessibility/TouchExplorer;Landroid/view/MotionEvent;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;

    .line 58
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;

    .line 58
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    return-object v0
.end method

.method private clear()V
    .locals 3

    .line 229
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getLastReceivedEvent()Landroid/view/MotionEvent;

    move-result-object v0

    .line 230
    .local v0, "event":Landroid/view/MotionEvent;
    if-eqz v0, :cond_0

    .line 231
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getLastReceivedEvent()Landroid/view/MotionEvent;

    move-result-object v1

    const/high16 v2, 0x2000000

    invoke-direct {p0, v1, v2}, Lcom/android/server/accessibility/TouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    .line 233
    :cond_0
    return-void
.end method

.method private clear(Landroid/view/MotionEvent;I)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .line 236
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 248
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendUpForInjectedDownPointers(Landroid/view/MotionEvent;I)V

    .line 249
    goto :goto_0

    .line 242
    :cond_1
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    .line 244
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendUpForInjectedDownPointers(Landroid/view/MotionEvent;I)V

    .line 245
    goto :goto_0

    .line 239
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    .line 240
    nop

    .line 255
    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 256
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 257
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;->cancel()V

    .line 258
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 259
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 261
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->clear()V

    .line 262
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->clear()V

    .line 264
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/AccessibilityGestureDetector;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->clear()V

    .line 267
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    .line 268
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaX:I

    .line 269
    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaY:I

    .line 270
    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 271
    iput-boolean v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationInProgress:Z

    .line 272
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 273
    return-void
.end method

.method private computeClickLocation(Landroid/graphics/Point;)I
    .locals 5
    .param p1, "outLocation"    # Landroid/graphics/Point;

    .line 1097
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getLastInjectedHoverEventForClick()Landroid/view/MotionEvent;

    move-result-object v0

    .line 1098
    .local v0, "lastExploreEvent":Landroid/view/MotionEvent;
    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1099
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 1100
    .local v2, "lastExplorePointerIndex":I
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p1, Landroid/graphics/Point;->x:I

    .line 1101
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p1, Landroid/graphics/Point;->y:I

    .line 1102
    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->accessibilityFocusOnlyInActiveWindow()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchedWindowId:I

    iget-object v4, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 1103
    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->getActiveWindowId()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 1104
    :cond_0
    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAccessibilityFocusClickPointInScreen(Landroid/graphics/Point;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1105
    return v1

    .line 1107
    :cond_1
    const/4 v1, 0x2

    return v1

    .line 1111
    .end local v2    # "lastExplorePointerIndex":I
    :cond_2
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAccessibilityFocusClickPointInScreen(Landroid/graphics/Point;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1112
    return v1

    .line 1114
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method private computeInjectionAction(II)I
    .locals 4
    .param p1, "actionMasked"    # I
    .param p2, "pointerIndex"    # I

    .line 1045
    const/4 v0, 0x5

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    .line 1068
    return p1

    .line 1058
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    .line 1060
    .local v1, "injectedTracker":Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;
    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getInjectedPointerDownCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1061
    return v3

    .line 1063
    :cond_1
    shl-int/lit8 v2, p2, 0x8

    or-int/2addr v0, v2

    return v0

    .line 1048
    .end local v1    # "injectedTracker":Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;
    :cond_2
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    .line 1050
    .restart local v1    # "injectedTracker":Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;
    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getInjectedPointerDownCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 1051
    const/4 v0, 0x0

    return v0

    .line 1053
    :cond_3
    shl-int/lit8 v2, p2, 0x8

    or-int/2addr v0, v2

    return v0
.end method

.method private endGestureDetection(Z)V
    .locals 1
    .param p1, "interactionEnd"    # Z

    .line 813
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 816
    const/high16 v0, 0x80000

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    .line 818
    if-eqz p1, :cond_0

    .line 819
    const/high16 v0, 0x200000

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    .line 822
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;->cancel()V

    .line 823
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 824
    return-void
.end method

.method private static getStateSymbolicName(I)Ljava/lang/String;
    .locals 2
    .param p0, "state"    # I

    .line 1124
    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 1134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1132
    :cond_0
    const-string v0, "STATE_GESTURE_DETECTING"

    return-object v0

    .line 1130
    :cond_1
    const-string v0, "STATE_DELEGATING"

    return-object v0

    .line 1128
    :cond_2
    const-string v0, "STATE_DRAGGING"

    return-object v0

    .line 1126
    :cond_3
    const-string v0, "STATE_TOUCH_EXPLORING"

    return-object v0
.end method

.method private handleMotionEventStateDelegating(Landroid/view/MotionEvent;I)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .line 777
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v1, :cond_0

    .line 807
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-direct {p0, p1, v0, v2, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto :goto_0

    .line 787
    :cond_0
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    if-ltz v0, :cond_1

    .line 788
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaX:I

    neg-int v0, v0

    iget v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaY:I

    neg-int v3, v3

    invoke-direct {p0, p1, v0, v3}, Lcom/android/server/accessibility/TouchExplorer;->offsetEvent(Landroid/view/MotionEvent;II)Landroid/view/MotionEvent;

    move-result-object p1

    .line 791
    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    .line 792
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaX:I

    .line 793
    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaY:I

    .line 797
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-direct {p0, p1, v0, v2, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 800
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 801
    const/high16 v0, 0x200000

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    .line 803
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 804
    nop

    .line 810
    :goto_0
    return-void

    .line 779
    :cond_2
    const-string v0, "TouchExplorer"

    const-string v1, "Delegating state can only be reached if there is at least one pointer down!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    .line 782
    return-void
.end method

.method private handleMotionEventStateDragging(Landroid/view/MotionEvent;I)V
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .line 665
    const/4 v0, 0x0

    .line 667
    .local v0, "pointerIdBits":I
    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    const-string v2, "TouchExplorer"

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne v1, v3, :cond_0

    .line 668
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mDraggingPointerId doesn\'t match any pointers on current event. mDraggingPointerId: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    .line 669
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", Event: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 668
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    iput v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    goto :goto_0

    .line 673
    :cond_0
    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    shl-int v0, v4, v1

    .line 675
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_f

    if-eq v1, v4, :cond_d

    const/4 v2, 0x4

    const/4 v5, 0x2

    if-eq v1, v5, :cond_5

    const/4 v5, 0x5

    if-eq v1, v5, :cond_3

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    goto/16 :goto_3

    .line 747
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 748
    .local v1, "pointerId":I
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    if-ne v1, v2, :cond_2

    .line 749
    iput v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    .line 751
    invoke-direct {p0, p1, v4, v0, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 753
    .end local v1    # "pointerId":I
    :cond_2
    goto/16 :goto_3

    .line 685
    :cond_3
    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 686
    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    if-eq v1, v3, :cond_4

    .line 687
    invoke-direct {p0, p1, v4, v0, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 689
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    .line 690
    goto/16 :goto_3

    .line 692
    :cond_5
    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    if-ne v1, v3, :cond_6

    .line 693
    goto/16 :goto_3

    .line 695
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-eq v1, v4, :cond_c

    if-eq v1, v5, :cond_7

    .line 736
    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 737
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 739
    invoke-direct {p0, p1, v4, v0, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 742
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    .line 745
    goto/16 :goto_3

    .line 700
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/TouchExplorer;->isDraggingGesture(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 701
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 702
    .local v2, "firstPtrX":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 703
    .local v1, "firstPtrY":F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 704
    .local v3, "secondPtrX":F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 706
    .local v4, "secondPtrY":F
    iget v6, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    .line 708
    .local v6, "pointerIndex":I
    if-nez v6, :cond_8

    sub-float v7, v3, v2

    goto :goto_1

    .line 709
    :cond_8
    sub-float v7, v2, v3

    :goto_1
    nop

    .line 711
    .local v7, "deltaX":F
    if-nez v6, :cond_9

    sub-float v8, v4, v1

    goto :goto_2

    .line 712
    :cond_9
    sub-float v8, v1, v4

    :goto_2
    nop

    .line 713
    .local v8, "deltaY":F
    float-to-double v9, v7

    float-to-double v11, v8

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v9

    .line 715
    .local v9, "distance":D
    iget v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mScaledMinPointerDistanceToUseMiddleLocation:I

    int-to-double v11, v11

    cmpl-double v11, v9, v11

    if-lez v11, :cond_a

    .line 716
    const/high16 v11, 0x40000000    # 2.0f

    div-float v12, v7, v11

    div-float v11, v8, v11

    invoke-virtual {p1, v12, v11}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 720
    :cond_a
    invoke-direct {p0, p1, v5, v0, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 722
    .end local v1    # "firstPtrY":F
    .end local v2    # "firstPtrX":F
    .end local v3    # "secondPtrX":F
    .end local v4    # "secondPtrY":F
    .end local v6    # "pointerIndex":I
    .end local v7    # "deltaX":F
    .end local v8    # "deltaY":F
    .end local v9    # "distance":D
    goto :goto_3

    .line 725
    :cond_b
    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 727
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 729
    invoke-direct {p0, p1, v4, v0, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 732
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    .line 734
    goto :goto_3

    .line 698
    :cond_c
    goto :goto_3

    .line 755
    :cond_d
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 757
    const/high16 v1, 0x200000

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    .line 759
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 760
    .local v1, "pointerId":I
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    if-ne v1, v2, :cond_e

    .line 761
    iput v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    .line 763
    invoke-direct {p0, p1, v4, v0, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 765
    :cond_e
    iput v4, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 768
    .end local v1    # "pointerId":I
    :goto_3
    return-void

    .line 677
    :cond_f
    const-string v1, "Dragging state can be reached only if two pointers are already down"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    .line 680
    return-void
.end method

.method private handleMotionEventStateTouchExploring(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 504
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    .line 506
    .local v0, "receivedTracker":Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_d

    if-eq v1, v2, :cond_b

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    goto/16 :goto_5

    .line 549
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 550
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 551
    goto/16 :goto_5

    .line 553
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getPrimaryPointerId()I

    move-result v1

    .line 554
    .local v1, "pointerId":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 555
    .local v4, "pointerIndex":I
    shl-int v5, v2, v1

    .line 556
    .local v5, "pointerIdBits":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    if-eq v6, v2, :cond_8

    const/4 v2, 0x4

    if-eq v6, v3, :cond_3

    .line 619
    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-static {v3}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->access$200(Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 622
    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 623
    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    goto :goto_0

    .line 627
    :cond_2
    invoke-direct {p0, p3}, Lcom/android/server/accessibility/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    .line 631
    :goto_0
    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 632
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 633
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto/16 :goto_2

    .line 574
    :cond_3
    iget-object v6, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-static {v6}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->access$200(Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 577
    iget-object v6, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v6}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 578
    iget-object v6, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v6}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    goto :goto_1

    .line 580
    :cond_4
    iget-boolean v6, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationInProgress:Z

    if-eqz v6, :cond_6

    .line 586
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v6

    .line 587
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    sub-float/2addr v6, v7

    .line 588
    .local v6, "deltaX":F
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v7

    .line 589
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    sub-float/2addr v7, v8

    .line 590
    .local v7, "deltaY":F
    float-to-double v8, v6

    float-to-double v10, v7

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    .line 591
    .local v8, "moveDelta":D
    iget v10, p0, Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapSlop:I

    int-to-double v10, v10

    cmpg-double v10, v8, v10

    if-gez v10, :cond_5

    .line 592
    goto :goto_2

    .line 596
    :cond_5
    invoke-direct {p0, p3}, Lcom/android/server/accessibility/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    .line 601
    .end local v6    # "deltaX":F
    .end local v7    # "deltaY":F
    .end local v8    # "moveDelta":D
    :cond_6
    :goto_1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 602
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/TouchExplorer;->isDraggingGesture(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 605
    iput v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 606
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    .line 607
    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getLastReceivedDownEdgeFlags()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    .line 608
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v5, p3}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto :goto_2

    .line 612
    :cond_7
    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 613
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    .line 615
    goto :goto_2

    .line 560
    :cond_8
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-static {v2}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->access$200(Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 562
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->addEvent(Landroid/view/MotionEvent;)V

    goto :goto_2

    .line 564
    :cond_9
    iget-boolean v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationInProgress:Z

    if-eqz v2, :cond_a

    .line 565
    invoke-direct {p0, p3}, Lcom/android/server/accessibility/TouchExplorer;->sendTouchExplorationGestureStartAndHoverEnterIfNeeded(I)V

    .line 566
    const/4 v2, 0x7

    invoke-direct {p0, p1, v2, v5, p3}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 636
    .end local v1    # "pointerId":I
    .end local v4    # "pointerIndex":I
    .end local v5    # "pointerIdBits":I
    :cond_a
    :goto_2
    goto/16 :goto_5

    .line 638
    :cond_b
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 639
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 640
    .restart local v1    # "pointerId":I
    shl-int/2addr v2, v1

    .line 642
    .local v2, "pointerIdBits":I
    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-static {v3}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->access$200(Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 644
    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v3, p1, v2, p3}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->post(Landroid/view/MotionEvent;II)V

    goto :goto_3

    .line 647
    :cond_c
    invoke-direct {p0, p3}, Lcom/android/server/accessibility/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    .line 650
    :goto_3
    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v3

    if-nez v3, :cond_11

    .line 651
    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->post()V

    goto :goto_5

    .line 508
    .end local v1    # "pointerId":I
    .end local v2    # "pointerIdBits":I
    :cond_d
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionStart()V

    .line 513
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 514
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 517
    iget-boolean v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationInProgress:Z

    if-eqz v1, :cond_e

    .line 518
    invoke-direct {p0, p3}, Lcom/android/server/accessibility/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    .line 522
    :cond_e
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/AccessibilityGestureDetector;

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->firstTapDetected()Z

    move-result v1

    if-nez v1, :cond_f

    .line 523
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    .line 524
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    .line 525
    const/high16 v1, 0x100000

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    goto :goto_4

    .line 528
    :cond_f
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 531
    :goto_4
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/AccessibilityGestureDetector;

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->firstTapDetected()Z

    move-result v1

    if-nez v1, :cond_11

    iget-boolean v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationInProgress:Z

    if-nez v1, :cond_11

    .line 532
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-static {v1}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->access$200(Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 535
    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getPrimaryPointerId()I

    move-result v1

    .line 536
    .restart local v1    # "pointerId":I
    shl-int v3, v2, v1

    .line 537
    .local v3, "pointerIdBits":I
    iget-object v4, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v4, p1, v2, v3, p3}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->post(Landroid/view/MotionEvent;ZII)V

    .line 539
    .end local v1    # "pointerId":I
    .end local v3    # "pointerIdBits":I
    goto :goto_5

    .line 541
    :cond_10
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->addEvent(Landroid/view/MotionEvent;)V

    .line 656
    :cond_11
    :goto_5
    return-void
.end method

.method private isDraggingGesture(Landroid/view/MotionEvent;)Z
    .locals 20
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1079
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    .line 1081
    .local v2, "receivedTracker":Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    .line 1082
    .local v13, "firstPtrX":F
    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    .line 1083
    .local v14, "firstPtrY":F
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v15

    .line 1084
    .local v15, "secondPtrX":F
    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v16

    .line 1086
    .local v16, "secondPtrY":F
    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v17

    .line 1087
    .local v17, "firstPtrDownX":F
    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v3

    .line 1088
    .local v3, "firstPtrDownY":F
    invoke-virtual {v2, v4}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v18

    .line 1089
    .local v18, "secondPtrDownX":F
    invoke-virtual {v2, v4}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v19

    .line 1091
    .local v19, "secondPtrDownY":F
    const v12, 0x3f067b80

    move/from16 v4, v17

    move v5, v3

    move/from16 v6, v18

    move/from16 v7, v19

    move v8, v13

    move v9, v14

    move v10, v15

    move/from16 v11, v16

    invoke-static/range {v4 .. v12}, Lcom/android/server/accessibility/GestureUtils;->isDraggingGesture(FFFFFFFFF)Z

    move-result v4

    return v4
.end method

.method private offsetEvent(Landroid/view/MotionEvent;II)Landroid/view/MotionEvent;
    .locals 25
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "offsetX"    # I
    .param p3, "offsetY"    # I

    .line 1014
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    .line 1015
    return-object v0

    .line 1017
    :cond_0
    move-object/from16 v3, p0

    iget v4, v3, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 1018
    .local v4, "remappedIndex":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    .line 1019
    .local v5, "pointerCount":I
    invoke-static {v5}, Landroid/view/MotionEvent$PointerProperties;->createArray(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v23

    .line 1020
    .local v23, "props":[Landroid/view/MotionEvent$PointerProperties;
    invoke-static {v5}, Landroid/view/MotionEvent$PointerCoords;->createArray(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v24

    .line 1021
    .local v24, "coords":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_2

    .line 1022
    aget-object v7, v23, v6

    invoke-virtual {v0, v6, v7}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 1023
    aget-object v7, v24, v6

    invoke-virtual {v0, v6, v7}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 1024
    if-ne v6, v4, :cond_1

    .line 1025
    aget-object v7, v24, v6

    iget v8, v7, Landroid/view/MotionEvent$PointerCoords;->x:F

    int-to-float v9, v1

    add-float/2addr v8, v9

    iput v8, v7, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 1026
    aget-object v7, v24, v6

    iget v8, v7, Landroid/view/MotionEvent$PointerCoords;->y:F

    int-to-float v9, v2

    add-float/2addr v8, v9

    iput v8, v7, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 1021
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1029
    .end local v6    # "i":I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    .line 1030
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v11

    .line 1031
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v15

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    .line 1032
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v19

    .line 1033
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v20

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v21

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v22

    .line 1029
    move-object/from16 v12, v23

    move-object/from16 v13, v24

    invoke-static/range {v6 .. v22}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIII)Landroid/view/MotionEvent;

    move-result-object v6

    return-object v6
.end method

.method private sendAccessibilityEvent(I)V
    .locals 3
    .param p1, "type"    # I

    .line 832
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 833
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 834
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 835
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getActiveWindowId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setWindowId(I)V

    .line 836
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 837
    const/16 v2, 0x200

    if-eq p1, v2, :cond_1

    const/16 v2, 0x400

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 842
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationInProgress:Z

    goto :goto_0

    .line 839
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationInProgress:Z

    .line 846
    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_2
    :goto_0
    return-void
.end method

.method private sendActionDownAndUp(Landroid/view/MotionEvent;IZ)V
    .locals 4
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I
    .param p3, "targetAccessibilityFocus"    # Z

    .line 936
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 937
    .local v0, "pointerId":I
    const/4 v1, 0x1

    shl-int v2, v1, v0

    .line 938
    .local v2, "pointerIdBits":I
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    .line 939
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3, v2, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 940
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    .line 941
    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 942
    return-void
.end method

.method private sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V
    .locals 6
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .line 856
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    .line 859
    .local v0, "injectedPointers":Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;
    const/4 v1, 0x0

    .line 860
    .local v1, "pointerIdBits":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 861
    .local v2, "pointerCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 862
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 864
    .local v4, "pointerId":I
    invoke-virtual {v0, v4}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->isInjectedPointerDown(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 865
    const/4 v5, 0x1

    shl-int/2addr v5, v4

    or-int/2addr v1, v5

    .line 866
    const/4 v5, 0x0

    invoke-direct {p0, v5, v3}, Lcom/android/server/accessibility/TouchExplorer;->computeInjectionAction(II)I

    move-result v5

    .line 867
    .local v5, "action":I
    invoke-direct {p0, p1, v5, v1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 861
    .end local v4    # "pointerId":I
    .end local v5    # "action":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 870
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method private sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V
    .locals 4
    .param p1, "policyFlags"    # I

    .line 879
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getLastInjectedHoverEvent()Landroid/view/MotionEvent;

    move-result-object v0

    .line 880
    .local v0, "event":Landroid/view/MotionEvent;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    .line 881
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v1

    .line 882
    .local v1, "pointerIdBits":I
    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v3

    if-nez v3, :cond_0

    .line 883
    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->post()V

    .line 885
    :cond_0
    invoke-direct {p0, v0, v2, v1, p1}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 887
    .end local v1    # "pointerIdBits":I
    :cond_1
    return-void
.end method

.method private sendMotionEvent(Landroid/view/MotionEvent;III)V
    .locals 4
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "action"    # I
    .param p3, "pointerIdBits"    # I
    .param p4, "policyFlags"    # I

    .line 954
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 956
    const/4 v0, 0x0

    .line 957
    .local v0, "event":Landroid/view/MotionEvent;
    const/4 v1, -0x1

    if-ne p3, v1, :cond_0

    .line 958
    move-object v0, p1

    goto :goto_0

    .line 961
    :cond_0
    :try_start_0
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->split(I)Landroid/view/MotionEvent;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 965
    nop

    .line 967
    :goto_0
    if-nez p2, :cond_1

    .line 968
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setDownTime(J)V

    goto :goto_1

    .line 970
    :cond_1
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getLastInjectedDownEventTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setDownTime(J)V

    .line 979
    :goto_1
    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    if-ltz v1, :cond_2

    .line 980
    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaX:I

    neg-int v1, v1

    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaY:I

    neg-int v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/accessibility/TouchExplorer;->offsetEvent(Landroid/view/MotionEvent;II)Landroid/view/MotionEvent;

    move-result-object v0

    .line 990
    :cond_2
    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr p4, v1

    .line 994
    const/4 v1, 0x0

    invoke-super {p0, v0, v1, p4}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 996
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 998
    if-eq v0, p1, :cond_3

    .line 999
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1001
    :cond_3
    return-void

    .line 962
    :catch_0
    move-exception v1

    .line 963
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendMotionEvent: Failed to split motion event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TouchExplorer"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    return-void
.end method

.method private sendTouchExplorationGestureStartAndHoverEnterIfNeeded(I)V
    .locals 3
    .param p1, "policyFlags"    # I

    .line 896
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getLastInjectedHoverEvent()Landroid/view/MotionEvent;

    move-result-object v0

    .line 897
    .local v0, "event":Landroid/view/MotionEvent;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 898
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v1

    .line 899
    .local v1, "pointerIdBits":I
    const/16 v2, 0x9

    invoke-direct {p0, v0, v2, v1, p1}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 901
    .end local v1    # "pointerIdBits":I
    :cond_0
    return-void
.end method

.method private sendUpForInjectedDownPointers(Landroid/view/MotionEvent;I)V
    .locals 7
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .line 911
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    .line 912
    .local v0, "injectedTracked":Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;
    const/4 v1, 0x0

    .line 913
    .local v1, "pointerIdBits":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 914
    .local v2, "pointerCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 915
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 917
    .local v4, "pointerId":I
    invoke-virtual {v0, v4}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->isInjectedPointerDown(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 918
    goto :goto_1

    .line 920
    :cond_0
    const/4 v5, 0x1

    shl-int v6, v5, v4

    or-int/2addr v1, v6

    .line 921
    invoke-direct {p0, v5, v3}, Lcom/android/server/accessibility/TouchExplorer;->computeInjectionAction(II)I

    move-result v5

    .line 922
    .local v5, "action":I
    invoke-direct {p0, p1, v5, v1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 914
    .end local v4    # "pointerId":I
    .end local v5    # "action":I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 924
    .end local v3    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public clearEvents(I)V
    .locals 1
    .param p1, "inputSource"    # I

    .line 215
    const/16 v0, 0x1002

    if-ne p1, v0, :cond_0

    .line 216
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer;->clear()V

    .line 218
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->clearEvents(I)V

    .line 219
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 321
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 325
    .local v0, "eventType":I
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v1

    const/16 v2, 0x100

    if-eqz v1, :cond_0

    if-ne v0, v2, :cond_0

    .line 327
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 328
    const/16 v1, 0x400

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    .line 333
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v1

    if-eqz v1, :cond_1

    if-ne v0, v2, :cond_1

    .line 335
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 336
    const/high16 v1, 0x200000

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    .line 341
    :cond_1
    const/16 v1, 0x20

    if-eq v0, v1, :cond_3

    const/16 v1, 0x80

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_2

    const v1, 0x8000

    if-eq v0, v1, :cond_3

    goto :goto_0

    .line 352
    :cond_2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchedWindowId:I

    goto :goto_0

    .line 344
    :cond_3
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-static {v1}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->access$100(Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;)Landroid/view/MotionEvent;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 345
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-static {v1}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->access$100(Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 346
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->access$102(Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 348
    :cond_4
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchedWindowId:I

    .line 349
    nop

    .line 355
    :goto_0
    invoke-super {p0, p1}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 356
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 223
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer;->clear()V

    .line 224
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;I)Z
    .locals 27
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .line 393
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_0

    .line 394
    return v3

    .line 397
    :cond_0
    iget-object v2, v0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 399
    iget-object v2, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 400
    iget-object v2, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 402
    iget-object v2, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 403
    iget-object v2, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    .line 407
    :cond_1
    const/high16 v2, 0x200000

    invoke-direct {v0, v2}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    .line 410
    iget-object v2, v0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v2, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->performActionOnAccessibilityFocusedItem(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 412
    return v4

    .line 414
    :cond_2
    const-string v2, "TouchExplorer"

    const-string v5, "ACTION_CLICK failed. Dispatching motion events to simulate click."

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 417
    .local v2, "pointerIndex":I
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 419
    .local v5, "pointerId":I
    iget-object v6, v0, Lcom/android/server/accessibility/TouchExplorer;->mTempPoint:Landroid/graphics/Point;

    .line 420
    .local v6, "clickLocation":Landroid/graphics/Point;
    invoke-direct {v0, v6}, Lcom/android/server/accessibility/TouchExplorer;->computeClickLocation(Landroid/graphics/Point;)I

    move-result v7

    .line 421
    .local v7, "result":I
    if-nez v7, :cond_3

    .line 424
    return v4

    .line 428
    :cond_3
    new-array v13, v4, [Landroid/view/MotionEvent$PointerProperties;

    .local v13, "properties":[Landroid/view/MotionEvent$PointerProperties;
    move-object v14, v13

    .line 429
    new-instance v8, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v8}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v8, v13, v3

    .line 430
    aget-object v8, v13, v3

    invoke-virtual {v1, v2, v8}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 431
    new-array v12, v4, [Landroid/view/MotionEvent$PointerCoords;

    .local v12, "coords":[Landroid/view/MotionEvent$PointerCoords;
    move-object v15, v12

    .line 432
    new-instance v8, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v8}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v8, v12, v3

    .line 433
    aget-object v8, v12, v3

    iget v9, v6, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    iput v9, v8, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 434
    aget-object v8, v12, v3

    iget v9, v6, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    iput v9, v8, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 435
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v8

    .line 436
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    const/16 v16, 0x0

    move-object/from16 v25, v12

    .end local v12    # "coords":[Landroid/view/MotionEvent$PointerCoords;
    .local v25, "coords":[Landroid/view/MotionEvent$PointerCoords;
    move/from16 v12, v16

    const/16 v16, 0x1

    move-object/from16 v26, v13

    .end local v13    # "properties":[Landroid/view/MotionEvent$PointerProperties;
    .local v26, "properties":[Landroid/view/MotionEvent$PointerProperties;
    move/from16 v13, v16

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    .line 437
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v20

    const/16 v21, 0x0

    .line 438
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v23

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v24

    .line 435
    invoke-static/range {v8 .. v24}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIII)Landroid/view/MotionEvent;

    move-result-object v8

    .line 439
    .local v8, "click_event":Landroid/view/MotionEvent;
    if-ne v7, v4, :cond_4

    move v3, v4

    .line 440
    .local v3, "targetAccessibilityFocus":Z
    :cond_4
    move/from16 v9, p2

    invoke-direct {v0, v8, v9, v3}, Lcom/android/server/accessibility/TouchExplorer;->sendActionDownAndUp(Landroid/view/MotionEvent;IZ)V

    .line 441
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 442
    return v4
.end method

.method public onDoubleTapAndHold(Landroid/view/MotionEvent;I)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .line 361
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 362
    return-void

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getLastReceivedEvent()Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 367
    return-void

    .line 370
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 371
    .local v0, "pointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 373
    .local v1, "pointerId":I
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mTempPoint:Landroid/graphics/Point;

    .line 374
    .local v2, "clickLocation":Landroid/graphics/Point;
    invoke-direct {p0, v2}, Lcom/android/server/accessibility/TouchExplorer;->computeClickLocation(Landroid/graphics/Point;)I

    move-result v3

    .line 376
    .local v3, "result":I
    if-nez v3, :cond_2

    .line 377
    return-void

    .line 380
    :cond_2
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    .line 381
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    iget v5, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaX:I

    .line 382
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iget v5, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaY:I

    .line 384
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    .line 386
    const/4 v4, 0x4

    iput v4, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 387
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    .line 388
    return-void
.end method

.method public onGestureCancelled(Landroid/view/MotionEvent;I)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .line 474
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x5

    if-ne v0, v3, :cond_1

    .line 475
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/TouchExplorer;->endGestureDetection(Z)V

    .line 476
    return v2

    .line 477
    :cond_1
    if-ne v0, v2, :cond_2

    .line 479
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 480
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getPrimaryPointerId()I

    move-result v0

    .line 481
    .local v0, "pointerId":I
    shl-int v1, v2, v0

    .line 485
    .local v1, "pointerIdBits":I
    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->addEvent(Landroid/view/MotionEvent;)V

    .line 486
    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->forceSendAndRemove()V

    .line 487
    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 488
    const/4 v3, 0x7

    invoke-direct {p0, p1, v3, v1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 489
    return v2

    .line 492
    .end local v0    # "pointerId":I
    .end local v1    # "pointerIdBits":I
    :cond_2
    return v1
.end method

.method public onGestureCompleted(I)Z
    .locals 2
    .param p1, "gestureId"    # I

    .line 461
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 462
    const/4 v0, 0x0

    return v0

    .line 465
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/TouchExplorer;->endGestureDetection(Z)V

    .line 467
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z

    .line 469
    return v0
.end method

.method public onGestureStarted()Z
    .locals 1

    .line 449
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 450
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 451
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 452
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;->post()V

    .line 455
    const/high16 v0, 0x40000

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    .line 456
    const/4 v0, 0x0

    return v0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 277
    const/16 v0, 0x1002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 279
    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 290
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/AccessibilityGestureDetector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    return-void

    .line 295
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 296
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/TouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    .line 297
    return-void

    .line 300
    :cond_2
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TouchExplorer"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/TouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 312
    :cond_3
    goto :goto_0

    .line 308
    :cond_4
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/TouchExplorer;->handleMotionEventStateDelegating(Landroid/view/MotionEvent;I)V

    .line 309
    goto :goto_0

    .line 305
    :cond_5
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/TouchExplorer;->handleMotionEventStateDragging(Landroid/view/MotionEvent;I)V

    .line 306
    goto :goto_0

    .line 302
    :cond_6
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/TouchExplorer;->handleMotionEventStateTouchExploring(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 303
    nop

    .line 317
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TouchExplorer { mCurrentState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 1337
    invoke-static {v1}, Lcom/android/server/accessibility/TouchExplorer;->getStateSymbolicName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDetermineUserIntentTimeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mDetermineUserIntentTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDoubleTapSlop: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapSlop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDraggingPointerId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLongPressingPointerId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLongPressingPointerDeltaX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLongPressingPointerDeltaY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLastTouchedWindowId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchedWindowId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mScaledMinPointerDistanceToUseMiddleLocation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mScaledMinPointerDistanceToUseMiddleLocation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTempPoint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mTempPoint:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mTouchExplorationInProgress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationInProgress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1336
    return-object v0
.end method
