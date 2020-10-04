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

.field static final FEATURES_AFFECTING_MOTION_EVENTS:I = 0x5b

.field static final FLAG_FEATURE_AUTOCLICK:I = 0x8

.field static final FLAG_FEATURE_CONTROL_SCREEN_MAGNIFIER:I = 0x20

.field static final FLAG_FEATURE_FILTER_KEY_EVENTS:I = 0x4

.field static final FLAG_FEATURE_INJECT_MOTION_EVENTS:I = 0x10

.field static final FLAG_FEATURE_SCREEN_MAGNIFIER:I = 0x1

.field static final FLAG_FEATURE_TOUCH_EXPLORATION:I = 0x2

.field static final FLAG_FEATURE_TRIGGERED_SCREEN_MAGNIFIER:I = 0x40

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
            "Lcom/android/server/accessibility/MagnificationGestureHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mMotionEventInjector:Landroid/util/SparseArray;
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
            "Lcom/android/server/accessibility/TouchExplorer;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchScreenStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

.field private mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
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

    .line 136
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/util/SparseArray;)V

    .line 137
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

    .line 141
    .local p3, "eventHandler":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/accessibility/EventStreamTransformation;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/InputFilter;-><init>(Landroid/os/Looper;)V

    .line 112
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    .line 114
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    .line 117
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjector:Landroid/util/SparseArray;

    .line 142
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    .line 143
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 144
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mPm:Landroid/os/PowerManager;

    .line 145
    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    .line 146
    return-void
.end method

