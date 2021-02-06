.class Lcom/android/server/accessibility/AccessibilityInputFilter;
.super Landroid/view/InputFilter;
.source "AccessibilityInputFilter.java"

# interfaces
.implements Lcom/android/server/accessibility/EventStreamTransformation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/AccessibilityInputFilter$KeyboardEventStreamState;,
        Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;,
        Lcom/android/server/accessibility/AccessibilityInputFilter$MouseEventStreamState;,
        Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final FEATURES_AFFECTING_MOTION_EVENTS:I = 0x1db

.field static final FLAG_FEATURE_AUTOCLICK:I = 0x8

.field static final FLAG_FEATURE_CONTROL_SCREEN_MAGNIFIER:I = 0x20

.field static final FLAG_FEATURE_FILTER_KEY_EVENTS:I = 0x4

.field static final FLAG_FEATURE_INJECT_MOTION_EVENTS:I = 0x10

.field static final FLAG_FEATURE_SCREEN_MAGNIFIER:I = 0x1

.field static final FLAG_FEATURE_TOUCH_EXPLORATION:I = 0x2

.field static final FLAG_FEATURE_TRIGGERED_SCREEN_MAGNIFIER:I = 0x40

.field static final FLAG_REQUEST_MULTI_FINGER_GESTURES:I = 0x100

.field static final FLAG_SERVICE_HANDLES_DOUBLE_TAP:I = 0x80

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private mAutoclickController:Lcom/android/server/accessibility/AutoclickController;

.field private final mContext:Landroid/content/Context;

.field private mEnabledFeatures:I

.field private final mEventHandler:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/EventStreamTransformation;",
            ">;"
        }
    .end annotation
.end field

.field private mInstalled:Z

.field private mKeyboardInterceptor:Lcom/android/server/accessibility/KeyboardInterceptor;

.field private mKeyboardStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

.field private final mMagnificationGestureHandler:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mMotionEventInjectors:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/MotionEventInjector;",
            ">;"
        }
    .end annotation
.end field

.field private mMouseStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

.field private final mPm:Landroid/os/PowerManager;

.field private final mTouchExplorer:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/gestures/TouchExplorer;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchScreenStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

.field private mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lcom/android/server/accessibility/AccessibilityInputFilter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 158
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/util/SparseArray;)V

    .line 159
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/util/SparseArray;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/accessibility/AccessibilityManagerService;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/EventStreamTransformation;",
            ">;)V"
        }
    .end annotation

    .line 163
    .local p3, "eventHandler":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/accessibility/EventStreamTransformation;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/InputFilter;-><init>(Landroid/os/Looper;)V

    .line 134
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    .line 136
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    .line 139
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjectors:Landroid/util/SparseArray;

    .line 164
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    .line 165
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 166
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mPm:Landroid/os/PowerManager;

    .line 167
    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    .line 168
    return-void
.end method