.method private addFirstEventHandler(ILcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "handler"    # Lcom/android/server/accessibility/EventStreamTransformation;

    .line 438
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/EventStreamTransformation;

    .line 439
    .local v0, "eventHandler":Lcom/android/server/accessibility/EventStreamTransformation;
    if-eqz v0, :cond_0

    .line 440
    invoke-interface {p2, v0}, Lcom/android/server/accessibility/EventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    goto :goto_0

    .line 442
    :cond_0
    invoke-interface {p2, p0}, Lcom/android/server/accessibility/EventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 444
    :goto_0
    move-object v0, p2

    .line 445
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 446
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

    .line 457
    .local p1, "displayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Display;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 458
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    .line 459
    .local v1, "displayId":I
    invoke-direct {p0, v1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(ILcom/android/server/accessibility/EventStreamTransformation;)V

    .line 457
    .end local v1    # "displayId":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 461
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private clearEventsForAllEventHandlers(I)V
    .locals 2
    .param p1, "eventSource"    # I

    .line 257
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 258
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/EventStreamTransformation;

    .line 259
    .local v1, "eventHandler":Lcom/android/server/accessibility/EventStreamTransformation;
    if-eqz v1, :cond_0

    .line 260
    invoke-interface {v1, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->clearEvents(I)V

    .line 257
    .end local v1    # "eventHandler":Lcom/android/server/accessibility/EventStreamTransformation;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private disableFeatures()V
    .locals 4

    .line 464
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjector:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x0

    if-ltz v0, :cond_1

    .line 465
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjector:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/MotionEventInjector;

    .line 467
    .local v2, "injector":Lcom/android/server/accessibility/MotionEventInjector;
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v3, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->setMotionEventInjector(Lcom/android/server/accessibility/MotionEventInjector;)V

    .line 468
    if-eqz v2, :cond_0

    .line 469
    invoke-virtual {v2}, Lcom/android/server/accessibility/MotionEventInjector;->onDestroy()V

    .line 464
    .end local v2    # "injector":Lcom/android/server/accessibility/MotionEventInjector;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 472
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjector:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 473
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAutoclickController:Lcom/android/server/accessibility/AutoclickController;

    if-eqz v0, :cond_2

    .line 474
    invoke-virtual {v0}, Lcom/android/server/accessibility/AutoclickController;->onDestroy()V

    .line 475
    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAutoclickController:Lcom/android/server/accessibility/AutoclickController;

    .line 477
    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 478
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/TouchExplorer;

    .line 479
    .local v2, "explorer":Lcom/android/server/accessibility/TouchExplorer;
    if-eqz v2, :cond_3

    .line 480
    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer;->onDestroy()V

    .line 477
    .end local v2    # "explorer":Lcom/android/server/accessibility/TouchExplorer;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 483
    .end local v0    # "i":I
    :cond_4
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 484
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_2
    if-ltz v0, :cond_6

    .line 485
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/MagnificationGestureHandler;

    .line 486
    .local v2, "handler":Lcom/android/server/accessibility/MagnificationGestureHandler;
    if-eqz v2, :cond_5

    .line 487
    invoke-virtual {v2}, Lcom/android/server/accessibility/MagnificationGestureHandler;->onDestroy()V

    .line 484
    .end local v2    # "handler":Lcom/android/server/accessibility/MagnificationGestureHandler;
    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 490
    .end local v0    # "i":I
    :cond_6
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 491
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardInterceptor:Lcom/android/server/accessibility/KeyboardInterceptor;

    if-eqz v0, :cond_7

    .line 492
    invoke-virtual {v0}, Lcom/android/server/accessibility/KeyboardInterceptor;->onDestroy()V

    .line 493
    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardInterceptor:Lcom/android/server/accessibility/KeyboardInterceptor;

    .line 496
    :cond_7
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 497
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->resetStreamState()V

    .line 498
    return-void
.end method

.method private enableFeatures()V
    .locals 11

    .line 377
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->resetStreamState()V

    .line 379
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getValidDisplayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 381
    .local v0, "displaysList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Display;>;"
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    .line 382
    new-instance v1, Lcom/android/server/accessibility/AutoclickController;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mUserId:I

    invoke-direct {v1, v2, v3}, Lcom/android/server/accessibility/AutoclickController;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAutoclickController:Lcom/android/server/accessibility/AutoclickController;

    .line 383
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAutoclickController:Lcom/android/server/accessibility/AutoclickController;

    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandlerForAllDisplays(Ljava/util/ArrayList;Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 386
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x0

    if-ltz v1, :cond_7

    .line 387
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    .line 389
    .local v4, "displayId":I
    iget v5, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    .line 390
    new-instance v5, Lcom/android/server/accessibility/TouchExplorer;

    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v5, v6, v7}, Lcom/android/server/accessibility/TouchExplorer;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 391
    .local v5, "explorer":Lcom/android/server/accessibility/TouchExplorer;
    invoke-direct {p0, v4, v5}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(ILcom/android/server/accessibility/EventStreamTransformation;)V

    .line 392
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v6, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 395
    .end local v5    # "explorer":Lcom/android/server/accessibility/TouchExplorer;
    :cond_1
    iget v5, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v6, v5, 0x20

    if-nez v6, :cond_2

    and-int/lit8 v6, v5, 0x1

    if-nez v6, :cond_2

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_5

    .line 398
    :cond_2
    iget v5, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/2addr v5, v2

    if-eqz v5, :cond_3

    move v8, v2

    goto :goto_1

    :cond_3
    move v8, v3

    .line 400
    .local v8, "detectControlGestures":Z
    :goto_1
    iget v5, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_4

    move v9, v2

    goto :goto_2

    :cond_4
    move v9, v3

    .line 402
    .local v9, "triggerable":Z
    :goto_2
    new-instance v3, Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 404
    invoke-virtual {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    move-result-object v7

    move-object v5, v3

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/server/accessibility/MagnificationGestureHandler;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/MagnificationController;ZZI)V

    .line 406
    .local v3, "magnificationGestureHandler":Lcom/android/server/accessibility/MagnificationGestureHandler;
    invoke-direct {p0, v4, v3}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(ILcom/android/server/accessibility/EventStreamTransformation;)V

    .line 407
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    invoke-virtual {v5, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 410
    .end local v3    # "magnificationGestureHandler":Lcom/android/server/accessibility/MagnificationGestureHandler;
    .end local v8    # "detectControlGestures":Z
    .end local v9    # "triggerable":Z
    :cond_5
    iget v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_6

    .line 411
    new-instance v3, Lcom/android/server/accessibility/MotionEventInjector;

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    .line 412
    invoke-virtual {v5}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/android/server/accessibility/MotionEventInjector;-><init>(Landroid/os/Looper;)V

    .line 413
    .local v3, "injector":Lcom/android/server/accessibility/MotionEventInjector;
    invoke-direct {p0, v4, v3}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(ILcom/android/server/accessibility/EventStreamTransformation;)V

    .line 415
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v5, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->setMotionEventInjector(Lcom/android/server/accessibility/MotionEventInjector;)V

    .line 416
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjector:Landroid/util/SparseArray;

    invoke-virtual {v5, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 386
    .end local v3    # "injector":Lcom/android/server/accessibility/MotionEventInjector;
    .end local v4    # "displayId":I
    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 420
    .end local v1    # "i":I
    :cond_7
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_8

    .line 421
    new-instance v1, Lcom/android/server/accessibility/KeyboardInterceptor;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    const-class v4, Lcom/android/server/policy/WindowManagerPolicy;

    .line 422
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/policy/WindowManagerPolicy;

    invoke-direct {v1, v2, v4}, Lcom/android/server/accessibility/KeyboardInterceptor;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/policy/WindowManagerPolicy;)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardInterceptor:Lcom/android/server/accessibility/KeyboardInterceptor;

    .line 426
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardInterceptor:Lcom/android/server/accessibility/KeyboardInterceptor;

    invoke-direct {p0, v3, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(ILcom/android/server/accessibility/EventStreamTransformation;)V

    .line 428
    :cond_8
    return-void
.end method

.method private getEventStreamState(Landroid/view/InputEvent;)Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 232
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_3

    .line 233
    const/16 v0, 0x1002

    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchScreenStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    if-nez v0, :cond_0

    .line 235
    new-instance v0, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;

    invoke-direct {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchScreenStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchScreenStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    return-object v0

    .line 239
    :cond_1
    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 240
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMouseStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    if-nez v0, :cond_2

    .line 241
    new-instance v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MouseEventStreamState;

    invoke-direct {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$MouseEventStreamState;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMouseStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    .line 243
    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMouseStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    return-object v0

    .line 245
    :cond_3
    instance-of v0, p1, Landroid/view/KeyEvent;

    if-eqz v0, :cond_5

    .line 246
    const/16 v0, 0x101

    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 247
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    if-nez v0, :cond_4

    .line 248
    new-instance v0, Lcom/android/server/accessibility/AccessibilityInputFilter$KeyboardEventStreamState;

    invoke-direct {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$KeyboardEventStreamState;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    .line 250
    :cond_4
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    return-object v0

    .line 253
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleMotionEvent(Landroid/view/MotionEvent;I)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .line 293
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mPm:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 294
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 295
    .local v0, "transformedEvent":Landroid/view/MotionEvent;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v1

    .line 296
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

    .line 297
    invoke-interface {v2, v0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 298
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 299
    return-void
.end method

.method private isDisplayIdValid(I)Z
    .locals 1
    .param p1, "displayId"    # I

    .line 302
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

    .line 279
    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->shouldProcessKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    invoke-super {p0, p2, p3}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 281
    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 287
    return-void
.end method

.method private processMotionEvent(Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;Landroid/view/MotionEvent;I)V
    .locals 2
    .param p1, "state"    # Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 266
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->shouldProcessScroll()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 267
    invoke-super {p0, p2, p3}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 268
    return-void

    .line 271
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->shouldProcessMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 272
    return-void

    .line 275
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/AccessibilityInputFilter;->handleMotionEvent(Landroid/view/MotionEvent;I)V

    .line 276
    return-void
.end method


# virtual methods
.method public clearEvents(I)V
    .locals 0
    .param p1, "inputSource"    # I

    .line 336
    return-void
.end method

.method public getNext()Lcom/android/server/accessibility/EventStreamTransformation;
    .locals 1

    .line 330
    const/4 v0, 0x0

    return-object v0
.end method

.method notifyAccessibilityButtonClicked(I)V
    .locals 1
    .param p1, "displayId"    # I

    .line 366
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/MagnificationGestureHandler;

    .line 368
    .local v0, "handler":Lcom/android/server/accessibility/MagnificationGestureHandler;
    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->notifyShortcutTriggered()V

    .line 372
    .end local v0    # "handler":Lcom/android/server/accessibility/MagnificationGestureHandler;
    :cond_0
    return-void
.end method

.method notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 357
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 358
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/EventStreamTransformation;

    .line 359
    .local v1, "eventHandler":Lcom/android/server/accessibility/EventStreamTransformation;
    if-eqz v1, :cond_0

    .line 360
    invoke-interface {v1, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 357
    .end local v1    # "eventHandler":Lcom/android/server/accessibility/EventStreamTransformation;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 363
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 321
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 515
    return-void
.end method

.method onDisplayChanged()V
    .locals 1

    .line 170
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    if-eqz v0, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeatures()V

    .line 172
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->enableFeatures()V

    .line 174
    :cond_0
    return-void
.end method

.method public onInputEvent(Landroid/view/InputEvent;I)V
    .locals 3
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    .line 183
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 185
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 186
    return-void

    .line 189
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->getEventStreamState(Landroid/view/InputEvent;)Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    move-result-object v0

    .line 190
    .local v0, "state":Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
    if-nez v0, :cond_1

    .line 191
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 192
    return-void

    .line 195
    :cond_1
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v1

    .line 196
    .local v1, "eventSource":I
    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v2, p2

    if-nez v2, :cond_2

    .line 197
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    .line 198
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->clearEventsForAllEventHandlers(I)V

    .line 199
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 200
    return-void

    .line 203
    :cond_2
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->updateInputSource(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 204
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->clearEventsForAllEventHandlers(I)V

    .line 207
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->inputSourceValid()Z

    move-result v2

    if-nez v2, :cond_4

    .line 208
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 209
    return-void

    .line 212
    :cond_4
    instance-of v2, p1, Landroid/view/MotionEvent;

    if-eqz v2, :cond_6

    .line 213
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v2, v2, 0x5b

    if-eqz v2, :cond_5

    .line 214
    move-object v2, p1

    check-cast v2, Landroid/view/MotionEvent;

    .line 215
    .local v2, "motionEvent":Landroid/view/MotionEvent;
    invoke-direct {p0, v0, v2, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->processMotionEvent(Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;Landroid/view/MotionEvent;I)V

    .line 216
    return-void

    .line 218
    .end local v2    # "motionEvent":Landroid/view/MotionEvent;
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    goto :goto_0

    .line 220
    :cond_6
    instance-of v2, p1, Landroid/view/KeyEvent;

    if-eqz v2, :cond_7

    .line 221
    move-object v2, p1

    check-cast v2, Landroid/view/KeyEvent;

    .line 222
    .local v2, "keyEvent":Landroid/view/KeyEvent;
    invoke-direct {p0, v0, v2, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->processKeyEvent(Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;Landroid/view/KeyEvent;I)V

    .line 224
    .end local v2    # "keyEvent":Landroid/view/KeyEvent;
    :cond_7
    :goto_0
    return-void
.end method

.method public onInstalled()V
    .locals 1

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    .line 154
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeatures()V

    .line 155
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->enableFeatures()V

    .line 156
    invoke-super {p0}, Landroid/view/InputFilter;->onInstalled()V

    .line 157
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 0
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .line 313
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    .line 314
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0
    .param p1, "transformedEvent"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 308
    invoke-virtual {p0, p1, p3}, Lcom/android/server/accessibility/AccessibilityInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    .line 309
    return-void
.end method

.method public onUninstalled()V
    .locals 1

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    .line 165
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeatures()V

    .line 166
    invoke-super {p0}, Landroid/view/InputFilter;->onUninstalled()V

    .line 167
    return-void
.end method

.method resetStreamState()V
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchScreenStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    if-eqz v0, :cond_0

    .line 502
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMouseStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    if-eqz v0, :cond_1

    .line 505
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    .line 507
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    if-eqz v0, :cond_2

    .line 508
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    .line 510
    :cond_2
    return-void
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 0
    .param p1, "sink"    # Lcom/android/server/accessibility/EventStreamTransformation;

    .line 326
    return-void
.end method

.method setUserAndEnabledFeatures(II)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "enabledFeatures"    # I

    .line 343
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mUserId:I

    if-ne v0, p1, :cond_0

    .line 344
    return-void

    .line 346
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    if-eqz v0, :cond_1

    .line 347
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeatures()V

    .line 349
    :cond_1
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mUserId:I

    .line 350
    iput p2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    .line 351
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    if-eqz v0, :cond_2

    .line 352
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->enableFeatures()V

    .line 354
    :cond_2
    return-void
.end method