.method private addFirstEventHandler(ILcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "handler"    # Lcom/android/server/accessibility/EventStreamTransformation;

    .line 469
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/EventStreamTransformation;

    .line 470
    .local v0, "eventHandler":Lcom/android/server/accessibility/EventStreamTransformation;
    if-eqz v0, :cond_0

    .line 471
    invoke-interface {p2, v0}, Lcom/android/server/accessibility/EventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    goto :goto_0

    .line 473
    :cond_0
    invoke-interface {p2, p0}, Lcom/android/server/accessibility/EventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 475
    :goto_0
    move-object v0, p2

    .line 476
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 477
    return-void
.end method

.method private addFirstEventHandlerForAllDisplays(Ljava/util/ArrayList;Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 2
    .param p2, "handler"    # Lcom/android/server/accessibility/EventStreamTransformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/Display;",
            ">;",
            "Lcom/android/server/accessibility/EventStreamTransformation;",
            ")V"
        }
    .end annotation

    .line 488
    .local p1, "displayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Display;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 489
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    .line 490
    .local v1, "displayId":I
    invoke-direct {p0, v1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(ILcom/android/server/accessibility/EventStreamTransformation;)V

    .line 488
    .end local v1    # "displayId":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 492
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private clearEventsForAllEventHandlers(I)V
    .locals 2
    .param p1, "eventSource"    # I

    .line 279
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 280
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/EventStreamTransformation;

    .line 281
    .local v1, "eventHandler":Lcom/android/server/accessibility/EventStreamTransformation;
    if-eqz v1, :cond_0

    .line 282
    invoke-interface {v1, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->clearEvents(I)V

    .line 279
    .end local v1    # "eventHandler":Lcom/android/server/accessibility/EventStreamTransformation;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 285
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private disableFeatures()V
    .locals 3

    .line 495
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjectors:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 496
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjectors:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/MotionEventInjector;

    .line 497
    .local v1, "injector":Lcom/android/server/accessibility/MotionEventInjector;
    if-eqz v1, :cond_0

    .line 498
    invoke-virtual {v1}, Lcom/android/server/accessibility/MotionEventInjector;->onDestroy()V

    .line 495
    .end local v1    # "injector":Lcom/android/server/accessibility/MotionEventInjector;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 501
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->setMotionEventInjectors(Landroid/util/SparseArray;)V

    .line 502
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjectors:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 503
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAutoclickController:Lcom/android/server/accessibility/AutoclickController;

    if-eqz v0, :cond_2

    .line 504
    invoke-virtual {v0}, Lcom/android/server/accessibility/AutoclickController;->onDestroy()V

    .line 505
    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAutoclickController:Lcom/android/server/accessibility/AutoclickController;

    .line 507
    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 508
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 509
    .local v2, "explorer":Lcom/android/server/accessibility/gestures/TouchExplorer;
    if-eqz v2, :cond_3

    .line 510
    invoke-virtual {v2}, Lcom/android/server/accessibility/gestures/TouchExplorer;->onDestroy()V

    .line 507
    .end local v2    # "explorer":Lcom/android/server/accessibility/gestures/TouchExplorer;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 513
    .end local v0    # "i":I
    :cond_4
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 514
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_2
    if-ltz v0, :cond_6

    .line 515
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;

    .line 516
    .local v2, "handler":Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;
    if-eqz v2, :cond_5

    .line 517
    invoke-virtual {v2}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->onDestroy()V

    .line 514
    .end local v2    # "handler":Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;
    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 520
    .end local v0    # "i":I
    :cond_6
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 521
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardInterceptor:Lcom/android/server/accessibility/KeyboardInterceptor;

    if-eqz v0, :cond_7

    .line 522
    invoke-virtual {v0}, Lcom/android/server/accessibility/KeyboardInterceptor;->onDestroy()V

    .line 523
    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardInterceptor:Lcom/android/server/accessibility/KeyboardInterceptor;

    .line 526
    :cond_7
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 527
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->resetStreamState()V

    .line 528
    return-void
.end method

.method private enableFeatures()V
    .locals 12

    .line 399
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->resetStreamState()V

    .line 401
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getValidDisplayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 403
    .local v0, "displaysList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Display;>;"
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    .line 404
    new-instance v1, Lcom/android/server/accessibility/AutoclickController;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mUserId:I

    invoke-direct {v1, v2, v3}, Lcom/android/server/accessibility/AutoclickController;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAutoclickController:Lcom/android/server/accessibility/AutoclickController;

    .line 405
    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandlerForAllDisplays(Ljava/util/ArrayList;Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 408
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x0

    if-ltz v1, :cond_9

    .line 409
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    .line 410
    .local v4, "displayId":I
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/Display;

    invoke-virtual {v5, v6}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v11

    .line 412
    .local v11, "displayContext":Landroid/content/Context;
    iget v5, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_3

    .line 413
    new-instance v5, Lcom/android/server/accessibility/gestures/TouchExplorer;

    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v5, v11, v6}, Lcom/android/server/accessibility/gestures/TouchExplorer;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 414
    .local v5, "explorer":Lcom/android/server/accessibility/gestures/TouchExplorer;
    iget v6, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_1

    .line 415
    invoke-virtual {v5, v2}, Lcom/android/server/accessibility/gestures/TouchExplorer;->setServiceHandlesDoubleTap(Z)V

    .line 417
    :cond_1
    iget v6, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit16 v6, v6, 0x100

    if-eqz v6, :cond_2

    .line 418
    invoke-virtual {v5, v2}, Lcom/android/server/accessibility/gestures/TouchExplorer;->setMultiFingerGesturesEnabled(Z)V

    .line 420
    :cond_2
    invoke-direct {p0, v4, v5}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(ILcom/android/server/accessibility/EventStreamTransformation;)V

    .line 421
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v6, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 424
    .end local v5    # "explorer":Lcom/android/server/accessibility/gestures/TouchExplorer;
    :cond_3
    iget v5, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v6, v5, 0x20

    if-nez v6, :cond_4

    and-int/lit8 v6, v5, 0x1

    if-nez v6, :cond_4

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_7

    .line 427
    :cond_4
    iget v5, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/2addr v5, v2

    if-eqz v5, :cond_5

    move v8, v2

    goto :goto_1

    :cond_5
    move v8, v3

    .line 429
    .local v8, "detectControlGestures":Z
    :goto_1
    iget v5, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_6

    move v9, v2

    goto :goto_2

    :cond_6
    move v9, v3

    .line 431
    .local v9, "triggerable":Z
    :goto_2
    new-instance v3, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 433
    invoke-virtual {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    move-result-object v7

    move-object v5, v3

    move-object v6, v11

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/MagnificationController;ZZI)V

    .line 435
    .local v3, "magnificationGestureHandler":Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;
    invoke-direct {p0, v4, v3}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(ILcom/android/server/accessibility/EventStreamTransformation;)V

    .line 436
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    invoke-virtual {v5, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 439
    .end local v3    # "magnificationGestureHandler":Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;
    .end local v8    # "detectControlGestures":Z
    .end local v9    # "triggerable":Z
    :cond_7
    iget v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_8

    .line 440
    new-instance v3, Lcom/android/server/accessibility/MotionEventInjector;

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    .line 441
    invoke-virtual {v5}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/android/server/accessibility/MotionEventInjector;-><init>(Landroid/os/Looper;)V

    .line 442
    .local v3, "injector":Lcom/android/server/accessibility/MotionEventInjector;
    invoke-direct {p0, v4, v3}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(ILcom/android/server/accessibility/EventStreamTransformation;)V

    .line 443
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjectors:Landroid/util/SparseArray;

    invoke-virtual {v5, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 408
    .end local v3    # "injector":Lcom/android/server/accessibility/MotionEventInjector;
    .end local v4    # "displayId":I
    .end local v11    # "displayContext":Landroid/content/Context;
    :cond_8
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    .line 447
    .end local v1    # "i":I
    :cond_9
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_a

    .line 448
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjectors:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->setMotionEventInjectors(Landroid/util/SparseArray;)V

    .line 451
    :cond_a
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_b

    .line 452
    new-instance v1, Lcom/android/server/accessibility/KeyboardInterceptor;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    const-class v4, Lcom/android/server/policy/WindowManagerPolicy;

    .line 453
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/policy/WindowManagerPolicy;

    invoke-direct {v1, v2, v4}, Lcom/android/server/accessibility/KeyboardInterceptor;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/policy/WindowManagerPolicy;)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardInterceptor:Lcom/android/server/accessibility/KeyboardInterceptor;

    .line 457
    invoke-direct {p0, v3, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(ILcom/android/server/accessibility/EventStreamTransformation;)V

    .line 459
    :cond_b
    return-void
.end method

.method private getEventStreamState(Landroid/view/InputEvent;)Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 254
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_3

    .line 255
    const/16 v0, 0x1002

    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchScreenStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    if-nez v0, :cond_0

    .line 257
    new-instance v0, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;

    invoke-direct {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchScreenStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchScreenStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    return-object v0

    .line 261
    :cond_1
    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 262
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMouseStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    if-nez v0, :cond_2

    .line 263
    new-instance v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MouseEventStreamState;

    invoke-direct {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$MouseEventStreamState;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMouseStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    .line 265
    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMouseStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    return-object v0

    .line 267
    :cond_3
    instance-of v0, p1, Landroid/view/KeyEvent;

    if-eqz v0, :cond_5

    .line 268
    const/16 v0, 0x101

    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 269
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    if-nez v0, :cond_4

    .line 270
    new-instance v0, Lcom/android/server/accessibility/AccessibilityInputFilter$KeyboardEventStreamState;

    invoke-direct {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$KeyboardEventStreamState;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    .line 272
    :cond_4
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    return-object v0

    .line 275
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleMotionEvent(Landroid/view/MotionEvent;I)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .line 315
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mPm:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 316
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 317
    .local v0, "transformedEvent":Landroid/view/MotionEvent;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v1

    .line 318
    .local v1, "displayId":I
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->isDisplayIdValid(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v1

    :cond_0
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/EventStreamTransformation;

    .line 319
    invoke-interface {v2, v0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 320
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 321
    return-void
.end method

.method private isDisplayIdValid(I)Z
    .locals 1
    .param p1, "displayId"    # I

    .line 324
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private processKeyEvent(Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;Landroid/view/KeyEvent;I)V
    .locals 2
    .param p1, "state"    # Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .line 301
    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->shouldProcessKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    invoke-super {p0, p2, p3}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 303
    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 309
    return-void
.end method

.method private processMotionEvent(Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;Landroid/view/MotionEvent;I)V
    .locals 2
    .param p1, "state"    # Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 288
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->shouldProcessScroll()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 289
    invoke-super {p0, p2, p3}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 290
    return-void

    .line 293
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->shouldProcessMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 294
    return-void

    .line 297
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/AccessibilityInputFilter;->handleMotionEvent(Landroid/view/MotionEvent;I)V

    .line 298
    return-void
.end method


# virtual methods
.method public clearEvents(I)V
    .locals 0
    .param p1, "inputSource"    # I

    .line 358
    return-void
.end method

.method public getNext()Lcom/android/server/accessibility/EventStreamTransformation;
    .locals 1

    .line 352
    const/4 v0, 0x0

    return-object v0
.end method

.method notifyAccessibilityButtonClicked(I)V
    .locals 1
    .param p1, "displayId"    # I

    .line 388
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;

    .line 390
    .local v0, "handler":Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;
    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->notifyShortcutTriggered()V

    .line 394
    .end local v0    # "handler":Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;
    :cond_0
    return-void
.end method

.method notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 379
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 380
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/EventStreamTransformation;

    .line 381
    .local v1, "eventHandler":Lcom/android/server/accessibility/EventStreamTransformation;
    if-eqz v1, :cond_0

    .line 382
    invoke-interface {v1, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 379
    .end local v1    # "eventHandler":Lcom/android/server/accessibility/EventStreamTransformation;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 385
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 343
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 545
    return-void
.end method

.method onDisplayChanged()V
    .locals 1

    .line 192
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    if-eqz v0, :cond_0

    .line 193
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeatures()V

    .line 194
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->enableFeatures()V

    .line 196
    :cond_0
    return-void
.end method

.method public onInputEvent(Landroid/view/InputEvent;I)V
    .locals 3
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    .line 205
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 207
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 208
    return-void

    .line 211
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->getEventStreamState(Landroid/view/InputEvent;)Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    move-result-object v0

    .line 212
    .local v0, "state":Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
    if-nez v0, :cond_1

    .line 213
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 214
    return-void

    .line 217
    :cond_1
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v1

    .line 218
    .local v1, "eventSource":I
    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v2, p2

    if-nez v2, :cond_2

    .line 219
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    .line 220
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->clearEventsForAllEventHandlers(I)V

    .line 221
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 222
    return-void

    .line 225
    :cond_2
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->updateInputSource(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 226
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->clearEventsForAllEventHandlers(I)V

    .line 229
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->inputSourceValid()Z

    move-result v2

    if-nez v2, :cond_4

    .line 230
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 231
    return-void

    .line 234
    :cond_4
    instance-of v2, p1, Landroid/view/MotionEvent;

    if-eqz v2, :cond_6

    .line 235
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit16 v2, v2, 0x1db

    if-eqz v2, :cond_5

    .line 236
    move-object v2, p1

    check-cast v2, Landroid/view/MotionEvent;

    .line 237
    .local v2, "motionEvent":Landroid/view/MotionEvent;
    invoke-direct {p0, v0, v2, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->processMotionEvent(Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;Landroid/view/MotionEvent;I)V

    .line 238
    return-void

    .line 240
    .end local v2    # "motionEvent":Landroid/view/MotionEvent;
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    goto :goto_0

    .line 242
    :cond_6
    instance-of v2, p1, Landroid/view/KeyEvent;

    if-eqz v2, :cond_7

    .line 243
    move-object v2, p1

    check-cast v2, Landroid/view/KeyEvent;

    .line 244
    .local v2, "keyEvent":Landroid/view/KeyEvent;
    invoke-direct {p0, v0, v2, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->processKeyEvent(Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;Landroid/view/KeyEvent;I)V

    .line 246
    .end local v2    # "keyEvent":Landroid/view/KeyEvent;
    :cond_7
    :goto_0
    return-void
.end method

.method public onInstalled()V
    .locals 1

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    .line 176
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeatures()V

    .line 177
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->enableFeatures()V

    .line 178
    invoke-super {p0}, Landroid/view/InputFilter;->onInstalled()V

    .line 179
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 0
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .line 335
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    .line 336
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0
    .param p1, "transformedEvent"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 330
    invoke-virtual {p0, p1, p3}, Lcom/android/server/accessibility/AccessibilityInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    .line 331
    return-void
.end method

.method public onUninstalled()V
    .locals 1

    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    .line 187
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeatures()V

    .line 188
    invoke-super {p0}, Landroid/view/InputFilter;->onUninstalled()V

    .line 189
    return-void
.end method

.method resetStreamState()V
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchScreenStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    if-eqz v0, :cond_0

    .line 532
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMouseStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    if-eqz v0, :cond_1

    .line 535
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    .line 537
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    if-eqz v0, :cond_2

    .line 538
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    .line 540
    :cond_2
    return-void
.end method

.method public setGestureDetectionPassthroughRegion(ILandroid/graphics/Region;)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "region"    # Landroid/graphics/Region;

    .line 732
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/gestures/TouchExplorer;->setGestureDetectionPassthroughRegion(Landroid/graphics/Region;)V

    .line 735
    :cond_0
    return-void
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 0
    .param p1, "sink"    # Lcom/android/server/accessibility/EventStreamTransformation;

    .line 348
    return-void
.end method

.method public setTouchExplorationPassthroughRegion(ILandroid/graphics/Region;)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "region"    # Landroid/graphics/Region;

    .line 738
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/gestures/TouchExplorer;->setTouchExplorationPassthroughRegion(Landroid/graphics/Region;)V

    .line 741
    :cond_0
    return-void
.end method

.method setUserAndEnabledFeatures(II)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "enabledFeatures"    # I

    .line 365
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mUserId:I

    if-ne v0, p1, :cond_0

    .line 366
    return-void

    .line 368
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    if-eqz v0, :cond_1

    .line 369
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeatures()V

    .line 371
    :cond_1
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mUserId:I

    .line 372
    iput p2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    .line 373
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    if-eqz v0, :cond_2

    .line 374
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->enableFeatures()V

    .line 376
    :cond_2
    return-void
.end method
