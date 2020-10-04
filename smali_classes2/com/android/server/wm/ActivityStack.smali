.class public Lcom/android/server/wm/ActivityStack;
.super Lcom/android/server/wm/ConfigurationContainer;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ActivityStack$ActivityStackHandler;,
        Lcom/android/server/wm/ActivityStack$ScheduleDestroyArgs;,
        Lcom/android/server/wm/ActivityStack$ActivityState;,
        Lcom/android/server/wm/ActivityStack$StackVisibility;
    }
.end annotation


# static fields
.field static final DESTROY_ACTIVITIES_MSG:I = 0x69

.field private static final DESTROY_TIMEOUT:I = 0x2710

.field static final DESTROY_TIMEOUT_MSG:I = 0x66

.field static final EVALUATE_GAME_MODE_MSG:I = 0x6d

.field static final EVALUATE_READ_MODE_MSG:I = 0x6c

.field static final EVALUATE_READ_MODE_NOTIFICATION_MSG:I = 0x6f

.field static final FINISH_AFTER_PAUSE:I = 0x1

.field static final FINISH_AFTER_VISIBLE:I = 0x2

.field static final FINISH_IMMEDIATELY:I = 0x0

.field private static final IS_SUPPORT_COLOR_ADS:Z

.field static final LAUNCH_TICK:I = 0x1f4

.field static final LAUNCH_TICK_MSG:I = 0x67

.field private static final MAX_STOPPING_TO_FORCE:I = 0x3

.field private static final PAUSE_TIMEOUT:I = 0x1f4

.field static final PAUSE_TIMEOUT_MSG:I = 0x65

.field protected static final REMOVE_TASK_MODE_DESTROYING:I = 0x0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final REMOVE_TASK_MODE_MOVING:I = 0x1

.field static final REMOVE_TASK_MODE_MOVING_TO_TOP:I = 0x2

.field private static final SHOW_APP_STARTING_PREVIEW:Z = true

.field static final STACK_VISIBILITY_INVISIBLE:I = 0x2

.field static final STACK_VISIBILITY_VISIBLE:I = 0x0

.field static final STACK_VISIBILITY_VISIBLE_BEHIND_TRANSLUCENT:I = 0x1

.field private static final STOP_TIMEOUT:I = 0x2af8

.field static final STOP_TIMEOUT_MSG:I = 0x68

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_ADD_REMOVE:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_APP:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_CLEANUP:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_CONTAINERS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_PAUSE:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_RELEASE:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_RESULTS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_SAVED_STATE:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_STACK:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_STATES:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_SWITCH:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_TASKS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_TRANSITION:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_USER_LEAVING:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_VISIBILITY:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TRANSLUCENT_CONVERSION_TIMEOUT:J = 0x7d0L

.field static final TRANSLUCENT_TIMEOUT_MSG:I = 0x6a

.field static final UPDATE_SCREEN_SCREEN_EFFECT_DISABLED_MSG:I = 0x6e

.field private static final mActivityPluginDelegate:Lcom/android/server/wm/ActivityPluginDelegate;

.field static final mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;


# instance fields
.field mConfigWillChange:Z

.field mCurrentUser:I

.field private final mDeferredBounds:Landroid/graphics/Rect;

.field private final mDeferredDisplayedBounds:Landroid/graphics/Rect;

.field mDisplayId:I

.field mForceHidden:Z

.field final mHandler:Landroid/os/Handler;

.field mInResumeTopActivity:Z

.field private final mLRUActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

.field mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

.field protected mOnePlusActivityStack:Lcom/android/server/am/OnePlusSceneUtil$OnePlusActivityStack;

.field mPausingActivity:Lcom/android/server/wm/ActivityRecord;

.field public mPerf:Landroid/util/BoostFramework;

.field private mRestoreOverrideWindowingMode:I

.field public mResumedActivity:Lcom/android/server/wm/ActivityRecord;

.field protected final mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

.field public mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field final mStackId:I

.field protected final mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

.field private final mTaskHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field mTaskStack:Lcom/android/server/wm/TaskStack;

.field private final mTmpActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpOptions:Landroid/app/ActivityOptions;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpRect2:Landroid/graphics/Rect;

.field private mTopActivityOccludesKeyguard:Z

.field private mTopDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

.field mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

.field mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateBoundsDeferred:Z

.field private mUpdateBoundsDeferredCalled:Z

.field private mUpdateDisplayedBoundsDeferredCalled:Z

.field final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 224
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xfc

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ActivityStack;->IS_SUPPORT_COLOR_ADS:Z

    .line 488
    new-instance v0, Lcom/android/internal/app/ActivityTrigger;

    invoke-direct {v0}, Lcom/android/internal/app/ActivityTrigger;-><init>()V

    sput-object v0, Lcom/android/server/wm/ActivityStack;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    .line 490
    new-instance v0, Lcom/android/server/wm/ActivityPluginDelegate;

    invoke-direct {v0}, Lcom/android/server/wm/ActivityPluginDelegate;-><init>()V

    sput-object v0, Lcom/android/server/wm/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/wm/ActivityPluginDelegate;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityDisplay;ILcom/android/server/wm/ActivityStackSupervisor;IIZ)V
    .locals 9
    .param p1, "display"    # Lcom/android/server/wm/ActivityDisplay;
    .param p2, "stackId"    # I
    .param p3, "supervisor"    # Lcom/android/server/wm/ActivityStackSupervisor;
    .param p4, "windowingMode"    # I
    .param p5, "activityType"    # I
    .param p6, "onTop"    # Z

    .line 590
    invoke-direct {p0}, Lcom/android/server/wm/ConfigurationContainer;-><init>()V

    .line 359
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mPerf:Landroid/util/BoostFramework;

    .line 364
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    .line 371
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    .line 377
    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 384
    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 391
    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    .line 398
    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 410
    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    .line 411
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 422
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStack;->mForceHidden:Z

    .line 427
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStack;->mInResumeTopActivity:Z

    .line 432
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityStack;->mDeferredBounds:Landroid/graphics/Rect;

    .line 433
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityStack;->mDeferredDisplayedBounds:Landroid/graphics/Rect;

    .line 442
    iput v0, p0, Lcom/android/server/wm/ActivityStack;->mRestoreOverrideWindowingMode:I

    .line 444
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTmpRect:Landroid/graphics/Rect;

    .line 445
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    .line 446
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTmpOptions:Landroid/app/ActivityOptions;

    .line 449
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    .line 591
    iput-object p3, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 592
    iget-object v0, p3, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 593
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 594
    new-instance v0, Lcom/android/server/wm/ActivityStack$ActivityStackHandler;

    iget-object v1, p3, Lcom/android/server/wm/ActivityStackSupervisor;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/ActivityStack$ActivityStackHandler;-><init>(Lcom/android/server/wm/ActivityStack;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    .line 595
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 596
    iput p2, p0, Lcom/android/server/wm/ActivityStack;->mStackId:I

    .line 597
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ActivityStack;->mCurrentUser:I

    .line 600
    iget v0, p1, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    iput v0, p0, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    .line 601
    invoke-virtual {p0, p5}, Lcom/android/server/wm/ActivityStack;->setActivityType(I)V

    .line 602
    iget v0, p1, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p6, v1}, Lcom/android/server/wm/ActivityStack;->createTaskStack(IZLandroid/graphics/Rect;)V

    .line 603
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p0

    move v3, p4

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(IZZZZZ)V

    .line 606
    if-eqz p6, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    const/high16 v0, -0x80000000

    :goto_0
    invoke-virtual {p1, p0, v0}, Lcom/android/server/wm/ActivityDisplay;->addChild(Lcom/android/server/wm/ActivityStack;I)V

    .line 609
    new-instance v0, Lcom/android/server/am/OnePlusSceneUtil$OnePlusActivityStack;

    invoke-direct {v0, p0, p3}, Lcom/android/server/am/OnePlusSceneUtil$OnePlusActivityStack;-><init>(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStackSupervisor;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mOnePlusActivityStack:Lcom/android/server/am/OnePlusSceneUtil$OnePlusActivityStack;

    .line 611
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/ActivityStack;
    .param p1, "x1"    # Lcom/android/server/wm/WindowProcessController;
    .param p2, "x2"    # Ljava/lang/String;

    .line 205
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityStack;->destroyActivitiesLocked(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V

    return-void
.end method

.method private addToStopping(Lcom/android/server/wm/ActivityRecord;ZZLjava/lang/String;)V
    .locals 7
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "scheduleIdle"    # Z
    .param p3, "idleDelayed"    # Z
    .param p4, "reason"    # Ljava/lang/String;

    .line 2048
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 2049
    const/16 v0, 0x7572

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    .line 2050
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v5, 0x2

    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v6, v4, v5

    aput-object p4, v4, v2

    .line 2049
    invoke-static {v0, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2051
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2058
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v2, :cond_2

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->frontOfTask:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    .line 2059
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v3, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    move v1, v3

    :goto_1
    move v0, v1

    .line 2060
    .local v0, "forceIdle":Z
    if-nez p2, :cond_4

    if-eqz v0, :cond_3

    goto :goto_2

    .line 2069
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->checkReadyForSleep()V

    goto :goto_3

    .line 2061
    :cond_4
    :goto_2
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scheduling idle now: forceIdle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "immediate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v2, p3, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    :cond_5
    if-nez p3, :cond_6

    .line 2064
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleIdleLocked()V

    goto :goto_3

    .line 2066
    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleIdleTimeoutLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 2071
    :goto_3
    return-void
.end method

.method private adjustFocusToNextFocusableStack(Ljava/lang/String;Z)Lcom/android/server/wm/ActivityStack;
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "allowFocusSelf"    # Z

    .line 4024
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 4025
    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/RootActivityContainer;->getNextFocusableStack(Lcom/android/server/wm/ActivityStack;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 4026
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " adjustFocusToNextFocusableStack"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4027
    .local v1, "myReason":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 4028
    const/4 v2, 0x0

    return-object v2

    .line 4031
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 4033
    .local v2, "top":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_1

    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-nez v3, :cond_2

    .line 4036
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/wm/ActivityDisplay;->moveHomeActivityToTop(Ljava/lang/String;)V

    .line 4037
    return-object v0

    .line 4040
    :cond_2
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 4041
    return-object v0
.end method

.method private adjustFocusedActivityStack(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 3964
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/RootActivityContainer;->isTopDisplayFocusedStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eq v0, p1, :cond_0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3969
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3970
    .local v0, "next":Lcom/android/server/wm/ActivityRecord;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " adjustFocus"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3972
    .local v1, "myReason":Ljava/lang/String;
    if-ne v0, p1, :cond_2

    .line 3973
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootActivityContainer;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 3974
    .local v2, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_1

    .line 3975
    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    .line 3977
    :cond_1
    return-void

    .line 3980
    .end local v2    # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3982
    return-void

    .line 3987
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    .line 3989
    .local v2, "task":Lcom/android/server/wm/TaskRecord;
    if-eqz v2, :cond_6

    .line 3994
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityStack;->adjustFocusToNextFocusableStack(Ljava/lang/String;)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 3995
    .local v3, "nextFocusableStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v3, :cond_5

    .line 3996
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 3997
    .local v4, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_4

    iget-object v5, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/RootActivityContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-ne v4, v5, :cond_4

    .line 4001
    iget-object v5, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5, v4, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 4003
    :cond_4
    return-void

    .line 4007
    .end local v4    # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/server/wm/ActivityDisplay;->moveHomeActivityToTop(Ljava/lang/String;)V

    .line 4008
    return-void

    .line 3990
    .end local v3    # "nextFocusableStack":Lcom/android/server/wm/ActivityStack;
    :cond_6
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "activity no longer associated with task:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3966
    .end local v0    # "next":Lcom/android/server/wm/ActivityRecord;
    .end local v1    # "myReason":Ljava/lang/String;
    .end local v2    # "task":Lcom/android/server/wm/TaskRecord;
    :cond_7
    :goto_0
    return-void
.end method

.method private bottomTask()Lcom/android/server/wm/TaskRecord;
    .locals 2

    .line 1253
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1254
    const/4 v0, 0x0

    return-object v0

    .line 1256
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskRecord;

    return-object v0
.end method

.method private canEnterPipOnTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .locals 3
    .param p1, "pipCandidate"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "toFrontTask"    # Lcom/android/server/wm/TaskRecord;
    .param p3, "toFrontActivity"    # Lcom/android/server/wm/ActivityRecord;
    .param p4, "opts"    # Landroid/app/ActivityOptions;

    .line 3587
    const/4 v0, 0x0

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/app/ActivityOptions;->disallowEnterPictureInPictureWhileLaunching()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3589
    return v0

    .line 3591
    :cond_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 3595
    :cond_1
    if-eqz p2, :cond_2

    .line 3596
    invoke-virtual {p2}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 3597
    .local v1, "targetStack":Lcom/android/server/wm/ActivityStack;
    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->isActivityTypeAssistant()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3599
    return v0

    .line 3601
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 3593
    .end local v1    # "targetStack":Lcom/android/server/wm/ActivityStack;
    :cond_4
    :goto_1
    return v0
.end method

.method private checkTranslucentActivityWaiting(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2
    .param p1, "top"    # Lcom/android/server/wm/ActivityRecord;

    .line 2577
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    if-eq v0, p1, :cond_1

    .line 2578
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2579
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    .line 2581
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->notifyActivityDrawnLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 2582
    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    .line 2584
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2586
    :cond_1
    return-void
.end method

.method private cleanUpActivityLocked(Lcom/android/server/wm/ActivityRecord;ZZ)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "cleanServices"    # Z
    .param p3, "setState"    # Z

    .line 4745
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStack;->onActivityRemovedFromStack(Lcom/android/server/wm/ActivityRecord;)V

    .line 4747
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->deferRelaunchUntilPaused:Z

    .line 4748
    iput-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->frozenBeforeDestroy:Z

    .line 4750
    const/4 v1, 0x0

    if-eqz p3, :cond_2

    .line 4751
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    const-string v3, "ActivityTaskManager"

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Moving to DESTROYED: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " (cleaning up)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4752
    :cond_0
    sget-object v2, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v4, "cleanupActivityLocked"

    invoke-virtual {p1, v2, v4}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 4753
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_APP:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Clearing app during cleanUp for activity "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4754
    :cond_1
    iput-object v1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 4758
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->cleanupActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 4762
    iget-boolean v2, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    if-eqz v2, :cond_5

    .line 4763
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 4764
    .local v3, "apr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/PendingIntentRecord;

    .line 4765
    .local v4, "rec":Lcom/android/server/am/PendingIntentRecord;
    if-eqz v4, :cond_3

    .line 4766
    iget-object v5, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingIntentController:Lcom/android/server/am/PendingIntentController;

    invoke-virtual {v5, v4, v0}, Lcom/android/server/am/PendingIntentController;->cancelIntentSender(Lcom/android/server/am/PendingIntentRecord;Z)V

    .line 4768
    .end local v3    # "apr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    .end local v4    # "rec":Lcom/android/server/am/PendingIntentRecord;
    :cond_3
    goto :goto_0

    .line 4769
    :cond_4
    iput-object v1, p1, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    .line 4772
    :cond_5
    if-eqz p2, :cond_6

    .line 4773
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityStack;->cleanUpActivityServicesLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 4777
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 4780
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->notifyAppRelaunchesCleared(Landroid/os/IBinder;)V

    .line 4781
    return-void
.end method

.method private cleanUpActivityServicesLocked(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 4848
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mServiceConnectionsHolder:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    if-nez v0, :cond_0

    .line 4849
    return-void

    .line 4852
    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mServiceConnectionsHolder:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->disconnectActivityFromServices()V

    .line 4853
    return-void
.end method

.method private clearLaunchTime(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1630
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1631
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTimeoutsForActivityLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 1632
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleIdleTimeoutLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 1634
    :cond_0
    return-void
.end method

.method private completePauseLocked(ZLcom/android/server/wm/ActivityRecord;)V
    .locals 11
    .param p1, "resumeNext"    # Z
    .param p2, "resuming"    # Lcom/android/server/wm/ActivityRecord;

    .line 1949
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1950
    .local v0, "prev":Lcom/android/server/wm/ActivityRecord;
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    const-string v2, "ActivityTaskManager"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Complete pause: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_c

    .line 1953
    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityRecord;->setWillCloseOrEnterPip(Z)V

    .line 1954
    sget-object v4, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v4

    .line 1955
    .local v4, "wasStopping":Z
    sget-object v5, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v6, "completePausedLocked"

    invoke-virtual {v0, v5, v6}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 1956
    iget-boolean v5, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    .line 1957
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Executing finish of activity: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    :cond_1
    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2, v3, v6}, Lcom/android/server/wm/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/wm/ActivityRecord;IZLjava/lang/String;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    goto/16 :goto_0

    .line 1960
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1961
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Enqueue pending stop if needed: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " wasStopping="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " visible="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v0, Lcom/android/server/wm/ActivityRecord;->visible:Z

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1963
    :cond_3
    iget-boolean v5, v0, Lcom/android/server/wm/ActivityRecord;->deferRelaunchUntilPaused:Z

    if-eqz v5, :cond_5

    .line 1965
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Re-launching after pause: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    :cond_4
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->preserveWindowOnDeferredRelaunch:Z

    invoke-virtual {v0, v3, v2}, Lcom/android/server/wm/ActivityRecord;->relaunchActivityLocked(ZZ)V

    goto :goto_0

    .line 1968
    :cond_5
    if-eqz v4, :cond_6

    .line 1972
    sget-object v2, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v0, v2, v6}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    goto :goto_0

    .line 1973
    :cond_6
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1975
    :cond_7
    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityRecord;->setDeferHidingClient(Z)V

    .line 1978
    const-string v2, "completePauseLocked"

    invoke-direct {p0, v0, v7, v3, v2}, Lcom/android/server/wm/ActivityStack;->addToStopping(Lcom/android/server/wm/ActivityRecord;ZZLjava/lang/String;)V

    goto :goto_0

    .line 1982
    :cond_8
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v5, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "App died during pause, not stopping: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1983
    :cond_9
    const/4 v0, 0x0

    .line 1988
    :cond_a
    :goto_0
    if-eqz v0, :cond_b

    .line 1989
    invoke-virtual {v0, v7}, Lcom/android/server/wm/ActivityRecord;->stopFreezingScreenLocked(Z)V

    .line 1991
    :cond_b
    iput-object v1, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1994
    .end local v4    # "wasStopping":Z
    :cond_c
    if-eqz p1, :cond_f

    .line 1995
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 1996
    .local v2, "topStack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v4

    if-nez v4, :cond_d

    .line 1997
    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v4, v2, v0, v1}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    goto :goto_1

    .line 1999
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->checkReadyForSleep()V

    .line 2000
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2001
    .local v1, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_e

    if-eqz v0, :cond_f

    if-eq v1, v0, :cond_f

    .line 2006
    :cond_e
    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 2011
    .end local v1    # "top":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "topStack":Lcom/android/server/wm/ActivityStack;
    :cond_f
    :goto_1
    if-eqz v0, :cond_11

    .line 2012
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 2014
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v1

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_10

    iget-wide v1, v0, Lcom/android/server/wm/ActivityRecord;->cpuTimeAtResume:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_10

    .line 2015
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getCpuTime()J

    move-result-wide v1

    iget-wide v6, v0, Lcom/android/server/wm/ActivityRecord;->cpuTimeAtResume:J

    sub-long/2addr v1, v6

    .line 2016
    .local v1, "diff":J
    cmp-long v6, v1, v4

    if-lez v6, :cond_10

    .line 2017
    sget-object v6, Lcom/android/server/wm/-$$Lambda$1636dquQO0UvkFayOGf_gceB4iw;->INSTANCE:Lcom/android/server/wm/-$$Lambda$1636dquQO0UvkFayOGf_gceB4iw;

    iget-object v7, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v8, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2020
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 2021
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 2017
    invoke-static {v6, v7, v8, v9, v10}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v6

    .line 2022
    .local v6, "r":Ljava/lang/Runnable;
    iget-object v7, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v7, v6}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 2025
    .end local v1    # "diff":J
    .end local v6    # "r":Ljava/lang/Runnable;
    :cond_10
    iput-wide v4, v0, Lcom/android/server/wm/ActivityRecord;->cpuTimeAtResume:J

    .line 2033
    :cond_11
    const/4 v1, 0x0

    .line 2034
    .local v1, "mHasPinnedStack":Z
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 2035
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityDisplay;->hasPinnedStack()Z

    move-result v1

    .line 2037
    :cond_12
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-boolean v2, v2, Lcom/android/server/wm/ActivityStackSupervisor;->mAppVisibilitiesChangedSinceLastPause:Z

    if-nez v2, :cond_13

    if-eqz v1, :cond_14

    .line 2039
    :cond_13
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 2040
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iput-boolean v3, v2, Lcom/android/server/wm/ActivityStackSupervisor;->mAppVisibilitiesChangedSinceLastPause:Z

    .line 2043
    :cond_14
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v2, p2, v3, v3}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 2044
    return-void
.end method

.method private containsActivityFromStack(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)Z"
        }
    .end annotation

    .line 1744
    .local p1, "rs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 1745
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    if-ne v2, p0, :cond_0

    .line 1746
    const/4 v0, 0x1

    return v0

    .line 1748
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    goto :goto_0

    .line 1749
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private destroyActivitiesLocked(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V
    .locals 9
    .param p1, "owner"    # Lcom/android/server/wm/WindowProcessController;
    .param p2, "reason"    # Ljava/lang/String;

    .line 4862
    const/4 v0, 0x0

    .line 4863
    .local v0, "lastIsOpaque":Z
    const/4 v1, 0x0

    .line 4864
    .local v1, "activityRemoved":Z
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "taskNdx":I
    :goto_0
    if-ltz v2, :cond_7

    .line 4865
    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskRecord;

    iget-object v4, v4, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4866
    .local v4, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    .local v5, "activityNdx":I
    :goto_1
    if-ltz v5, :cond_6

    .line 4867
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ActivityRecord;

    .line 4868
    .local v6, "r":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v7, v6, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v7, :cond_0

    .line 4869
    goto :goto_2

    .line 4871
    :cond_0
    iget-boolean v7, v6, Lcom/android/server/wm/ActivityRecord;->fullscreen:Z

    if-eqz v7, :cond_1

    .line 4872
    const/4 v0, 0x1

    .line 4874
    :cond_1
    if-eqz p1, :cond_2

    iget-object v7, v6, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eq v7, p1, :cond_2

    .line 4875
    goto :goto_2

    .line 4877
    :cond_2
    if-nez v0, :cond_3

    .line 4878
    goto :goto_2

    .line 4880
    :cond_3
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->isDestroyable()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 4881
    sget-boolean v7, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Destroying "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " in state "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4882
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " resumed="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " pausing="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " for reason "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4881
    const-string v8, "ActivityTaskManager"

    invoke-static {v8, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4885
    :cond_4
    invoke-virtual {p0, v6, v3, p2}, Lcom/android/server/wm/ActivityStack;->destroyActivityLocked(Lcom/android/server/wm/ActivityRecord;ZLjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 4886
    const/4 v1, 0x1

    .line 4866
    .end local v6    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_5
    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 4864
    .end local v4    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v5    # "activityNdx":I
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    .line 4891
    .end local v2    # "taskNdx":I
    :cond_7
    if-eqz v1, :cond_8

    .line 4892
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 4894
    :cond_8
    return-void
.end method

.method private finishActivityResultsLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;)V
    .locals 8
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;

    .line 4293
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 4297
    .local v0, "resultTo":Lcom/android/server/wm/ActivityRecord;
    sget-boolean v1, Lcom/android/server/wm/OpAppLockerInjector;->IS_APP_LOCKER_ENABLED:Z

    if-eqz v1, :cond_0

    .line 4298
    invoke-static {p1, p2, p3}, Lcom/android/server/wm/OpAppLockerInjector;->unLockAppIfNeed(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4300
    const/4 v0, 0x0

    move-object v6, v0

    goto :goto_0

    .line 4303
    :cond_0
    move-object v6, v0

    .end local v0    # "resultTo":Lcom/android/server/wm/ActivityRecord;
    .local v6, "resultTo":Lcom/android/server/wm/ActivityRecord;
    :goto_0
    const-string v0, "ActivityTaskManager"

    const/4 v7, 0x0

    if-eqz v6, :cond_4

    .line 4304
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RESULTS:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding result to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " who="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " req="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " res="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4307
    :cond_1
    iget v0, v6, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget v1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-eq v0, v1, :cond_2

    .line 4308
    if-eqz p3, :cond_2

    .line 4309
    iget v0, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {p3, v0}, Landroid/content/Intent;->prepareToLeaveUser(I)V

    .line 4312
    :cond_2
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-lez v0, :cond_3

    .line 4313
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, v6, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 4315
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;

    move-result-object v4

    iget v5, v6, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 4313
    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/server/uri/UriGrantsManagerInternal;->grantUriPermissionFromIntent(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/uri/UriPermissionOwner;I)V

    .line 4317
    :cond_3
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    move-object v0, v6

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityRecord;->addResultLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 4318
    iput-object v7, p1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    goto :goto_1

    .line 4320
    :cond_4
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RESULTS:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No result destination from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4325
    :cond_5
    :goto_1
    iput-object v7, p1, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 4326
    iput-object v7, p1, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    .line 4327
    iput-object v7, p1, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 4328
    iput-object v7, p1, Lcom/android/server/wm/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 4329
    return-void
.end method

.method private insertTaskAtBottom(Lcom/android/server/wm/TaskRecord;)V
    .locals 2
    .param p1, "task"    # Lcom/android/server/wm/TaskRecord;

    .line 3426
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3427
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/ActivityStack;->getAdjustedPositionForTask(Lcom/android/server/wm/TaskRecord;ILcom/android/server/wm/ActivityRecord;)I

    move-result v0

    .line 3428
    .local v0, "position":I
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3429
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/ActivityStack;->updateTaskMovement(Lcom/android/server/wm/TaskRecord;Z)V

    .line 3430
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStack;->positionChildWindowContainerAtBottom(Lcom/android/server/wm/TaskRecord;)V

    .line 3431
    return-void
.end method

.method private insertTaskAtPosition(Lcom/android/server/wm/TaskRecord;I)V
    .locals 2
    .param p1, "task"    # Lcom/android/server/wm/TaskRecord;
    .param p2, "position"    # I

    .line 3398
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lt p2, v0, :cond_0

    .line 3399
    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/ActivityStack;->insertTaskAtTop(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityRecord;)V

    .line 3400
    return-void

    .line 3401
    :cond_0
    if-gtz p2, :cond_1

    .line 3402
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityStack;->insertTaskAtBottom(Lcom/android/server/wm/TaskRecord;)V

    .line 3403
    return-void

    .line 3405
    :cond_1
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/wm/ActivityStack;->getAdjustedPositionForTask(Lcom/android/server/wm/TaskRecord;ILcom/android/server/wm/ActivityRecord;)I

    move-result p2

    .line 3406
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3407
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3408
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_2

    .line 3410
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/TaskStack;->positionChildAt(Lcom/android/server/wm/Task;I)V

    .line 3412
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/ActivityStack;->updateTaskMovement(Lcom/android/server/wm/TaskRecord;Z)V

    .line 3413
    return-void
.end method

.method private insertTaskAtTop(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityRecord;)V
    .locals 2
    .param p1, "task"    # Lcom/android/server/wm/TaskRecord;
    .param p2, "starting"    # Lcom/android/server/wm/ActivityRecord;

    .line 3417
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3419
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/wm/ActivityStack;->getAdjustedPositionForTask(Lcom/android/server/wm/TaskRecord;ILcom/android/server/wm/ActivityRecord;)I

    move-result v0

    .line 3420
    .local v0, "position":I
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3421
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/ActivityStack;->updateTaskMovement(Lcom/android/server/wm/TaskRecord;Z)V

    .line 3422
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStack;->positionChildWindowContainerAtTop(Lcom/android/server/wm/TaskRecord;)V

    .line 3423
    return-void
.end method

.method private isATopFinishingTask(Lcom/android/server/wm/TaskRecord;)Z
    .locals 5
    .param p1, "task"    # Lcom/android/server/wm/TaskRecord;

    .line 3949
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x0

    if-ltz v0, :cond_2

    .line 3950
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskRecord;

    .line 3951
    .local v3, "current":Lcom/android/server/wm/TaskRecord;
    invoke-virtual {v3}, Lcom/android/server/wm/TaskRecord;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 3952
    .local v4, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_0

    .line 3954
    return v2

    .line 3956
    :cond_0
    if-ne v3, p1, :cond_1

    .line 3957
    return v1

    .line 3949
    .end local v3    # "current":Lcom/android/server/wm/TaskRecord;
    .end local v4    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3960
    .end local v0    # "i":I
    :cond_2
    return v2
.end method

.method private isTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "topFocusedActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 3606
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isTransientWindowingMode(I)Z
    .locals 1
    .param p0, "windowingMode"    # I

    .line 768
    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static logStartActivity(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;)V
    .locals 5
    .param p0, "tag"    # I
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "task"    # Lcom/android/server/wm/TaskRecord;

    .line 5409
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 5410
    .local v0, "data":Landroid/net/Uri;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5412
    .local v1, "strData":Ljava/lang/String;
    :goto_0
    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 5413
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p2, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 5414
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 5415
    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    aput-object v1, v2, v3

    const/4 v3, 0x7

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 5412
    invoke-static {p0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5416
    return-void
.end method

.method private makeInvisible(Lcom/android/server/wm/ActivityRecord;)V
    .locals 8
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2619
    const-string v0, "makeInvisible"

    iget-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->visible:Z

    const-string v2, "ActivityTaskManager"

    if-nez v1, :cond_1

    .line 2620
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Already invisible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2621
    :cond_0
    return-void

    .line 2625
    :cond_1
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Making invisible: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2627
    :cond_2
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;Z)Z

    move-result v3

    .line 2636
    .local v3, "canEnterPictureInPicture":Z
    const/4 v4, 0x0

    if-eqz v3, :cond_3

    sget-object v5, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    .line 2637
    invoke-virtual {p1, v5, v6, v7}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v5

    if-nez v5, :cond_3

    move v5, v1

    goto :goto_0

    :cond_3
    move v5, v4

    .line 2638
    .local v5, "deferHidingClient":Z
    :goto_0
    invoke-virtual {p1, v5}, Lcom/android/server/wm/ActivityRecord;->setDeferHidingClient(Z)V

    .line 2639
    invoke-virtual {p1, v4}, Lcom/android/server/wm/ActivityRecord;->setVisible(Z)V

    .line 2641
    sget-object v6, Lcom/android/server/wm/ActivityStack$1;->$SwitchMap$com$android$server$wm$ActivityStack$ActivityState:[I

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStack$ActivityState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    goto :goto_1

    .line 2660
    :pswitch_0
    invoke-direct {p0, p1, v1, v3, v0}, Lcom/android/server/wm/ActivityStack;->addToStopping(Lcom/android/server/wm/ActivityRecord;ZZLjava/lang/String;)V

    .line 2662
    goto :goto_1

    .line 2644
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2645
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scheduling invisibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2647
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 2648
    invoke-static {v4}, Landroid/app/servertransaction/WindowVisibilityItem;->obtain(Z)Landroid/app/servertransaction/WindowVisibilityItem;

    move-result-object v7

    .line 2647
    invoke-virtual {v0, v1, v6, v7}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 2653
    :cond_5
    iput-boolean v4, p1, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2654
    nop

    .line 2670
    .end local v3    # "canEnterPictureInPicture":Z
    .end local v5    # "deferHidingClient":Z
    :goto_1
    goto :goto_2

    .line 2667
    :catch_0
    move-exception v0

    .line 2669
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown making hidden: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2671
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private makeVisibleAndRestartIfNeeded(Lcom/android/server/wm/ActivityRecord;IZZLcom/android/server/wm/ActivityRecord;)Z
    .locals 5
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "configChanges"    # I
    .param p3, "isTop"    # Z
    .param p4, "andResume"    # Z
    .param p5, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2594
    const/4 v0, 0x0

    if-nez p3, :cond_0

    iget-boolean v1, p5, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-nez v1, :cond_7

    .line 2597
    :cond_0
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    const-string v2, "ActivityTaskManager"

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start and freeze screen for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2598
    :cond_1
    if-eq p5, p1, :cond_2

    .line 2599
    iget-object v1, p5, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p5, v1, p2}, Lcom/android/server/wm/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/wm/WindowProcessController;I)V

    .line 2601
    :cond_2
    iget-boolean v1, p5, Lcom/android/server/wm/ActivityRecord;->visible:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    iget-boolean v1, p5, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v1, :cond_5

    .line 2602
    :cond_3
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting and making visible: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2603
    :cond_4
    invoke-virtual {p5, v3}, Lcom/android/server/wm/ActivityRecord;->setVisible(Z)V

    .line 2605
    :cond_5
    if-eq p5, p1, :cond_7

    .line 2609
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    if-eqz p4, :cond_6

    iget-boolean v2, p5, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-nez v2, :cond_6

    move v0, v3

    :cond_6
    invoke-virtual {v1, p5, v0, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->startSpecificActivityLocked(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 2611
    return v3

    .line 2614
    :cond_7
    return v0
.end method

.method private postAddTask(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityStack;Z)V
    .locals 3
    .param p1, "task"    # Lcom/android/server/wm/TaskRecord;
    .param p2, "prevStack"    # Lcom/android/server/wm/ActivityStack;
    .param p3, "schedulePictureInPictureModeChange"    # Z

    .line 5970
    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    .line 5971
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityStack;)V

    goto :goto_0

    .line 5972
    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_1

    .line 5974
    :try_start_0
    iget-object v0, p1, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v1, p1, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    iget v2, p1, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-interface {v0, v1, v2}, Landroid/service/voice/IVoiceInteractionSession;->taskStarted(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5976
    goto :goto_0

    .line 5975
    :catch_0
    move-exception v0

    .line 5978
    :cond_1
    :goto_0
    return-void
.end method

.method private preAddTask(Lcom/android/server/wm/TaskRecord;Ljava/lang/String;Z)Lcom/android/server/wm/ActivityStack;
    .locals 2
    .param p1, "task"    # Lcom/android/server/wm/TaskRecord;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "toTop"    # Z

    .line 5955
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 5956
    .local v0, "prevStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_1

    if-eq v0, p0, :cond_1

    .line 5957
    nop

    .line 5958
    if-eqz p3, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 5957
    :goto_0
    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/wm/ActivityStack;->removeTask(Lcom/android/server/wm/TaskRecord;Ljava/lang/String;I)V

    .line 5960
    :cond_1
    return-object v0
.end method

.method private prepareActivityHideTransitionAnimation(Lcom/android/server/wm/ActivityRecord;I)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "transit"    # I

    .line 4440
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 4441
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    .line 4442
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 4443
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 4444
    return-void
.end method

.method private removeActivityFromHistoryLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    .locals 12
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 4792
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/wm/ActivityStack;->finishActivityResultsLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;)V

    .line 4793
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->makeFinishingLocked()V

    .line 4794
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    const-string v3, "ActivityTaskManager"

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing activity "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " from stack callers="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x5

    .line 4795
    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4794
    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4797
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->takeFromHistory()V

    .line 4798
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 4799
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Moving to DESTROYED: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " (removed from history)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4801
    :cond_1
    sget-object v2, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v4, "removeActivityFromHistoryLocked"

    invoke-virtual {p1, v2, v4}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 4802
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_APP:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Clearing app during remove for activity "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4803
    :cond_2
    iput-object v0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 4804
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->removeWindowContainer()V

    .line 4805
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 4806
    .local v0, "task":Lcom/android/server/wm/TaskRecord;
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskRecord;->removeActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    goto :goto_0

    :cond_3
    move v2, v1

    .line 4809
    .local v2, "lastActivity":Z
    :goto_0
    if-eqz v0, :cond_4

    .line 4810
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskRecord;->onlyHasTaskOverlayActivities(Z)Z

    move-result v4

    goto :goto_1

    :cond_4
    move v4, v1

    .line 4812
    .local v4, "onlyHasTaskOverlays":Z
    :goto_1
    if-nez v2, :cond_5

    if-eqz v4, :cond_8

    .line 4813
    :cond_5
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v5, :cond_6

    .line 4814
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeActivityFromHistoryLocked: last activity removed from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " onlyHasTaskOverlays="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4822
    :cond_6
    if-eqz v4, :cond_7

    .line 4830
    iget-object v6, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget v7, v0, Lcom/android/server/wm/TaskRecord;->taskId:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v11, p2

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTaskByIdLocked(IZZZLjava/lang/String;)Z

    .line 4836
    :cond_7
    if-eqz v2, :cond_8

    .line 4837
    invoke-virtual {p0, v0, p2, v1}, Lcom/android/server/wm/ActivityStack;->removeTask(Lcom/android/server/wm/TaskRecord;Ljava/lang/String;I)V

    .line 4840
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityStack;->cleanUpActivityServicesLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 4841
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->removeUriPermissionsLocked()V

    .line 4842
    return-void
.end method

.method private removeFromDisplay()V
    .locals 2

    .line 1011
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 1012
    .local v0, "display":Lcom/android/server/wm/ActivityDisplay;
    if-eqz v0, :cond_0

    .line 1013
    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityDisplay;->removeChild(Lcom/android/server/wm/ActivityStack;)V

    .line 1015
    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    .line 1016
    return-void
.end method

.method private removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V
    .locals 5
    .param p2, "app"    # Lcom/android/server/wm/WindowProcessController;
    .param p3, "listName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Lcom/android/server/wm/WindowProcessController;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 5097
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5098
    .local v0, "i":I
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CLEANUP:Z

    const-string v2, "ActivityTaskManager"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing app "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " from list "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " entries"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5100
    :cond_0
    :goto_0
    if-lez v0, :cond_4

    .line 5101
    add-int/lit8 v0, v0, -0x1

    .line 5102
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 5103
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CLEANUP:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Record #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5104
    :cond_1
    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-ne v3, p2, :cond_3

    .line 5105
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CLEANUP:Z

    if-eqz v3, :cond_2

    const-string v3, "---> REMOVING this entry!"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5106
    :cond_2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5107
    invoke-direct {p0, v1}, Lcom/android/server/wm/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 5109
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_3
    goto :goto_0

    .line 5110
    :cond_4
    return-void
.end method

.method private removeHistoryRecordsForAppLocked(Lcom/android/server/wm/WindowProcessController;)Z
    .locals 20
    .param p1, "app"    # Lcom/android/server/wm/WindowProcessController;

    .line 5113
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/wm/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    const-string v3, "mLRUActivities"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/wm/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V

    .line 5114
    iget-object v2, v0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    const-string v3, "mStoppingActivities"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/wm/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V

    .line 5116
    iget-object v2, v0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    const-string v3, "mGoingToSleepActivities"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/wm/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V

    .line 5118
    iget-object v2, v0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    const-string v3, "mFinishingActivities"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/wm/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V

    .line 5121
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowProcessController;->isRemoved()Z

    move-result v2

    .line 5122
    .local v2, "isProcessRemoved":Z
    if-eqz v2, :cond_0

    .line 5126
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowProcessController;->makeFinishingForProcessRemoved()V

    .line 5129
    :cond_0
    const/4 v3, 0x0

    .line 5132
    .local v3, "hasVisibleActivities":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->numActivities()I

    move-result v4

    .line 5133
    .local v4, "i":I
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CLEANUP:Z

    const-string v6, "ActivityTaskManager"

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing app "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " from history with "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " entries"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5135
    :cond_1
    iget-object v5, v0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    .local v5, "taskNdx":I
    :goto_0
    if-ltz v5, :cond_13

    .line 5136
    iget-object v8, v0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/TaskRecord;

    iget-object v8, v8, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5137
    .local v8, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    iget-object v9, v0, Lcom/android/server/wm/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 5138
    iget-object v9, v0, Lcom/android/server/wm/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5140
    :goto_1
    iget-object v9, v0, Lcom/android/server/wm/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_12

    .line 5141
    iget-object v9, v0, Lcom/android/server/wm/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v7

    .line 5142
    .local v9, "targetIndex":I
    iget-object v10, v0, Lcom/android/server/wm/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/ActivityRecord;

    .line 5143
    .local v10, "r":Lcom/android/server/wm/ActivityRecord;
    sget-boolean v11, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CLEANUP:Z

    if-eqz v11, :cond_2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Record #"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ": app="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v10, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5146
    :cond_2
    iget-object v11, v10, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-ne v11, v1, :cond_11

    .line 5147
    iget-boolean v11, v10, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-eqz v11, :cond_3

    .line 5148
    const/4 v3, 0x1

    .line 5151
    :cond_3
    iget v11, v10, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I

    const/4 v12, 0x3

    const/4 v13, 0x2

    if-eq v11, v7, :cond_4

    iget v11, v10, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I

    if-ne v11, v13, :cond_5

    :cond_4
    iget v11, v10, Lcom/android/server/wm/ActivityRecord;->launchCount:I

    if-ge v11, v12, :cond_5

    iget-boolean v11, v10, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v11, :cond_5

    .line 5157
    const/4 v11, 0x0

    .local v11, "remove":Z
    goto :goto_2

    .line 5158
    .end local v11    # "remove":Z
    :cond_5
    iget-boolean v11, v10, Lcom/android/server/wm/ActivityRecord;->haveState:Z

    if-nez v11, :cond_6

    iget-boolean v11, v10, Lcom/android/server/wm/ActivityRecord;->stateNotNeeded:Z

    if-nez v11, :cond_6

    sget-object v11, Lcom/android/server/wm/ActivityStack$ActivityState;->RESTARTING_PROCESS:Lcom/android/server/wm/ActivityStack$ActivityState;

    .line 5159
    invoke-virtual {v10, v11}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v11

    if-eqz v11, :cond_7

    :cond_6
    iget-boolean v11, v10, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v11, :cond_8

    .line 5162
    :cond_7
    const/4 v11, 0x1

    .restart local v11    # "remove":Z
    goto :goto_2

    .line 5163
    .end local v11    # "remove":Z
    :cond_8
    iget-boolean v11, v10, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-nez v11, :cond_9

    iget v11, v10, Lcom/android/server/wm/ActivityRecord;->launchCount:I

    if-le v11, v13, :cond_9

    iget-wide v14, v10, Lcom/android/server/wm/ActivityRecord;->lastLaunchTime:J

    .line 5164
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    const-wide/32 v18, 0xea60

    sub-long v16, v16, v18

    cmp-long v11, v14, v16

    if-lez v11, :cond_9

    .line 5170
    const/4 v11, 0x1

    .restart local v11    # "remove":Z
    goto :goto_2

    .line 5173
    .end local v11    # "remove":Z
    :cond_9
    const/4 v11, 0x0

    .line 5175
    .restart local v11    # "remove":Z
    :goto_2
    if-eqz v11, :cond_d

    .line 5176
    sget-boolean v15, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    const/4 v14, 0x5

    if-nez v15, :cond_a

    sget-boolean v15, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CLEANUP:Z

    if-eqz v15, :cond_b

    :cond_a
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Removing activity "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " from stack at "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ": haveState="

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v12, v10, Lcom/android/server/wm/ActivityRecord;->haveState:Z

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " stateNotNeeded="

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v12, v10, Lcom/android/server/wm/ActivityRecord;->stateNotNeeded:Z

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " finishing="

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v12, v10, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " state="

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5181
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v12

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " callers="

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 5176
    invoke-static {v6, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5182
    :cond_b
    iget-boolean v12, v10, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v12, :cond_c

    if-eqz v2, :cond_10

    .line 5183
    :cond_c
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Force removing "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ": app died, no saved state"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5184
    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    iget v12, v10, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 5185
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v14, v15

    invoke-static {v10}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v14, v7

    .line 5186
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v12

    iget v12, v12, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v14, v13

    iget-object v12, v10, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const/4 v13, 0x3

    aput-object v12, v14, v13

    const/4 v12, 0x4

    const-string v13, "proc died without state saved"

    aput-object v13, v14, v12

    .line 5184
    const/16 v12, 0x7531

    invoke-static {v12, v14}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5190
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v12

    sget-object v13, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne v12, v13, :cond_10

    .line 5191
    sget-boolean v12, Lcom/android/server/wm/ActivityStack;->IS_SUPPORT_COLOR_ADS:Z

    if-eqz v12, :cond_10

    .line 5192
    const/4 v12, 0x0

    invoke-static {v10, v12}, Lcom/android/server/OPAppSwitchManagerServiceInjector;->handleActivityPaused(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_3

    .line 5201
    :cond_d
    sget-boolean v12, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_APP:Z

    if-eqz v12, :cond_e

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Clearing app during removeHistory for activity "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5203
    :cond_e
    const/4 v12, 0x0

    iput-object v12, v10, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 5208
    iget-boolean v12, v10, Lcom/android/server/wm/ActivityRecord;->visible:Z

    iput-boolean v12, v10, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    .line 5209
    iget-boolean v12, v10, Lcom/android/server/wm/ActivityRecord;->haveState:Z

    if-nez v12, :cond_10

    .line 5210
    sget-boolean v12, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SAVED_STATE:Z

    if-eqz v12, :cond_f

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "App died, clearing saved state of "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5212
    :cond_f
    const/4 v12, 0x0

    iput-object v12, v10, Lcom/android/server/wm/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 5215
    :cond_10
    :goto_3
    invoke-direct {v0, v10, v7, v7}, Lcom/android/server/wm/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 5216
    if-eqz v11, :cond_11

    .line 5217
    const-string v12, "appDied"

    invoke-direct {v0, v10, v12}, Lcom/android/server/wm/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 5220
    .end local v9    # "targetIndex":I
    .end local v10    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v11    # "remove":Z
    :cond_11
    goto/16 :goto_1

    .line 5135
    .end local v8    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    :cond_12
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_0

    .line 5223
    .end local v5    # "taskNdx":I
    :cond_13
    return v3
.end method

.method private removeTimeoutsForActivityLocked(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 4784
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTimeoutsForActivityLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 4785
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4786
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4787
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4788
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->finishLaunchTickingLocked()V

    .line 4789
    return-void
.end method

.method private resetAffinityTaskIfNeededLocked(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/TaskRecord;ZZI)I
    .locals 25
    .param p1, "affinityTask"    # Lcom/android/server/wm/TaskRecord;
    .param p2, "task"    # Lcom/android/server/wm/TaskRecord;
    .param p3, "topTaskIsHigher"    # Z
    .param p4, "forceReset"    # Z
    .param p5, "taskInsertionPoint"    # I

    .line 3773
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, -0x1

    .line 3774
    .local v2, "replyChainEnd":I
    iget v3, v1, Lcom/android/server/wm/TaskRecord;->taskId:I

    .line 3775
    .local v3, "taskId":I
    iget-object v4, v1, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    .line 3777
    .local v4, "taskAffinity":Ljava/lang/String;
    iget-object v5, v0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3778
    .local v5, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 3779
    .local v6, "numActivities":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskRecord;->findEffectiveRootIndex()I

    move-result v7

    .line 3782
    .local v7, "rootActivityNdx":I
    add-int/lit8 v8, v6, -0x1

    move v9, v2

    move/from16 v2, p5

    .end local p5    # "taskInsertionPoint":I
    .local v2, "taskInsertionPoint":I
    .local v8, "i":I
    .local v9, "replyChainEnd":I
    :goto_0
    if-le v8, v7, :cond_14

    .line 3783
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/ActivityRecord;

    .line 3784
    .local v10, "target":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v11, v10, Lcom/android/server/wm/ActivityRecord;->frontOfTask:Z

    if-eqz v11, :cond_0

    .line 3785
    move/from16 v16, v3

    move-object/from16 v17, v4

    goto/16 :goto_c

    .line 3787
    :cond_0
    iget-object v11, v10, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v11, v11, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3788
    .local v11, "flags":I
    and-int/lit8 v12, v11, 0x2

    const/4 v13, 0x0

    if-eqz v12, :cond_1

    const/4 v12, 0x1

    goto :goto_1

    :cond_1
    move v12, v13

    .line 3789
    .local v12, "finishOnTaskLaunch":Z
    :goto_1
    and-int/lit8 v15, v11, 0x40

    if-eqz v15, :cond_2

    const/4 v13, 0x1

    .line 3791
    .local v13, "allowTaskReparenting":Z
    :cond_2
    iget-object v15, v10, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v15, :cond_4

    .line 3798
    if-gez v9, :cond_3

    .line 3799
    move v9, v8

    move/from16 v16, v3

    move-object/from16 v17, v4

    goto/16 :goto_b

    .line 3798
    :cond_3
    move/from16 v16, v3

    move-object/from16 v17, v4

    goto/16 :goto_b

    .line 3801
    :cond_4
    if-eqz p3, :cond_13

    if-eqz v13, :cond_13

    if-eqz v4, :cond_13

    iget-object v15, v10, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    .line 3804
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_12

    .line 3815
    const-string v15, "ActivityTaskManager"

    if-nez p4, :cond_d

    if-eqz v12, :cond_5

    move/from16 v16, v3

    move-object/from16 v17, v4

    goto/16 :goto_6

    .line 3828
    :cond_5
    if-gez v2, :cond_6

    .line 3829
    iget-object v14, v1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3833
    :cond_6
    if-ltz v9, :cond_7

    move v14, v9

    goto :goto_2

    :cond_7
    move v14, v8

    .line 3834
    .local v14, "start":I
    :goto_2
    sget-boolean v16, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v16, :cond_8

    move/from16 v16, v3

    .end local v3    # "taskId":I
    .local v16, "taskId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v4

    .end local v4    # "taskAffinity":Ljava/lang/String;
    .local v17, "taskAffinity":Ljava/lang/String;
    const-string v4, "Reparenting from task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " to task="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v16    # "taskId":I
    .end local v17    # "taskAffinity":Ljava/lang/String;
    .restart local v3    # "taskId":I
    .restart local v4    # "taskAffinity":Ljava/lang/String;
    :cond_8
    move/from16 v16, v3

    move-object/from16 v17, v4

    .line 3837
    .end local v3    # "taskId":I
    .end local v4    # "taskAffinity":Ljava/lang/String;
    .restart local v16    # "taskId":I
    .restart local v17    # "taskAffinity":Ljava/lang/String;
    :goto_3
    move v0, v14

    .local v0, "srcPos":I
    :goto_4
    if-lt v0, v8, :cond_b

    .line 3838
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 3839
    .local v3, "p":Lcom/android/server/wm/ActivityRecord;
    const-string v4, "resetAffinityTaskIfNeededLocked"

    invoke-virtual {v3, v1, v2, v4}, Lcom/android/server/wm/ActivityRecord;->reparent(Lcom/android/server/wm/TaskRecord;ILjava/lang/String;)V

    .line 3841
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v4, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v2

    .end local v2    # "taskInsertionPoint":I
    .local v18, "taskInsertionPoint":I
    const-string v2, "Removing and adding activity "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to stack at "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " callers="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    .line 3843
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3841
    invoke-static {v15, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .end local v18    # "taskInsertionPoint":I
    .restart local v2    # "taskInsertionPoint":I
    :cond_9
    move/from16 v18, v2

    .line 3844
    .end local v2    # "taskInsertionPoint":I
    .restart local v18    # "taskInsertionPoint":I
    :goto_5
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pulling activity "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " in to resetting task "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3837
    .end local v3    # "p":Lcom/android/server/wm/ActivityRecord;
    :cond_a
    add-int/lit8 v0, v0, -0x1

    move/from16 v2, v18

    goto :goto_4

    .end local v18    # "taskInsertionPoint":I
    .restart local v2    # "taskInsertionPoint":I
    :cond_b
    move/from16 v18, v2

    .line 3847
    .end local v0    # "srcPos":I
    .end local v2    # "taskInsertionPoint":I
    .restart local v18    # "taskInsertionPoint":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStack;->positionChildWindowContainerAtTop(Lcom/android/server/wm/TaskRecord;)V

    .line 3853
    iget-object v2, v10, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    .line 3854
    iget-object v2, v1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3855
    .local v2, "taskActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 3856
    .local v3, "targetNdx":I
    if-lez v3, :cond_c

    .line 3857
    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 3858
    .local v4, "p":Lcom/android/server/wm/ActivityRecord;
    iget-object v15, v4, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    iget-object v0, v10, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3859
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    const-string v23, "replace"

    move-object/from16 v19, p0

    move-object/from16 v20, v4

    invoke-virtual/range {v19 .. v24}, Lcom/android/server/wm/ActivityStack;->finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3866
    .end local v2    # "taskActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v3    # "targetNdx":I
    .end local v4    # "p":Lcom/android/server/wm/ActivityRecord;
    .end local v14    # "start":I
    :cond_c
    move/from16 v2, v18

    goto :goto_a

    .line 3815
    .end local v16    # "taskId":I
    .end local v17    # "taskAffinity":Ljava/lang/String;
    .end local v18    # "taskInsertionPoint":I
    .local v2, "taskInsertionPoint":I
    .local v3, "taskId":I
    .local v4, "taskAffinity":Ljava/lang/String;
    :cond_d
    move/from16 v16, v3

    move-object/from16 v17, v4

    .line 3816
    .end local v3    # "taskId":I
    .end local v4    # "taskAffinity":Ljava/lang/String;
    .restart local v16    # "taskId":I
    .restart local v17    # "taskAffinity":Ljava/lang/String;
    :goto_6
    if-ltz v9, :cond_e

    move v0, v9

    goto :goto_7

    :cond_e
    move v0, v8

    .line 3817
    .local v0, "start":I
    :goto_7
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v3, :cond_f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finishing task at index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3819
    :cond_f
    move v3, v0

    .local v3, "srcPos":I
    :goto_8
    if-lt v3, v8, :cond_11

    .line 3820
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 3821
    .local v4, "p":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v14, v4, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v14, :cond_10

    .line 3822
    goto :goto_9

    .line 3824
    :cond_10
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    const-string v23, "move-affinity"

    move-object/from16 v19, p0

    move-object/from16 v20, v4

    invoke-virtual/range {v19 .. v24}, Lcom/android/server/wm/ActivityStack;->finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3819
    .end local v4    # "p":Lcom/android/server/wm/ActivityRecord;
    :goto_9
    add-int/lit8 v3, v3, -0x1

    goto :goto_8

    .line 3827
    .end local v0    # "start":I
    .end local v3    # "srcPos":I
    :cond_11
    nop

    .line 3866
    :goto_a
    const/4 v0, -0x1

    move v9, v0

    .end local v9    # "replyChainEnd":I
    .local v0, "replyChainEnd":I
    goto :goto_b

    .line 3804
    .end local v0    # "replyChainEnd":I
    .end local v16    # "taskId":I
    .end local v17    # "taskAffinity":Ljava/lang/String;
    .local v3, "taskId":I
    .local v4, "taskAffinity":Ljava/lang/String;
    .restart local v9    # "replyChainEnd":I
    :cond_12
    move/from16 v16, v3

    move-object/from16 v17, v4

    .end local v3    # "taskId":I
    .end local v4    # "taskAffinity":Ljava/lang/String;
    .restart local v16    # "taskId":I
    .restart local v17    # "taskAffinity":Ljava/lang/String;
    goto :goto_b

    .line 3801
    .end local v16    # "taskId":I
    .end local v17    # "taskAffinity":Ljava/lang/String;
    .restart local v3    # "taskId":I
    .restart local v4    # "taskAffinity":Ljava/lang/String;
    :cond_13
    move/from16 v16, v3

    move-object/from16 v17, v4

    .line 3782
    .end local v3    # "taskId":I
    .end local v4    # "taskAffinity":Ljava/lang/String;
    .end local v10    # "target":Lcom/android/server/wm/ActivityRecord;
    .end local v11    # "flags":I
    .end local v12    # "finishOnTaskLaunch":Z
    .end local v13    # "allowTaskReparenting":Z
    .restart local v16    # "taskId":I
    .restart local v17    # "taskAffinity":Ljava/lang/String;
    :goto_b
    add-int/lit8 v8, v8, -0x1

    move-object/from16 v0, p1

    move/from16 v3, v16

    move-object/from16 v4, v17

    goto/16 :goto_0

    .end local v16    # "taskId":I
    .end local v17    # "taskAffinity":Ljava/lang/String;
    .restart local v3    # "taskId":I
    .restart local v4    # "taskAffinity":Ljava/lang/String;
    :cond_14
    move/from16 v16, v3

    move-object/from16 v17, v4

    .line 3869
    .end local v3    # "taskId":I
    .end local v4    # "taskAffinity":Ljava/lang/String;
    .end local v8    # "i":I
    .restart local v16    # "taskId":I
    .restart local v17    # "taskAffinity":Ljava/lang/String;
    :goto_c
    return v2
.end method

.method private resetTargetTaskIfNeededLocked(Lcom/android/server/wm/TaskRecord;Z)Landroid/app/ActivityOptions;
    .locals 30
    .param p1, "task"    # Lcom/android/server/wm/TaskRecord;
    .param p2, "forceReset"    # Z

    .line 3622
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const/4 v0, 0x0

    .line 3624
    .local v0, "topOptions":Landroid/app/ActivityOptions;
    const/4 v1, -0x1

    .line 3625
    .local v1, "replyChainEnd":I
    const/4 v2, 0x1

    .line 3629
    .local v2, "canMoveOptions":Z
    iget-object v9, v8, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3630
    .local v9, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 3631
    .local v10, "numActivities":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskRecord;->findEffectiveRootIndex()I

    move-result v11

    .line 3632
    .local v11, "rootActivityNdx":I
    add-int/lit8 v3, v10, -0x1

    move-object v13, v0

    move v14, v1

    move v15, v2

    move v12, v3

    .end local v0    # "topOptions":Landroid/app/ActivityOptions;
    .end local v1    # "replyChainEnd":I
    .end local v2    # "canMoveOptions":Z
    .local v12, "i":I
    .local v13, "topOptions":Landroid/app/ActivityOptions;
    .local v14, "replyChainEnd":I
    .local v15, "canMoveOptions":Z
    :goto_0
    if-le v12, v11, :cond_1d

    .line 3633
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/wm/ActivityRecord;

    .line 3634
    .local v6, "target":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->frontOfTask:Z

    if-eqz v0, :cond_0

    .line 3635
    move/from16 v21, v10

    goto/16 :goto_12

    .line 3637
    :cond_0
    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3638
    .local v5, "flags":I
    and-int/lit8 v0, v5, 0x2

    const/16 v16, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    move/from16 v0, v16

    goto :goto_1

    :cond_1
    move v0, v4

    :goto_1
    move/from16 v17, v0

    .line 3640
    .local v17, "finishOnTaskLaunch":Z
    and-int/lit8 v0, v5, 0x40

    if-eqz v0, :cond_2

    move/from16 v0, v16

    goto :goto_2

    :cond_2
    move v0, v4

    :goto_2
    move/from16 v18, v0

    .line 3642
    .local v18, "allowTaskReparenting":Z
    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 3643
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    move/from16 v0, v16

    goto :goto_3

    :cond_3
    move v0, v4

    :goto_3
    move/from16 v19, v0

    .line 3645
    .local v19, "clearWhenTaskReset":Z
    if-nez v17, :cond_5

    if-nez v19, :cond_5

    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_5

    .line 3654
    if-gez v14, :cond_4

    .line 3655
    move v0, v12

    move v14, v0

    move/from16 v21, v10

    .end local v14    # "replyChainEnd":I
    .local v0, "replyChainEnd":I
    goto/16 :goto_11

    .line 3654
    .end local v0    # "replyChainEnd":I
    .restart local v14    # "replyChainEnd":I
    :cond_4
    move/from16 v21, v10

    goto/16 :goto_11

    .line 3657
    :cond_5
    const-string v3, "ActivityTaskManager"

    if-nez v17, :cond_12

    if-nez v19, :cond_12

    if-eqz v18, :cond_12

    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v1, v8, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    .line 3661
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 3670
    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskRecord;

    iget-object v0, v0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 3671
    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskRecord;

    iget-object v0, v0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    :goto_4
    move-object/from16 v16, v0

    .line 3672
    .local v16, "bottom":Lcom/android/server/wm/ActivityRecord;
    const-string v2, "Start pushing activity "

    if-eqz v16, :cond_8

    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    .line 3673
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3677
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 3678
    .local v0, "targetTask":Lcom/android/server/wm/TaskRecord;
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " out to bottom task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3689
    :cond_7
    move/from16 v20, v5

    move/from16 v21, v10

    move-object v10, v6

    move-object v6, v3

    goto :goto_5

    .line 3681
    .end local v0    # "targetTask":Lcom/android/server/wm/TaskRecord;
    :cond_8
    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget v1, v6, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 3682
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->getNextTaskIdForUserLocked(I)I

    move-result v1

    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    .line 3681
    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v25, v2

    move-object/from16 v2, v24

    move-object/from16 v26, v3

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    move/from16 v20, v5

    .end local v5    # "flags":I
    .local v20, "flags":I
    move-object/from16 v5, v22

    move/from16 v21, v10

    move-object v10, v6

    .end local v6    # "target":Lcom/android/server/wm/ActivityRecord;
    .local v10, "target":Lcom/android/server/wm/ActivityRecord;
    .local v21, "numActivities":I
    move/from16 v6, v23

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 3684
    .restart local v0    # "targetTask":Lcom/android/server/wm/TaskRecord;
    iget-object v1, v10, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iput-object v1, v0, Lcom/android/server/wm/TaskRecord;->affinityIntent:Landroid/content/Intent;

    .line 3685
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, v25

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " out to new task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v6, v26

    invoke-static {v6, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_9
    move-object/from16 v6, v26

    .line 3689
    :goto_5
    move v1, v15

    .line 3690
    .local v1, "noOptions":Z
    if-gez v14, :cond_a

    move v2, v12

    goto :goto_6

    :cond_a
    move v2, v14

    .line 3691
    .local v2, "start":I
    :goto_6
    move v3, v2

    .local v3, "srcPos":I
    :goto_7
    if-lt v3, v12, :cond_10

    .line 3692
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 3693
    .local v4, "p":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_b

    .line 3694
    move v5, v15

    const/4 v15, 0x0

    goto/16 :goto_a

    .line 3697
    :cond_b
    const/4 v5, 0x0

    .line 3698
    .end local v15    # "canMoveOptions":Z
    .local v5, "canMoveOptions":Z
    if-eqz v1, :cond_c

    if-nez v13, :cond_c

    .line 3699
    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Lcom/android/server/wm/ActivityRecord;->takeOptionsLocked(Z)Landroid/app/ActivityOptions;

    move-result-object v13

    .line 3700
    if-eqz v13, :cond_d

    .line 3701
    const/4 v1, 0x0

    goto :goto_8

    .line 3698
    :cond_c
    const/4 v15, 0x0

    .line 3704
    :cond_d
    :goto_8
    sget-boolean v22, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v22, :cond_e

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v22, v1

    .end local v1    # "noOptions":Z
    .local v22, "noOptions":Z
    const-string v1, "Removing activity "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " from task="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " adding to task="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Callers="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    .line 3706
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3704
    invoke-static {v6, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .end local v22    # "noOptions":Z
    .restart local v1    # "noOptions":Z
    :cond_e
    move/from16 v22, v1

    .line 3707
    .end local v1    # "noOptions":Z
    .restart local v22    # "noOptions":Z
    :goto_9
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v1, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Pushing next activity "

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " out to target\'s task "

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3709
    :cond_f
    const-string v1, "resetTargetTaskIfNeeded"

    const/4 v15, 0x0

    invoke-virtual {v4, v0, v15, v1}, Lcom/android/server/wm/ActivityRecord;->reparent(Lcom/android/server/wm/TaskRecord;ILjava/lang/String;)V

    move/from16 v1, v22

    .line 3691
    .end local v4    # "p":Lcom/android/server/wm/ActivityRecord;
    .end local v22    # "noOptions":Z
    .restart local v1    # "noOptions":Z
    :goto_a
    add-int/lit8 v3, v3, -0x1

    move v15, v5

    goto/16 :goto_7

    .line 3712
    .end local v3    # "srcPos":I
    .end local v5    # "canMoveOptions":Z
    .restart local v15    # "canMoveOptions":Z
    :cond_10
    invoke-virtual {v7, v0}, Lcom/android/server/wm/ActivityStack;->positionChildWindowContainerAtBottom(Lcom/android/server/wm/TaskRecord;)V

    .line 3713
    const/4 v0, -0x1

    .line 3714
    .end local v1    # "noOptions":Z
    .end local v2    # "start":I
    .end local v14    # "replyChainEnd":I
    .end local v16    # "bottom":Lcom/android/server/wm/ActivityRecord;
    .local v0, "replyChainEnd":I
    move v14, v0

    goto/16 :goto_11

    .line 3661
    .end local v0    # "replyChainEnd":I
    .end local v20    # "flags":I
    .end local v21    # "numActivities":I
    .local v5, "flags":I
    .restart local v6    # "target":Lcom/android/server/wm/ActivityRecord;
    .local v10, "numActivities":I
    .restart local v14    # "replyChainEnd":I
    :cond_11
    move/from16 v20, v5

    move/from16 v21, v10

    move v5, v4

    move-object v10, v6

    move-object v6, v3

    .end local v5    # "flags":I
    .end local v6    # "target":Lcom/android/server/wm/ActivityRecord;
    .local v10, "target":Lcom/android/server/wm/ActivityRecord;
    .restart local v20    # "flags":I
    .restart local v21    # "numActivities":I
    goto :goto_b

    .line 3657
    .end local v20    # "flags":I
    .end local v21    # "numActivities":I
    .restart local v5    # "flags":I
    .restart local v6    # "target":Lcom/android/server/wm/ActivityRecord;
    .local v10, "numActivities":I
    :cond_12
    move/from16 v20, v5

    move/from16 v21, v10

    move v5, v4

    move-object v10, v6

    move-object v6, v3

    .line 3714
    .end local v5    # "flags":I
    .end local v6    # "target":Lcom/android/server/wm/ActivityRecord;
    .local v10, "target":Lcom/android/server/wm/ActivityRecord;
    .restart local v20    # "flags":I
    .restart local v21    # "numActivities":I
    :goto_b
    if-nez p2, :cond_14

    if-nez v17, :cond_14

    if-eqz v19, :cond_13

    goto :goto_c

    .line 3756
    :cond_13
    const/4 v0, -0x1

    move v14, v0

    .end local v14    # "replyChainEnd":I
    .restart local v0    # "replyChainEnd":I
    goto/16 :goto_11

    .line 3720
    .end local v0    # "replyChainEnd":I
    .restart local v14    # "replyChainEnd":I
    :cond_14
    :goto_c
    if-eqz v19, :cond_15

    .line 3724
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "end":I
    goto :goto_d

    .line 3725
    .end local v0    # "end":I
    :cond_15
    if-gez v14, :cond_16

    .line 3726
    move v0, v12

    .restart local v0    # "end":I
    goto :goto_d

    .line 3728
    .end local v0    # "end":I
    :cond_16
    move v0, v14

    .line 3730
    .restart local v0    # "end":I
    :goto_d
    move v1, v15

    .line 3731
    .restart local v1    # "noOptions":Z
    move v2, v12

    move/from16 v28, v15

    move v15, v0

    move/from16 v0, v28

    move-object/from16 v29, v13

    move v13, v2

    move-object/from16 v2, v29

    .local v0, "canMoveOptions":Z
    .local v2, "topOptions":Landroid/app/ActivityOptions;
    .local v13, "srcPos":I
    .local v15, "end":I
    :goto_e
    if-gt v13, v15, :cond_1c

    .line 3732
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 3733
    .restart local v4    # "p":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v3, v4, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_17

    .line 3734
    move/from16 v26, v5

    goto :goto_10

    .line 3736
    :cond_17
    const/16 v22, 0x0

    .line 3737
    .end local v0    # "canMoveOptions":Z
    .local v22, "canMoveOptions":Z
    if-eqz v1, :cond_19

    if-nez v2, :cond_19

    .line 3738
    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityRecord;->takeOptionsLocked(Z)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 3739
    if-eqz v2, :cond_18

    .line 3740
    const/4 v1, 0x0

    move/from16 v24, v1

    move-object/from16 v23, v2

    goto :goto_f

    .line 3739
    :cond_18
    move/from16 v24, v1

    move-object/from16 v23, v2

    goto :goto_f

    .line 3743
    :cond_19
    move/from16 v24, v1

    move-object/from16 v23, v2

    .end local v1    # "noOptions":Z
    .end local v2    # "topOptions":Landroid/app/ActivityOptions;
    .local v23, "topOptions":Landroid/app/ActivityOptions;
    .local v24, "noOptions":Z
    :goto_f
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetTaskIntendedTask: calling finishActivity on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3745
    :cond_1a
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v25, 0x0

    const-string v26, "reset-task"

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v27, v4

    .end local v4    # "p":Lcom/android/server/wm/ActivityRecord;
    .local v27, "p":Lcom/android/server/wm/ActivityRecord;
    move-object/from16 v4, v26

    move/from16 v26, v5

    move/from16 v5, v25

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStack;->finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 3747
    add-int/lit8 v15, v15, -0x1

    .line 3748
    add-int/lit8 v13, v13, -0x1

    move/from16 v0, v22

    move-object/from16 v2, v23

    move/from16 v1, v24

    goto :goto_10

    .line 3745
    :cond_1b
    move/from16 v0, v22

    move-object/from16 v2, v23

    move/from16 v1, v24

    .line 3731
    .end local v22    # "canMoveOptions":Z
    .end local v23    # "topOptions":Landroid/app/ActivityOptions;
    .end local v24    # "noOptions":Z
    .end local v27    # "p":Lcom/android/server/wm/ActivityRecord;
    .restart local v0    # "canMoveOptions":Z
    .restart local v1    # "noOptions":Z
    .restart local v2    # "topOptions":Landroid/app/ActivityOptions;
    :goto_10
    add-int/lit8 v13, v13, 0x1

    move/from16 v5, v26

    goto :goto_e

    .line 3751
    .end local v13    # "srcPos":I
    :cond_1c
    const/4 v1, -0x1

    .line 3752
    .end local v14    # "replyChainEnd":I
    .end local v15    # "end":I
    .local v1, "replyChainEnd":I
    move v15, v0

    move v14, v1

    move-object v13, v2

    .line 3632
    .end local v0    # "canMoveOptions":Z
    .end local v1    # "replyChainEnd":I
    .end local v2    # "topOptions":Landroid/app/ActivityOptions;
    .end local v10    # "target":Lcom/android/server/wm/ActivityRecord;
    .end local v17    # "finishOnTaskLaunch":Z
    .end local v18    # "allowTaskReparenting":Z
    .end local v19    # "clearWhenTaskReset":Z
    .end local v20    # "flags":I
    .local v13, "topOptions":Landroid/app/ActivityOptions;
    .restart local v14    # "replyChainEnd":I
    .local v15, "canMoveOptions":Z
    :goto_11
    add-int/lit8 v12, v12, -0x1

    move/from16 v10, v21

    goto/16 :goto_0

    .end local v21    # "numActivities":I
    .local v10, "numActivities":I
    :cond_1d
    move/from16 v21, v10

    .line 3760
    .end local v10    # "numActivities":I
    .end local v12    # "i":I
    .restart local v21    # "numActivities":I
    :goto_12
    return-object v13
.end method

.method private resumeNextFocusableActivityWhenStackIsEmpty(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .locals 4
    .param p1, "prev"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;

    .line 3348
    const-string v0, "noMoreActivities"

    .line 3350
    .local v0, "reason":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v1

    const-string v2, "noMoreActivities"

    if-nez v1, :cond_0

    .line 3351
    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityStack;->adjustFocusToNextFocusableStack(Ljava/lang/String;)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 3352
    .local v1, "nextFocusedStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_0

    .line 3356
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, p1, v3}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v2

    return v2

    .line 3363
    .end local v1    # "nextFocusedStack":Lcom/android/server/wm/ActivityStack;
    :cond_0
    invoke-static {p2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 3364
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v1, :cond_1

    const-string v1, "ActivityTaskManager"

    const-string v3, "resumeNextFocusableActivityWhenStackIsEmpty: noMoreActivities, go home"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3366
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget v3, p0, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/wm/RootActivityContainer;->resumeHomeActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method private resumeTopActivityInnerLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .locals 29
    .param p1, "prev"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2837
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    const-string v10, ": "

    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooting()Z

    move-result v0

    const/4 v11, 0x0

    if-nez v0, :cond_0

    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2839
    return v11

    .line 2845
    :cond_0
    const/4 v12, 0x1

    invoke-virtual {v7, v12}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v13

    .line 2847
    .local v13, "next":Lcom/android/server/wm/ActivityRecord;
    if-eqz v13, :cond_1

    move v0, v12

    goto :goto_0

    :cond_1
    move v0, v11

    :goto_0
    move v14, v0

    .line 2850
    .local v14, "hasRunningActivity":Z
    if-eqz v14, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isAttached()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2851
    return v11

    .line 2854
    :cond_2
    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->cancelInitializingActivities()V

    .line 2858
    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mUserLeaving:Z

    .line 2859
    .local v0, "userLeaving":Z
    iget-object v1, v7, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iput-boolean v11, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mUserLeaving:Z

    .line 2861
    if-nez v14, :cond_3

    .line 2863
    invoke-direct/range {p0 .. p2}, Lcom/android/server/wm/ActivityStack;->resumeNextFocusableActivityWhenStackIsEmpty(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v1

    return v1

    .line 2866
    :cond_3
    iput-boolean v11, v13, Lcom/android/server/wm/ActivityRecord;->delayedResume:Z

    .line 2867
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v15

    .line 2870
    .local v15, "display":Lcom/android/server/wm/ActivityDisplay;
    iget-object v1, v7, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const-string v6, "ActivityTaskManager"

    if-ne v1, v13, :cond_5

    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v13, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2871
    invoke-virtual {v15}, Lcom/android/server/wm/ActivityDisplay;->allResumedActivitiesComplete()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2874
    invoke-virtual {v7, v9}, Lcom/android/server/wm/ActivityStack;->executeAppTransition(Landroid/app/ActivityOptions;)V

    .line 2875
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeTopActivityLocked: Top activity resumed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2877
    :cond_4
    return v11

    .line 2880
    :cond_5
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->canResumeByCompat()Z

    move-result v1

    if-nez v1, :cond_6

    .line 2881
    return v11

    .line 2886
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v1

    const/4 v5, 0x0

    if-eqz v1, :cond_c

    iget-object v1, v7, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v1, v13, :cond_c

    iget-object v1, v7, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 2888
    invoke-virtual {v1}, Lcom/android/server/wm/RootActivityContainer;->allPausedActivitiesComplete()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2891
    const/4 v1, 0x1

    .line 2892
    .local v1, "nothingToResume":Z
    iget-object v2, v7, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    if-nez v2, :cond_a

    .line 2893
    iget-boolean v2, v7, Lcom/android/server/wm/ActivityStack;->mTopActivityOccludesKeyguard:Z

    if-nez v2, :cond_7

    .line 2894
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v12

    goto :goto_1

    :cond_7
    move v2, v11

    .line 2895
    .local v2, "canShowWhenLocked":Z
    :goto_1
    iget-object v3, v7, Lcom/android/server/wm/ActivityStack;->mTopDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    if-eq v3, v13, :cond_8

    iget-object v3, v13, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_8

    iget-object v3, v13, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    .line 2897
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->containsDismissKeyguardWindow()Z

    move-result v3

    if-eqz v3, :cond_8

    move v3, v12

    goto :goto_2

    :cond_8
    move v3, v11

    .line 2899
    .local v3, "mayDismissKeyguard":Z
    :goto_2
    if-nez v2, :cond_9

    if-eqz v3, :cond_a

    .line 2900
    :cond_9
    invoke-virtual {v7, v5, v11, v11}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 2902
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->shouldSleepActivities()Z

    move-result v1

    .line 2905
    .end local v2    # "canShowWhenLocked":Z
    .end local v3    # "mayDismissKeyguard":Z
    :cond_a
    if-eqz v1, :cond_c

    .line 2908
    invoke-virtual {v7, v9}, Lcom/android/server/wm/ActivityStack;->executeAppTransition(Landroid/app/ActivityOptions;)V

    .line 2909
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v2, :cond_b

    const-string v2, "resumeTopActivityLocked: Going to sleep and all paused"

    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2911
    :cond_b
    return v11

    .line 2918
    .end local v1    # "nothingToResume":Z
    :cond_c
    iget-object v1, v7, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v2, v13, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/app/ActivityManagerInternal;->hasStartedUserState(I)Z

    move-result v1

    if-nez v1, :cond_d

    .line 2919
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping resume of top activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v13, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is stopped"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2921
    return v11

    .line 2926
    :cond_d
    iget-object v1, v7, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2927
    iget-object v1, v7, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2928
    iput-boolean v11, v13, Lcom/android/server/wm/ActivityRecord;->sleeping:Z

    .line 2929
    iput-boolean v12, v13, Lcom/android/server/wm/ActivityRecord;->launching:Z

    .line 2931
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v1, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resuming "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2933
    :cond_e
    sget-object v1, Lcom/android/server/wm/ActivityStack;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    if-eqz v1, :cond_f

    .line 2934
    iget-object v2, v13, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v3, v13, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v13, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v5, v13, Lcom/android/server/wm/ActivityRecord;->fullscreen:Z

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/app/ActivityTrigger;->activityResumeTrigger(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;Z)V

    .line 2938
    :cond_f
    sget-object v1, Lcom/android/server/wm/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/wm/ActivityPluginDelegate;

    if-eqz v1, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v1

    if-eqz v1, :cond_11

    .line 2939
    sget-object v1, Lcom/android/server/wm/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/wm/ActivityPluginDelegate;

    iget-object v1, v13, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2940
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v2

    if-ne v2, v12, :cond_10

    move v2, v12

    goto :goto_3

    :cond_10
    move v2, v11

    :goto_3
    invoke-static {v1, v2}, Lcom/android/server/wm/ActivityPluginDelegate;->activityInvokeNotification(Ljava/lang/String;Z)V

    .line 2944
    :cond_11
    iget-object v1, v7, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootActivityContainer;->allPausedActivitiesComplete()Z

    move-result v1

    if-nez v1, :cond_14

    .line 2945
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v1, :cond_12

    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-nez v1, :cond_12

    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v1, :cond_13

    :cond_12
    const-string v1, "resumeTopActivityLocked: Skip resume: some activity pausing."

    invoke-static {v6, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2948
    :cond_13
    return v11

    .line 2951
    :cond_14
    iget-object v1, v7, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, v13, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->setLaunchSource(I)V

    .line 2953
    const/4 v1, 0x0

    .line 2954
    .local v1, "lastResumedCanPip":Z
    const/4 v2, 0x0

    .line 2955
    .local v2, "lastResumed":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v15}, Lcom/android/server/wm/ActivityDisplay;->getLastFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 2956
    .local v5, "lastFocusedStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v5, :cond_18

    if-eq v5, v7, :cond_18

    .line 2959
    iget-object v2, v5, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2960
    if-eqz v0, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->inMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual {v5, v13}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 2963
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_USER_LEAVING:Z

    if-eqz v3, :cond_15

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Overriding userLeaving to false next="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " lastResumed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2965
    :cond_15
    const/4 v0, 0x0

    .line 2967
    :cond_16
    if-eqz v2, :cond_17

    const-string v3, "resumeTopActivity"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_17

    move v3, v12

    goto :goto_4

    :cond_17
    move v3, v11

    :goto_4
    move v1, v3

    move v4, v0

    move/from16 v17, v1

    move-object v3, v2

    goto :goto_5

    .line 2974
    :cond_18
    move v4, v0

    move/from16 v17, v1

    move-object v3, v2

    .end local v0    # "userLeaving":Z
    .end local v1    # "lastResumedCanPip":Z
    .end local v2    # "lastResumed":Lcom/android/server/wm/ActivityRecord;
    .local v3, "lastResumed":Lcom/android/server/wm/ActivityRecord;
    .local v4, "userLeaving":Z
    .local v17, "lastResumedCanPip":Z
    :goto_5
    iget-object v0, v13, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_19

    if-nez v17, :cond_19

    move v0, v12

    goto :goto_6

    :cond_19
    move v0, v11

    :goto_6
    move/from16 v18, v0

    .line 2977
    .local v18, "resumeWhilePausing":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0, v4, v13, v11}, Lcom/android/server/wm/ActivityDisplay;->pauseBackStacks(ZLcom/android/server/wm/ActivityRecord;Z)Z

    move-result v0

    .line 2978
    .local v0, "pausing":Z
    iget-object v1, v7, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_1b

    .line 2979
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v1, :cond_1a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeTopActivityLocked: Pausing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2981
    :cond_1a
    invoke-virtual {v7, v4, v11, v13, v11}, Lcom/android/server/wm/ActivityStack;->startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;Z)Z

    move-result v1

    or-int/2addr v0, v1

    move/from16 v19, v0

    goto :goto_7

    .line 2978
    :cond_1b
    move/from16 v19, v0

    .line 2983
    .end local v0    # "pausing":Z
    .local v19, "pausing":Z
    :goto_7
    if-eqz v19, :cond_20

    if-nez v18, :cond_20

    .line 2984
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v0, :cond_1c

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_1d

    :cond_1c
    const-string v0, "resumeTopActivityLocked: Skip resume: need to start pausing"

    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2990
    :cond_1d
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2991
    iget-object v0, v13, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, v11, v12, v11}, Lcom/android/server/wm/WindowProcessController;->updateProcessInfo(ZZZ)V

    .line 2994
    :cond_1e
    if-eqz v3, :cond_1f

    .line 2995
    invoke-virtual {v3, v12}, Lcom/android/server/wm/ActivityRecord;->setWillCloseOrEnterPip(Z)V

    .line 2997
    :cond_1f
    return v12

    .line 2998
    :cond_20
    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, v13, :cond_22

    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v13, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2999
    invoke-virtual {v15}, Lcom/android/server/wm/ActivityDisplay;->allResumedActivitiesComplete()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 3005
    invoke-virtual {v7, v9}, Lcom/android/server/wm/ActivityStack;->executeAppTransition(Landroid/app/ActivityOptions;)V

    .line 3006
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resumeTopActivityLocked: Top activity resumed (dontWaitForPause) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3008
    :cond_21
    return v12

    .line 3012
    :cond_22
    sget-boolean v0, Lcom/android/server/wm/OpAppLockerInjector;->IS_APP_LOCKER_ENABLED:Z

    if-eqz v0, :cond_23

    invoke-static {v8, v13}, Lcom/android/server/wm/OpAppLockerInjector;->lockAppIfNeed(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 3013
    return v12

    .line 3019
    :cond_23
    iget-object v0, v13, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v1, v7, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    iget-object v2, v7, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v0, v1, v2}, Lcom/android/server/wm/OpWmInjector;->doUpdateProcessLaunchTimes(Ljava/lang/String;Landroid/os/Handler;Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 3024
    new-array v0, v12, [I

    const/16 v1, 0x72

    aput v1, v0, v11

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 3025
    iget-object v0, v13, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_27

    .line 3026
    iget-object v0, v13, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v1, v13, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 3027
    const-string v2, ""

    if-nez v8, :cond_24

    move-object v12, v2

    goto :goto_8

    :cond_24
    iget-object v12, v8, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 3028
    :goto_8
    if-eqz v8, :cond_26

    iget-object v11, v8, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-nez v11, :cond_25

    goto :goto_9

    :cond_25
    iget-object v2, v8, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 3026
    :cond_26
    :goto_9
    invoke-static {v0, v1, v12, v2}, Lcom/oneplus/android/server/OpMotorInjector;->notifyActivityChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3036
    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->shouldSleepActivities()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_29

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_29

    .line 3038
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no-history finish of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " on new resume"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3040
    :cond_28
    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v0, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v22, "resume-no-history"

    move-object/from16 v1, p0

    move-object/from16 v23, v3

    .end local v3    # "lastResumed":Lcom/android/server/wm/ActivityRecord;
    .local v23, "lastResumed":Lcom/android/server/wm/ActivityRecord;
    move v3, v0

    move/from16 v24, v4

    .end local v4    # "userLeaving":Z
    .local v24, "userLeaving":Z
    move-object v4, v11

    move-object v11, v5

    .end local v5    # "lastFocusedStack":Lcom/android/server/wm/ActivityStack;
    .local v11, "lastFocusedStack":Lcom/android/server/wm/ActivityStack;
    move-object/from16 v5, v22

    move-object v9, v6

    move v6, v12

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3042
    const/4 v1, 0x0

    iput-object v1, v7, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    goto :goto_a

    .line 3036
    .end local v11    # "lastFocusedStack":Lcom/android/server/wm/ActivityStack;
    .end local v23    # "lastResumed":Lcom/android/server/wm/ActivityRecord;
    .end local v24    # "userLeaving":Z
    .restart local v3    # "lastResumed":Lcom/android/server/wm/ActivityRecord;
    .restart local v4    # "userLeaving":Z
    .restart local v5    # "lastFocusedStack":Lcom/android/server/wm/ActivityStack;
    :cond_29
    move-object/from16 v23, v3

    move/from16 v24, v4

    move-object v11, v5

    move-object v9, v6

    const/4 v1, 0x0

    .line 3047
    .end local v3    # "lastResumed":Lcom/android/server/wm/ActivityRecord;
    .end local v4    # "userLeaving":Z
    .end local v5    # "lastFocusedStack":Lcom/android/server/wm/ActivityStack;
    .restart local v11    # "lastFocusedStack":Lcom/android/server/wm/ActivityStack;
    .restart local v23    # "lastResumed":Lcom/android/server/wm/ActivityRecord;
    .restart local v24    # "userLeaving":Z
    :goto_a
    iget-object v0, v13, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_2a

    .line 3048
    iget-object v0, v13, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v2, "--AM_RESUME_ACTIVITY--"

    invoke-static {v0, v2}, Lcom/android/server/am/OpBGFrozenInjector;->triggerResume(ILjava/lang/String;)V

    .line 3052
    :cond_2a
    if-eqz v8, :cond_2c

    if-eq v8, v13, :cond_2c

    iget-boolean v0, v13, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-eqz v0, :cond_2c

    .line 3062
    iget-boolean v0, v8, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const-string v2, ", nowVisible="

    if-eqz v0, :cond_2b

    .line 3063
    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 3064
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not waiting for visible to hide: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v13, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 3068
    :cond_2b
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Previous already visible but still waiting to hide: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v13, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3078
    :cond_2c
    :goto_b
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v2, v13, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget v3, v13, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    const/4 v4, 0x0

    invoke-interface {v0, v2, v4, v3}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    .line 3081
    :catch_0
    move-exception v0

    .line 3082
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed trying to unstop package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v13, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 3080
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 3084
    :goto_c
    nop

    .line 3089
    :goto_d
    const/4 v0, 0x1

    .line 3090
    .local v0, "anim":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v2

    iget-object v12, v2, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 3091
    .local v12, "dc":Lcom/android/server/wm/DisplayContent;
    iget-object v2, v7, Lcom/android/server/wm/ActivityStack;->mPerf:Landroid/util/BoostFramework;

    if-nez v2, :cond_2d

    .line 3092
    new-instance v2, Landroid/util/BoostFramework;

    invoke-direct {v2}, Landroid/util/BoostFramework;-><init>()V

    iput-object v2, v7, Lcom/android/server/wm/ActivityStack;->mPerf:Landroid/util/BoostFramework;

    .line 3094
    :cond_2d
    const/4 v2, 0x6

    if-eqz v8, :cond_3b

    .line 3095
    iget-boolean v3, v8, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const/16 v4, 0x1083

    if-eqz v3, :cond_33

    .line 3096
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v2, :cond_2e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Prepare close transition: prev="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3098
    :cond_2e
    iget-object v2, v7, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 3099
    const/4 v0, 0x0

    .line 3100
    const/4 v2, 0x0

    invoke-virtual {v12, v2, v2}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    goto :goto_10

    .line 3102
    :cond_2f
    iget-object v2, v7, Lcom/android/server/wm/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v5

    const/4 v6, 0x7

    const/16 v16, 0x9

    if-ne v3, v5, :cond_30

    .line 3103
    move v3, v6

    goto :goto_e

    .line 3104
    :cond_30
    move/from16 v3, v16

    :goto_e
    nop

    .line 3102
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 3105
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    if-eq v2, v3, :cond_31

    iget-object v2, v7, Lcom/android/server/wm/ActivityStack;->mPerf:Landroid/util/BoostFramework;

    if-eqz v2, :cond_31

    .line 3106
    iget-object v3, v13, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;)I

    .line 3108
    :cond_31
    nop

    .line 3109
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    if-ne v2, v3, :cond_32

    goto :goto_f

    .line 3110
    :cond_32
    move/from16 v6, v16

    :goto_f
    nop

    .line 3108
    const/4 v2, 0x0

    invoke-virtual {v12, v6, v2}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    .line 3112
    :goto_10
    invoke-virtual {v8, v2}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    move/from16 v16, v0

    goto/16 :goto_14

    .line 3114
    :cond_33
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v3, :cond_34

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Prepare open transition: prev="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3116
    :cond_34
    iget-object v3, v7, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 3117
    const/4 v0, 0x0

    .line 3118
    const/4 v2, 0x0

    invoke-virtual {v12, v2, v2}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    move/from16 v16, v0

    goto/16 :goto_14

    .line 3120
    :cond_35
    iget-object v3, v7, Lcom/android/server/wm/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v5

    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v6

    const/16 v16, 0x10

    const/16 v22, 0x8

    if-ne v5, v6, :cond_36

    .line 3121
    move v5, v2

    goto :goto_11

    .line 3122
    :cond_36
    iget-boolean v5, v13, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v5, :cond_37

    .line 3123
    move/from16 v5, v16

    goto :goto_11

    .line 3124
    :cond_37
    move/from16 v5, v22

    :goto_11
    nop

    .line 3120
    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 3125
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v5

    if-eq v3, v5, :cond_38

    iget-object v3, v7, Lcom/android/server/wm/ActivityStack;->mPerf:Landroid/util/BoostFramework;

    if-eqz v3, :cond_38

    .line 3126
    iget-object v5, v13, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;)I

    .line 3128
    :cond_38
    nop

    .line 3129
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v4

    if-ne v3, v4, :cond_39

    goto :goto_12

    .line 3130
    :cond_39
    iget-boolean v2, v13, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v2, :cond_3a

    move/from16 v2, v16

    goto :goto_12

    .line 3131
    :cond_3a
    move/from16 v2, v22

    :goto_12
    nop

    .line 3128
    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    goto :goto_13

    .line 3135
    :cond_3b
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v3, :cond_3c

    const-string v3, "Prepare open transition: no previous"

    invoke-static {v9, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3136
    :cond_3c
    iget-object v3, v7, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 3137
    const/4 v0, 0x0

    .line 3138
    const/4 v3, 0x0

    invoke-virtual {v12, v3, v3}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    move/from16 v16, v0

    goto :goto_14

    .line 3140
    :cond_3d
    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    .line 3144
    :goto_13
    move/from16 v16, v0

    .end local v0    # "anim":Z
    .local v16, "anim":Z
    :goto_14
    if-eqz v16, :cond_3e

    .line 3145
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->applyOptionsLocked()V

    goto :goto_15

    .line 3147
    :cond_3e
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->clearOptionsLocked()V

    .line 3150
    :goto_15
    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3152
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 3153
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_3f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resume running: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " stopped="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v13, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " visible="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v13, Lcom/android/server/wm/ActivityRecord;->visible:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3163
    :cond_3f
    if-eqz v11, :cond_41

    .line 3164
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityStack;->inMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_40

    iget-object v0, v11, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_41

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->fullscreen:Z

    if-nez v0, :cond_41

    :cond_40
    const/4 v0, 0x1

    goto :goto_16

    :cond_41
    const/4 v0, 0x0

    :goto_16
    move/from16 v22, v0

    .line 3169
    .local v22, "lastActivityTranslucent":Z
    iget-boolean v0, v13, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-eqz v0, :cond_42

    iget-boolean v0, v13, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    if-nez v0, :cond_42

    if-eqz v22, :cond_43

    .line 3170
    :cond_42
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 3174
    :cond_43
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->startLaunchTickingLocked()V

    .line 3177
    if-nez v11, :cond_44

    move-object v5, v1

    goto :goto_17

    :cond_44
    iget-object v5, v11, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    :goto_17
    move-object v6, v5

    .line 3178
    .local v6, "lastResumedActivity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v5

    .line 3180
    .local v5, "lastState":Lcom/android/server/wm/ActivityStack$ActivityState;
    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateCpuStats()V

    .line 3182
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_45

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Moving to RESUMED: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (in existing)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3185
    :cond_45
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v2, "resumeTopActivityInnerLocked"

    invoke-virtual {v13, v0, v2}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 3187
    iget-object v0, v13, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3, v3}, Lcom/android/server/wm/WindowProcessController;->updateProcessInfo(ZZZ)V

    .line 3189
    invoke-virtual {v7, v13}, Lcom/android/server/wm/ActivityStack;->updateLRUListLocked(Lcom/android/server/wm/ActivityRecord;)Z

    .line 3193
    const/4 v0, 0x1

    .line 3197
    .local v0, "notUpdated":Z
    invoke-virtual {v7, v13}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v20

    if-eqz v20, :cond_46

    .line 3206
    iget-object v1, v7, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    move/from16 v25, v0

    .end local v0    # "notUpdated":Z
    .local v25, "notUpdated":Z
    iget v0, v7, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    invoke-virtual {v1, v13, v0, v3, v4}, Lcom/android/server/wm/RootActivityContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;IZZ)Z

    move-result v0

    xor-int/2addr v0, v3

    move/from16 v25, v0

    .end local v25    # "notUpdated":Z
    .restart local v0    # "notUpdated":Z
    goto :goto_18

    .line 3197
    :cond_46
    move/from16 v25, v0

    .line 3210
    .end local v0    # "notUpdated":Z
    .restart local v25    # "notUpdated":Z
    :goto_18
    if-eqz v25, :cond_4d

    .line 3216
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3217
    .local v0, "nextNext":Lcom/android/server/wm/ActivityRecord;
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v1, :cond_47

    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v1, :cond_48

    :cond_47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity config changed during resume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", new next: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3220
    :cond_48
    if-eq v0, v13, :cond_49

    .line 3222
    iget-object v1, v7, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleResumeTopActivities()V

    .line 3224
    :cond_49
    iget-boolean v1, v13, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-eqz v1, :cond_4a

    iget-boolean v1, v13, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    if-eqz v1, :cond_4b

    .line 3225
    :cond_4a
    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 3227
    :cond_4b
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->completeResumeLocked()V

    .line 3230
    sget-boolean v1, Lcom/android/server/wm/ActivityStack;->IS_SUPPORT_COLOR_ADS:Z

    if-eqz v1, :cond_4c

    .line 3231
    invoke-static {v13}, Lcom/android/server/OPAppSwitchManagerServiceInjector;->handleActivityResumed(Lcom/android/server/wm/ActivityRecord;)V

    .line 3234
    :cond_4c
    const/4 v1, 0x1

    return v1

    .line 3238
    .end local v0    # "nextNext":Lcom/android/server/wm/ActivityRecord;
    :cond_4d
    :try_start_1
    iget-object v0, v13, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 3239
    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    iget-object v1, v13, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-static {v0, v1}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v0

    .line 3241
    .local v0, "transaction":Landroid/app/servertransaction/ClientTransaction;
    iget-object v1, v13, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 3242
    .local v1, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    if-eqz v1, :cond_50

    .line 3243
    :try_start_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3244
    .local v3, "N":I
    iget-boolean v4, v13, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v4, :cond_4f

    if-lez v3, :cond_4f

    .line 3245
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RESULTS:Z

    if-eqz v4, :cond_4e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v26, v3

    .end local v3    # "N":I
    .local v26, "N":I
    const-string v3, "Delivering results to "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .end local v26    # "N":I
    .restart local v3    # "N":I
    :cond_4e
    move/from16 v26, v3

    .line 3247
    .end local v3    # "N":I
    .restart local v26    # "N":I
    :goto_19
    invoke-static {v1}, Landroid/app/servertransaction/ActivityResultItem;->obtain(Ljava/util/List;)Landroid/app/servertransaction/ActivityResultItem;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1a

    .line 3244
    .end local v26    # "N":I
    .restart local v3    # "N":I
    :cond_4f
    move/from16 v26, v3

    .end local v3    # "N":I
    .restart local v26    # "N":I
    goto :goto_1a

    .line 3275
    .end local v0    # "transaction":Landroid/app/servertransaction/ClientTransaction;
    .end local v1    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    .end local v26    # "N":I
    :catch_2
    move-exception v0

    move-object/from16 v28, v5

    move-object v1, v6

    goto/16 :goto_1b

    .line 3251
    .restart local v0    # "transaction":Landroid/app/servertransaction/ClientTransaction;
    .restart local v1    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    :cond_50
    :goto_1a
    :try_start_3
    iget-object v3, v13, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    if-eqz v3, :cond_51

    .line 3252
    :try_start_4
    iget-object v3, v13, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 3253
    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/app/servertransaction/NewIntentItem;->obtain(Ljava/util/List;Z)Landroid/app/servertransaction/NewIntentItem;

    move-result-object v3

    .line 3252
    invoke-virtual {v0, v3}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 3258
    :cond_51
    :try_start_5
    iget-boolean v3, v13, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    invoke-virtual {v13, v3}, Lcom/android/server/wm/ActivityRecord;->notifyAppResumed(Z)V

    .line 3260
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget v3, v13, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v21, 0x0

    aput-object v3, v4, v21

    .line 3261
    invoke-static {v13}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v20, 0x1

    aput-object v3, v4, v20

    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    iget v3, v3, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v27, 0x2

    aput-object v3, v4, v27

    iget-object v3, v13, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const/16 v27, 0x3

    aput-object v3, v4, v27

    .line 3260
    const/16 v3, 0x7537

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3264
    const/4 v3, 0x0

    iput-boolean v3, v13, Lcom/android/server/wm/ActivityRecord;->sleeping:Z

    .line 3265
    iget-object v3, v7, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppWarningsLocked()Lcom/android/server/wm/AppWarnings;

    move-result-object v3

    invoke-virtual {v3, v13}, Lcom/android/server/wm/AppWarnings;->onResumeActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 3266
    iget-object v3, v13, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v4, v7, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mTopProcessState:I

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowProcessController;->setPendingUiCleanAndForceProcessStateUpTo(I)V

    .line 3267
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->clearOptionsLocked()V

    .line 3268
    iget-object v3, v13, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 3269
    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->getReportedProcState()I

    move-result v3

    .line 3270
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->isNextTransitionForward()Z

    move-result v4

    .line 3269
    invoke-static {v3, v4}, Landroid/app/servertransaction/ResumeActivityItem;->obtain(IZ)Landroid/app/servertransaction/ResumeActivityItem;

    move-result-object v3

    .line 3268
    invoke-virtual {v0, v3}, Landroid/app/servertransaction/ClientTransaction;->setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V

    .line 3271
    iget-object v3, v7, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 3273
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    if-eqz v3, :cond_52

    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resumeTopActivityLocked: Resumed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 3296
    .end local v0    # "transaction":Landroid/app/servertransaction/ClientTransaction;
    .end local v1    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    :cond_52
    nop

    .line 3301
    :try_start_7
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->completeResumeLocked()V

    .line 3304
    sget-boolean v0, Lcom/android/server/wm/ActivityStack;->IS_SUPPORT_COLOR_ADS:Z

    if-eqz v0, :cond_53

    .line 3305
    invoke-static {v13}, Lcom/android/server/OPAppSwitchManagerServiceInjector;->handleActivityResumed(Lcom/android/server/wm/ActivityRecord;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 3315
    :cond_53
    nop

    .line 3316
    .end local v5    # "lastState":Lcom/android/server/wm/ActivityStack$ActivityState;
    .end local v6    # "lastResumedActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v22    # "lastActivityTranslucent":Z
    .end local v25    # "notUpdated":Z
    const/4 v1, 0x1

    goto/16 :goto_1f

    .line 3308
    .restart local v5    # "lastState":Lcom/android/server/wm/ActivityStack$ActivityState;
    .restart local v6    # "lastResumedActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v22    # "lastActivityTranslucent":Z
    .restart local v25    # "notUpdated":Z
    :catch_3
    move-exception v0

    .line 3311
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception thrown during resume of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3312
    iget-object v2, v13, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x1

    const-string v10, "resume-exception"

    move-object/from16 v1, p0

    move-object/from16 v28, v5

    .end local v5    # "lastState":Lcom/android/server/wm/ActivityStack$ActivityState;
    .local v28, "lastState":Lcom/android/server/wm/ActivityStack$ActivityState;
    move-object v5, v10

    move-object v10, v6

    .end local v6    # "lastResumedActivity":Lcom/android/server/wm/ActivityRecord;
    .local v10, "lastResumedActivity":Lcom/android/server/wm/ActivityRecord;
    move v6, v9

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3314
    const/4 v1, 0x1

    return v1

    .line 3275
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v10    # "lastResumedActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v28    # "lastState":Lcom/android/server/wm/ActivityStack$ActivityState;
    .restart local v5    # "lastState":Lcom/android/server/wm/ActivityStack$ActivityState;
    .restart local v6    # "lastResumedActivity":Lcom/android/server/wm/ActivityRecord;
    :catch_4
    move-exception v0

    move-object/from16 v28, v5

    move-object v1, v6

    .line 3277
    .end local v5    # "lastState":Lcom/android/server/wm/ActivityStack$ActivityState;
    .end local v6    # "lastResumedActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v0    # "e":Ljava/lang/Exception;
    .local v1, "lastResumedActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v28    # "lastState":Lcom/android/server/wm/ActivityStack$ActivityState;
    :goto_1b
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v3, :cond_54

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resume failed; resetting state to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v28

    .end local v28    # "lastState":Lcom/android/server/wm/ActivityStack$ActivityState;
    .local v4, "lastState":Lcom/android/server/wm/ActivityStack$ActivityState;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .end local v4    # "lastState":Lcom/android/server/wm/ActivityStack$ActivityState;
    .restart local v28    # "lastState":Lcom/android/server/wm/ActivityStack$ActivityState;
    :cond_54
    move-object/from16 v4, v28

    .line 3279
    .end local v28    # "lastState":Lcom/android/server/wm/ActivityStack$ActivityState;
    .restart local v4    # "lastState":Lcom/android/server/wm/ActivityStack$ActivityState;
    :goto_1c
    invoke-virtual {v13, v4, v2}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 3282
    if-eqz v1, :cond_55

    .line 3283
    sget-object v3, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v1, v3, v2}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 3286
    :cond_55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restarting because process died: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3287
    iget-boolean v2, v13, Lcom/android/server/wm/ActivityRecord;->hasBeenLaunched:Z

    if-nez v2, :cond_56

    .line 3288
    const/4 v2, 0x1

    iput-boolean v2, v13, Lcom/android/server/wm/ActivityRecord;->hasBeenLaunched:Z

    const/4 v3, 0x0

    goto :goto_1d

    .line 3289
    :cond_56
    if-eqz v11, :cond_58

    .line 3290
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityStack;->isTopStackOnDisplay()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 3291
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v13, v2, v3, v3}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZ)V

    goto :goto_1d

    .line 3290
    :cond_57
    const/4 v3, 0x0

    goto :goto_1d

    .line 3289
    :cond_58
    const/4 v3, 0x0

    .line 3294
    :goto_1d
    iget-object v2, v7, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v5, 0x1

    invoke-virtual {v2, v13, v5, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->startSpecificActivityLocked(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 3295
    return v5

    .line 3318
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "lastResumedActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v4    # "lastState":Lcom/android/server/wm/ActivityStack$ActivityState;
    .end local v22    # "lastActivityTranslucent":Z
    .end local v25    # "notUpdated":Z
    :cond_59
    const/4 v3, 0x0

    const/4 v5, 0x1

    iget-boolean v0, v13, Lcom/android/server/wm/ActivityRecord;->hasBeenLaunched:Z

    if-nez v0, :cond_5a

    .line 3319
    iput-boolean v5, v13, Lcom/android/server/wm/ActivityRecord;->hasBeenLaunched:Z

    goto :goto_1e

    .line 3322
    :cond_5a
    const/4 v1, 0x0

    invoke-virtual {v13, v1, v3, v3}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 3325
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_5b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Restarting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3327
    :cond_5b
    :goto_1e
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_5c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resumeTopActivityLocked: Restarting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3330
    :cond_5c
    sget-boolean v0, Lcom/android/server/wm/ActivityStack;->IS_SUPPORT_COLOR_ADS:Z

    if-eqz v0, :cond_5d

    .line 3331
    invoke-static {v13}, Lcom/android/server/OPAppSwitchManagerServiceInjector;->handleActivityResumed(Lcom/android/server/wm/ActivityRecord;)V

    .line 3334
    :cond_5d
    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v1, 0x1

    invoke-virtual {v0, v13, v1, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->startSpecificActivityLocked(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 3336
    :goto_1f
    return v1
.end method

.method private returnsToHomeStack()Z
    .locals 2

    .line 1340
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inMultiWindowMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    .line 1341
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    .line 1342
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->returnsToHomeStack()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 1340
    :goto_0
    return v1
.end method

.method private schedulePauseTimeout(Lcom/android/server/wm/ActivityRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1757
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1758
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1759
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/server/wm/ActivityRecord;->pauseTime:J

    .line 1760
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1761
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v1, :cond_0

    const-string v1, "ActivityTaskManager"

    const-string v2, "Waiting for pause to complete..."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    :cond_0
    return-void
.end method

.method private setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 2825
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, p1, :cond_0

    .line 2826
    return-void

    .line 2829
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setResumedActivity stack:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " + from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2831
    :cond_1
    iput-object p1, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2832
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->updateTopResumedActivityIfNeeded()V

    .line 2833
    return-void
.end method

.method private setWindowingModeInSurfaceTransaction(IZZZZZ)V
    .locals 23
    .param p1, "preferredWindowingMode"    # I
    .param p2, "animate"    # Z
    .param p3, "showRecents"    # Z
    .param p4, "enteringSplitScreenMode"    # Z
    .param p5, "deferEnsuringVisibility"    # Z
    .param p6, "creating"    # Z

    .line 796
    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v3

    .line 797
    .local v3, "currentMode":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideWindowingMode()I

    move-result v4

    .line 798
    .local v4, "currentOverrideMode":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v5

    .line 799
    .local v5, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->topTask()Lcom/android/server/wm/TaskRecord;

    move-result-object v6

    .line 800
    .local v6, "topTask":Lcom/android/server/wm/TaskRecord;
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v7

    .line 801
    .local v7, "splitScreenStack":Lcom/android/server/wm/ActivityStack;
    move/from16 v0, p1

    .line 802
    .local v0, "windowingMode":I
    if-nez v2, :cond_0

    .line 803
    invoke-static {v3}, Lcom/android/server/wm/ActivityStack;->isTransientWindowingMode(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 805
    iget v0, v1, Lcom/android/server/wm/ActivityStack;->mRestoreOverrideWindowingMode:I

    .line 807
    :cond_0
    iget-object v8, v1, Lcom/android/server/wm/ActivityStack;->mTmpOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v8, v0}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 811
    const/4 v8, 0x0

    if-nez p6, :cond_1

    .line 812
    nop

    .line 813
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result v9

    .line 812
    invoke-virtual {v5, v0, v8, v6, v9}, Lcom/android/server/wm/ActivityDisplay;->validateWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;I)I

    move-result v0

    .line 815
    :cond_1
    const/4 v9, 0x4

    if-ne v7, v1, :cond_2

    if-ne v0, v9, :cond_2

    .line 819
    iget v0, v1, Lcom/android/server/wm/ActivityStack;->mRestoreOverrideWindowingMode:I

    move v10, v0

    goto :goto_0

    .line 822
    :cond_2
    move v10, v0

    .end local v0    # "windowingMode":I
    .local v10, "windowingMode":I
    :goto_0
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityDisplay;->hasSplitScreenPrimaryStack()Z

    move-result v11

    .line 826
    .local v11, "alreadyInSplitScreenMode":Z
    xor-int/lit8 v0, p4, 0x1

    move v12, v0

    .line 828
    .local v12, "sendNonResizeableNotification":Z
    const/4 v13, 0x3

    const/4 v14, 0x1

    if-eqz v11, :cond_7

    if-ne v10, v14, :cond_7

    if-eqz v12, :cond_7

    .line 829
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeStandardOrUndefined()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 830
    if-eq v2, v13, :cond_4

    if-ne v2, v9, :cond_3

    goto :goto_1

    :cond_3
    const/4 v15, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    move v15, v14

    .line 833
    .local v15, "preferredSplitScreen":Z
    :goto_2
    if-nez v15, :cond_5

    if-eqz p6, :cond_7

    .line 837
    :cond_5
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityDismissingDockedStack()V

    .line 838
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 839
    .local v0, "primarySplitStack":Lcom/android/server/wm/ActivityStack;
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    .line 842
    if-ne v0, v1, :cond_6

    move/from16 v22, p6

    goto :goto_3

    :cond_6
    const/16 v22, 0x0

    .line 839
    :goto_3
    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v22}, Lcom/android/server/wm/ActivityStack;->setWindowingModeInSurfaceTransaction(IZZZZZ)V

    .line 846
    .end local v0    # "primarySplitStack":Lcom/android/server/wm/ActivityStack;
    .end local v15    # "preferredSplitScreen":Z
    :cond_7
    if-ne v3, v10, :cond_8

    .line 850
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, v10}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 851
    return-void

    .line 854
    :cond_8
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v15, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 855
    .local v15, "wm":Lcom/android/server/wm/WindowManagerService;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    .line 860
    .local v8, "topActivity":Lcom/android/server/wm/ActivityRecord;
    move/from16 v16, v10

    .line 861
    .local v16, "likelyResolvedMode":I
    if-nez v10, :cond_a

    .line 862
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v17

    .line 863
    .local v17, "parent":Lcom/android/server/wm/ConfigurationContainer;
    if-eqz v17, :cond_9

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v18

    goto :goto_4

    .line 864
    :cond_9
    move/from16 v18, v14

    :goto_4
    move/from16 v16, v18

    move/from16 v9, v16

    goto :goto_5

    .line 861
    .end local v17    # "parent":Lcom/android/server/wm/ConfigurationContainer;
    :cond_a
    move/from16 v9, v16

    .line 866
    .end local v16    # "likelyResolvedMode":I
    .local v9, "likelyResolvedMode":I
    :goto_5
    if-eqz v12, :cond_b

    if-eq v9, v14, :cond_b

    if-eqz v8, :cond_b

    .line 867
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->isNonResizableOrForcedResizable()Z

    move-result v16

    if-eqz v16, :cond_b

    iget-boolean v0, v8, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    if-nez v0, :cond_b

    .line 871
    iget-object v0, v8, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 872
    .local v0, "packageName":Ljava/lang/String;
    iget-object v13, v1, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v13}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v13

    iget v2, v6, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-virtual {v13, v2, v14, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityForcedResizable(IILjava/lang/String;)V

    .line 876
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_b
    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 878
    const-string v2, "setWindowingMode"

    if-nez p2, :cond_c

    if-eqz v8, :cond_c

    .line 879
    :try_start_0
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    .line 933
    :catchall_0
    move-exception v0

    move-object/from16 v19, v6

    goto/16 :goto_a

    .line 881
    :cond_c
    :goto_6
    :try_start_1
    invoke-super {v1, v10}, Lcom/android/server/wm/ConfigurationContainer;->setWindowingMode(I)V

    .line 884
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move v10, v0

    .line 886
    if-eqz p6, :cond_e

    .line 933
    if-eqz p3, :cond_d

    if-nez v11, :cond_d

    iget v0, v1, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    if-nez v0, :cond_d

    const/4 v13, 0x3

    if-ne v10, v13, :cond_d

    .line 948
    move-object/from16 v19, v6

    const/4 v6, 0x4

    .end local v6    # "topTask":Lcom/android/server/wm/TaskRecord;
    .local v19, "topTask":Lcom/android/server/wm/TaskRecord;
    invoke-virtual {v5, v6, v13, v14}, Lcom/android/server/wm/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 951
    .local v0, "recentStack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 953
    iget-object v2, v1, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->showRecentApps()V

    goto :goto_7

    .line 933
    .end local v0    # "recentStack":Lcom/android/server/wm/ActivityStack;
    .end local v19    # "topTask":Lcom/android/server/wm/TaskRecord;
    .restart local v6    # "topTask":Lcom/android/server/wm/TaskRecord;
    :cond_d
    move-object/from16 v19, v6

    .line 955
    .end local v6    # "topTask":Lcom/android/server/wm/TaskRecord;
    .restart local v19    # "topTask":Lcom/android/server/wm/TaskRecord;
    :goto_7
    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 888
    return-void

    .line 891
    .end local v19    # "topTask":Lcom/android/server/wm/TaskRecord;
    .restart local v6    # "topTask":Lcom/android/server/wm/TaskRecord;
    :cond_e
    move-object/from16 v19, v6

    .end local v6    # "topTask":Lcom/android/server/wm/TaskRecord;
    .restart local v19    # "topTask":Lcom/android/server/wm/TaskRecord;
    const/4 v0, 0x2

    if-eq v10, v0, :cond_18

    if-eq v3, v0, :cond_18

    .line 899
    const/4 v6, 0x3

    if-ne v10, v6, :cond_10

    if-nez v7, :cond_f

    goto :goto_8

    .line 903
    :cond_f
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v6, "Setting primary split-screen windowing mode while there is already one isn\'t currently supported"

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "currentMode":I
    .end local v4    # "currentOverrideMode":I
    .end local v5    # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v7    # "splitScreenStack":Lcom/android/server/wm/ActivityStack;
    .end local v8    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v9    # "likelyResolvedMode":I
    .end local v10    # "windowingMode":I
    .end local v11    # "alreadyInSplitScreenMode":Z
    .end local v12    # "sendNonResizeableNotification":Z
    .end local v15    # "wm":Lcom/android/server/wm/WindowManagerService;
    .end local v19    # "topTask":Lcom/android/server/wm/TaskRecord;
    .end local p0    # "this":Lcom/android/server/wm/ActivityStack;
    .end local p1    # "preferredWindowingMode":I
    .end local p2    # "animate":Z
    .end local p3    # "showRecents":Z
    .end local p4    # "enteringSplitScreenMode":Z
    .end local p5    # "deferEnsuringVisibility":Z
    .end local p6    # "creating":Z
    throw v0

    .line 907
    .restart local v3    # "currentMode":I
    .restart local v4    # "currentOverrideMode":I
    .restart local v5    # "display":Lcom/android/server/wm/ActivityDisplay;
    .restart local v7    # "splitScreenStack":Lcom/android/server/wm/ActivityStack;
    .restart local v8    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v9    # "likelyResolvedMode":I
    .restart local v10    # "windowingMode":I
    .restart local v11    # "alreadyInSplitScreenMode":Z
    .restart local v12    # "sendNonResizeableNotification":Z
    .restart local v15    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v19    # "topTask":Lcom/android/server/wm/TaskRecord;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityStack;
    .restart local p1    # "preferredWindowingMode":I
    .restart local p2    # "animate":Z
    .restart local p3    # "showRecents":Z
    .restart local p4    # "enteringSplitScreenMode":Z
    .restart local p5    # "deferEnsuringVisibility":Z
    .restart local p6    # "creating":Z
    :cond_10
    :goto_8
    invoke-static {v10}, Lcom/android/server/wm/ActivityStack;->isTransientWindowingMode(I)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {v3}, Lcom/android/server/wm/ActivityStack;->isTransientWindowingMode(I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 908
    iput v4, v1, Lcom/android/server/wm/ActivityStack;->mRestoreOverrideWindowingMode:I

    .line 911
    :cond_11
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 912
    if-eq v10, v14, :cond_13

    .line 913
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->matchParentBounds()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 914
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_9

    .line 916
    :cond_12
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    iget-object v6, v1, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0, v6}, Lcom/android/server/wm/TaskStack;->getRawBounds(Landroid/graphics/Rect;)V

    .line 927
    :cond_13
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v6, v1, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-static {v0, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x5

    if-ne v3, v0, :cond_15

    .line 930
    :cond_14
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6, v6}, Lcom/android/server/wm/ActivityStack;->resize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 933
    :cond_15
    if-eqz p3, :cond_16

    if-nez v11, :cond_16

    iget v6, v1, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    if-nez v6, :cond_16

    const/4 v6, 0x3

    if-ne v10, v6, :cond_16

    .line 948
    const/4 v13, 0x4

    invoke-virtual {v5, v13, v6, v14}, Lcom/android/server/wm/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/wm/ActivityStack;

    move-result-object v6

    .line 951
    .local v6, "recentStack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v6, v2}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 953
    iget-object v2, v1, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->showRecentApps()V

    .line 955
    .end local v6    # "recentStack":Lcom/android/server/wm/ActivityStack;
    :cond_16
    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 956
    nop

    .line 958
    if-nez p5, :cond_17

    .line 959
    iget-object v2, v1, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v0, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v0, v14}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 960
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 962
    :cond_17
    return-void

    .line 895
    :cond_18
    :try_start_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v6, "Changing pinned windowing mode not currently supported"

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "currentMode":I
    .end local v4    # "currentOverrideMode":I
    .end local v5    # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v7    # "splitScreenStack":Lcom/android/server/wm/ActivityStack;
    .end local v8    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v9    # "likelyResolvedMode":I
    .end local v10    # "windowingMode":I
    .end local v11    # "alreadyInSplitScreenMode":Z
    .end local v12    # "sendNonResizeableNotification":Z
    .end local v15    # "wm":Lcom/android/server/wm/WindowManagerService;
    .end local v19    # "topTask":Lcom/android/server/wm/TaskRecord;
    .end local p0    # "this":Lcom/android/server/wm/ActivityStack;
    .end local p1    # "preferredWindowingMode":I
    .end local p2    # "animate":Z
    .end local p3    # "showRecents":Z
    .end local p4    # "enteringSplitScreenMode":Z
    .end local p5    # "deferEnsuringVisibility":Z
    .end local p6    # "creating":Z
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 933
    .restart local v3    # "currentMode":I
    .restart local v4    # "currentOverrideMode":I
    .restart local v5    # "display":Lcom/android/server/wm/ActivityDisplay;
    .restart local v7    # "splitScreenStack":Lcom/android/server/wm/ActivityStack;
    .restart local v8    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v9    # "likelyResolvedMode":I
    .restart local v10    # "windowingMode":I
    .restart local v11    # "alreadyInSplitScreenMode":Z
    .restart local v12    # "sendNonResizeableNotification":Z
    .restart local v15    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v19    # "topTask":Lcom/android/server/wm/TaskRecord;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityStack;
    .restart local p1    # "preferredWindowingMode":I
    .restart local p2    # "animate":Z
    .restart local p3    # "showRecents":Z
    .restart local p4    # "enteringSplitScreenMode":Z
    .restart local p5    # "deferEnsuringVisibility":Z
    .restart local p6    # "creating":Z
    :catchall_1
    move-exception v0

    goto :goto_a

    .end local v19    # "topTask":Lcom/android/server/wm/TaskRecord;
    .local v6, "topTask":Lcom/android/server/wm/TaskRecord;
    :catchall_2
    move-exception v0

    move-object/from16 v19, v6

    .end local v6    # "topTask":Lcom/android/server/wm/TaskRecord;
    .restart local v19    # "topTask":Lcom/android/server/wm/TaskRecord;
    :goto_a
    if-eqz p3, :cond_19

    if-nez v11, :cond_19

    iget v6, v1, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    if-nez v6, :cond_19

    const/4 v6, 0x3

    if-ne v10, v6, :cond_19

    .line 948
    const/4 v13, 0x4

    invoke-virtual {v5, v13, v6, v14}, Lcom/android/server/wm/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/wm/ActivityStack;

    move-result-object v6

    .line 951
    .local v6, "recentStack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v6, v2}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 953
    iget-object v2, v1, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->showRecentApps()V

    .line 955
    .end local v6    # "recentStack":Lcom/android/server/wm/ActivityStack;
    :cond_19
    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method private skipResizeAnimation(Z)Z
    .locals 4
    .param p1, "toFullscreen"    # Z

    .line 6056
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 6057
    return v0

    .line 6059
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 6060
    .local v1, "parentConfig":Landroid/content/res/Configuration;
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->topRunningNonOverlayTaskActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 6061
    .local v2, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityRecord;->isConfigurationCompatible(Landroid/content/res/Configuration;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private updateBehindFullscreen(ZZLcom/android/server/wm/ActivityRecord;)Z
    .locals 2
    .param p1, "stackInvisible"    # Z
    .param p2, "behindFullscreenActivity"    # Z
    .param p3, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2675
    iget-boolean v0, p3, Lcom/android/server/wm/ActivityRecord;->fullscreen:Z

    if-eqz v0, :cond_1

    .line 2676
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fullscreen: at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " stackInvisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " behindFullscreenActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2680
    :cond_0
    const/4 p2, 0x1

    .line 2682
    :cond_1
    return p2
.end method

.method private updateTaskMovement(Lcom/android/server/wm/TaskRecord;Z)V
    .locals 4
    .param p1, "task"    # Lcom/android/server/wm/TaskRecord;
    .param p2, "toFront"    # Z

    .line 5239
    iget-boolean v0, p1, Lcom/android/server/wm/TaskRecord;->isPersistable:Z

    if-eqz v0, :cond_0

    .line 5240
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/wm/TaskRecord;->mLastTimeMoved:J

    .line 5244
    if-nez p2, :cond_0

    .line 5245
    iget-wide v0, p1, Lcom/android/server/wm/TaskRecord;->mLastTimeMoved:J

    const-wide/16 v2, -0x1

    mul-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/server/wm/TaskRecord;->mLastTimeMoved:J

    .line 5248
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->invalidateTaskLayers()V

    .line 5249
    return-void
.end method

.method private updateTransitLocked(ILandroid/app/ActivityOptions;)V
    .locals 2
    .param p1, "transit"    # I
    .param p2, "options"    # Landroid/app/ActivityOptions;

    .line 5227
    if-eqz p2, :cond_1

    .line 5228
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 5229
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5230
    invoke-virtual {v0, p2}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    goto :goto_0

    .line 5232
    :cond_0
    invoke-static {p2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 5235
    .end local v0    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    .line 5236
    return-void
.end method


# virtual methods
.method final activityDestroyedLocked(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "reason"    # Ljava/lang/String;

    .line 5066
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5068
    .local v0, "origId":J
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/android/server/wm/ActivityStack;->activityDestroyedLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5070
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5071
    nop

    .line 5072
    return-void

    .line 5070
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method final activityDestroyedLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    .locals 2
    .param p1, "record"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 5079
    if-eqz p1, :cond_0

    .line 5080
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 5083
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONTAINERS:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "activityDestroyedLocked: r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5085
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStack;->isInStackLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5086
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5087
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wm/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 5088
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 5092
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 5093
    return-void
.end method

.method final activityPausedLocked(Landroid/os/IBinder;Z)V
    .locals 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "timeout"    # Z

    .line 1912
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    const-string v1, "ActivityTaskManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity paused: token="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", timeout="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1917
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    .line 1918
    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x65

    invoke-virtual {v4, v5, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1919
    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v5, 0x1

    if-ne v4, v0, :cond_3

    .line 1920
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Moving to PAUSED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1921
    if-eqz p2, :cond_1

    const-string v4, " (due to timeout)"

    goto :goto_0

    :cond_1
    const-string v4, " (pause complete)"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1920
    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 1924
    :try_start_0
    invoke-direct {p0, v5, v2}, Lcom/android/server/wm/ActivityStack;->completePauseLocked(ZLcom/android/server/wm/ActivityRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1926
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 1927
    nop

    .line 1928
    return-void

    .line 1926
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v1

    .line 1930
    :cond_3
    const/16 v4, 0x753c

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 1931
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    iget-object v5, v0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v5, v6, v7

    const/4 v5, 0x3

    .line 1932
    iget-object v8, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v8, :cond_4

    .line 1933
    iget-object v8, v8, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v8, "(none)"

    :goto_1
    aput-object v8, v6, v5

    .line 1930
    invoke-static {v4, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1934
    sget-object v4, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1935
    sget-object v4, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v5, "activityPausedLocked"

    invoke-virtual {v0, v4, v5}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 1936
    iget-boolean v4, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_6

    .line 1937
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Executing finish of failed to pause activity: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    :cond_5
    invoke-virtual {p0, v0, v7, v3, v5}, Lcom/android/server/wm/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/wm/ActivityRecord;IZLjava/lang/String;)Lcom/android/server/wm/ActivityRecord;

    .line 1945
    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1, v2, v3, v3}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 1946
    return-void
.end method

.method addStartingWindowsForVisibleActivities(Z)V
    .locals 2
    .param p1, "taskSwitch"    # Z

    .line 2473
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2474
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/TaskRecord;->addStartingWindowsForVisibleActivities(Z)V

    .line 2473
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2476
    .end local v0    # "taskNdx":I
    :cond_0
    return-void
.end method

.method addTask(Lcom/android/server/wm/TaskRecord;IZLjava/lang/String;)V
    .locals 3
    .param p1, "task"    # Lcom/android/server/wm/TaskRecord;
    .param p2, "position"    # I
    .param p3, "schedulePictureInPictureModeChange"    # Z
    .param p4, "reason"    # Ljava/lang/String;

    .line 5907
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5908
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isSingleTaskInstance()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5909
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can only have one child on stack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5912
    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/ActivityStack;->getAdjustedPositionForTask(Lcom/android/server/wm/TaskRecord;ILcom/android/server/wm/ActivityRecord;)I

    move-result p2

    .line 5913
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 5914
    .local v0, "toTop":Z
    :goto_1
    invoke-direct {p0, p1, p4, v0}, Lcom/android/server/wm/ActivityStack;->preAddTask(Lcom/android/server/wm/TaskRecord;Ljava/lang/String;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 5916
    .local v1, "prevStack":Lcom/android/server/wm/ActivityStack;
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5917
    invoke-virtual {p1, p0}, Lcom/android/server/wm/TaskRecord;->setStack(Lcom/android/server/wm/ActivityStack;)V

    .line 5919
    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/ActivityStack;->updateTaskMovement(Lcom/android/server/wm/TaskRecord;Z)V

    .line 5921
    invoke-direct {p0, p1, v1, p3}, Lcom/android/server/wm/ActivityStack;->postAddTask(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityStack;Z)V

    .line 5922
    return-void
.end method

.method addTask(Lcom/android/server/wm/TaskRecord;ZLjava/lang/String;)V
    .locals 2
    .param p1, "task"    # Lcom/android/server/wm/TaskRecord;
    .param p2, "toTop"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .line 5895
    if-eqz p2, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/android/server/wm/ActivityStack;->addTask(Lcom/android/server/wm/TaskRecord;IZLjava/lang/String;)V

    .line 5896
    if-eqz p2, :cond_1

    .line 5898
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStack;->positionChildWindowContainerAtTop(Lcom/android/server/wm/TaskRecord;)V

    .line 5900
    :cond_1
    return-void
.end method

.method adjustFocusToNextFocusableStack(Ljava/lang/String;)Lcom/android/server/wm/ActivityStack;
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .line 4015
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/ActivityStack;->adjustFocusToNextFocusableStack(Ljava/lang/String;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method affectedBySplitScreenResize()Z
    .locals 3

    .line 2502
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->supportsSplitScreenWindowingMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2503
    return v1

    .line 2505
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    .line 2506
    .local v0, "windowingMode":I
    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method animateResizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)V
    .locals 3
    .param p1, "sourceHintBounds"    # Landroid/graphics/Rect;
    .param p2, "toBounds"    # Landroid/graphics/Rect;
    .param p3, "animationDuration"    # I
    .param p4, "fromFullscreen"    # Z

    .line 6032
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 6033
    :cond_0
    const/4 v0, 0x1

    if-nez p2, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/server/wm/ActivityStack;->skipResizeAnimation(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6034
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v2, p0, Lcom/android/server/wm/ActivityStack;->mStackId:I

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->moveTasksToFullscreenStack(IZ)V

    goto :goto_1

    .line 6036
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 6037
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    invoke-virtual {v0, p2, p1, p3, p4}, Lcom/android/server/wm/TaskStack;->animateResizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)V

    .line 6040
    :goto_1
    return-void
.end method

.method awakeFromSleepingLocked()V
    .locals 6

    .line 1638
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "taskNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1639
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskRecord;

    iget-object v2, v2, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1640
    .local v2, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    .local v3, "activityNdx":I
    :goto_1
    if-ltz v3, :cond_0

    .line 1641
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityRecord;->setSleeping(Z)V

    .line 1640
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1638
    .end local v2    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v3    # "activityNdx":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1644
    .end local v0    # "taskNdx":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_2

    .line 1645
    const-string v0, "ActivityTaskManager"

    const-string v2, "awakeFromSleepingLocked: previously pausing activity didn\'t pause"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityStack;->activityPausedLocked(Landroid/os/IBinder;Z)V

    .line 1648
    :cond_2
    return-void
.end method

.method canShowWithInsecureKeyguard()Z
    .locals 4

    .line 2566
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 2567
    .local v0, "activityDisplay":Lcom/android/server/wm/ActivityDisplay;
    if-eqz v0, :cond_1

    .line 2572
    iget-object v1, v0, Lcom/android/server/wm/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getFlags()I

    move-result v1

    .line 2573
    .local v1, "flags":I
    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 2568
    .end local v1    # "flags":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stack is not attached to any display, stackId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/ActivityStack;->mStackId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method cancelInitializingActivities()V
    .locals 8

    .line 2740
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2741
    .local v0, "topActivity":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x1

    .line 2744
    .local v1, "aboveTop":Z
    const/4 v2, 0x0

    .line 2746
    .local v2, "behindFullscreenActivity":Z
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2749
    const/4 v1, 0x0

    .line 2750
    const/4 v2, 0x1

    .line 2753
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "taskNdx":I
    :goto_0
    if-ltz v3, :cond_4

    .line 2754
    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskRecord;

    iget-object v4, v4, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 2755
    .local v4, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "activityNdx":I
    :goto_1
    if-ltz v5, :cond_3

    .line 2756
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ActivityRecord;

    .line 2757
    .local v6, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_2

    .line 2758
    if-ne v6, v0, :cond_1

    .line 2759
    const/4 v1, 0x0

    .line 2761
    :cond_1
    iget-boolean v7, v6, Lcom/android/server/wm/ActivityRecord;->fullscreen:Z

    or-int/2addr v2, v7

    .line 2762
    goto :goto_2

    .line 2765
    :cond_2
    invoke-virtual {v6, v2}, Lcom/android/server/wm/ActivityRecord;->removeOrphanedStartingWindow(Z)V

    .line 2766
    iget-boolean v7, v6, Lcom/android/server/wm/ActivityRecord;->fullscreen:Z

    or-int/2addr v2, v7

    .line 2755
    .end local v6    # "r":Lcom/android/server/wm/ActivityRecord;
    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 2753
    .end local v4    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v5    # "activityNdx":I
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 2769
    .end local v3    # "taskNdx":I
    :cond_4
    return-void
.end method

.method checkKeyguardVisibility(Lcom/android/server/wm/ActivityRecord;ZZ)Z
    .locals 8
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "shouldBeVisible"    # Z
    .param p3, "isTop"    # Z

    .line 2524
    iget v0, p0, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2525
    .local v0, "displayId":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v2

    .line 2526
    invoke-virtual {v2, v0}, Lcom/android/server/wm/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v2

    .line 2527
    .local v2, "keyguardOrAodShowing":Z
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked()Z

    move-result v3

    .line 2528
    .local v3, "keyguardLocked":Z
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v4

    .line 2529
    .local v4, "showWhenLocked":Z
    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    .line 2530
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->containsDismissKeyguardWindow()Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v6

    goto :goto_1

    :cond_1
    move v5, v1

    .line 2531
    .local v5, "dismissKeyguard":Z
    :goto_1
    if-eqz p2, :cond_5

    .line 2532
    if-eqz v5, :cond_2

    iget-object v7, p0, Lcom/android/server/wm/ActivityStack;->mTopDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    if-nez v7, :cond_2

    .line 2533
    iput-object p1, p0, Lcom/android/server/wm/ActivityStack;->mTopDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2538
    :cond_2
    if-eqz p3, :cond_3

    .line 2539
    iget-boolean v7, p0, Lcom/android/server/wm/ActivityStack;->mTopActivityOccludesKeyguard:Z

    or-int/2addr v7, v4

    iput-boolean v7, p0, Lcom/android/server/wm/ActivityStack;->mTopActivityOccludesKeyguard:Z

    .line 2542
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->canShowWithInsecureKeyguard()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 2543
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/KeyguardController;->canDismissKeyguard()Z

    move-result v7

    if-eqz v7, :cond_4

    move v7, v6

    goto :goto_2

    :cond_4
    move v7, v1

    .line 2544
    .local v7, "canShowWithKeyguard":Z
    :goto_2
    if-eqz v7, :cond_5

    .line 2545
    return v6

    .line 2548
    .end local v7    # "canShowWithKeyguard":Z
    :cond_5
    if-eqz v2, :cond_7

    .line 2551
    if-eqz p2, :cond_6

    iget-object v7, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v7

    .line 2552
    invoke-virtual {v7, p1, v5}, Lcom/android/server/wm/KeyguardController;->canShowActivityWhileKeyguardShowing(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result v7

    if-eqz v7, :cond_6

    move v1, v6

    goto :goto_3

    :cond_6
    nop

    .line 2551
    :goto_3
    return v1

    .line 2553
    :cond_7
    if-eqz v3, :cond_9

    .line 2554
    if-eqz p2, :cond_8

    iget-object v7, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v7

    invoke-virtual {v7, v5, v4}, Lcom/android/server/wm/KeyguardController;->canShowWhileOccluded(ZZ)Z

    move-result v7

    if-eqz v7, :cond_8

    move v1, v6

    :cond_8
    return v1

    .line 2557
    :cond_9
    return p2
.end method

.method checkReadyForSleep()V
    .locals 2

    .line 1667
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->shouldSleepActivities()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->goToSleepIfPossible(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1668
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->checkReadyForSleepLocked(Z)V

    .line 1670
    :cond_0
    return-void
.end method

.method clearOtherAppTimeTrackers(Lcom/android/server/am/AppTimeTracker;)V
    .locals 6
    .param p1, "except"    # Lcom/android/server/am/AppTimeTracker;

    .line 2692
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_0
    if-ltz v0, :cond_2

    .line 2693
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    .line 2694
    .local v1, "task":Lcom/android/server/wm/TaskRecord;
    iget-object v2, v1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 2695
    .local v2, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "activityNdx":I
    :goto_1
    if-ltz v3, :cond_1

    .line 2696
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 2697
    .local v4, "r":Lcom/android/server/wm/ActivityRecord;
    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eq v5, p1, :cond_0

    .line 2698
    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 2695
    .end local v4    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2692
    .end local v1    # "task":Lcom/android/server/wm/TaskRecord;
    .end local v2    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v3    # "activityNdx":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2702
    .end local v0    # "taskNdx":I
    :cond_2
    return-void
.end method

.method closeSystemDialogsLocked()V
    .locals 10

    .line 5546
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_0
    if-ltz v0, :cond_2

    .line 5547
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    iget-object v1, v1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5548
    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "activityNdx":I
    :goto_1
    if-ltz v2, :cond_1

    .line 5549
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 5550
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_0

    .line 5551
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    const-string v8, "close-sys"

    move-object v4, p0

    move-object v5, v3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/ActivityStack;->finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 5548
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 5546
    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v2    # "activityNdx":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5555
    .end local v0    # "taskNdx":I
    :cond_2
    return-void
.end method

.method continueUpdateBounds()V
    .locals 1

    .line 1115
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStack;->mUpdateBoundsDeferred:Z

    if-eqz v0, :cond_1

    .line 1116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStack;->mUpdateBoundsDeferred:Z

    .line 1117
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStack;->mUpdateBoundsDeferredCalled:Z

    if-eqz v0, :cond_0

    .line 1118
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mDeferredBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->setTaskBounds(Landroid/graphics/Rect;)V

    .line 1119
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mDeferredBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->setBounds(Landroid/graphics/Rect;)I

    .line 1121
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStack;->mUpdateDisplayedBoundsDeferredCalled:Z

    if-eqz v0, :cond_1

    .line 1122
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mDeferredDisplayedBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->setTaskDisplayedBounds(Landroid/graphics/Rect;)V

    .line 1125
    :cond_1
    return-void
.end method

.method convertActivityToTranslucent(Lcom/android/server/wm/ActivityRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2686
    iput-object p1, p0, Lcom/android/server/wm/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    .line 2687
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2688
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2689
    return-void
.end method

.method createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/wm/TaskRecord;
    .locals 10
    .param p1, "taskId"    # I
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p5, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p6, "toTop"    # Z

    .line 5866
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/wm/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    return-object v0
.end method

.method createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/wm/TaskRecord;
    .locals 15
    .param p1, "taskId"    # I
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p5, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p6, "toTop"    # Z
    .param p7, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p8, "source"    # Lcom/android/server/wm/ActivityRecord;
    .param p9, "options"    # Landroid/app/ActivityOptions;

    .line 5874
    move-object v0, p0

    move-object/from16 v7, p2

    move/from16 v8, p6

    iget-object v1, v0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lcom/android/server/wm/TaskRecord;->create(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    .line 5877
    .local v1, "task":Lcom/android/server/wm/TaskRecord;
    const-string v2, "createTaskRecord"

    invoke-virtual {p0, v1, v8, v2}, Lcom/android/server/wm/ActivityStack;->addTask(Lcom/android/server/wm/TaskRecord;ZLjava/lang/String;)V

    .line 5878
    iget v2, v0, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    .line 5879
    .local v2, "displayId":I
    :goto_0
    iget-object v4, v0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v4

    .line 5880
    invoke-virtual {v4, v2}, Lcom/android/server/wm/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v4

    .line 5881
    .local v4, "isLockscreenShown":Z
    iget-object v5, v0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStackSupervisor;->getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;

    move-result-object v9

    iget-object v11, v7, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 5882
    move-object v10, v1

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/wm/LaunchParamsController;->layoutTask(Lcom/android/server/wm/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 5883
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->matchParentBounds()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskRecord;->isResizeable()Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v4, :cond_1

    .line 5884
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/server/wm/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    .line 5886
    :cond_1
    iget v5, v7, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_2

    const/4 v3, 0x1

    :cond_2
    invoke-virtual {v1, v8, v3}, Lcom/android/server/wm/TaskRecord;->createTask(ZZ)V

    .line 5887
    return-object v1
.end method

.method createTaskStack(IZLandroid/graphics/Rect;)V
    .locals 4
    .param p1, "displayId"    # I
    .param p2, "onTop"    # Z
    .param p3, "outBounds"    # Landroid/graphics/Rect;

    .line 614
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 615
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_1

    .line 619
    new-instance v1, Lcom/android/server/wm/TaskStack;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v3, p0, Lcom/android/server/wm/ActivityStack;->mStackId:I

    invoke-direct {v1, v2, v3, p0}, Lcom/android/server/wm/TaskStack;-><init>(Lcom/android/server/wm/WindowManagerService;ILcom/android/server/wm/ActivityStack;)V

    iput-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    .line 620
    iget v1, p0, Lcom/android/server/wm/ActivityStack;->mStackId:I

    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/server/wm/DisplayContent;->setStackOnDisplay(IZLcom/android/server/wm/TaskStack;)V

    .line 621
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->matchParentBounds()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 622
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    .line 624
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1, p3}, Lcom/android/server/wm/TaskStack;->getRawBounds(Landroid/graphics/Rect;)V

    .line 626
    :goto_0
    return-void

    .line 616
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to add stackId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/ActivityStack;->mStackId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to unknown displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method deferScheduleMultiWindowModeChanged()Z
    .locals 2

    .line 1085
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1092
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    .line 1093
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->deferScheduleMultiWindowModeChanged()Z

    move-result v0

    return v0

    .line 1095
    :cond_1
    return v1
.end method

.method deferUpdateBounds()V
    .locals 1

    .line 1103
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStack;->mUpdateBoundsDeferred:Z

    if-nez v0, :cond_0

    .line 1104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStack;->mUpdateBoundsDeferred:Z

    .line 1105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStack;->mUpdateBoundsDeferredCalled:Z

    .line 1107
    :cond_0
    return-void
.end method

.method final destroyActivityLocked(Lcom/android/server/wm/ActivityRecord;ZLjava/lang/String;)Z
    .locals 16
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "removeFromApp"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .line 4958
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    const-string v4, "ActivityTaskManager"

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CLEANUP:Z

    if-eqz v0, :cond_2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing activity from "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": token="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", app="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4960
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v5, v5, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v5, "(null)"

    :goto_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4958
    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4962
    :cond_2
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v2, v0, v5}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_4

    .line 4963
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "activity "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " already destroying.skipping request with reason:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4965
    :cond_3
    return v5

    .line 4968
    :cond_4
    const/16 v0, 0x7542

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 4969
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const/4 v7, 0x2

    .line 4970
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v9

    iget v9, v9, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    const/4 v7, 0x3

    iget-object v9, v2, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v9, v6, v7

    const/4 v7, 0x4

    aput-object v3, v6, v7

    .line 4968
    invoke-static {v0, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4972
    const/4 v6, 0x0

    .line 4974
    .local v6, "removedFromHistory":Z
    invoke-direct {v1, v2, v5, v5}, Lcom/android/server/wm/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 4976
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v7

    .line 4978
    .local v7, "hadApp":Z
    const-string v9, "Clearing app during destroy for activity "

    const/4 v10, 0x0

    const-string v11, "Moving to DESTROYED: "

    if-eqz v7, :cond_e

    .line 4979
    if-eqz p2, :cond_6

    .line 4980
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowProcessController;->removeActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 4981
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasActivities()Z

    move-result v0

    if-nez v0, :cond_5

    .line 4982
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v12, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, v12}, Lcom/android/server/wm/ActivityTaskManagerService;->clearHeavyWeightProcessIfEquals(Lcom/android/server/wm/WindowProcessController;)V

    .line 4984
    :cond_5
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasActivities()Z

    move-result v0

    if-nez v0, :cond_6

    .line 4988
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, v8, v5, v8}, Lcom/android/server/wm/WindowProcessController;->updateProcessInfo(ZZZ)V

    .line 4993
    :cond_6
    const/4 v8, 0x0

    .line 4996
    .local v8, "skipDestroy":Z
    :try_start_0
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Destroying: "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5000
    :cond_7
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_8

    .line 5001
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "destroyActivityLocked "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v2, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", reason = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/android/server/am/OpBGFrozenInjector;->triggerResume(ILjava/lang/String;)V

    .line 5005
    :cond_8
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v0

    iget-object v12, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v12

    iget-object v13, v2, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v14, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    iget v15, v2, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    .line 5006
    invoke-static {v14, v15}, Landroid/app/servertransaction/DestroyActivityItem;->obtain(ZI)Landroid/app/servertransaction/DestroyActivityItem;

    move-result-object v14

    .line 5005
    invoke-virtual {v0, v12, v13, v14}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ActivityLifecycleItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5017
    goto :goto_1

    .line 5007
    :catch_0
    move-exception v0

    .line 5012
    .local v0, "e":Ljava/lang/Exception;
    iget-boolean v12, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v12, :cond_9

    .line 5013
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " exceptionInScheduleDestroy"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v2, v12}, Lcom/android/server/wm/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 5014
    const/4 v6, 0x1

    .line 5015
    const/4 v8, 0x1

    .line 5019
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_9
    :goto_1
    iput-boolean v5, v2, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    .line 5028
    iget-boolean v0, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_b

    if-nez v8, :cond_b

    .line 5029
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Moving to DESTROYING: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " (destroy requested)"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5031
    :cond_a
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v9, "destroyActivityLocked. finishing and not skipping destroy"

    invoke-virtual {v2, v0, v9}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 5033
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x66

    invoke-virtual {v0, v9, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5034
    .local v0, "msg":Landroid/os/Message;
    iget-object v9, v1, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v10, 0x2710

    invoke-virtual {v9, v0, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5035
    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_2

    .line 5036
    :cond_b
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " (destroy skipped)"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5038
    :cond_c
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v11, "destroyActivityLocked. not finishing or skipping destroy"

    invoke-virtual {v2, v0, v11}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 5040
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_APP:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5041
    :cond_d
    iput-object v10, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 5043
    .end local v8    # "skipDestroy":Z
    :goto_2
    goto :goto_3

    .line 5045
    :cond_e
    iget-boolean v0, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_f

    .line 5046
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " hadNoApp"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/android/server/wm/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 5047
    const/4 v6, 0x1

    goto :goto_3

    .line 5049
    :cond_f
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " (no app)"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5050
    :cond_10
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v8, "destroyActivityLocked. not finishing and had no app"

    invoke-virtual {v2, v0, v8}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 5051
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_APP:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5052
    :cond_11
    iput-object v10, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 5056
    :goto_3
    iput v5, v2, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    .line 5058
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    if-eqz v7, :cond_12

    .line 5059
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " being finished, but not in LRU list"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5062
    :cond_12
    return v6
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;Z)Z
    .locals 16
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "dumpAll"    # Z
    .param p4, "dumpClient"    # Z
    .param p5, "dumpPackage"    # Ljava/lang/String;
    .param p6, "needSep"    # Z

    .line 5696
    move-object/from16 v0, p0

    move-object/from16 v13, p2

    move-object/from16 v14, p5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Stack #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/wm/ActivityStack;->mStackId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5697
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5698
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5696
    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5699
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  isSleeping="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->shouldSleepActivities()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5700
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5702
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/wm/ActivityStack;->dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;Z)Z

    move-result v15

    .line 5705
    .local v15, "printed":Z
    iget-object v3, v0, Lcom/android/server/wm/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    xor-int/lit8 v7, p3, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v12, 0x0

    const-string v4, "    "

    const-string v5, "Run"

    const/4 v6, 0x0

    const-string v11, "    Running activities (most recent first):"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v9, p5

    invoke-static/range {v1 .. v12}, Lcom/android/server/wm/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Lcom/android/server/wm/TaskRecord;)Z

    move-result v1

    or-int/2addr v1, v15

    .line 5709
    .end local v15    # "printed":Z
    .local v1, "printed":Z
    move v2, v1

    .line 5710
    .end local p6    # "needSep":Z
    .local v2, "needSep":Z
    iget-object v3, v0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    const-string v4, "    mPausingActivity: "

    invoke-static {v13, v3, v14, v2, v4}, Lcom/android/server/wm/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v3

    .line 5712
    .local v3, "pr":Z
    if-eqz v3, :cond_0

    .line 5713
    const/4 v1, 0x1

    .line 5714
    const/4 v2, 0x0

    .line 5716
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    const-string v5, "    mResumedActivity: "

    invoke-static {v13, v4, v14, v2, v5}, Lcom/android/server/wm/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v3

    .line 5718
    if-eqz v3, :cond_1

    .line 5719
    const/4 v1, 0x1

    .line 5720
    const/4 v2, 0x0

    .line 5722
    :cond_1
    if-eqz p3, :cond_3

    .line 5723
    iget-object v4, v0, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    const-string v5, "    mLastPausedActivity: "

    invoke-static {v13, v4, v14, v2, v5}, Lcom/android/server/wm/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v3

    .line 5725
    if-eqz v3, :cond_2

    .line 5726
    const/4 v1, 0x1

    .line 5727
    const/4 v2, 0x1

    .line 5729
    :cond_2
    iget-object v4, v0, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    const-string v5, "    mLastNoHistoryActivity: "

    invoke-static {v13, v4, v14, v2, v5}, Lcom/android/server/wm/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v4

    or-int/2addr v1, v4

    .line 5732
    :cond_3
    return v1
.end method

.method dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;Z)Z
    .locals 18
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "dumpAll"    # Z
    .param p4, "dumpClient"    # Z
    .param p5, "dumpPackage"    # Ljava/lang/String;
    .param p6, "needSep"    # Z

    .line 5738
    move-object/from16 v0, p0

    move-object/from16 v13, p2

    iget-object v1, v0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5739
    const/4 v1, 0x0

    return v1

    .line 5741
    :cond_0
    const-string v14, "    "

    .line 5742
    .local v14, "prefix":Ljava/lang/String;
    iget-object v1, v0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v15, 0x1

    sub-int/2addr v1, v15

    move v12, v1

    .local v12, "taskNdx":I
    :goto_0
    if-ltz v12, :cond_2

    .line 5743
    iget-object v1, v0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/server/wm/TaskRecord;

    .line 5744
    .local v11, "task":Lcom/android/server/wm/TaskRecord;
    if-eqz p6, :cond_1

    .line 5745
    const-string v1, ""

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5747
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Task id #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v11, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5748
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/server/wm/TaskRecord;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5749
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mMinWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v11, Lcom/android/server/wm/TaskRecord;->mMinWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5750
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mMinHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v11, Lcom/android/server/wm/TaskRecord;->mMinHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5751
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mLastNonFullscreenBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/android/server/wm/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5752
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    * "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5753
    const-string v1, "      "

    invoke-virtual {v11, v13, v1}, Lcom/android/server/wm/TaskRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 5754
    iget-object v1, v0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    iget-object v3, v1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    const/4 v6, 0x1

    xor-int/lit8 v7, p3, 0x1

    const/4 v10, 0x0

    const/16 v16, 0x0

    const-string v4, "    "

    const-string v5, "Hist"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v17, v11

    .end local v11    # "task":Lcom/android/server/wm/TaskRecord;
    .local v17, "task":Lcom/android/server/wm/TaskRecord;
    move-object/from16 v11, v16

    move/from16 v16, v12

    .end local v12    # "taskNdx":I
    .local v16, "taskNdx":I
    move-object/from16 v12, v17

    invoke-static/range {v1 .. v12}, Lcom/android/server/wm/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Lcom/android/server/wm/TaskRecord;)Z

    .line 5742
    .end local v17    # "task":Lcom/android/server/wm/TaskRecord;
    add-int/lit8 v12, v16, -0x1

    .end local v16    # "taskNdx":I
    .restart local v12    # "taskNdx":I
    goto/16 :goto_0

    .line 5757
    .end local v12    # "taskNdx":I
    :cond_2
    return v15
.end method

.method final ensureActivitiesVisibleLocked(Lcom/android/server/wm/ActivityRecord;IZ)V
    .locals 1
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "configChanges"    # I
    .param p3, "preserveWindows"    # Z

    .line 2300
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/wm/ActivityRecord;IZZ)V

    .line 2302
    return-void
.end method

.method final ensureActivitiesVisibleLocked(Lcom/android/server/wm/ActivityRecord;IZZ)V
    .locals 29
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "configChanges"    # I
    .param p3, "preserveWindows"    # Z
    .param p4, "notifyClients"    # Z

    .line 2312
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p4

    const/4 v10, 0x0

    iput-boolean v10, v7, Lcom/android/server/wm/ActivityStack;->mTopActivityOccludesKeyguard:Z

    .line 2313
    const/4 v11, 0x0

    iput-object v11, v7, Lcom/android/server/wm/ActivityStack;->mTopDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2314
    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/KeyguardController;->beginActivityVisibilityUpdate()V

    .line 2316
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    move-object v12, v0

    .line 2317
    .local v12, "top":Lcom/android/server/wm/ActivityRecord;
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const-string v13, "ActivityTaskManager"

    if-eqz v0, :cond_0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ensureActivitiesVisible behind "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " configChanges=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2318
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2317
    invoke-static {v13, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2319
    :cond_0
    if-eqz v12, :cond_1

    .line 2320
    invoke-direct {v7, v12}, Lcom/android/server/wm/ActivityStack;->checkTranslucentActivityWaiting(Lcom/android/server/wm/ActivityRecord;)V

    .line 2325
    :cond_1
    const/4 v14, 0x1

    if-eqz v12, :cond_2

    move v0, v14

    goto :goto_0

    :cond_2
    move v0, v10

    .line 2326
    .local v0, "aboveTop":Z
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    move v15, v1

    .line 2327
    .local v15, "stackShouldBeVisible":Z
    if-nez v15, :cond_3

    move v1, v14

    goto :goto_1

    :cond_3
    move v1, v10

    .line 2328
    .local v1, "behindFullscreenActivity":Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/ActivityStack;->isInStackLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v14

    goto :goto_2

    :cond_4
    move v2, v10

    .line 2329
    .local v2, "resumeNextActivity":Z
    :goto_2
    iget-object v3, v7, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    sub-int/2addr v3, v14

    move/from16 v4, p2

    move v6, v3

    move v3, v2

    move v2, v1

    move v1, v0

    .end local v0    # "aboveTop":Z
    .end local p2    # "configChanges":I
    .local v1, "aboveTop":Z
    .local v2, "behindFullscreenActivity":Z
    .local v3, "resumeNextActivity":Z
    .local v4, "configChanges":I
    .local v6, "taskNdx":I
    :goto_3
    if-ltz v6, :cond_20

    .line 2338
    :try_start_2
    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskRecord;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2342
    .local v0, "task":Lcom/android/server/wm/TaskRecord;
    nop

    .line 2344
    :try_start_3
    iget-object v5, v0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 2345
    .local v5, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    add-int/lit8 v16, v16, -0x1

    move/from16 v17, v3

    move/from16 v28, v16

    move/from16 v16, v4

    move/from16 v4, v28

    .end local v3    # "resumeNextActivity":Z
    .local v4, "activityNdx":I
    .local v16, "configChanges":I
    .local v17, "resumeNextActivity":Z
    :goto_4
    const-string v3, " behindFullscreenActivity="

    const-string v11, " stackShouldBeVisible="

    if-ltz v4, :cond_1b

    .line 2346
    :try_start_4
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/wm/ActivityRecord;

    move-object/from16 p2, v18

    .line 2347
    .local p2, "r":Lcom/android/server/wm/ActivityRecord;
    move-object/from16 v10, p2

    .end local p2    # "r":Lcom/android/server/wm/ActivityRecord;
    .local v10, "r":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v14, v10, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v14, :cond_5

    .line 2348
    goto :goto_6

    .line 2350
    :cond_5
    if-ne v10, v12, :cond_6

    const/4 v14, 0x1

    goto :goto_5

    :cond_6
    const/4 v14, 0x0

    .line 2351
    .local v14, "isTop":Z
    :goto_5
    if-eqz v1, :cond_7

    if-nez v14, :cond_7

    .line 2352
    nop

    .line 2345
    .end local v10    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v14    # "isTop":Z
    :goto_6
    move/from16 v11, p3

    move-object/from16 v24, v5

    move/from16 v25, v6

    move-object/from16 v26, v12

    const/4 v5, 0x1

    const/16 v27, 0x0

    goto/16 :goto_f

    .line 2354
    .restart local v10    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v14    # "isTop":Z
    :cond_7
    const/16 v19, 0x0

    .line 2357
    .end local v1    # "aboveTop":Z
    .local v19, "aboveTop":Z
    invoke-virtual {v10, v2}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisibleIgnoringKeyguard(Z)Z

    move-result v1

    move/from16 v20, v1

    .line 2359
    .local v20, "visibleIgnoringKeyguard":Z
    invoke-virtual {v10, v2}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisible(Z)Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move/from16 v21, v1

    .line 2360
    .local v21, "reallyVisible":Z
    if-eqz v20, :cond_9

    .line 2361
    if-nez v15, :cond_8

    const/4 v1, 0x1

    goto :goto_7

    :cond_8
    const/4 v1, 0x0

    :goto_7
    :try_start_5
    invoke-direct {v7, v1, v2, v10}, Lcom/android/server/wm/ActivityStack;->updateBehindFullscreen(ZZLcom/android/server/wm/ActivityRecord;)Z

    move-result v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move v2, v1

    .line 2374
    :cond_9
    move/from16 p2, v4

    const/4 v1, 0x1

    .end local v4    # "activityNdx":I
    .local p2, "activityNdx":I
    :try_start_6
    new-array v4, v1, [I

    const/16 v1, 0x50

    const/16 v18, 0x0

    aput v1, v4, v18

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v1, :cond_a

    :try_start_7
    iget-object v1, v7, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mIsFingerprintEnabled:Z

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_8

    :cond_a
    const/4 v1, 0x0

    :goto_8
    move/from16 v22, v1

    .line 2376
    .local v22, "shouldFPaccelerate":Z
    if-nez v21, :cond_c

    if-eqz v20, :cond_c

    if-nez v22, :cond_b

    .line 2377
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    iget-object v1, v7, Lcom/android/server/wm/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 2378
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->isKeyguardShowingAndNotOccluded()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2379
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isFocusedStackOnDisplay()Z

    move-result v1

    if-eqz v1, :cond_c

    iget v1, v7, Lcom/android/server/wm/ActivityStack;->mCurrentUser:I

    .line 2382
    invoke-static {v1}, Lcom/android/server/wm/OpWindowManagerServiceInjector;->isKeyguardSecure(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2385
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_9

    :cond_c
    const/4 v1, 0x0

    :goto_9
    move/from16 v23, v1

    .line 2386
    .local v23, "makeFocusedStackVisible":Z
    :try_start_8
    iget-object v1, v7, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerService;->DEBUG_ONEPLUS:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const-string v4, " state="

    move-object/from16 v24, v5

    .end local v5    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .local v24, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    const-string v5, " finishing="

    if-eqz v1, :cond_d

    if-eqz v23, :cond_d

    .line 2387
    :try_start_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v25, v6

    .end local v6    # "taskNdx":I
    .local v25, "taskNdx":I
    const-string v6, "Make Home visible "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v10, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2388
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2387
    invoke-static {v13, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 2386
    .end local v25    # "taskNdx":I
    .restart local v6    # "taskNdx":I
    :cond_d
    move/from16 v25, v6

    .line 2391
    .end local v6    # "taskNdx":I
    .restart local v25    # "taskNdx":I
    :goto_a
    if-nez v21, :cond_10

    if-eqz v23, :cond_e

    goto :goto_b

    .line 2435
    :cond_e
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v1, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Make invisible? "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v10, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2436
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mLaunchTaskBehind="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v10, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2435
    invoke-static {v13, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2440
    :cond_f
    invoke-direct {v7, v10}, Lcom/android/server/wm/ActivityStack;->makeInvisible(Lcom/android/server/wm/ActivityRecord;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move/from16 v4, p2

    move/from16 v11, p3

    move-object/from16 v26, v12

    move/from16 v1, v19

    const/4 v5, 0x1

    const/16 v27, 0x0

    goto/16 :goto_f

    .line 2394
    :cond_10
    :goto_b
    :try_start_a
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v1, :cond_11

    :try_start_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Make visible? "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v10, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2395
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2394
    invoke-static {v13, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2398
    :cond_11
    if-eq v10, v8, :cond_12

    if-eqz v9, :cond_12

    .line 2399
    move/from16 v11, p3

    const/4 v1, 0x1

    const/4 v6, 0x0

    invoke-virtual {v10, v6, v11, v1}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZZ)Z

    goto :goto_c

    .line 2398
    :cond_12
    move/from16 v11, p3

    const/4 v6, 0x0

    .line 2403
    :goto_c
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v1

    if-nez v1, :cond_15

    .line 2404
    move-object/from16 v1, p0

    move/from16 v18, v2

    .end local v2    # "behindFullscreenActivity":Z
    .local v18, "behindFullscreenActivity":Z
    move-object/from16 v2, p1

    move/from16 v3, v16

    move/from16 v5, p2

    .end local p2    # "activityNdx":I
    .local v5, "activityNdx":I
    move v4, v14

    move-object/from16 v26, v12

    move v12, v5

    .end local v5    # "activityNdx":I
    .local v12, "activityNdx":I
    .local v26, "top":Lcom/android/server/wm/ActivityRecord;
    move/from16 v5, v17

    move/from16 v27, v6

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/ActivityStack;->makeVisibleAndRestartIfNeeded(Lcom/android/server/wm/ActivityRecord;IZZLcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2406
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v12, v1, :cond_13

    .line 2408
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v5, 0x1

    sub-int/2addr v1, v5

    move v4, v1

    .end local v12    # "activityNdx":I
    .local v1, "activityNdx":I
    goto :goto_e

    .line 2410
    .end local v1    # "activityNdx":I
    .restart local v12    # "activityNdx":I
    :cond_13
    const/4 v5, 0x1

    const/4 v1, 0x0

    move/from16 v17, v1

    move v4, v12

    .end local v17    # "resumeNextActivity":Z
    .local v1, "resumeNextActivity":Z
    goto :goto_e

    .line 2404
    .end local v1    # "resumeNextActivity":Z
    .restart local v17    # "resumeNextActivity":Z
    :cond_14
    const/4 v5, 0x1

    goto :goto_d

    .line 2413
    .end local v18    # "behindFullscreenActivity":Z
    .end local v26    # "top":Lcom/android/server/wm/ActivityRecord;
    .restart local v2    # "behindFullscreenActivity":Z
    .local v12, "top":Lcom/android/server/wm/ActivityRecord;
    .restart local p2    # "activityNdx":I
    :cond_15
    move/from16 v18, v2

    move/from16 v27, v6

    move-object/from16 v26, v12

    const/4 v5, 0x1

    move/from16 v12, p2

    .end local v2    # "behindFullscreenActivity":Z
    .end local p2    # "activityNdx":I
    .local v12, "activityNdx":I
    .restart local v18    # "behindFullscreenActivity":Z
    .restart local v26    # "top":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v1, v10, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-eqz v1, :cond_19

    .line 2415
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v1, :cond_16

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping: already visible at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2418
    :cond_16
    iget-boolean v1, v10, Lcom/android/server/wm/ActivityRecord;->mClientVisibilityDeferred:Z

    if-eqz v1, :cond_17

    if-eqz v9, :cond_17

    .line 2419
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord;->makeClientVisible()V

    .line 2422
    :cond_17
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord;->handleAlreadyVisible()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2423
    const/16 v17, 0x0

    .line 2426
    :cond_18
    if-eqz v9, :cond_1a

    .line 2427
    invoke-virtual {v10, v8}, Lcom/android/server/wm/ActivityRecord;->makeActiveIfNeeded(Lcom/android/server/wm/ActivityRecord;)Z

    goto :goto_d

    .line 2430
    :cond_19
    invoke-virtual {v10, v8, v9}, Lcom/android/server/wm/ActivityRecord;->makeVisibleIfNeeded(Lcom/android/server/wm/ActivityRecord;Z)V

    .line 2433
    :cond_1a
    :goto_d
    move v4, v12

    .end local v12    # "activityNdx":I
    .restart local v4    # "activityNdx":I
    :goto_e
    iget v1, v10, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    or-int v16, v16, v1

    move/from16 v2, v18

    move/from16 v1, v19

    .line 2345
    .end local v10    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v14    # "isTop":Z
    .end local v18    # "behindFullscreenActivity":Z
    .end local v19    # "aboveTop":Z
    .end local v20    # "visibleIgnoringKeyguard":Z
    .end local v21    # "reallyVisible":Z
    .end local v22    # "shouldFPaccelerate":Z
    .end local v23    # "makeFocusedStackVisible":Z
    .local v1, "aboveTop":Z
    .restart local v2    # "behindFullscreenActivity":Z
    :goto_f
    add-int/lit8 v4, v4, -0x1

    move v14, v5

    move-object/from16 v5, v24

    move/from16 v6, v25

    move-object/from16 v12, v26

    move/from16 v10, v27

    const/4 v11, 0x0

    goto/16 :goto_4

    .line 2468
    .end local v0    # "task":Lcom/android/server/wm/TaskRecord;
    .end local v1    # "aboveTop":Z
    .end local v2    # "behindFullscreenActivity":Z
    .end local v4    # "activityNdx":I
    .end local v15    # "stackShouldBeVisible":Z
    .end local v17    # "resumeNextActivity":Z
    .end local v24    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v25    # "taskNdx":I
    .end local v26    # "top":Lcom/android/server/wm/ActivityRecord;
    :catchall_0
    move-exception v0

    move/from16 v11, p3

    goto/16 :goto_12

    .line 2345
    .restart local v0    # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v1    # "aboveTop":Z
    .restart local v2    # "behindFullscreenActivity":Z
    .restart local v4    # "activityNdx":I
    .local v5, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .restart local v6    # "taskNdx":I
    .local v12, "top":Lcom/android/server/wm/ActivityRecord;
    .restart local v15    # "stackShouldBeVisible":Z
    .restart local v17    # "resumeNextActivity":Z
    :cond_1b
    move-object/from16 v24, v5

    move/from16 v25, v6

    move/from16 v27, v10

    move-object/from16 v26, v12

    move v5, v14

    move v12, v4

    .line 2443
    .end local v4    # "activityNdx":I
    .end local v5    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v6    # "taskNdx":I
    .end local v12    # "top":Lcom/android/server/wm/ActivityRecord;
    .restart local v24    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .restart local v25    # "taskNdx":I
    .restart local v26    # "top":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v4

    .line 2444
    .local v4, "windowingMode":I
    const/4 v6, 0x5

    if-ne v4, v6, :cond_1d

    .line 2448
    if-nez v15, :cond_1c

    move v3, v5

    goto :goto_10

    :cond_1c
    move/from16 v3, v27

    :goto_10
    move v2, v3

    move/from16 v4, v16

    move/from16 v3, v17

    goto :goto_11

    .line 2449
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 2450
    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v6, :cond_1e

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Home task: at "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 2458
    :cond_1e
    const/4 v2, 0x1

    move/from16 v4, v16

    move/from16 v3, v17

    goto :goto_11

    .line 2449
    :cond_1f
    move/from16 v4, v16

    move/from16 v3, v17

    goto :goto_11

    .line 2468
    .end local v0    # "task":Lcom/android/server/wm/TaskRecord;
    .end local v1    # "aboveTop":Z
    .end local v2    # "behindFullscreenActivity":Z
    .end local v4    # "windowingMode":I
    .end local v15    # "stackShouldBeVisible":Z
    .end local v17    # "resumeNextActivity":Z
    .end local v24    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v25    # "taskNdx":I
    .end local v26    # "top":Lcom/android/server/wm/ActivityRecord;
    :catchall_1
    move-exception v0

    goto :goto_12

    .line 2339
    .end local v16    # "configChanges":I
    .restart local v1    # "aboveTop":Z
    .restart local v2    # "behindFullscreenActivity":Z
    .restart local v3    # "resumeNextActivity":Z
    .local v4, "configChanges":I
    .restart local v6    # "taskNdx":I
    .restart local v12    # "top":Lcom/android/server/wm/ActivityRecord;
    .restart local v15    # "stackShouldBeVisible":Z
    :catch_0
    move-exception v0

    move/from16 v25, v6

    move/from16 v27, v10

    move-object/from16 v26, v12

    move v5, v14

    .line 2340
    .end local v6    # "taskNdx":I
    .end local v12    # "top":Lcom/android/server/wm/ActivityRecord;
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v25    # "taskNdx":I
    .restart local v26    # "top":Lcom/android/server/wm/ActivityRecord;
    :try_start_c
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v13, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
    nop

    .line 2329
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_11
    add-int/lit8 v6, v25, -0x1

    move v14, v5

    move-object/from16 v12, v26

    move/from16 v10, v27

    const/4 v11, 0x0

    .end local v25    # "taskNdx":I
    .restart local v6    # "taskNdx":I
    goto/16 :goto_3

    .end local v26    # "top":Lcom/android/server/wm/ActivityRecord;
    .restart local v12    # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_20
    move/from16 v25, v6

    move-object/from16 v26, v12

    .line 2462
    .end local v6    # "taskNdx":I
    .end local v12    # "top":Lcom/android/server/wm/ActivityRecord;
    .restart local v26    # "top":Lcom/android/server/wm/ActivityRecord;
    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_21

    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 2463
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2465
    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Lcom/android/server/wm/ActivityStack;->notifyActivityDrawnLocked(Lcom/android/server/wm/ActivityRecord;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 2468
    .end local v1    # "aboveTop":Z
    .end local v2    # "behindFullscreenActivity":Z
    .end local v3    # "resumeNextActivity":Z
    .end local v15    # "stackShouldBeVisible":Z
    .end local v26    # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_21
    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/KeyguardController;->endActivityVisibilityUpdate()V

    .line 2469
    nop

    .line 2470
    return-void

    .line 2468
    :catchall_2
    move-exception v0

    move/from16 v16, v4

    goto :goto_12

    .end local v4    # "configChanges":I
    .local p2, "configChanges":I
    :catchall_3
    move-exception v0

    move/from16 v16, p2

    .end local p2    # "configChanges":I
    .restart local v16    # "configChanges":I
    :goto_12
    iget-object v1, v7, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/KeyguardController;->endActivityVisibilityUpdate()V

    throw v0
.end method

.method ensureVisibleActivitiesConfigurationLocked(Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 9
    .param p1, "start"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "preserveWindow"    # Z

    .line 5422
    if-eqz p1, :cond_7

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-nez v0, :cond_0

    goto :goto_4

    .line 5426
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 5427
    .local v0, "startTask":Lcom/android/server/wm/TaskRecord;
    const/4 v1, 0x0

    .line 5428
    .local v1, "behindFullscreen":Z
    const/4 v2, 0x0

    .line 5430
    .local v2, "updatedConfig":Z
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .local v3, "taskIndex":I
    :goto_0
    if-ltz v3, :cond_5

    .line 5431
    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskRecord;

    .line 5432
    .local v4, "task":Lcom/android/server/wm/TaskRecord;
    iget-object v5, v4, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5433
    .local v5, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v6

    if-ne v6, v4, :cond_1

    .line 5434
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .line 5435
    .local v6, "activityIndex":I
    :goto_1
    if-ltz v6, :cond_3

    .line 5436
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/ActivityRecord;

    .line 5437
    .local v7, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v8, 0x0

    invoke-virtual {v7, v8, p2}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZ)Z

    move-result v8

    or-int/2addr v2, v8

    .line 5439
    iget-boolean v8, v7, Lcom/android/server/wm/ActivityRecord;->fullscreen:Z

    if-eqz v8, :cond_2

    .line 5440
    const/4 v1, 0x1

    .line 5441
    goto :goto_2

    .line 5435
    .end local v7    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 5444
    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    .line 5445
    goto :goto_3

    .line 5430
    .end local v4    # "task":Lcom/android/server/wm/TaskRecord;
    .end local v5    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v6    # "activityIndex":I
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 5448
    .end local v3    # "taskIndex":I
    :cond_5
    :goto_3
    if-eqz v2, :cond_6

    .line 5451
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 5453
    :cond_6
    return-void

    .line 5423
    .end local v0    # "startTask":Lcom/android/server/wm/TaskRecord;
    .end local v1    # "behindFullscreen":Z
    .end local v2    # "updatedConfig":Z
    :cond_7
    :goto_4
    return-void
.end method

.method executeAppTransition(Landroid/app/ActivityOptions;)V
    .locals 1
    .param p1, "options"    # Landroid/app/ActivityOptions;

    .line 6118
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 6119
    invoke-static {p1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 6120
    return-void
.end method

.method findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/wm/ActivityRecord;
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "compareIntentFilters"    # Z

    .line 1560
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1561
    .local v0, "cls":Landroid/content/ComponentName;
    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1562
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 1564
    :cond_0
    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1566
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "taskNdx":I
    :goto_0
    if-ltz v2, :cond_5

    .line 1567
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskRecord;

    .line 1568
    .local v3, "task":Lcom/android/server/wm/TaskRecord;
    iget-object v4, v3, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1570
    .local v4, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "activityNdx":I
    :goto_1
    if-ltz v5, :cond_4

    .line 1571
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ActivityRecord;

    .line 1572
    .local v6, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->okToShowLocked()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1573
    goto :goto_2

    .line 1575
    :cond_1
    iget-boolean v7, v6, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v7, :cond_3

    iget v7, v6, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne v7, v1, :cond_3

    .line 1576
    if-eqz p3, :cond_2

    .line 1577
    iget-object v7, v6, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7, p1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1578
    return-object v6

    .line 1581
    :cond_2
    iget-object v7, v6, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1582
    return-object v6

    .line 1570
    .end local v6    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 1566
    .end local v3    # "task":Lcom/android/server/wm/TaskRecord;
    .end local v4    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v5    # "activityNdx":I
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1589
    .end local v2    # "taskNdx":I
    :cond_5
    const/4 v2, 0x0

    return-object v2
.end method

.method findTaskLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/RootActivityContainer$FindTaskResult;)V
    .locals 22
    .param p1, "target"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "result"    # Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    .line 1438
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1439
    .local v3, "intent":Landroid/content/Intent;
    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 1440
    .local v4, "info":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 1441
    .local v5, "cls":Landroid/content/ComponentName;
    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 1442
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v4, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    .line 1444
    :cond_0
    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 1445
    .local v6, "userId":I
    invoke-virtual {v3}, Landroid/content/Intent;->isDocument()Z

    move-result v7

    const/4 v8, 0x1

    and-int/2addr v7, v8

    .line 1447
    .local v7, "isDocument":Z
    if-eqz v7, :cond_1

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    .line 1449
    .local v9, "documentData":Landroid/net/Uri;
    :goto_0
    sget-boolean v10, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    const-string v11, "ActivityTaskManager"

    if-eqz v10, :cond_2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Looking for task of "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " in "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    :cond_2
    iget-object v10, v0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v8

    .local v10, "taskNdx":I
    :goto_1
    if-ltz v10, :cond_1c

    .line 1451
    iget-object v12, v0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/TaskRecord;

    .line 1452
    .local v12, "task":Lcom/android/server/wm/TaskRecord;
    iget-object v13, v12, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    const-string v14, "Skipping "

    if-eqz v13, :cond_4

    .line 1454
    sget-boolean v13, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v13, :cond_3

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ": voice session"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object/from16 v20, v4

    move/from16 v18, v6

    move v0, v8

    goto/16 :goto_7

    .line 1457
    :cond_4
    iget v13, v12, Lcom/android/server/wm/TaskRecord;->userId:I

    if-eq v13, v6, :cond_6

    .line 1459
    sget-boolean v13, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v13, :cond_5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ": different user"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object/from16 v20, v4

    move/from16 v18, v6

    move v0, v8

    goto/16 :goto_7

    .line 1464
    :cond_6
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/server/wm/TaskRecord;->getTopActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v15

    .line 1478
    .local v15, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-static {v15}, Lcom/android/server/wm/OpWmInjector;->topActivitySingleInstance(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 1479
    sget-boolean v13, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v13, :cond_7

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ": mismatch root "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object/from16 v20, v4

    move/from16 v18, v6

    move v0, v8

    goto/16 :goto_7

    .line 1483
    :cond_8
    iget v13, v15, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-eq v13, v6, :cond_a

    .line 1484
    invoke-static {v15, v6}, Lcom/android/server/wm/OpWmInjector;->checkUserRelation(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 1485
    sget-boolean v13, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v13, :cond_a

    .line 1486
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "r.userId: "

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v15, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", userId: "

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "; Because parallel app,the userId of the task\'s topActivity is different from the application userId. So pass the check of userId"

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1484
    :cond_9
    move-object/from16 v20, v4

    move/from16 v18, v6

    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1495
    :cond_a
    :goto_2
    invoke-virtual {v15, v1}, Lcom/android/server/wm/ActivityRecord;->hasCompatibleActivityType(Lcom/android/server/wm/ConfigurationContainer;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 1496
    sget-boolean v8, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v8, :cond_b

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ": mismatch activity type"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    move-object/from16 v20, v4

    move/from16 v18, v6

    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1500
    :cond_c
    iget-object v8, v12, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    .line 1501
    .local v8, "taskIntent":Landroid/content/Intent;
    iget-object v13, v12, Lcom/android/server/wm/TaskRecord;->affinityIntent:Landroid/content/Intent;

    .line 1504
    .local v13, "affinityIntent":Landroid/content/Intent;
    if-eqz v8, :cond_d

    invoke-virtual {v8}, Landroid/content/Intent;->isDocument()Z

    move-result v14

    if-eqz v14, :cond_d

    .line 1505
    const/4 v14, 0x1

    .line 1506
    .local v14, "taskIsDocument":Z
    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v21, v17

    move/from16 v17, v14

    move-object/from16 v14, v21

    .local v17, "taskDocumentData":Landroid/net/Uri;
    goto :goto_3

    .line 1507
    .end local v14    # "taskIsDocument":Z
    .end local v17    # "taskDocumentData":Landroid/net/Uri;
    :cond_d
    if-eqz v13, :cond_e

    invoke-virtual {v13}, Landroid/content/Intent;->isDocument()Z

    move-result v14

    if-eqz v14, :cond_e

    .line 1508
    const/4 v14, 0x1

    .line 1509
    .restart local v14    # "taskIsDocument":Z
    invoke-virtual {v13}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v21, v17

    move/from16 v17, v14

    move-object/from16 v14, v21

    .restart local v17    # "taskDocumentData":Landroid/net/Uri;
    goto :goto_3

    .line 1511
    .end local v14    # "taskIsDocument":Z
    .end local v17    # "taskDocumentData":Landroid/net/Uri;
    :cond_e
    const/4 v14, 0x0

    .line 1512
    .restart local v14    # "taskIsDocument":Z
    const/16 v17, 0x0

    move-object/from16 v21, v17

    move/from16 v17, v14

    move-object/from16 v14, v21

    .line 1515
    .local v14, "taskDocumentData":Landroid/net/Uri;
    .local v17, "taskIsDocument":Z
    :goto_3
    sget-boolean v18, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v18, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v6

    .end local v6    # "userId":I
    .local v18, "userId":I
    const-string v6, "Comparing existing cls="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1516
    iget-object v6, v12, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v6, :cond_f

    iget-object v6, v12, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_f
    const-string v6, ""

    :goto_4
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/aff="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1517
    move-object/from16 v19, v8

    .end local v8    # "taskIntent":Landroid/content/Intent;
    .local v19, "taskIntent":Landroid/content/Intent;
    invoke-virtual {v15}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/wm/TaskRecord;->rootAffinity:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " to new cls="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1518
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1515
    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .end local v18    # "userId":I
    .end local v19    # "taskIntent":Landroid/content/Intent;
    .restart local v6    # "userId":I
    .restart local v8    # "taskIntent":Landroid/content/Intent;
    :cond_10
    move/from16 v18, v6

    move-object/from16 v19, v8

    .line 1520
    .end local v6    # "userId":I
    .end local v8    # "taskIntent":Landroid/content/Intent;
    .restart local v18    # "userId":I
    .restart local v19    # "taskIntent":Landroid/content/Intent;
    :goto_5
    iget-object v0, v12, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    const-string v6, " bringing to top: "

    const-string v8, "For Intent "

    move-object/from16 v20, v4

    .end local v4    # "info":Landroid/content/pm/ActivityInfo;
    .local v20, "info":Landroid/content/pm/ActivityInfo;
    const-string v4, "Found matching class!"

    if-eqz v0, :cond_13

    iget-object v0, v12, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v5}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v0

    if-nez v0, :cond_13

    .line 1521
    invoke-static {v9, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1522
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_11

    invoke-static {v11, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    :cond_11
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v15, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    :cond_12
    iput-object v15, v2, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1527
    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mIdealMatch:Z

    .line 1528
    goto/16 :goto_8

    .line 1529
    :cond_13
    if-eqz v13, :cond_18

    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 1530
    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v0

    if-nez v0, :cond_17

    .line 1531
    invoke-static {v9, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1532
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_14

    invoke-static {v11, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    :cond_14
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v15, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    :cond_15
    iput-object v15, v2, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1537
    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mIdealMatch:Z

    .line 1538
    goto :goto_8

    .line 1531
    :cond_16
    const/4 v0, 0x1

    goto :goto_6

    .line 1530
    :cond_17
    const/4 v0, 0x1

    goto :goto_6

    .line 1529
    :cond_18
    const/4 v0, 0x1

    .line 1539
    :goto_6
    if-nez v7, :cond_1a

    if-nez v17, :cond_1a

    iget-object v4, v2, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v4, :cond_1a

    iget-object v4, v12, Lcom/android/server/wm/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v4, :cond_1a

    .line 1541
    iget-object v4, v12, Lcom/android/server/wm/TaskRecord;->rootAffinity:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 1542
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v4, :cond_19

    const-string v4, "Found matching affinity candidate!"

    invoke-static {v11, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    :cond_19
    iput-object v15, v2, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1547
    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mIdealMatch:Z

    goto :goto_7

    .line 1549
    :cond_1a
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v4, :cond_1b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not a match: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    .end local v12    # "task":Lcom/android/server/wm/TaskRecord;
    .end local v13    # "affinityIntent":Landroid/content/Intent;
    .end local v14    # "taskDocumentData":Landroid/net/Uri;
    .end local v15    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v17    # "taskIsDocument":Z
    .end local v19    # "taskIntent":Landroid/content/Intent;
    :cond_1b
    :goto_7
    add-int/lit8 v10, v10, -0x1

    move v8, v0

    move/from16 v6, v18

    move-object/from16 v4, v20

    move-object/from16 v0, p0

    goto/16 :goto_1

    .end local v18    # "userId":I
    .end local v20    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v4    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v6    # "userId":I
    :cond_1c
    move-object/from16 v20, v4

    move/from16 v18, v6

    .line 1551
    .end local v4    # "info":Landroid/content/pm/ActivityInfo;
    .end local v6    # "userId":I
    .end local v10    # "taskNdx":I
    .restart local v18    # "userId":I
    .restart local v20    # "info":Landroid/content/pm/ActivityInfo;
    :goto_8
    return-void
.end method

.method final finishActivityAffinityLocked(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 9
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 4280
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4281
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_1

    .line 4282
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 4283
    .local v2, "cur":Lcom/android/server/wm/ActivityRecord;
    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4284
    goto :goto_1

    .line 4286
    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    const-string v7, "request-affinity"

    move-object v3, p0

    move-object v4, v2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/ActivityStack;->finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 4281
    .end local v2    # "cur":Lcom/android/server/wm/ActivityRecord;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4288
    .end local v1    # "index":I
    :cond_1
    :goto_1
    const/4 v1, 0x1

    return v1
.end method

.method final finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "oomAdj"    # Z

    .line 4336
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/ActivityStack;->finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method final finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;ZZ)Z
    .locals 14
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "oomAdj"    # Z
    .param p6, "pauseImmediately"    # Z

    .line 4345
    move-object v1, p0

    move-object v2, p1

    iget-boolean v0, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const-string v3, "ActivityTaskManager"

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 4346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Duplicate finish request for "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4347
    return v4

    .line 4350
    :cond_0
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 4352
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->makeFinishingLocked()V

    .line 4353
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 4354
    .local v0, "task":Lcom/android/server/wm/TaskRecord;
    const/16 v5, 0x7531

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 4355
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    iget v7, v0, Lcom/android/server/wm/TaskRecord;->taskId:I

    .line 4356
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x2

    aput-object v7, v6, v9

    const/4 v7, 0x3

    iget-object v10, v2, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v10, v6, v7

    const/4 v7, 0x4

    aput-object p4, v6, v7

    .line 4354
    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4357
    iget-object v5, v0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4358
    .local v5, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 4359
    .local v6, "index":I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v8

    if-ge v6, v7, :cond_1

    .line 4360
    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->setFrontOfTask()V

    .line 4361
    iget-object v7, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getFlags()I

    move-result v7

    const/high16 v10, 0x80000

    and-int/2addr v7, v10

    if-eqz v7, :cond_1

    .line 4365
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/ActivityRecord;

    .line 4366
    .local v7, "next":Lcom/android/server/wm/ActivityRecord;
    iget-object v11, v7, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v11, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4370
    .end local v7    # "next":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->pauseKeyDispatchingLocked()V

    .line 4372
    const-string v7, "finishActivity"

    invoke-direct {p0, p1, v7}, Lcom/android/server/wm/ActivityStack;->adjustFocusedActivityStack(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 4374
    invoke-direct/range {p0 .. p3}, Lcom/android/server/wm/ActivityStack;->finishActivityResultsLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;)V

    .line 4376
    if-gtz v6, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->isClearingToReuseTask()Z

    move-result v7

    if-nez v7, :cond_2

    move v7, v8

    goto :goto_0

    :cond_2
    move v7, v4

    .line 4377
    .local v7, "endTask":Z
    :goto_0
    if-eqz v7, :cond_3

    const/16 v10, 0x9

    goto :goto_1

    :cond_3
    const/4 v10, 0x7

    .line 4378
    .local v10, "transit":I
    :goto_1
    iget-object v11, v1, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-ne v11, v2, :cond_b

    .line 4379
    :try_start_1
    sget-boolean v8, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v8, :cond_4

    :try_start_2
    sget-boolean v8, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v8, :cond_5

    :cond_4
    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Prepare close transition: finishing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4381
    :cond_5
    if-eqz v7, :cond_6

    .line 4382
    :try_start_4
    iget-object v8, v1, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v8

    .line 4383
    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v9

    .line 4382
    invoke-virtual {v8, v9}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskRemovalStarted(Landroid/app/ActivityManager$RunningTaskInfo;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 4385
    :cond_6
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v8, v10, v4}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    .line 4388
    invoke-virtual {p1, v4}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 4390
    iget-object v8, v1, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-nez v8, :cond_9

    .line 4391
    sget-boolean v8, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v8, :cond_7

    :try_start_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Finish needs to pause: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 4392
    :cond_7
    :try_start_7
    sget-boolean v8, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_USER_LEAVING:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v8, :cond_8

    :try_start_8
    const-string v8, "finish() => pause with userLeaving=false"

    invoke-static {v3, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 4394
    :cond_8
    const/4 v3, 0x0

    move/from16 v11, p6

    :try_start_9
    invoke-virtual {p0, v4, v4, v3, v11}, Lcom/android/server/wm/ActivityStack;->startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;Z)Z

    goto :goto_2

    .line 4390
    :cond_9
    move/from16 v11, p6

    .line 4397
    :goto_2
    if-eqz v7, :cond_a

    .line 4398
    iget-object v3, v1, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/wm/LockTaskController;->clearLockedTask(Lcom/android/server/wm/TaskRecord;)V

    move/from16 v12, p5

    goto/16 :goto_5

    .line 4397
    :cond_a
    move/from16 v12, p5

    goto/16 :goto_5

    .line 4435
    .end local v0    # "task":Lcom/android/server/wm/TaskRecord;
    .end local v5    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v6    # "index":I
    .end local v7    # "endTask":Z
    .end local v10    # "transit":I
    :catchall_0
    move-exception v0

    move/from16 v11, p6

    goto/16 :goto_6

    .line 4400
    .restart local v0    # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v5    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .restart local v6    # "index":I
    .restart local v7    # "endTask":Z
    .restart local v10    # "transit":I
    :cond_b
    move/from16 v11, p6

    sget-object v12, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p1, v12}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v12

    if-nez v12, :cond_13

    .line 4403
    sget-boolean v12, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v12, :cond_c

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Finish not pausing: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4404
    :cond_c
    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-eqz v3, :cond_d

    .line 4405
    invoke-direct {p0, p1, v10}, Lcom/android/server/wm/ActivityStack;->prepareActivityHideTransitionAnimation(Lcom/android/server/wm/ActivityRecord;I)V

    .line 4408
    :cond_d
    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-nez v3, :cond_f

    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-eqz v3, :cond_e

    goto :goto_3

    .line 4409
    :cond_e
    move v9, v8

    :cond_f
    :goto_3
    move v3, v9

    .line 4410
    .local v3, "finishMode":I
    const-string v9, "finishActivityLocked"
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move/from16 v12, p5

    :try_start_a
    invoke-virtual {p0, p1, v3, v12, v9}, Lcom/android/server/wm/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/wm/ActivityRecord;IZLjava/lang/String;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    if-nez v9, :cond_10

    move v4, v8

    .line 4420
    .local v4, "removedActivity":Z
    :cond_10
    invoke-virtual {v0, v8}, Lcom/android/server/wm/TaskRecord;->onlyHasTaskOverlayActivities(Z)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 4421
    iget-object v8, v0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/ActivityRecord;

    .line 4422
    .local v9, "taskOverlay":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v13, v9, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    if-nez v13, :cond_11

    .line 4423
    goto :goto_4

    .line 4425
    :cond_11
    invoke-direct {p0, v9, v10}, Lcom/android/server/wm/ActivityStack;->prepareActivityHideTransitionAnimation(Lcom/android/server/wm/ActivityRecord;I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 4426
    .end local v9    # "taskOverlay":Lcom/android/server/wm/ActivityRecord;
    goto :goto_4

    .line 4428
    :cond_12
    nop

    .line 4435
    iget-object v8, v1, Lcom/android/server/wm/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 4428
    return v4

    .line 4430
    .end local v3    # "finishMode":I
    .end local v4    # "removedActivity":Z
    :cond_13
    move/from16 v12, p5

    :try_start_b
    sget-boolean v8, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v8, :cond_14

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Finish waiting for pause of: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 4433
    :cond_14
    :goto_5
    nop

    .line 4435
    iget-object v3, v1, Lcom/android/server/wm/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 4433
    return v4

    .line 4435
    .end local v0    # "task":Lcom/android/server/wm/TaskRecord;
    .end local v5    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v6    # "index":I
    .end local v7    # "endTask":Z
    .end local v10    # "transit":I
    :catchall_1
    move-exception v0

    goto :goto_7

    :catchall_2
    move-exception v0

    :goto_6
    move/from16 v12, p5

    goto :goto_7

    :catchall_3
    move-exception v0

    move/from16 v12, p5

    move/from16 v11, p6

    :goto_7
    iget-object v3, v1, Lcom/android/server/wm/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method finishAllActivitiesLocked(Z)V
    .locals 7
    .param p1, "immediately"    # Z

    .line 4550
    const/4 v0, 0x1

    .line 4551
    .local v0, "noActivitiesInStack":Z
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "taskNdx":I
    :goto_0
    if-ltz v1, :cond_2

    .line 4552
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskRecord;

    iget-object v2, v2, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4553
    .local v2, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "activityNdx":I
    :goto_1
    if-ltz v3, :cond_1

    .line 4554
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 4555
    .local v4, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v0, 0x0

    .line 4556
    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_0

    if-nez p1, :cond_0

    .line 4557
    goto :goto_2

    .line 4559
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "finishAllActivitiesLocked: finishing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " immediately"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ActivityTaskManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4560
    const/4 v5, 0x0

    const-string v6, "finishAllActivitiesLocked"

    invoke-virtual {p0, v4, v5, v5, v6}, Lcom/android/server/wm/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/wm/ActivityRecord;IZLjava/lang/String;)Lcom/android/server/wm/ActivityRecord;

    .line 4553
    .end local v4    # "r":Lcom/android/server/wm/ActivityRecord;
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 4551
    .end local v2    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v3    # "activityNdx":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4564
    .end local v1    # "taskNdx":I
    :cond_2
    if-eqz v0, :cond_3

    .line 4565
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->remove()V

    .line 4567
    :cond_3
    return-void
.end method

.method final finishCurrentActivityLocked(Lcom/android/server/wm/ActivityRecord;IZLjava/lang/String;)Lcom/android/server/wm/ActivityRecord;
    .locals 16
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "mode"    # I
    .param p3, "oomAdj"    # Z
    .param p4, "reason"    # Ljava/lang/String;

    .line 4461
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v3

    .line 4462
    .local v3, "display":Lcom/android/server/wm/ActivityDisplay;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityDisplay;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 4463
    .local v5, "next":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v6

    .line 4465
    .local v6, "isFloating":Z
    const/4 v7, 0x2

    const-string v8, "finishCurrentActivityLocked"

    const-string v9, "ActivityTaskManager"

    const/4 v10, 0x0

    if-ne v2, v7, :cond_6

    iget-boolean v11, v1, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-nez v11, :cond_0

    iget-boolean v11, v1, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-eqz v11, :cond_6

    :cond_0
    if-eqz v5, :cond_6

    iget-boolean v11, v5, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-nez v11, :cond_6

    if-nez v6, :cond_6

    .line 4467
    iget-object v7, v0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v7, v7, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 4468
    invoke-direct {v0, v1, v10, v10, v8}, Lcom/android/server/wm/ActivityStack;->addToStopping(Lcom/android/server/wm/ActivityRecord;ZZLjava/lang/String;)V

    .line 4471
    :cond_1
    sget-boolean v7, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Moving to STOPPING: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " (finish requested)"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4473
    :cond_2
    sget-object v7, Lcom/android/server/wm/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/wm/ActivityPluginDelegate;

    if-eqz v7, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v7

    if-eqz v7, :cond_4

    .line 4474
    sget-object v7, Lcom/android/server/wm/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/wm/ActivityPluginDelegate;

    iget-object v7, v1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 4475
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v9

    if-ne v9, v4, :cond_3

    goto :goto_0

    :cond_3
    move v4, v10

    :goto_0
    invoke-static {v7, v4, v10}, Lcom/android/server/wm/ActivityPluginDelegate;->activitySuspendNotification(Ljava/lang/String;ZZ)V

    .line 4477
    :cond_4
    sget-object v4, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v1, v4, v8}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 4478
    if-eqz p3, :cond_5

    .line 4479
    iget-object v4, v0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->updateOomAdj()V

    .line 4481
    :cond_5
    return-object v1

    .line 4485
    :cond_6
    iget-object v11, v0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v11, v11, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4486
    iget-object v11, v0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v11, v11, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4487
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v11

    .line 4488
    .local v11, "prevState":Lcom/android/server/wm/ActivityStack$ActivityState;
    sget-boolean v12, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v12, :cond_7

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Moving to FINISHING: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4490
    :cond_7
    sget-object v12, Lcom/android/server/wm/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/wm/ActivityPluginDelegate;

    if-eqz v12, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v12

    if-eqz v12, :cond_9

    .line 4491
    sget-object v12, Lcom/android/server/wm/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/wm/ActivityPluginDelegate;

    iget-object v12, v1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 4492
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v13

    if-ne v13, v4, :cond_8

    move v13, v4

    goto :goto_1

    :cond_8
    move v13, v10

    :goto_1
    invoke-static {v12, v13, v10}, Lcom/android/server/wm/ActivityPluginDelegate;->activitySuspendNotification(Ljava/lang/String;ZZ)V

    .line 4495
    :cond_9
    sget-object v12, Lcom/android/server/wm/ActivityStack$ActivityState;->FINISHING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v1, v12, v8}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 4501
    if-nez v5, :cond_a

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityDisplay;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    if-nez v8, :cond_a

    .line 4502
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityDisplay;->getHomeStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v8

    if-nez v8, :cond_a

    move v8, v4

    goto :goto_2

    :cond_a
    move v8, v10

    .line 4503
    .local v8, "noRunningStack":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v12

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityDisplay;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v13

    if-eq v12, v13, :cond_b

    move v12, v4

    goto :goto_3

    :cond_b
    move v12, v10

    .line 4504
    .local v12, "noFocusedStack":Z
    :goto_3
    if-ne v2, v7, :cond_d

    sget-object v7, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne v11, v7, :cond_d

    if-nez v12, :cond_c

    if-eqz v8, :cond_d

    :cond_c
    move v7, v4

    goto :goto_4

    :cond_d
    move v7, v10

    .line 4507
    .local v7, "finishingInNonFocusedStackOrNoRunning":Z
    :goto_4
    if-eqz v2, :cond_11

    sget-object v13, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne v11, v13, :cond_e

    if-eq v2, v4, :cond_11

    .line 4509
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v13

    if-nez v13, :cond_11

    :cond_e
    if-nez v7, :cond_11

    sget-object v13, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-eq v11, v13, :cond_11

    sget-object v13, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-eq v11, v13, :cond_11

    sget-object v13, Lcom/android/server/wm/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne v11, v13, :cond_f

    goto :goto_5

    .line 4537
    :cond_f
    iget-object v4, v0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4538
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 4539
    iget-object v4, v0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 4542
    sget-object v4, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v4, v0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_10

    .line 4543
    invoke-virtual {v0, v10, v10, v5, v10}, Lcom/android/server/wm/ActivityStack;->startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;Z)Z

    .line 4546
    :cond_10
    return-object v1

    .line 4514
    :cond_11
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->makeFinishingLocked()V

    .line 4515
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "finish-imm:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p4

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v1, v4, v13}, Lcom/android/server/wm/ActivityStack;->destroyActivityLocked(Lcom/android/server/wm/ActivityRecord;ZLjava/lang/String;)Z

    move-result v13

    .line 4517
    .local v13, "activityRemoved":Z
    if-eqz v7, :cond_12

    .line 4522
    iget-object v15, v0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget v2, v0, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    invoke-virtual {v15, v5, v2, v10, v4}, Lcom/android/server/wm/RootActivityContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;IZZ)Z

    .line 4525
    :cond_12
    if-eqz v13, :cond_13

    .line 4526
    iget-object v2, v0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 4528
    :cond_13
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONTAINERS:Z

    if-eqz v2, :cond_14

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "destroyActivityLocked: finishCurrentActivityLocked r="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " destroy returned removed="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4531
    :cond_14
    if-eqz v13, :cond_15

    const/4 v2, 0x0

    goto :goto_6

    :cond_15
    move-object v2, v1

    :goto_6
    return-object v2
.end method

.method finishDisabledPackageActivitiesLocked(Ljava/lang/String;Ljava/util/Set;ZZI)Z
    .locals 18
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "doit"    # Z
    .param p4, "evenPersistent"    # Z
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZI)Z"
        }
    .end annotation

    .line 5559
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p5

    const/4 v0, 0x0

    .line 5560
    .local v0, "didSomething":Z
    const/4 v1, 0x0

    .line 5561
    .local v1, "lastTask":Lcom/android/server/wm/TaskRecord;
    const/4 v2, 0x0

    .line 5562
    .local v2, "homeActivity":Landroid/content/ComponentName;
    iget-object v3, v6, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v10, 0x1

    sub-int/2addr v3, v10

    move v11, v3

    .local v11, "taskNdx":I
    :goto_0
    if-ltz v11, :cond_c

    .line 5563
    iget-object v3, v6, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskRecord;

    iget-object v12, v3, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5564
    .local v12, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    iget-object v3, v6, Lcom/android/server/wm/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 5565
    iget-object v3, v6, Lcom/android/server/wm/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5567
    :goto_1
    iget-object v3, v6, Lcom/android/server/wm/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    .line 5568
    iget-object v3, v6, Lcom/android/server/wm/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lcom/android/server/wm/ActivityRecord;

    .line 5569
    .local v13, "r":Lcom/android/server/wm/ActivityRecord;
    iget-object v3, v13, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 5570
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v8, :cond_1

    iget-object v3, v13, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 5571
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    if-nez v7, :cond_2

    iget v3, v13, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne v3, v9, :cond_2

    :cond_1
    move v4, v10

    :cond_2
    move v14, v4

    .line 5573
    .local v14, "sameComponent":Z
    const/4 v3, -0x1

    if-eq v9, v3, :cond_3

    iget v3, v13, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne v3, v9, :cond_a

    :cond_3
    if-nez v14, :cond_4

    .line 5574
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    if-ne v3, v1, :cond_a

    :cond_4
    iget-object v3, v13, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v3, :cond_5

    if-nez p4, :cond_5

    iget-object v3, v13, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 5575
    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->isPersistent()Z

    move-result v3

    if-nez v3, :cond_a

    .line 5576
    :cond_5
    if-nez p3, :cond_7

    .line 5577
    iget-boolean v3, v13, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_6

    .line 5580
    goto :goto_1

    .line 5582
    :cond_6
    return v10

    .line 5584
    :cond_7
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v3

    const-string v4, "ActivityTaskManager"

    if-eqz v3, :cond_9

    .line 5585
    if-eqz v2, :cond_8

    iget-object v3, v13, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 5586
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skip force-stop again "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5587
    goto :goto_1

    .line 5589
    :cond_8
    iget-object v2, v13, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    move-object v15, v2

    goto :goto_2

    .line 5584
    :cond_9
    move-object v15, v2

    .line 5592
    .end local v2    # "homeActivity":Landroid/content/ComponentName;
    .local v15, "homeActivity":Landroid/content/ComponentName;
    :goto_2
    const/16 v16, 0x1

    .line 5593
    .end local v0    # "didSomething":Z
    .local v16, "didSomething":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Force finishing activity "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5594
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v17

    .line 5595
    .end local v1    # "lastTask":Lcom/android/server/wm/TaskRecord;
    .local v17, "lastTask":Lcom/android/server/wm/TaskRecord;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    const-string v4, "force-stop"

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStack;->finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-object v2, v15

    move/from16 v0, v16

    move-object/from16 v1, v17

    .line 5598
    .end local v13    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v14    # "sameComponent":Z
    .end local v15    # "homeActivity":Landroid/content/ComponentName;
    .end local v16    # "didSomething":Z
    .end local v17    # "lastTask":Lcom/android/server/wm/TaskRecord;
    .restart local v0    # "didSomething":Z
    .restart local v1    # "lastTask":Lcom/android/server/wm/TaskRecord;
    .restart local v2    # "homeActivity":Landroid/content/ComponentName;
    :cond_a
    goto/16 :goto_1

    .line 5562
    .end local v12    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    :cond_b
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_0

    .line 5600
    .end local v11    # "taskNdx":I
    :cond_c
    return v0
.end method

.method final finishSubActivityLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)V
    .locals 10
    .param p1, "self"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "resultWho"    # Ljava/lang/String;
    .param p3, "requestCode"    # I

    .line 4164
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_0
    if-ltz v0, :cond_4

    .line 4165
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    iget-object v1, v1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4166
    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "activityNdx":I
    :goto_1
    if-ltz v2, :cond_3

    .line 4167
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 4168
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-ne v4, p1, :cond_2

    iget v4, v3, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    if-ne v4, p3, :cond_2

    .line 4169
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    if-nez v4, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 4170
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4171
    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const-string v8, "request-sub"

    move-object v4, p0

    move-object v5, v3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/ActivityStack;->finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 4166
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 4164
    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v2    # "activityNdx":I
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4177
    .end local v0    # "taskNdx":I
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateOomAdj()V

    .line 4178
    return-void
.end method

.method final finishTopCrashedActivityLocked(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)Lcom/android/server/wm/TaskRecord;
    .locals 16
    .param p1, "app"    # Lcom/android/server/wm/WindowProcessController;
    .param p2, "reason"    # Ljava/lang/String;

    .line 4189
    move-object/from16 v7, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    .line 4190
    .local v8, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v0, 0x0

    .line 4191
    .local v0, "finishedTask":Lcom/android/server/wm/TaskRecord;
    if-eqz v8, :cond_7

    iget-object v1, v8, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    move-object/from16 v9, p1

    if-eq v1, v9, :cond_0

    goto/16 :goto_2

    .line 4194
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  Force finishing activity "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 4195
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4194
    const-string v11, "ActivityTaskManager"

    invoke-static {v11, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4196
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 4197
    iget-object v1, v7, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    .line 4198
    .local v12, "taskNdx":I
    move-object v13, v0

    .line 4199
    .local v13, "task":Lcom/android/server/wm/TaskRecord;
    iget-object v1, v13, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    .line 4200
    .local v14, "activityNdx":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v2, 0x1a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    .line 4202
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v2, v8

    move-object/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityStack;->finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 4203
    move-object v15, v13

    .line 4207
    .end local v0    # "finishedTask":Lcom/android/server/wm/TaskRecord;
    .local v15, "finishedTask":Lcom/android/server/wm/TaskRecord;
    add-int/lit8 v14, v14, -0x1

    .line 4208
    if-gez v14, :cond_3

    .line 4210
    :cond_1
    add-int/lit8 v12, v12, -0x1

    .line 4211
    if-gez v12, :cond_2

    .line 4212
    goto :goto_0

    .line 4214
    :cond_2
    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskRecord;

    iget-object v0, v0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v14, v0, -0x1

    .line 4215
    if-ltz v14, :cond_1

    .line 4217
    :cond_3
    :goto_0
    if-ltz v14, :cond_6

    .line 4222
    :try_start_0
    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskRecord;

    iget-object v0, v0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    move-object v8, v0

    .line 4223
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v2, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v8, v0, v1, v2}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4224
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    iget-object v1, v8, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eq v0, v1, :cond_5

    .line 4225
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 4226
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4225
    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4227
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v2, v8

    move-object/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityStack;->finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4234
    :cond_5
    goto :goto_1

    .line 4232
    :catch_0
    move-exception v0

    .line 4233
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4237
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_1
    return-object v15

    .line 4191
    .end local v12    # "taskNdx":I
    .end local v13    # "task":Lcom/android/server/wm/TaskRecord;
    .end local v14    # "activityNdx":I
    .end local v15    # "finishedTask":Lcom/android/server/wm/TaskRecord;
    .local v0, "finishedTask":Lcom/android/server/wm/TaskRecord;
    :cond_7
    move-object/from16 v9, p1

    .line 4192
    :goto_2
    const/4 v1, 0x0

    return-object v1
.end method

.method final finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    .locals 12
    .param p1, "session"    # Landroid/service/voice/IVoiceInteractionSession;

    .line 4241
    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 4242
    .local v0, "sessionBinder":Landroid/os/IBinder;
    const/4 v1, 0x0

    .line 4243
    .local v1, "didOne":Z
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "taskNdx":I
    :goto_0
    if-ltz v2, :cond_5

    .line 4244
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskRecord;

    .line 4245
    .local v3, "tr":Lcom/android/server/wm/TaskRecord;
    iget-object v4, v3, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v4}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, v0, :cond_2

    .line 4246
    iget-object v4, v3, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "activityNdx":I
    :goto_1
    if-ltz v4, :cond_1

    .line 4247
    iget-object v5, v3, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    .line 4248
    .local v5, "r":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v6, v5, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v6, :cond_0

    .line 4249
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const-string v10, "finish-voice"

    move-object v6, p0

    move-object v7, v5

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/wm/ActivityStack;->finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 4251
    const/4 v1, 0x1

    .line 4246
    .end local v5    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .end local v4    # "activityNdx":I
    :cond_1
    goto :goto_4

    .line 4256
    :cond_2
    iget-object v4, v3, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .restart local v4    # "activityNdx":I
    :goto_2
    if-ltz v4, :cond_4

    .line 4257
    iget-object v5, v3, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    .line 4258
    .restart local v5    # "r":Lcom/android/server/wm/ActivityRecord;
    iget-object v6, v5, Lcom/android/server/wm/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v6, :cond_3

    iget-object v6, v5, Lcom/android/server/wm/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v6}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-ne v6, v0, :cond_3

    .line 4260
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->clearVoiceSessionLocked()V

    .line 4262
    :try_start_0
    iget-object v6, v5, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v6

    iget-object v7, v5, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/app/IApplicationThread;->scheduleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4266
    goto :goto_3

    .line 4264
    :catch_0
    move-exception v6

    .line 4267
    :goto_3
    iget-object v6, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService;->finishRunningVoiceLocked()V

    .line 4268
    goto :goto_4

    .line 4256
    .end local v5    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 4243
    .end local v3    # "tr":Lcom/android/server/wm/TaskRecord;
    .end local v4    # "activityNdx":I
    :cond_4
    :goto_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 4274
    .end local v2    # "taskNdx":I
    :cond_5
    if-eqz v1, :cond_6

    .line 4275
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->updateOomAdj()V

    .line 4277
    :cond_6
    return-void
.end method

.method getAdjustedPositionForTask(Lcom/android/server/wm/TaskRecord;ILcom/android/server/wm/ActivityRecord;)I
    .locals 4
    .param p1, "task"    # Lcom/android/server/wm/TaskRecord;
    .param p2, "suggestedPosition"    # I
    .param p3, "starting"    # Lcom/android/server/wm/ActivityRecord;

    .line 3373
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3374
    .local v0, "maxPosition":I
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->okToShowLocked()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-nez p3, :cond_2

    .line 3375
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->okToShowLocked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3377
    :cond_1
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1

    .line 3381
    :cond_2
    :goto_0
    if-lez v0, :cond_4

    .line 3382
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    .line 3383
    .local v1, "tmpTask":Lcom/android/server/wm/TaskRecord;
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget v3, v1, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3384
    invoke-virtual {v1}, Lcom/android/server/wm/TaskRecord;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-nez v2, :cond_3

    .line 3385
    goto :goto_1

    .line 3387
    :cond_3
    nop

    .end local v1    # "tmpTask":Lcom/android/server/wm/TaskRecord;
    add-int/lit8 v0, v0, -0x1

    .line 3388
    goto :goto_0

    .line 3390
    :cond_4
    :goto_1
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method getAllRunningVisibleActivitiesLocked(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    .line 1163
    .local p1, "outActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1164
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1165
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/TaskRecord;->getAllRunningVisibleActivitiesLocked(Ljava/util/ArrayList;)V

    .line 1164
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1167
    .end local v0    # "taskNdx":I
    :cond_0
    return-void
.end method

.method getAllTasks()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/TaskRecord;",
            ">;"
        }
    .end annotation

    .line 5891
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getAnimationOrCurrentBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 6047
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 6048
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v0, :cond_0

    .line 6049
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 6050
    return-void

    .line 6052
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskStack;->getAnimationOrCurrentBounds(Landroid/graphics/Rect;)V

    .line 6053
    return-void
.end method

.method protected bridge synthetic getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;
    .locals 0

    .line 205
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStack;->getChildAt(I)Lcom/android/server/wm/TaskRecord;

    move-result-object p1

    return-object p1
.end method

.method protected getChildAt(I)Lcom/android/server/wm/TaskRecord;
    .locals 1
    .param p1, "index"    # I

    .line 284
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskRecord;

    return-object v0
.end method

.method protected getChildCount()I
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getDefaultPictureInPictureBounds(F)Landroid/graphics/Rect;
    .locals 2
    .param p1, "aspectRatio"    # F

    .line 6026
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 6027
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/TaskStack;->getPictureInPictureBounds(FLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method getDisplay()Lcom/android/server/wm/ActivityDisplay;
    .locals 2

    .line 1029
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget v1, p0, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    return-object v0
.end method

.method getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation

    .line 5761
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5763
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    const-string v1, "all"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5764
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "taskNdx":I
    :goto_0
    if-ltz v1, :cond_0

    .line 5765
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskRecord;

    iget-object v2, v2, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5764
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v1    # "taskNdx":I
    :cond_0
    goto :goto_3

    .line 5767
    :cond_1
    const-string v1, "top"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5768
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 5769
    .local v1, "top":I
    if-ltz v1, :cond_2

    .line 5770
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskRecord;

    iget-object v2, v2, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5771
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 5772
    .local v3, "listTop":I
    if-ltz v3, :cond_2

    .line 5773
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5776
    .end local v1    # "top":I
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v3    # "listTop":I
    :cond_2
    goto :goto_3

    .line 5777
    :cond_3
    new-instance v1, Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    invoke-direct {v1}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;-><init>()V

    .line 5778
    .local v1, "matcher":Lcom/android/server/am/ActivityManagerService$ItemMatcher;
    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->build(Ljava/lang/String;)V

    .line 5780
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "taskNdx":I
    :goto_1
    if-ltz v2, :cond_6

    .line 5781
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskRecord;

    iget-object v3, v3, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 5782
    .local v4, "r1":Lcom/android/server/wm/ActivityRecord;
    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 5783
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5785
    .end local v4    # "r1":Lcom/android/server/wm/ActivityRecord;
    :cond_4
    goto :goto_2

    .line 5780
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 5789
    .end local v1    # "matcher":Lcom/android/server/am/ActivityManagerService$ItemMatcher;
    .end local v2    # "taskNdx":I
    :cond_6
    :goto_3
    return-object v0
.end method

.method protected getParent()Lcom/android/server/wm/ActivityDisplay;
    .locals 1

    .line 289
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getParent()Lcom/android/server/wm/ConfigurationContainer;
    .locals 1

    .line 205
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    return-object v0
.end method

.method getPresentUIDs(Landroid/util/IntArray;)V
    .locals 5
    .param p1, "presentUIDs"    # Landroid/util/IntArray;

    .line 1306
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    .line 1307
    .local v1, "task":Lcom/android/server/wm/TaskRecord;
    iget-object v2, v1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 1308
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/IntArray;->add(I)V

    .line 1309
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    goto :goto_1

    .line 1310
    .end local v1    # "task":Lcom/android/server/wm/TaskRecord;
    :cond_0
    goto :goto_0

    .line 1311
    :cond_1
    return-void
.end method

.method protected getResumedActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    .line 2821
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    return-object v0
.end method

.method getRunningTasks(Ljava/util/List;IIIZ)V
    .locals 6
    .param p2, "ignoreActivityType"    # I
        .annotation build Landroid/app/WindowConfiguration$ActivityType;
        .end annotation
    .end param
    .param p3, "ignoreWindowingMode"    # I
        .annotation build Landroid/app/WindowConfiguration$WindowingMode;
        .end annotation
    .end param
    .param p4, "callingUid"    # I
    .param p5, "allowed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wm/TaskRecord;",
            ">;IIIZ)V"
        }
    .end annotation

    .line 5610
    .local p1, "tasksOut":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/TaskRecord;>;"
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    const/4 v1, 0x1

    if-ne v0, p0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5611
    .local v0, "focusedStack":Z
    :goto_0
    const/4 v2, 0x1

    .line 5612
    .local v2, "topTask":Z
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    .local v3, "taskNdx":I
    :goto_1
    if-ltz v3, :cond_6

    .line 5613
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    .line 5614
    .local v1, "task":Lcom/android/server/wm/TaskRecord;
    invoke-virtual {v1}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-nez v4, :cond_1

    .line 5616
    goto :goto_2

    .line 5618
    :cond_1
    if-nez p5, :cond_2

    invoke-virtual {v1}, Lcom/android/server/wm/TaskRecord;->isActivityTypeHome()Z

    move-result v4

    if-nez v4, :cond_2

    iget v4, v1, Lcom/android/server/wm/TaskRecord;->effectiveUid:I

    if-eq v4, p4, :cond_2

    .line 5620
    goto :goto_2

    .line 5622
    :cond_2
    if-eqz p2, :cond_3

    .line 5623
    invoke-virtual {v1}, Lcom/android/server/wm/TaskRecord;->getActivityType()I

    move-result v4

    if-ne v4, p2, :cond_3

    .line 5625
    goto :goto_2

    .line 5627
    :cond_3
    if-eqz p3, :cond_4

    .line 5628
    invoke-virtual {v1}, Lcom/android/server/wm/TaskRecord;->getWindowingMode()I

    move-result v4

    if-ne v4, p3, :cond_4

    .line 5630
    goto :goto_2

    .line 5632
    :cond_4
    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    .line 5636
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/server/wm/TaskRecord;->lastActiveTime:J

    .line 5637
    const/4 v2, 0x0

    .line 5639
    :cond_5
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5612
    .end local v1    # "task":Lcom/android/server/wm/TaskRecord;
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 5641
    .end local v3    # "taskNdx":I
    :cond_6
    return-void
.end method

.method getStackDockedModeBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "dockedBounds"    # Landroid/graphics/Rect;
    .param p2, "currentTempTaskBounds"    # Landroid/graphics/Rect;
    .param p3, "outStackBounds"    # Landroid/graphics/Rect;
    .param p4, "outTempTaskBounds"    # Landroid/graphics/Rect;

    .line 1037
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_0

    .line 1038
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/TaskStack;->getStackDockedModeBoundsLocked(Landroid/content/res/Configuration;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1041
    :cond_0
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 1042
    invoke-virtual {p4}, Landroid/graphics/Rect;->setEmpty()V

    .line 1044
    :goto_0
    return-void
.end method

.method public getStackId()I
    .locals 1

    .line 6097
    iget v0, p0, Lcom/android/server/wm/ActivityStack;->mStackId:I

    return v0
.end method

.method getTaskStack()Lcom/android/server/wm/TaskStack;
    .locals 1

    .line 629
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    return-object v0
.end method

.method getTopActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 2

    .line 1235
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1236
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1237
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_0

    .line 1238
    return-object v1

    .line 1235
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1241
    .end local v0    # "taskNdx":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getTopDismissingKeyguardActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    .line 2513
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTopDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    return-object v0
.end method

.method getVisibility(Lcom/android/server/wm/ActivityRecord;)I
    .locals 20
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .annotation build Lcom/android/server/wm/ActivityStack$StackVisibility;
    .end annotation

    .line 2147
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isAttached()Z

    move-result v2

    if-eqz v2, :cond_17

    iget-boolean v2, v0, Lcom/android/server/wm/ActivityStack;->mForceHidden:Z

    if-eqz v2, :cond_0

    goto/16 :goto_8

    .line 2151
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v2

    .line 2152
    .local v2, "display":Lcom/android/server/wm/ActivityDisplay;
    const/4 v4, 0x0

    .line 2153
    .local v4, "gotSplitScreenStack":Z
    const/4 v5, 0x0

    .line 2154
    .local v5, "gotOpaqueSplitScreenPrimary":Z
    const/4 v6, 0x0

    .line 2155
    .local v6, "gotOpaqueSplitScreenSecondary":Z
    const/4 v7, 0x0

    .line 2156
    .local v7, "gotTranslucentFullscreen":Z
    const/4 v8, 0x0

    .line 2157
    .local v8, "gotTranslucentSplitScreenPrimary":Z
    const/4 v9, 0x0

    .line 2158
    .local v9, "gotTranslucentSplitScreenSecondary":Z
    const/4 v10, 0x1

    .line 2159
    .local v10, "shouldBeVisible":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v11

    .line 2160
    .local v11, "windowingMode":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeAssistant()Z

    move-result v12

    .line 2161
    .local v12, "isAssistantType":Z
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v13

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    .local v13, "i":I
    :goto_0
    if-ltz v13, :cond_d

    .line 2162
    invoke-virtual {v2, v13}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 2163
    .local v3, "other":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v17

    if-eqz v17, :cond_1

    move/from16 v17, v14

    goto :goto_1

    :cond_1
    const/16 v17, 0x0

    .line 2164
    .local v17, "hasRunningActivities":Z
    :goto_1
    if-ne v3, v0, :cond_4

    .line 2167
    if-nez v17, :cond_3

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/ActivityStack;->isInStackLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v18

    if-nez v18, :cond_3

    .line 2168
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v18

    if-eqz v18, :cond_2

    goto :goto_2

    :cond_2
    const/16 v18, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    move/from16 v18, v14

    :goto_3
    move/from16 v10, v18

    .line 2169
    move-object/from16 v19, v2

    goto/16 :goto_5

    .line 2172
    :cond_4
    if-nez v17, :cond_5

    .line 2173
    move-object/from16 v19, v2

    goto/16 :goto_4

    .line 2176
    :cond_5
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v15

    .line 2178
    .local v15, "otherWindowingMode":I
    if-ne v15, v14, :cond_8

    .line 2185
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result v14

    .line 2186
    .local v14, "activityType":I
    move-object/from16 v19, v2

    const/4 v2, 0x3

    .end local v2    # "display":Lcom/android/server/wm/ActivityDisplay;
    .local v19, "display":Lcom/android/server/wm/ActivityDisplay;
    if-ne v11, v2, :cond_6

    .line 2187
    const/4 v2, 0x2

    if-eq v14, v2, :cond_e

    const/4 v2, 0x4

    if-ne v14, v2, :cond_6

    iget-object v2, v0, Lcom/android/server/wm/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 2189
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 2190
    goto :goto_5

    .line 2193
    :cond_6
    invoke-virtual {v3, v1}, Lcom/android/server/wm/ActivityStack;->isStackTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2195
    const/4 v2, 0x1

    .line 2196
    .end local v7    # "gotTranslucentFullscreen":Z
    .local v2, "gotTranslucentFullscreen":Z
    move v7, v2

    goto :goto_4

    .line 2198
    .end local v2    # "gotTranslucentFullscreen":Z
    .restart local v7    # "gotTranslucentFullscreen":Z
    :cond_7
    const/4 v2, 0x2

    return v2

    .line 2199
    .end local v14    # "activityType":I
    .end local v19    # "display":Lcom/android/server/wm/ActivityDisplay;
    .local v2, "display":Lcom/android/server/wm/ActivityDisplay;
    :cond_8
    move-object/from16 v19, v2

    .end local v2    # "display":Lcom/android/server/wm/ActivityDisplay;
    .restart local v19    # "display":Lcom/android/server/wm/ActivityDisplay;
    const/4 v2, 0x3

    if-ne v15, v2, :cond_9

    if-nez v5, :cond_9

    .line 2201
    const/4 v4, 0x1

    .line 2202
    invoke-virtual {v3, v1}, Lcom/android/server/wm/ActivityStack;->isStackTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v8

    .line 2203
    xor-int/lit8 v2, v8, 0x1

    move v5, v2

    .line 2204
    const/4 v2, 0x3

    if-ne v11, v2, :cond_a

    if-eqz v5, :cond_a

    .line 2207
    const/4 v2, 0x2

    return v2

    .line 2209
    :cond_9
    const/4 v2, 0x4

    if-ne v15, v2, :cond_a

    if-nez v6, :cond_a

    .line 2211
    const/4 v4, 0x1

    .line 2212
    invoke-virtual {v3, v1}, Lcom/android/server/wm/ActivityStack;->isStackTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v9

    .line 2213
    xor-int/lit8 v2, v9, 0x1

    move v6, v2

    .line 2214
    const/4 v2, 0x4

    if-ne v11, v2, :cond_a

    if-eqz v6, :cond_a

    .line 2217
    const/4 v2, 0x2

    return v2

    .line 2220
    :cond_a
    if-eqz v5, :cond_b

    if-eqz v6, :cond_b

    .line 2223
    const/4 v2, 0x2

    return v2

    .line 2220
    :cond_b
    const/4 v2, 0x2

    .line 2225
    if-eqz v12, :cond_c

    if-eqz v4, :cond_c

    .line 2229
    return v2

    .line 2161
    .end local v3    # "other":Lcom/android/server/wm/ActivityStack;
    .end local v15    # "otherWindowingMode":I
    .end local v17    # "hasRunningActivities":Z
    :cond_c
    :goto_4
    add-int/lit8 v13, v13, -0x1

    move-object/from16 v2, v19

    const/4 v14, 0x1

    goto/16 :goto_0

    .end local v19    # "display":Lcom/android/server/wm/ActivityDisplay;
    .restart local v2    # "display":Lcom/android/server/wm/ActivityDisplay;
    :cond_d
    move-object/from16 v19, v2

    .line 2233
    .end local v2    # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v13    # "i":I
    .restart local v19    # "display":Lcom/android/server/wm/ActivityDisplay;
    :cond_e
    :goto_5
    if-nez v10, :cond_f

    .line 2234
    const/4 v2, 0x2

    return v2

    .line 2238
    :cond_f
    const/4 v2, 0x1

    if-eq v11, v2, :cond_12

    const/4 v3, 0x3

    if-eq v11, v3, :cond_11

    const/4 v3, 0x4

    if-eq v11, v3, :cond_10

    goto :goto_6

    .line 2268
    :cond_10
    if-eqz v9, :cond_15

    .line 2270
    return v2

    .line 2262
    :cond_11
    if-eqz v8, :cond_15

    .line 2264
    return v2

    .line 2246
    :cond_12
    if-eqz v9, :cond_13

    .line 2249
    return v2

    .line 2253
    :cond_13
    if-eqz v8, :cond_15

    .line 2254
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v2, :cond_14

    .line 2255
    const-string v2, "ActivityTaskManager"

    const-string v3, "getVisibility: make stack invisible behind translucent split-screen primary"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2257
    :cond_14
    const/4 v2, 0x2

    return v2

    .line 2276
    :cond_15
    :goto_6
    if-eqz v7, :cond_16

    move/from16 v16, v2

    goto :goto_7

    .line 2277
    :cond_16
    const/16 v16, 0x0

    .line 2276
    :goto_7
    return v16

    .line 2148
    .end local v4    # "gotSplitScreenStack":Z
    .end local v5    # "gotOpaqueSplitScreenPrimary":Z
    .end local v6    # "gotOpaqueSplitScreenSecondary":Z
    .end local v7    # "gotTranslucentFullscreen":Z
    .end local v8    # "gotTranslucentSplitScreenPrimary":Z
    .end local v9    # "gotTranslucentSplitScreenSecondary":Z
    .end local v10    # "shouldBeVisible":Z
    .end local v11    # "windowingMode":I
    .end local v12    # "isAssistantType":Z
    .end local v19    # "display":Lcom/android/server/wm/ActivityDisplay;
    :cond_17
    :goto_8
    const/4 v2, 0x2

    return v2
.end method

.method getWindowContainerBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 1054
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_0

    .line 1055
    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 1056
    return-void

    .line 1058
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 1059
    return-void
.end method

.method goToSleep()V
    .locals 9

    .line 1727
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v0}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 1732
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "taskNdx":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1733
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskRecord;

    iget-object v2, v2, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1734
    .local v2, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    .local v3, "activityNdx":I
    :goto_1
    if-ltz v3, :cond_1

    .line 1735
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 1736
    .local v4, "r":Lcom/android/server/wm/ActivityRecord;
    sget-object v5, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1737
    invoke-virtual {v4, v1}, Lcom/android/server/wm/ActivityRecord;->setSleeping(Z)V

    .line 1734
    .end local v4    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1732
    .end local v2    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v3    # "activityNdx":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1741
    .end local v0    # "taskNdx":I
    :cond_2
    return-void
.end method

.method goToSleepIfPossible(Z)Z
    .locals 5
    .param p1, "shuttingDown"    # Z

    .line 1684
    const/4 v0, 0x1

    .line 1686
    .local v0, "shouldSleep":Z
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const-string v2, "ActivityTaskManager"

    if-eqz v1, :cond_2

    .line 1688
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sleep needs to pause "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    :cond_0
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_USER_LEAVING:Z

    if-eqz v1, :cond_1

    const-string v1, "Sleep => pause with userLeaving=false"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    :cond_1
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1, v3, v4}, Lcom/android/server/wm/ActivityStack;->startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;Z)Z

    .line 1693
    const/4 v0, 0x0

    goto :goto_0

    .line 1694
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_4

    .line 1696
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sleep still waiting to pause "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    :cond_3
    const/4 v0, 0x0

    .line 1700
    :cond_4
    :goto_0
    if-nez p1, :cond_8

    .line 1701
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/server/wm/ActivityStack;->containsActivityFromStack(Ljava/util/List;)Z

    move-result v1

    const-string v3, " activities"

    if-eqz v1, :cond_6

    .line 1703
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sleep still need to stop "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    .line 1704
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1703
    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleIdleLocked()V

    .line 1707
    const/4 v0, 0x0

    .line 1710
    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/server/wm/ActivityStack;->containsActivityFromStack(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1712
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sleep still need to sleep "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    .line 1713
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1712
    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    :cond_7
    const/4 v0, 0x0

    .line 1718
    :cond_8
    if-eqz v0, :cond_9

    .line 1719
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->goToSleep()V

    .line 1722
    :cond_9
    return v0
.end method

.method handleAppCrash(Lcom/android/server/wm/WindowProcessController;)V
    .locals 7
    .param p1, "app"    # Lcom/android/server/wm/WindowProcessController;

    .line 5676
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_0
    if-ltz v0, :cond_2

    .line 5677
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    iget-object v1, v1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5678
    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "activityNdx":I
    :goto_1
    if-ltz v2, :cond_1

    .line 5679
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 5680
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-ne v4, p1, :cond_0

    .line 5681
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Force finishing activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 5682
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5681
    const-string v5, "ActivityTaskManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5684
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 5685
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v5, 0x1a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    .line 5687
    const-string v4, "handleAppCrashedLocked"

    invoke-virtual {p0, v3, v6, v6, v4}, Lcom/android/server/wm/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/wm/ActivityRecord;IZLjava/lang/String;)Lcom/android/server/wm/ActivityRecord;

    .line 5678
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 5676
    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v2    # "activityNdx":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5692
    .end local v0    # "taskNdx":I
    :cond_2
    return-void
.end method

.method handleAppDiedLocked(Lcom/android/server/wm/WindowProcessController;)Z
    .locals 3
    .param p1, "app"    # Lcom/android/server/wm/WindowProcessController;

    .line 5662
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-ne v0, p1, :cond_2

    .line 5663
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CLEANUP:Z

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App died while pausing: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5665
    :cond_1
    iput-object v1, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 5667
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-ne v0, p1, :cond_3

    .line 5668
    iput-object v1, p0, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 5669
    iput-object v1, p0, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    .line 5672
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityStack;->removeHistoryRecordsForAppLocked(Lcom/android/server/wm/WindowProcessController;)Z

    move-result v0

    return v0
.end method

.method inFrontOfStandardStack()Z
    .locals 4

    .line 4571
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 4572
    .local v0, "display":Lcom/android/server/wm/ActivityDisplay;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4573
    return v1

    .line 4575
    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityDisplay;->getIndexOf(Lcom/android/server/wm/ActivityStack;)I

    move-result v2

    .line 4576
    .local v2, "index":I
    if-nez v2, :cond_1

    .line 4577
    return v1

    .line 4579
    :cond_1
    add-int/lit8 v1, v2, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 4580
    .local v1, "stackBehind":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->isActivityTypeStandard()Z

    move-result v3

    return v3
.end method

.method isAnimatingBoundsToFullscreen()Z
    .locals 1

    .line 6075
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 6076
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isAnimatingBoundsToFullscreen()Z

    move-result v0

    return v0
.end method

.method final isAttached()Z
    .locals 2

    .line 1429
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 1430
    .local v0, "display":Lcom/android/server/wm/ActivityDisplay;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isCompatible(II)Z
    .locals 1
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I

    .line 967
    if-nez p2, :cond_0

    .line 970
    const/4 p2, 0x1

    .line 972
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/ConfigurationContainer;->isCompatible(II)Z

    move-result v0

    return v0
.end method

.method isFocusable()Z
    .locals 3

    .line 1420
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1421
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, p0, v2}, Lcom/android/server/wm/RootActivityContainer;->isFocusable(Lcom/android/server/wm/ConfigurationContainer;Z)Z

    move-result v1

    return v1
.end method

.method isFocusableAndVisible()Z
    .locals 1

    .line 1425
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isFocusedStackOnDisplay()Z
    .locals 2

    .line 2122
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 2123
    .local v0, "display":Lcom/android/server/wm/ActivityDisplay;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    if-ne p0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method final isHomeOrRecentsStack()Z
    .locals 1

    .line 1332
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeRecents()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1270
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1271
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->isInStackLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    return-object v1
.end method

.method isInStackLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .locals 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1275
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1276
    return-object v0

    .line 1278
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    .line 1279
    .local v1, "task":Lcom/android/server/wm/TaskRecord;
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 1280
    .local v2, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v2, :cond_2

    iget-object v3, v1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1281
    if-eq v2, p0, :cond_1

    const-string v0, "ActivityTaskManager"

    const-string v3, "Illegal state! task does not point to stack it is in."

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    :cond_1
    return-object p1

    .line 1285
    :cond_2
    return-object v0
.end method

.method isInStackLocked(Lcom/android/server/wm/TaskRecord;)Z
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/TaskRecord;

    .line 1289
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final isOnHomeDisplay()Z
    .locals 1

    .line 1336
    iget v0, p0, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isSingleTaskInstance()Z
    .locals 2

    .line 1315
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 1316
    .local v0, "display":Lcom/android/server/wm/ActivityDisplay;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->isSingleTaskInstance()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isStackTranslucent(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 7
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2081
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isAttached()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStack;->mForceHidden:Z

    if-eqz v0, :cond_0

    goto :goto_4

    .line 2084
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .local v0, "taskNdx":I
    :goto_0
    if-ltz v0, :cond_6

    .line 2085
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskRecord;

    .line 2086
    .local v2, "task":Lcom/android/server/wm/TaskRecord;
    iget-object v3, v2, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 2087
    .local v3, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    .local v4, "activityNdx":I
    :goto_1
    if-ltz v4, :cond_5

    .line 2088
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    .line 2090
    .local v5, "r":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v6, v5, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_1

    .line 2093
    goto :goto_2

    .line 2096
    :cond_1
    iget-boolean v6, v5, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-nez v6, :cond_2

    if-eq v5, p1, :cond_2

    .line 2099
    goto :goto_2

    .line 2102
    :cond_2
    iget-boolean v6, v5, Lcom/android/server/wm/ActivityRecord;->fullscreen:Z

    if-nez v6, :cond_4

    iget-boolean v6, v5, Lcom/android/server/wm/ActivityRecord;->hasWallpaper:Z

    if-eqz v6, :cond_3

    goto :goto_3

    .line 2087
    .end local v5    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 2105
    .restart local v5    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_4
    :goto_3
    const/4 v1, 0x0

    return v1

    .line 2084
    .end local v2    # "task":Lcom/android/server/wm/TaskRecord;
    .end local v3    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v4    # "activityNdx":I
    .end local v5    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2109
    .end local v0    # "taskNdx":I
    :cond_6
    return v1

    .line 2082
    :cond_7
    :goto_4
    return v1
.end method

.method isTopActivityVisible()Z
    .locals 2

    .line 2127
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2128
    .local v0, "topActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isTopStackOnDisplay()Z
    .locals 2

    .line 2113
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 2114
    .local v0, "display":Lcom/android/server/wm/ActivityDisplay;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityDisplay;->isTopStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isUidPresent(I)Z
    .locals 5
    .param p1, "uid"    # I

    .line 1294
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    .line 1295
    .local v1, "task":Lcom/android/server/wm/TaskRecord;
    iget-object v2, v1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 1296
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 1297
    const/4 v0, 0x1

    return v0

    .line 1299
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    goto :goto_1

    .line 1300
    .end local v1    # "task":Lcom/android/server/wm/TaskRecord;
    :cond_1
    goto :goto_0

    .line 1301
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$setWindowingMode$0$ActivityStack(IZZZZZ)V
    .locals 0
    .param p1, "preferredWindowingMode"    # I
    .param p2, "animate"    # Z
    .param p3, "showRecents"    # Z
    .param p4, "enteringSplitScreenMode"    # Z
    .param p5, "deferEnsuringVisibility"    # Z
    .param p6, "creating"    # Z

    .line 788
    invoke-direct/range {p0 .. p6}, Lcom/android/server/wm/ActivityStack;->setWindowingModeInSurfaceTransaction(IZZZZZ)V

    return-void
.end method

.method minimalResumeActivityLocked(Lcom/android/server/wm/ActivityRecord;)V
    .locals 3
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1620
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    const-string v1, "ActivityTaskManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Moving to RESUMED: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (starting new instance) callers="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    .line 1621
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1620
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    :cond_0
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v2, "minimalResumeActivityLocked"

    invoke-virtual {p1, v0, v2}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 1623
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->completeResumeLocked()V

    .line 1624
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SAVED_STATE:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launch completed; removing icicle of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->icicle:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    :cond_1
    return-void
.end method

.method final moveTaskToBackLocked(I)Z
    .locals 8
    .param p1, "taskId"    # I

    .line 5343
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStack;->taskForIdLocked(I)Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 5344
    .local v0, "tr":Lcom/android/server/wm/TaskRecord;
    const-string v1, "ActivityTaskManager"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 5345
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveTaskToBack: bad taskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5346
    return v2

    .line 5348
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveTaskToBack: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5352
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/wm/LockTaskController;->canMoveTaskToBack(Lcom/android/server/wm/TaskRecord;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 5353
    return v2

    .line 5359
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isTopStackOnDisplay()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v3, :cond_3

    .line 5360
    invoke-virtual {p0, v4, p1}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 5361
    .local v3, "next":Lcom/android/server/wm/ActivityRecord;
    if-nez v3, :cond_2

    .line 5362
    invoke-virtual {p0, v4, v2}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 5364
    :cond_2
    if-eqz v3, :cond_3

    .line 5366
    const/4 v5, 0x1

    .line 5368
    .local v5, "moveOK":Z
    :try_start_0
    iget-object v6, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    iget-object v7, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v6, v7}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v6

    .line 5372
    goto :goto_0

    .line 5369
    :catch_0
    move-exception v6

    .line 5370
    .local v6, "e":Landroid/os/RemoteException;
    iget-object v7, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v4, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 5371
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 5373
    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_0
    if-nez v5, :cond_3

    .line 5374
    return v2

    .line 5379
    .end local v3    # "next":Lcom/android/server/wm/ActivityRecord;
    .end local v5    # "moveOK":Z
    :cond_3
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Prepare to back transition: task="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5381
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5382
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5383
    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/ActivityStack;->updateTaskMovement(Lcom/android/server/wm/TaskRecord;Z)V

    .line 5385
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v3, 0xb

    invoke-virtual {v1, v3, v2}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    .line 5386
    const-string v1, "moveTaskToBackLocked"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/ActivityStack;->moveToBack(Ljava/lang/String;Lcom/android/server/wm/TaskRecord;)V

    .line 5388
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_5

    .line 5389
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/ActivityStackSupervisor;->removeStack(Lcom/android/server/wm/ActivityStack;)V

    .line 5390
    return v3

    .line 5393
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 5394
    .local v1, "topActivity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 5395
    .local v5, "topStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v5, :cond_6

    if-eq v5, p0, :cond_6

    sget-object v6, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v1, v6}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 5399
    iget-object v6, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 5400
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v7

    iget v7, v7, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    .line 5399
    invoke-virtual {v6, v4, v7, v2, v2}, Lcom/android/server/wm/RootActivityContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;IZZ)Z

    .line 5404
    :cond_6
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 5405
    return v3
.end method

.method final moveTaskToFrontLocked(Lcom/android/server/wm/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V
    .locals 16
    .param p1, "tr"    # Lcom/android/server/wm/TaskRecord;
    .param p2, "noAnimation"    # Z
    .param p3, "options"    # Landroid/app/ActivityOptions;
    .param p4, "timeTracker"    # Lcom/android/server/am/AppTimeTracker;
    .param p5, "reason"    # Ljava/lang/String;

    .line 5253
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    const-string v5, "ActivityTaskManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveTaskToFront: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5255
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->getTopStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v6

    .line 5256
    .local v6, "topStack":Lcom/android/server/wm/ActivityStack;
    const/4 v0, 0x0

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    goto :goto_0

    :cond_1
    move-object v7, v0

    .line 5257
    .local v7, "topActivity":Lcom/android/server/wm/ActivityRecord;
    :goto_0
    iget-object v8, v1, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 5258
    .local v8, "numTasks":I
    iget-object v9, v1, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    .line 5259
    .local v9, "index":I
    const/16 v10, 0xa

    if-eqz v8, :cond_c

    if-gez v9, :cond_2

    move-object/from16 v14, p5

    goto/16 :goto_6

    .line 5269
    :cond_2
    const/4 v11, 0x1

    if-eqz v4, :cond_3

    .line 5271
    iget-object v12, v2, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    sub-int/2addr v12, v11

    .local v12, "i":I
    :goto_1
    if-ltz v12, :cond_3

    .line 5272
    iget-object v13, v2, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wm/ActivityRecord;

    iput-object v4, v13, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 5271
    add-int/lit8 v12, v12, -0x1

    goto :goto_1

    .line 5280
    .end local v12    # "i":I
    :cond_3
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityDisplay;->deferUpdateImeTarget()V

    .line 5284
    invoke-direct {v1, v2, v0}, Lcom/android/server/wm/ActivityStack;->insertTaskAtTop(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityRecord;)V

    .line 5287
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v12

    .line 5288
    .local v12, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v12, :cond_a

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->okToShowLocked()Z

    move-result v13

    if-nez v13, :cond_4

    move-object/from16 v14, p5

    goto/16 :goto_4

    .line 5297
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5298
    .local v13, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v13, :cond_5

    .line 5299
    move-object/from16 v14, p5

    :try_start_1
    invoke-virtual {v13, v14}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    goto :goto_2

    .line 5298
    :cond_5
    move-object/from16 v14, p5

    .line 5302
    :goto_2
    sget-boolean v15, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v15, :cond_6

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Prepare to front transition: task="

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5303
    :cond_6
    const/4 v5, 0x0

    if-eqz p2, :cond_8

    .line 5304
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v10

    iget-object v10, v10, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v10, v5, v5}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    .line 5305
    if-eqz v13, :cond_7

    .line 5306
    iget-object v10, v1, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v10, v10, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5308
    :cond_7
    invoke-static/range {p3 .. p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    goto :goto_3

    .line 5310
    :cond_8
    invoke-direct {v1, v10, v3}, Lcom/android/server/wm/ActivityStack;->updateTransitLocked(ILandroid/app/ActivityOptions;)V

    .line 5318
    :goto_3
    invoke-direct {v1, v7, v2, v0, v3}, Lcom/android/server/wm/ActivityStack;->canEnterPipOnTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5320
    const/4 v0, 0x1

    iput-boolean v0, v7, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    .line 5323
    :cond_9
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 5324
    const/16 v0, 0x7532

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    iget v11, v2, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v5

    iget v5, v2, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v11, 0x1

    aput-object v5, v10, v11

    invoke-static {v0, v10}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5325
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskRecord;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskMovedToFront(Landroid/app/TaskInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5327
    .end local v12    # "top":Lcom/android/server/wm/ActivityRecord;
    .end local v13    # "r":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->continueUpdateImeTarget()V

    .line 5328
    nop

    .line 5329
    return-void

    .line 5288
    .restart local v12    # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_a
    move-object/from16 v14, p5

    .line 5289
    :goto_4
    if-eqz v12, :cond_b

    .line 5290
    :try_start_2
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/TaskRecord;)V

    .line 5292
    :cond_b
    invoke-static/range {p3 .. p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5327
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->continueUpdateImeTarget()V

    .line 5293
    return-void

    .line 5327
    .end local v12    # "top":Lcom/android/server/wm/ActivityRecord;
    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v14, p5

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityDisplay;->continueUpdateImeTarget()V

    throw v0

    .line 5259
    :cond_c
    move-object/from16 v14, p5

    .line 5261
    :goto_6
    if-eqz p2, :cond_d

    .line 5262
    invoke-static/range {p3 .. p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    goto :goto_7

    .line 5264
    :cond_d
    invoke-direct {v1, v10, v3}, Lcom/android/server/wm/ActivityStack;->updateTransitLocked(ILandroid/app/ActivityOptions;)V

    .line 5266
    :goto_7
    return-void
.end method

.method moveToBack(Ljava/lang/String;Lcom/android/server/wm/TaskRecord;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "task"    # Lcom/android/server/wm/TaskRecord;

    .line 1401
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1402
    return-void

    .line 1409
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1410
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(I)V

    .line 1413
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/ActivityDisplay;->positionChildAtBottom(Lcom/android/server/wm/ActivityStack;Ljava/lang/String;)V

    .line 1414
    if-eqz p2, :cond_2

    .line 1415
    invoke-direct {p0, p2}, Lcom/android/server/wm/ActivityStack;->insertTaskAtBottom(Lcom/android/server/wm/TaskRecord;)V

    .line 1417
    :cond_2
    return-void
.end method

.method moveToFront(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .line 1346
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/TaskRecord;)V

    .line 1347
    return-void
.end method

.method moveToFront(Ljava/lang/String;Lcom/android/server/wm/TaskRecord;)V
    .locals 6
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "task"    # Lcom/android/server/wm/TaskRecord;

    .line 1354
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1355
    return-void

    .line 1358
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 1360
    .local v0, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1366
    nop

    .line 1367
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 1368
    .local v1, "topFullScreenStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_1

    .line 1369
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 1370
    .local v3, "primarySplitScreenStack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityDisplay;->getIndexOf(Lcom/android/server/wm/ActivityStack;)I

    move-result v4

    .line 1371
    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityDisplay;->getIndexOf(Lcom/android/server/wm/ActivityStack;)I

    move-result v5

    if-le v4, v5, :cond_1

    .line 1374
    if-eqz v3, :cond_1

    .line 1375
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " splitScreenToTop"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 1382
    .end local v1    # "topFullScreenStack":Lcom/android/server/wm/ActivityStack;
    .end local v3    # "primarySplitScreenStack":Lcom/android/server/wm/ActivityStack;
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/server/wm/ActivityStack;->returnsToHomeStack()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " returnToHome"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityDisplay;->moveHomeStackToFront(Ljava/lang/String;)V

    .line 1388
    :cond_2
    const/4 v1, 0x0

    if-eqz p2, :cond_3

    move v3, v2

    goto :goto_0

    :cond_3
    move v3, v1

    .line 1389
    .local v3, "movingTask":Z
    :goto_0
    if-nez v3, :cond_4

    move v1, v2

    :cond_4
    invoke-virtual {v0, p0, v1, p1}, Lcom/android/server/wm/ActivityDisplay;->positionChildAtTop(Lcom/android/server/wm/ActivityStack;ZLjava/lang/String;)V

    .line 1390
    if-eqz v3, :cond_5

    .line 1392
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/server/wm/ActivityStack;->insertTaskAtTop(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityRecord;)V

    .line 1394
    :cond_5
    return-void
.end method

.method moveToFrontAndResumeStateIfNeeded(Lcom/android/server/wm/ActivityRecord;ZZZLjava/lang/String;)V
    .locals 3
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "moveToFront"    # Z
    .param p3, "setResume"    # Z
    .param p4, "setPause"    # Z
    .param p5, "reason"    # Ljava/lang/String;

    .line 5997
    if-nez p2, :cond_0

    .line 5998
    return-void

    .line 6001
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v0

    .line 6005
    .local v0, "origState":Lcom/android/server/wm/ActivityStack$ActivityState;
    if-eqz p3, :cond_1

    .line 6006
    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v2, "moveToFrontAndResumeStateIfNeeded"

    invoke-virtual {p1, v1, v2}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 6007
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStack;->updateLRUListLocked(Lcom/android/server/wm/ActivityRecord;)Z

    .line 6010
    :cond_1
    if-eqz p4, :cond_2

    .line 6011
    iput-object p1, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 6012
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityStack;->schedulePauseTimeout(Lcom/android/server/wm/ActivityRecord;)V

    .line 6015
    :cond_2
    invoke-virtual {p0, p5}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 6018
    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootActivityContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-ne p1, v1, :cond_3

    .line 6020
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, p1, p5}, Lcom/android/server/wm/ActivityTaskManagerService;->setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 6022
    :cond_3
    return-void
.end method

.method final navigateUpToLocked(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;ILandroid/content/Intent;)Z
    .locals 25
    .param p1, "srec"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "destIntent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Landroid/content/Intent;

    .line 4618
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    const/4 v10, 0x0

    if-nez v0, :cond_0

    .line 4621
    return v10

    .line 4623
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v11

    .line 4624
    .local v11, "task":Lcom/android/server/wm/TaskRecord;
    iget-object v12, v11, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4625
    .local v12, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    .line 4626
    .local v13, "start":I
    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-gez v13, :cond_1

    goto/16 :goto_9

    .line 4629
    :cond_1
    add-int/lit8 v0, v13, -0x1

    .line 4630
    .local v0, "finishTo":I
    const/4 v1, 0x0

    if-gez v0, :cond_2

    move-object v2, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 4631
    .local v2, "parent":Lcom/android/server/wm/ActivityRecord;
    :goto_0
    const/4 v3, 0x0

    .line 4632
    .local v3, "foundParentInTask":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    .line 4633
    .local v14, "dest":Landroid/content/ComponentName;
    if-lez v13, :cond_4

    if-eqz v14, :cond_4

    .line 4634
    move v4, v0

    .local v4, "i":I
    :goto_1
    if-ltz v4, :cond_4

    .line 4635
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    .line 4636
    .local v5, "r":Lcom/android/server/wm/ActivityRecord;
    iget-object v6, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 4637
    invoke-virtual {v14}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 4638
    move v0, v4

    .line 4639
    move-object v2, v5

    .line 4640
    const/4 v3, 0x1

    .line 4641
    move v6, v0

    move-object v15, v2

    move/from16 v16, v3

    goto :goto_2

    .line 4634
    .end local v5    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 4648
    .end local v4    # "i":I
    :cond_4
    move v6, v0

    move-object v15, v2

    move/from16 v16, v3

    .end local v0    # "finishTo":I
    .end local v2    # "parent":Lcom/android/server/wm/ActivityRecord;
    .end local v3    # "foundParentInTask":Z
    .local v6, "finishTo":I
    .local v15, "parent":Lcom/android/server/wm/ActivityRecord;
    .local v16, "foundParentInTask":Z
    :goto_2
    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 4649
    .local v5, "controller":Landroid/app/IActivityController;
    if-eqz v5, :cond_5

    .line 4650
    iget-object v0, v8, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v7, v0, v10}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 4651
    .local v2, "next":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_5

    .line 4653
    const/4 v3, 0x1

    .line 4655
    .local v3, "resumeOK":Z
    :try_start_0
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v5, v0}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v0

    .line 4659
    goto :goto_3

    .line 4656
    :catch_0
    move-exception v0

    .line 4657
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v4, v7, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v1, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 4658
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 4661
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3
    if-nez v3, :cond_5

    .line 4662
    return v10

    .line 4666
    .end local v2    # "next":Lcom/android/server/wm/ActivityRecord;
    .end local v3    # "resumeOK":Z
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 4667
    .local v17, "origId":J
    move v0, v13

    move/from16 v19, p3

    move-object/from16 v20, p4

    .end local p3    # "resultCode":I
    .end local p4    # "resultData":Landroid/content/Intent;
    .local v0, "i":I
    .local v19, "resultCode":I
    .local v20, "resultData":Landroid/content/Intent;
    :goto_4
    if-le v0, v6, :cond_6

    .line 4668
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 4669
    .local v4, "r":Lcom/android/server/wm/ActivityRecord;
    iget-object v2, v4, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/16 v21, 0x1

    const-string v22, "navigate-up"

    move-object/from16 v1, p0

    move/from16 v3, v19

    move-object/from16 v23, v4

    .end local v4    # "r":Lcom/android/server/wm/ActivityRecord;
    .local v23, "r":Lcom/android/server/wm/ActivityRecord;
    move-object/from16 v4, v20

    move-object/from16 v24, v5

    .end local v5    # "controller":Landroid/app/IActivityController;
    .local v24, "controller":Landroid/app/IActivityController;
    move-object/from16 v5, v22

    move/from16 v22, v6

    .end local v6    # "finishTo":I
    .local v22, "finishTo":I
    move/from16 v6, v21

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 4671
    const/16 v19, 0x0

    .line 4672
    const/16 v20, 0x0

    .line 4667
    .end local v23    # "r":Lcom/android/server/wm/ActivityRecord;
    add-int/lit8 v0, v0, -0x1

    move/from16 v6, v22

    move-object/from16 v5, v24

    goto :goto_4

    .end local v22    # "finishTo":I
    .end local v24    # "controller":Landroid/app/IActivityController;
    .restart local v5    # "controller":Landroid/app/IActivityController;
    .restart local v6    # "finishTo":I
    :cond_6
    move-object/from16 v24, v5

    move/from16 v22, v6

    .line 4675
    .end local v0    # "i":I
    .end local v5    # "controller":Landroid/app/IActivityController;
    .end local v6    # "finishTo":I
    .restart local v22    # "finishTo":I
    .restart local v24    # "controller":Landroid/app/IActivityController;
    if-eqz v15, :cond_a

    if-eqz v16, :cond_a

    .line 4676
    iget-object v0, v8, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 4677
    .local v6, "callingUid":I
    iget-object v0, v15, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 4678
    .local v5, "parentLaunchMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v21

    .line 4679
    .local v21, "destIntentFlags":I
    const/4 v0, 0x3

    if-eq v5, v0, :cond_9

    const/4 v0, 0x2

    if-eq v5, v0, :cond_9

    const/4 v0, 0x1

    if-eq v5, v0, :cond_9

    const/high16 v1, 0x4000000

    and-int v1, v21, v1

    if-eqz v1, :cond_7

    move/from16 v23, v5

    move v10, v6

    goto/16 :goto_7

    .line 4686
    :cond_7
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 4687
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x400

    iget v4, v8, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 4686
    invoke-interface {v1, v2, v3, v4}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 4690
    .local v1, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v2, v7, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v2

    const-string v3, "navigateUpTo"

    .line 4691
    invoke-virtual {v2, v9, v3}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    iget-object v3, v8, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 4692
    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 4693
    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    iget-object v3, v15, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 4694
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 4695
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityStarter;->setCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 4696
    invoke-virtual {v2, v6}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    iget-object v4, v8, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 4697
    invoke-virtual {v2, v4}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 4698
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityStarter;->setRealCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 4699
    invoke-virtual {v2, v6}, Lcom/android/server/wm/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 4700
    invoke-virtual {v2, v0}, Lcom/android/server/wm/ActivityStarter;->setComponentSpecified(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 4701
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4702
    .local v2, "res":I
    if-nez v2, :cond_8

    goto :goto_5

    :cond_8
    move v0, v10

    .line 4705
    .end local v1    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v2    # "res":I
    .end local v16    # "foundParentInTask":Z
    .local v0, "foundParentInTask":Z
    :goto_5
    move/from16 v16, v0

    goto :goto_6

    .line 4703
    .end local v0    # "foundParentInTask":Z
    .restart local v16    # "foundParentInTask":Z
    :catch_1
    move-exception v0

    .line 4704
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    move/from16 v16, v1

    .line 4706
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_6
    iget-object v2, v15, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v0, 0x1

    const-string v10, "navigate-top"

    move-object/from16 v1, p0

    move/from16 v3, v19

    move-object/from16 v4, v20

    move/from16 v23, v5

    .end local v5    # "parentLaunchMode":I
    .local v23, "parentLaunchMode":I
    move-object v5, v10

    move v10, v6

    .end local v6    # "callingUid":I
    .local v10, "callingUid":I
    move v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    goto :goto_8

    .line 4679
    .end local v10    # "callingUid":I
    .end local v23    # "parentLaunchMode":I
    .restart local v5    # "parentLaunchMode":I
    .restart local v6    # "callingUid":I
    :cond_9
    move/from16 v23, v5

    move v10, v6

    .line 4683
    .end local v5    # "parentLaunchMode":I
    .end local v6    # "callingUid":I
    .restart local v10    # "callingUid":I
    .restart local v23    # "parentLaunchMode":I
    :goto_7
    iget-object v0, v8, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v10, v9, v0}, Lcom/android/server/wm/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 4710
    .end local v10    # "callingUid":I
    .end local v21    # "destIntentFlags":I
    .end local v23    # "parentLaunchMode":I
    :cond_a
    :goto_8
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4711
    return v16

    .line 4627
    .end local v14    # "dest":Landroid/content/ComponentName;
    .end local v15    # "parent":Lcom/android/server/wm/ActivityRecord;
    .end local v16    # "foundParentInTask":Z
    .end local v17    # "origId":J
    .end local v19    # "resultCode":I
    .end local v20    # "resultData":Landroid/content/Intent;
    .end local v22    # "finishTo":I
    .end local v24    # "controller":Landroid/app/IActivityController;
    .restart local p3    # "resultCode":I
    .restart local p4    # "resultData":Landroid/content/Intent;
    :cond_b
    :goto_9
    return v10
.end method

.method notifyActivityDrawnLocked(Lcom/android/server/wm/ActivityRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2713
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 2714
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 2715
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2718
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    .line 2719
    .local v0, "waitingActivity":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    .line 2720
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2721
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2723
    if-eqz v0, :cond_2

    .line 2724
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->setWindowOpaque(Landroid/os/IBinder;Z)V

    .line 2725
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2727
    :try_start_0
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-interface {v1, v2, v3}, Landroid/app/IApplicationThread;->scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2730
    goto :goto_0

    .line 2729
    :catch_0
    move-exception v1

    .line 2734
    .end local v0    # "waitingActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_2
    :goto_0
    return-void
.end method

.method numActivities()I
    .locals 3

    .line 582
    const/4 v0, 0x0

    .line 583
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "taskNdx":I
    :goto_0
    if-ltz v1, :cond_0

    .line 584
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskRecord;

    iget-object v2, v2, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 583
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 586
    .end local v1    # "taskNdx":I
    :cond_0
    return v0
.end method

.method onActivityAddedToStack(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 4730
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v0

    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne v0, v1, :cond_0

    .line 4731
    const-string v0, "onActivityAddedToStack"

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/ActivityStack;->setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 4733
    :cond_0
    return-void
.end method

.method onActivityRemovedFromStack(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 4719
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 4721
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    .line 4722
    const-string v0, "onActivityRemovedFromStack"

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/ActivityStack;->setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 4724
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_1

    .line 4725
    iput-object v1, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 4727
    :cond_1
    return-void
.end method

.method onActivityStateChanged(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V
    .locals 3
    .param p1, "record"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "state"    # Lcom/android/server/wm/ActivityStack$ActivityState;
    .param p3, "reason"    # Ljava/lang/String;

    .line 641
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const-string v1, " - onActivityStateChanged"

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-eq p2, v0, :cond_0

    .line 642
    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/ActivityStack;->setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 645
    :cond_0
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne p2, v0, :cond_3

    .line 646
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set resumed activity to:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " reason:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/ActivityStack;->setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 649
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 651
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 653
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/TaskRecord;)V

    .line 655
    :cond_3
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 24
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 659
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v10

    .line 660
    .local v10, "prevWindowingMode":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isAlwaysOnTop()Z

    move-result v11

    .line 661
    .local v11, "prevIsAlwaysOnTop":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v12

    .line 662
    .local v12, "prevRotation":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v13, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 663
    .local v13, "prevDensity":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v14, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 664
    .local v14, "prevScreenW":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v15, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 665
    .local v15, "prevScreenH":I
    iget-object v7, v8, Lcom/android/server/wm/ActivityStack;->mTmpRect:Landroid/graphics/Rect;

    .line 668
    .local v7, "newBounds":Landroid/graphics/Rect;
    invoke-virtual {v8, v7}, Lcom/android/server/wm/ActivityStack;->getBounds(Landroid/graphics/Rect;)V

    .line 670
    invoke-super/range {p0 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 671
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v6

    .line 672
    .local v6, "display":Lcom/android/server/wm/ActivityDisplay;
    if-eqz v6, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v6

    move-object/from16 v18, v7

    goto/16 :goto_7

    .line 676
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    if-eq v10, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move/from16 v16, v0

    .line 677
    .local v16, "windowingModeChanged":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideWindowingMode()I

    move-result v4

    .line 679
    .local v4, "overrideWindowingMode":I
    const/4 v0, 0x0

    .line 681
    .local v0, "hasNewOverrideBounds":Z
    const/4 v2, 0x2

    const/4 v1, 0x3

    if-ne v4, v2, :cond_2

    .line 683
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/server/wm/TaskStack;->calculatePinnedBoundsForConfigChange(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_2

    .line 684
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->matchParentBounds()Z

    move-result v2

    if-nez v2, :cond_7

    .line 687
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v2

    .line 688
    .local v2, "newRotation":I
    if-eq v12, v2, :cond_3

    const/16 v17, 0x1

    goto :goto_1

    :cond_3
    const/16 v17, 0x0

    .line 689
    .local v17, "rotationChanged":Z
    :goto_1
    if-eqz v17, :cond_4

    .line 690
    iget-object v5, v6, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v9, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 691
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 690
    invoke-virtual {v5, v3, v12, v2, v7}, Lcom/android/server/wm/DisplayContent;->rotateBounds(Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 693
    const/4 v0, 0x1

    .line 697
    :cond_4
    if-eq v4, v1, :cond_5

    const/4 v3, 0x4

    if-ne v4, v3, :cond_7

    .line 701
    :cond_5
    if-nez v17, :cond_6

    if-nez v16, :cond_6

    .line 702
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    if-ne v13, v3, :cond_6

    .line 703
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->screenWidthDp:I

    if-ne v14, v3, :cond_6

    .line 704
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v15, v3, :cond_7

    .line 705
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v3

    invoke-virtual {v3, v9, v7}, Lcom/android/server/wm/TaskStack;->calculateDockedBoundsForConfigChange(Landroid/content/res/Configuration;Landroid/graphics/Rect;)V

    .line 706
    const/4 v0, 0x1

    .line 711
    .end local v2    # "newRotation":I
    .end local v17    # "rotationChanged":Z
    :cond_7
    :goto_2
    if-eqz v16, :cond_b

    .line 713
    const/4 v2, 0x0

    if-ne v4, v1, :cond_8

    .line 714
    iget-object v1, v8, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v8, v2, v2, v7, v1}, Lcom/android/server/wm/ActivityStack;->getStackDockedModeBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 717
    invoke-virtual {v8, v2}, Lcom/android/server/wm/ActivityStack;->setTaskDisplayedBounds(Landroid/graphics/Rect;)V

    .line 718
    invoke-virtual {v8, v7}, Lcom/android/server/wm/ActivityStack;->setTaskBounds(Landroid/graphics/Rect;)V

    .line 719
    invoke-virtual {v8, v7}, Lcom/android/server/wm/ActivityStack;->setBounds(Landroid/graphics/Rect;)I

    .line 720
    invoke-virtual {v7, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_3

    .line 721
    :cond_8
    const/4 v1, 0x4

    if-ne v4, v1, :cond_a

    .line 722
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 723
    .local v1, "dockedBounds":Landroid/graphics/Rect;
    iget-object v3, v6, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 724
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DockedStackDividerController;->isMinimizedDock()Z

    move-result v3

    .line 725
    .local v3, "isMinimizedDock":Z
    if-eqz v3, :cond_9

    .line 726
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->topTask()Lcom/android/server/wm/TaskRecord;

    move-result-object v5

    .line 727
    .local v5, "topTask":Lcom/android/server/wm/TaskRecord;
    if-eqz v5, :cond_9

    .line 728
    invoke-virtual {v5}, Lcom/android/server/wm/TaskRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 731
    .end local v5    # "topTask":Lcom/android/server/wm/TaskRecord;
    :cond_9
    iget-object v5, v8, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v8, v1, v2, v7, v5}, Lcom/android/server/wm/ActivityStack;->getStackDockedModeBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 733
    const/4 v0, 0x1

    .line 735
    .end local v1    # "dockedBounds":Landroid/graphics/Rect;
    .end local v3    # "isMinimizedDock":Z
    :cond_a
    :goto_3
    invoke-virtual {v6, v8}, Lcom/android/server/wm/ActivityDisplay;->onStackWindowingModeChanged(Lcom/android/server/wm/ActivityStack;)V

    move/from16 v17, v0

    goto :goto_4

    .line 711
    :cond_b
    move/from16 v17, v0

    .line 737
    .end local v0    # "hasNewOverrideBounds":Z
    .local v17, "hasNewOverrideBounds":Z
    :goto_4
    if-eqz v17, :cond_c

    .line 740
    iget-object v0, v8, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x1

    const/16 v21, 0x1

    move-object/from16 v1, p0

    move/from16 v22, v4

    .end local v4    # "overrideWindowingMode":I
    .local v22, "overrideWindowingMode":I
    move-object v4, v5

    move/from16 v5, v19

    move-object/from16 v23, v6

    .end local v6    # "display":Lcom/android/server/wm/ActivityDisplay;
    .local v23, "display":Lcom/android/server/wm/ActivityDisplay;
    move/from16 v6, v20

    move-object/from16 v18, v7

    .end local v7    # "newBounds":Landroid/graphics/Rect;
    .local v18, "newBounds":Landroid/graphics/Rect;
    move/from16 v7, v21

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/RootActivityContainer;->resizeStack(Lcom/android/server/wm/ActivityStack;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)V

    goto :goto_5

    .line 737
    .end local v18    # "newBounds":Landroid/graphics/Rect;
    .end local v22    # "overrideWindowingMode":I
    .end local v23    # "display":Lcom/android/server/wm/ActivityDisplay;
    .restart local v4    # "overrideWindowingMode":I
    .restart local v6    # "display":Lcom/android/server/wm/ActivityDisplay;
    .restart local v7    # "newBounds":Landroid/graphics/Rect;
    :cond_c
    move/from16 v22, v4

    move-object/from16 v23, v6

    move-object/from16 v18, v7

    .line 744
    .end local v4    # "overrideWindowingMode":I
    .end local v6    # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v7    # "newBounds":Landroid/graphics/Rect;
    .restart local v18    # "newBounds":Landroid/graphics/Rect;
    .restart local v22    # "overrideWindowingMode":I
    .restart local v23    # "display":Lcom/android/server/wm/ActivityDisplay;
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isAlwaysOnTop()Z

    move-result v0

    if-eq v11, v0, :cond_d

    .line 748
    move-object/from16 v0, v23

    const/4 v1, 0x0

    .end local v23    # "display":Lcom/android/server/wm/ActivityDisplay;
    .local v0, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v0, v8, v1}, Lcom/android/server/wm/ActivityDisplay;->positionChildAtTop(Lcom/android/server/wm/ActivityStack;Z)V

    goto :goto_6

    .line 744
    .end local v0    # "display":Lcom/android/server/wm/ActivityDisplay;
    .restart local v23    # "display":Lcom/android/server/wm/ActivityDisplay;
    :cond_d
    move-object/from16 v0, v23

    .line 750
    .end local v23    # "display":Lcom/android/server/wm/ActivityDisplay;
    .restart local v0    # "display":Lcom/android/server/wm/ActivityDisplay;
    :goto_6
    return-void

    .line 672
    .end local v0    # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v16    # "windowingModeChanged":Z
    .end local v17    # "hasNewOverrideBounds":Z
    .end local v18    # "newBounds":Landroid/graphics/Rect;
    .end local v22    # "overrideWindowingMode":I
    .restart local v6    # "display":Lcom/android/server/wm/ActivityDisplay;
    .restart local v7    # "newBounds":Landroid/graphics/Rect;
    :cond_e
    move-object v0, v6

    move-object/from16 v18, v7

    .line 673
    .end local v6    # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v7    # "newBounds":Landroid/graphics/Rect;
    .restart local v0    # "display":Lcom/android/server/wm/ActivityDisplay;
    .restart local v18    # "newBounds":Landroid/graphics/Rect;
    :goto_7
    return-void
.end method

.method onLockTaskPackagesUpdated()V
    .locals 2

    .line 6112
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_0
    if-ltz v0, :cond_0

    .line 6113
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskRecord;->setLockTaskAuth()V

    .line 6112
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 6115
    .end local v0    # "taskNdx":I
    :cond_0
    return-void
.end method

.method protected onParentChanged()V
    .locals 11

    .line 302
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 303
    .local v0, "display":Lcom/android/server/wm/ActivityDisplay;
    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 312
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v2

    .line 311
    invoke-virtual {v1, v2}, Landroid/app/WindowConfiguration;->setRotation(I)V

    .line 314
    :cond_0
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->onParentChanged()V

    .line 315
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 318
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v3, v1, v2}, Lcom/android/server/wm/ActivityStack;->getStackDockedModeBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 320
    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/ActivityStack;->mTmpRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/wm/ActivityStackSupervisor;->resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 323
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootActivityContainer;->updateUIDsPresentOnDisplay()V

    .line 324
    return-void
.end method

.method onPipAnimationEndResize()V
    .locals 1

    .line 5483
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    if-nez v0, :cond_0

    return-void

    .line 5484
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->onPipAnimationEndResize()V

    .line 5485
    return-void
.end method

.method positionChildAt(Lcom/android/server/wm/TaskRecord;I)V
    .locals 6
    .param p1, "task"    # Lcom/android/server/wm/TaskRecord;
    .param p2, "index"    # I

    .line 5926
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-ne v0, p0, :cond_3

    .line 5931
    invoke-virtual {p1, p0}, Lcom/android/server/wm/TaskRecord;->updateOverrideConfigurationForStack(Lcom/android/server/wm/ActivityStack;)V

    .line 5933
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 5934
    .local v0, "topRunningActivity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 5935
    .local v1, "wasResumed":Z
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityStack;->insertTaskAtPosition(Lcom/android/server/wm/TaskRecord;I)V

    .line 5936
    invoke-virtual {p1, p0}, Lcom/android/server/wm/TaskRecord;->setStack(Lcom/android/server/wm/ActivityStack;)V

    .line 5937
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4, v2}, Lcom/android/server/wm/ActivityStack;->postAddTask(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityStack;Z)V

    .line 5939
    if-eqz v1, :cond_2

    .line 5940
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_1

    .line 5941
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mResumedActivity was already set when moving mResumedActivity from other stack to this stack mResumedActivity="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " other mResumedActivity="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "ActivityTaskManager"

    invoke-static {v5, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5945
    :cond_1
    sget-object v2, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v5, "positionChildAt"

    invoke-virtual {v0, v2, v5}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 5950
    :cond_2
    invoke-virtual {p0, v4, v3, v3}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 5951
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 5952
    return-void

    .line 5927
    .end local v0    # "topRunningActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v1    # "wasResumed":Z
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AS.positionChildAt: task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not a child of stack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " current parent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5928
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method positionChildWindowContainerAtBottom(Lcom/android/server/wm/TaskRecord;)V
    .locals 4
    .param p1, "child"    # Lcom/android/server/wm/TaskRecord;

    .line 1072
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 1073
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 1072
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityDisplay;->getNextFocusableStack(Lcom/android/server/wm/ActivityStack;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1074
    .local v0, "nextFocusableStack":Lcom/android/server/wm/ActivityStack;
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_1

    .line 1076
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v3, v2}, Lcom/android/server/wm/TaskStack;->positionChildAtBottom(Lcom/android/server/wm/Task;Z)V

    .line 1079
    :cond_1
    return-void
.end method

.method positionChildWindowContainerAtTop(Lcom/android/server/wm/TaskRecord;)V
    .locals 3
    .param p1, "child"    # Lcom/android/server/wm/TaskRecord;

    .line 1062
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_0

    .line 1064
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskStack;->positionChildAtTop(Lcom/android/server/wm/Task;Z)V

    .line 1066
    :cond_0
    return-void
.end method

.method postReparent()V
    .locals 3

    .line 998
    const-string v0, "reparent"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityStack;->adjustFocusToNextFocusableStack(Ljava/lang/String;Z)Lcom/android/server/wm/ActivityStack;

    .line 999
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 1002
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 1004
    return-void
.end method

.method prepareFreezingTaskBounds()V
    .locals 1

    .line 1047
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_0

    .line 1049
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->prepareFreezingTaskBounds()V

    .line 1051
    :cond_0
    return-void
.end method

.method final rankTaskLayers(I)I
    .locals 5
    .param p1, "baseLayer"    # I

    .line 2281
    const/4 v0, 0x0

    .line 2282
    .local v0, "layer":I
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "taskNdx":I
    :goto_0
    if-ltz v1, :cond_2

    .line 2283
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskRecord;

    .line 2284
    .local v2, "task":Lcom/android/server/wm/TaskRecord;
    invoke-virtual {v2}, Lcom/android/server/wm/TaskRecord;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 2285
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_1

    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v4, :cond_1

    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-nez v4, :cond_0

    goto :goto_1

    .line 2288
    :cond_0
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "layer":I
    .local v4, "layer":I
    add-int/2addr v0, p1

    iput v0, v2, Lcom/android/server/wm/TaskRecord;->mLayerRank:I

    move v0, v4

    goto :goto_2

    .line 2286
    .end local v4    # "layer":I
    .restart local v0    # "layer":I
    :cond_1
    :goto_1
    const/4 v4, -0x1

    iput v4, v2, Lcom/android/server/wm/TaskRecord;->mLayerRank:I

    .line 2282
    .end local v2    # "task":Lcom/android/server/wm/TaskRecord;
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2291
    .end local v1    # "taskNdx":I
    :cond_2
    return v0
.end method

.method final releaseSomeActivitiesLocked(Lcom/android/server/wm/WindowProcessController;Landroid/util/ArraySet;Ljava/lang/String;)I
    .locals 12
    .param p1, "app"    # Lcom/android/server/wm/WindowProcessController;
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowProcessController;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/TaskRecord;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 4909
    .local p2, "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/TaskRecord;>;"
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RELEASE:Z

    const-string v1, "ActivityTaskManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to release some activities in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4910
    :cond_0
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    .line 4911
    .local v0, "maxTasks":I
    const/4 v2, 0x1

    if-ge v0, v2, :cond_1

    .line 4912
    const/4 v0, 0x1

    .line 4914
    :cond_1
    const/4 v3, 0x0

    .line 4915
    .local v3, "numReleased":I
    const/4 v4, 0x0

    .local v4, "taskNdx":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_9

    if-lez v0, :cond_9

    .line 4916
    iget-object v5, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/TaskRecord;

    .line 4917
    .local v5, "task":Lcom/android/server/wm/TaskRecord;
    invoke-virtual {p2, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 4918
    goto/16 :goto_2

    .line 4920
    :cond_2
    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RELEASE:Z

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Looking for activities to release in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4921
    :cond_3
    const/4 v6, 0x0

    .line 4922
    .local v6, "curNum":I
    iget-object v7, v5, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4923
    .local v7, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    const/4 v8, 0x0

    .local v8, "actNdx":I
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_7

    .line 4924
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/ActivityRecord;

    .line 4925
    .local v9, "activity":Lcom/android/server/wm/ActivityRecord;
    iget-object v10, v9, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-ne v10, p1, :cond_6

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->isDestroyable()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 4926
    sget-boolean v10, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RELEASE:Z

    if-eqz v10, :cond_4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Destroying "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " in state "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4927
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " resumed="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " pausing="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " for reason "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 4926
    invoke-static {v1, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4929
    :cond_4
    invoke-virtual {p0, v9, v2, p3}, Lcom/android/server/wm/ActivityStack;->destroyActivityLocked(Lcom/android/server/wm/ActivityRecord;ZLjava/lang/String;)Z

    .line 4930
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eq v10, v9, :cond_5

    .line 4932
    add-int/lit8 v8, v8, -0x1

    .line 4934
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 4923
    .end local v9    # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_6
    add-int/2addr v8, v2

    goto :goto_1

    .line 4937
    .end local v8    # "actNdx":I
    :cond_7
    if-lez v6, :cond_8

    .line 4938
    add-int/2addr v3, v6

    .line 4939
    add-int/lit8 v0, v0, -0x1

    .line 4940
    iget-object v8, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eq v8, v5, :cond_8

    .line 4942
    add-int/lit8 v4, v4, -0x1

    .line 4915
    .end local v5    # "task":Lcom/android/server/wm/TaskRecord;
    .end local v6    # "curNum":I
    .end local v7    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    :cond_8
    :goto_2
    add-int/2addr v4, v2

    goto/16 :goto_0

    .line 4946
    .end local v4    # "taskNdx":I
    :cond_9
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RELEASE:Z

    if-eqz v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Done releasing: did "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " activities"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4948
    :cond_a
    return v3
.end method

.method remove()V
    .locals 1

    .line 1020
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStack;->removeFromDisplay()V

    .line 1021
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_0

    .line 1022
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->removeIfPossible()V

    .line 1023
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    .line 1025
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->onParentChanged()V

    .line 1026
    return-void
.end method

.method final removeActivitiesFromLRUListLocked(Lcom/android/server/wm/TaskRecord;)V
    .locals 3
    .param p1, "task"    # Lcom/android/server/wm/TaskRecord;

    .line 1320
    iget-object v0, p1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 1321
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1322
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    goto :goto_0

    .line 1323
    :cond_0
    return-void
.end method

.method removeTask(Lcom/android/server/wm/TaskRecord;Ljava/lang/String;I)V
    .locals 7
    .param p1, "task"    # Lcom/android/server/wm/TaskRecord;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "mode"    # I

    .line 5823
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 5825
    .local v0, "removed":Z
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 5826
    const/16 v3, 0x756d

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p1, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getStackId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5829
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStack;->removeActivitiesFromLRUListLocked(Lcom/android/server/wm/TaskRecord;)V

    .line 5830
    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/ActivityStack;->updateTaskMovement(Lcom/android/server/wm/TaskRecord;Z)V

    .line 5832
    if-nez p3, :cond_1

    .line 5833
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->cleanUpResourcesForDestroy()V

    .line 5836
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 5837
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeTask: removing stack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5840
    :cond_2
    if-eq p3, v1, :cond_4

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 5841
    invoke-virtual {v1, p0}, Lcom/android/server/wm/RootActivityContainer;->isTopDisplayFocusedStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5842
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " leftTaskHistoryEmpty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5843
    .local v1, "myReason":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityStack;->adjustFocusToNextFocusableStack(Ljava/lang/String;)Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    if-nez v2, :cond_4

    .line 5844
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityDisplay;->moveHomeStackToFront(Ljava/lang/String;)V

    .line 5847
    .end local v1    # "myReason":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5848
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/wm/ActivityDisplay;->positionChildAtBottom(Lcom/android/server/wm/ActivityStack;)V

    .line 5850
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isAttached()Z

    move-result v1

    if-nez v1, :cond_7

    .line 5851
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->remove()V

    .line 5855
    :cond_7
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/server/wm/TaskRecord;->setStack(Lcom/android/server/wm/ActivityStack;)V

    .line 5858
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 5859
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityUnpinned()V

    .line 5861
    :cond_8
    return-void
.end method

.method reparent(Lcom/android/server/wm/ActivityDisplay;ZZ)V
    .locals 3
    .param p1, "activityDisplay"    # Lcom/android/server/wm/ActivityDisplay;
    .param p2, "onTop"    # Z
    .param p3, "displayRemoved"    # Z

    .line 979
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStack;->removeFromDisplay()V

    .line 982
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 983
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    if-nez v0, :cond_0

    .line 985
    const-string v0, "ActivityTaskManager"

    const-string v1, "Task stack is not valid when reparenting."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 987
    :cond_0
    iget v1, p1, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/server/wm/TaskStack;->reparent(ILandroid/graphics/Rect;Z)V

    .line 989
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->setBounds(Landroid/graphics/Rect;)I

    .line 990
    if-eqz p2, :cond_2

    const v0, 0x7fffffff

    goto :goto_2

    :cond_2
    const/high16 v0, -0x80000000

    :goto_2
    invoke-virtual {p1, p0, v0}, Lcom/android/server/wm/ActivityDisplay;->addChild(Lcom/android/server/wm/ActivityStack;I)V

    .line 991
    if-nez p3, :cond_3

    .line 992
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->postReparent()V

    .line 994
    :cond_3
    return-void
.end method

.method final requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "oomAdj"    # Z

    .line 4150
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    .line 4151
    .local v6, "r":Lcom/android/server/wm/ActivityRecord;
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RESULTS:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finishing activity token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " r=, result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4155
    :cond_1
    if-nez v6, :cond_2

    .line 4156
    const/4 v0, 0x0

    return v0

    .line 4159
    :cond_2
    move-object v0, p0

    move-object v1, v6

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStack;->finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 4160
    const/4 v0, 0x1

    return v0
.end method

.method requestResize(Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 5457
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v1, p0, Lcom/android/server/wm/ActivityStack;->mStackId:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/ActivityTaskManagerService;->resizeStack(ILandroid/graphics/Rect;ZZZI)V

    .line 5460
    return-void
.end method

.method final resetTaskIfNeededLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .locals 13
    .param p1, "taskTop"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "newActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 3874
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3876
    .local v0, "forceReset":Z
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v8

    .line 3880
    .local v8, "task":Lcom/android/server/wm/TaskRecord;
    const/4 v2, 0x0

    .line 3883
    .local v2, "taskFound":Z
    const/4 v3, 0x0

    .line 3886
    .local v3, "topOptions":Landroid/app/ActivityOptions;
    const/4 v4, -0x1

    .line 3888
    .local v4, "reparentInsertionPoint":I
    iget-object v5, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v1

    move v9, v2

    move-object v11, v3

    move v10, v4

    move v1, v5

    .end local v2    # "taskFound":Z
    .end local v3    # "topOptions":Landroid/app/ActivityOptions;
    .end local v4    # "reparentInsertionPoint":I
    .local v1, "i":I
    .local v9, "taskFound":Z
    .local v10, "reparentInsertionPoint":I
    .local v11, "topOptions":Landroid/app/ActivityOptions;
    :goto_1
    if-ltz v1, :cond_2

    .line 3889
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/android/server/wm/TaskRecord;

    .line 3891
    .local v12, "targetTask":Lcom/android/server/wm/TaskRecord;
    if-ne v12, v8, :cond_1

    .line 3892
    invoke-direct {p0, v8, v0}, Lcom/android/server/wm/ActivityStack;->resetTargetTaskIfNeededLocked(Lcom/android/server/wm/TaskRecord;Z)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 3893
    .end local v11    # "topOptions":Landroid/app/ActivityOptions;
    .local v2, "topOptions":Landroid/app/ActivityOptions;
    const/4 v9, 0x1

    move-object v11, v2

    goto :goto_2

    .line 3895
    .end local v2    # "topOptions":Landroid/app/ActivityOptions;
    .restart local v11    # "topOptions":Landroid/app/ActivityOptions;
    :cond_1
    move-object v2, p0

    move-object v3, v12

    move-object v4, v8

    move v5, v9

    move v6, v0

    move v7, v10

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/ActivityStack;->resetAffinityTaskIfNeededLocked(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/TaskRecord;ZZI)I

    move-result v10

    .line 3888
    .end local v12    # "targetTask":Lcom/android/server/wm/TaskRecord;
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 3900
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 3901
    .local v1, "taskNdx":I
    if-ltz v1, :cond_5

    .line 3903
    :goto_3
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, -0x1

    .end local v1    # "taskNdx":I
    .local v3, "taskNdx":I
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 3904
    if-nez p1, :cond_4

    if-gez v3, :cond_3

    goto :goto_4

    :cond_3
    move v1, v3

    goto :goto_3

    .line 3907
    :cond_4
    :goto_4
    move v1, v3

    .end local v3    # "taskNdx":I
    .restart local v1    # "taskNdx":I
    :cond_5
    if-eqz v11, :cond_7

    .line 3910
    if-eqz p1, :cond_6

    .line 3911
    invoke-virtual {p1, v11}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    goto :goto_5

    .line 3913
    :cond_6
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->abort()V

    .line 3917
    :cond_7
    :goto_5
    return-object p1
.end method

.method resize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "tempTaskBounds"    # Landroid/graphics/Rect;
    .param p3, "tempTaskInsetBounds"    # Landroid/graphics/Rect;

    .line 5465
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStack;->updateBoundsAllowed(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5466
    return-void

    .line 5470
    :cond_0
    if-eqz p2, :cond_1

    move-object v0, p2

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 5472
    .local v0, "taskBounds":Landroid/graphics/Rect;
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_3

    .line 5473
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskRecord;

    .line 5474
    .local v2, "task":Lcom/android/server/wm/TaskRecord;
    invoke-virtual {v2}, Lcom/android/server/wm/TaskRecord;->isResizeable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5475
    invoke-virtual {v2, v0, p3}, Lcom/android/server/wm/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 5472
    .end local v2    # "task":Lcom/android/server/wm/TaskRecord;
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 5479
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStack;->setBounds(Landroid/graphics/Rect;)I

    .line 5480
    return-void
.end method

.method resizeStackWithLaunchBounds()Z
    .locals 1

    .line 2490
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v0

    return v0
.end method

.method restartPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord;
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .line 5793
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 5797
    .local v0, "starting":Lcom/android/server/wm/ActivityRecord;
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "taskNdx":I
    :goto_0
    if-ltz v1, :cond_2

    .line 5798
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskRecord;

    iget-object v3, v3, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5799
    .local v3, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    .local v4, "activityNdx":I
    :goto_1
    if-ltz v4, :cond_1

    .line 5800
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    .line 5801
    .local v5, "a":Lcom/android/server/wm/ActivityRecord;
    iget-object v6, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5802
    iput-boolean v2, v5, Lcom/android/server/wm/ActivityRecord;->forceNewConfig:Z

    .line 5803
    if-eqz v0, :cond_0

    if-ne v5, v0, :cond_0

    iget-boolean v6, v5, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-eqz v6, :cond_0

    .line 5804
    iget-object v6, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    const/16 v7, 0x100

    invoke-virtual {v5, v6, v7}, Lcom/android/server/wm/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/wm/WindowProcessController;I)V

    .line 5799
    .end local v5    # "a":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 5797
    .end local v3    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v4    # "activityNdx":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 5811
    .end local v1    # "taskNdx":I
    :cond_2
    return-object v0
.end method

.method resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .locals 4
    .param p1, "prev"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2788
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStack;->mInResumeTopActivity:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2790
    return v1

    .line 2793
    :cond_0
    const/4 v0, 0x0

    .line 2796
    .local v0, "result":Z
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStack;->mInResumeTopActivity:Z

    .line 2797
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityStack;->resumeTopActivityInnerLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v3

    move v0, v3

    .line 2806
    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 2807
    .local v2, "next":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->canTurnScreenOn()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2808
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->checkReadyForSleep()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2811
    .end local v2    # "next":Lcom/android/server/wm/ActivityRecord;
    :cond_2
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStack;->mInResumeTopActivity:Z

    .line 2812
    nop

    .line 2814
    return v0

    .line 2811
    :catchall_0
    move-exception v2

    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStack;->mInResumeTopActivity:Z

    throw v2
.end method

.method final safelyDestroyActivityLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z
    .locals 2
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 4897
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isDestroyable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4898
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Destroying "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " in state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4899
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " resumed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " pausing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for reason "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4898
    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4901
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/wm/ActivityStack;->destroyActivityLocked(Lcom/android/server/wm/ActivityRecord;ZLjava/lang/String;)Z

    move-result v0

    return v0

    .line 4903
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method final scheduleDestroyActivities(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V
    .locals 2
    .param p1, "owner"    # Lcom/android/server/wm/WindowProcessController;
    .param p2, "reason"    # Ljava/lang/String;

    .line 4856
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4857
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Lcom/android/server/wm/ActivityStack$ScheduleDestroyArgs;

    invoke-direct {v1, p1, p2}, Lcom/android/server/wm/ActivityStack$ScheduleDestroyArgs;-><init>(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4858
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4859
    return-void
.end method

.method sendActivityResultLocked(ILcom/android/server/wm/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V
    .locals 9
    .param p1, "callingUid"    # I
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "resultWho"    # Ljava/lang/String;
    .param p4, "requestCode"    # I
    .param p5, "resultCode"    # I
    .param p6, "data"    # Landroid/content/Intent;

    .line 3923
    if-lez p1, :cond_0

    .line 3924
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v3, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 3925
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;

    move-result-object v5

    iget v6, p2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 3924
    move v2, p1

    move-object v4, p6

    invoke-interface/range {v1 .. v6}, Lcom/android/server/uri/UriGrantsManagerInternal;->grantUriPermissionFromIntent(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/uri/UriPermissionOwner;I)V

    .line 3928
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RESULTS:Z

    const-string v1, "ActivityTaskManager"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send activity result to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " : who="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " req="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " res="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " data="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3931
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, p2, :cond_2

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3933
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3934
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    new-instance v2, Landroid/app/ResultInfo;

    invoke-direct {v2, p3, p4, p5, p6}, Landroid/app/ResultInfo;-><init>(Ljava/lang/String;IILandroid/content/Intent;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3936
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v2

    iget-object v3, p2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    iget-object v4, p2, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 3937
    invoke-static {v0}, Landroid/app/servertransaction/ActivityResultItem;->obtain(Ljava/util/List;)Landroid/app/servertransaction/ActivityResultItem;

    move-result-object v5

    .line 3936
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3938
    return-void

    .line 3939
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    :catch_0
    move-exception v0

    .line 3940
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown sending result to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3944
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v4, 0x0

    move-object v3, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/ActivityRecord;->addResultLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 3945
    return-void
.end method

.method public setAlwaysOnTop(Z)V
    .locals 2
    .param p1, "alwaysOnTop"    # Z

    .line 5981
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isAlwaysOnTop()Z

    move-result v0

    if-ne v0, p1, :cond_0

    .line 5982
    return-void

    .line 5984
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->setAlwaysOnTop(Z)V

    .line 5985
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 5991
    .local v0, "display":Lcom/android/server/wm/ActivityDisplay;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/ActivityDisplay;->positionChildAtTop(Lcom/android/server/wm/ActivityStack;Z)V

    .line 5992
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)I
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 1155
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    invoke-super {p0, v0}, Lcom/android/server/wm/ConfigurationContainer;->setBounds(Landroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method setParent(Lcom/android/server/wm/ActivityDisplay;)V
    .locals 2
    .param p1, "parent"    # Lcom/android/server/wm/ActivityDisplay;

    .line 293
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 294
    .local v0, "current":Lcom/android/server/wm/ActivityDisplay;
    if-eq v0, p1, :cond_0

    .line 295
    iget v1, p1, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    iput v1, p0, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    .line 296
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->onParentChanged()V

    .line 298
    :cond_0
    return-void
.end method

.method setPictureInPictureActions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;)V"
        }
    .end annotation

    .line 6070
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/RemoteAction;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 6071
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskStack;->setPictureInPictureActions(Ljava/util/List;)V

    .line 6072
    return-void
.end method

.method setPictureInPictureAspectRatio(F)V
    .locals 1
    .param p1, "aspectRatio"    # F

    .line 6065
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 6066
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskStack;->setPictureInPictureAspectRatio(F)V

    .line 6067
    return-void
.end method

.method setTaskBounds(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 5493
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStack;->updateBoundsAllowed(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5494
    return-void

    .line 5497
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 5498
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    .line 5499
    .local v1, "task":Lcom/android/server/wm/TaskRecord;
    invoke-virtual {v1}, Lcom/android/server/wm/TaskRecord;->isResizeable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5500
    invoke-virtual {v1, p1}, Lcom/android/server/wm/TaskRecord;->setBounds(Landroid/graphics/Rect;)I

    goto :goto_1

    .line 5502
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskRecord;->setBounds(Landroid/graphics/Rect;)I

    .line 5497
    .end local v1    # "task":Lcom/android/server/wm/TaskRecord;
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5505
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method setTaskDisplayedBounds(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 5509
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStack;->updateDisplayedBoundsAllowed(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5510
    return-void

    .line 5513
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 5514
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    .line 5515
    .local v1, "task":Lcom/android/server/wm/TaskRecord;
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 5517
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wm/TaskRecord;->isResizeable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5518
    invoke-virtual {v1, p1}, Lcom/android/server/wm/TaskRecord;->setDisplayedBounds(Landroid/graphics/Rect;)V

    goto :goto_2

    .line 5516
    :cond_2
    :goto_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskRecord;->setDisplayedBounds(Landroid/graphics/Rect;)V

    .line 5513
    .end local v1    # "task":Lcom/android/server/wm/TaskRecord;
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5521
    .end local v0    # "i":I
    :cond_4
    return-void
.end method

.method public setWindowingMode(I)V
    .locals 7
    .param p1, "windowingMode"    # I

    .line 754
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(IZZZZZ)V

    .line 757
    return-void
.end method

.method setWindowingMode(IZZZZZ)V
    .locals 11
    .param p1, "preferredWindowingMode"    # I
    .param p2, "animate"    # Z
    .param p3, "showRecents"    # Z
    .param p4, "enteringSplitScreenMode"    # Z
    .param p5, "deferEnsuringVisibility"    # Z
    .param p6, "creating"    # Z

    .line 788
    move-object v8, p0

    iget-object v9, v8, Lcom/android/server/wm/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v10, Lcom/android/server/wm/-$$Lambda$ActivityStack$7heVv97BezfdSlHS0oo3lugbypI;

    move-object v0, v10

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/-$$Lambda$ActivityStack$7heVv97BezfdSlHS0oo3lugbypI;-><init>(Lcom/android/server/wm/ActivityStack;IZZZZZ)V

    invoke-virtual {v9, v10}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    .line 791
    return-void
.end method

.method shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;

    .line 2137
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStack;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method shouldSleepActivities()Z
    .locals 2

    .line 6123
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 6127
    .local v0, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isFocusedStackOnDisplay()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 6128
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/KeyguardController;->isKeyguardGoingAway()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6129
    const/4 v1, 0x0

    return v1

    .line 6132
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->isSleeping()Z

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->isSleepingLocked()Z

    move-result v1

    :goto_0
    return v1
.end method

.method shouldSleepOrShutDownActivities()Z
    .locals 1

    .line 6136
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->shouldSleepActivities()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method shouldUpRecreateTaskLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z
    .locals 7
    .param p1, "srec"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "destAffinity"    # Ljava/lang/String;

    .line 4586
    const/4 v0, 0x1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 4587
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 4594
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    .line 4595
    .local v1, "task":Lcom/android/server/wm/TaskRecord;
    iget-boolean v2, p1, Lcom/android/server/wm/ActivityRecord;->frontOfTask:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/android/server/wm/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/android/server/wm/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->isDocument()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4597
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inFrontOfStandardStack()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4599
    return v0

    .line 4602
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 4603
    .local v2, "taskIdx":I
    if-gtz v2, :cond_2

    .line 4604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldUpRecreateTask: task not in history for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ActivityTaskManager"

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4605
    return v3

    .line 4607
    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskRecord;

    .line 4608
    .local v4, "prevTask":Lcom/android/server/wm/TaskRecord;
    iget-object v5, v1, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v6, v4, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 4610
    return v0

    .line 4613
    .end local v2    # "taskIdx":I
    .end local v4    # "prevTask":Lcom/android/server/wm/TaskRecord;
    :cond_3
    return v3

    .line 4588
    .end local v1    # "task":Lcom/android/server/wm/TaskRecord;
    :cond_4
    :goto_0
    return v0
.end method

.method startActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ZZLandroid/app/ActivityOptions;)V
    .locals 16
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "focusedTopActivity"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "newTask"    # Z
    .param p4, "keepCurTransition"    # Z
    .param p5, "options"    # Landroid/app/ActivityOptions;

    .line 3435
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v6

    .line 3436
    .local v6, "rTask":Lcom/android/server/wm/TaskRecord;
    iget v7, v6, Lcom/android/server/wm/TaskRecord;->taskId:I

    .line 3438
    .local v7, "taskId":I
    iget-boolean v8, v1, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-nez v8, :cond_1

    invoke-virtual {v0, v7}, Lcom/android/server/wm/ActivityStack;->taskForIdLocked(I)Lcom/android/server/wm/TaskRecord;

    move-result-object v8

    if-eqz v8, :cond_0

    if-eqz v3, :cond_1

    .line 3442
    :cond_0
    invoke-direct {v0, v6, v1}, Lcom/android/server/wm/ActivityStack;->insertTaskAtTop(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityRecord;)V

    .line 3444
    :cond_1
    const/4 v8, 0x0

    .line 3445
    .local v8, "task":Lcom/android/server/wm/TaskRecord;
    const-string v9, "here"

    const-string v10, "Adding activity "

    const-string v11, "ActivityTaskManager"

    const/4 v12, 0x1

    if-nez v3, :cond_6

    .line 3447
    const/4 v13, 0x1

    .line 3448
    .local v13, "startIt":Z
    iget-object v14, v0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    sub-int/2addr v14, v12

    .local v14, "taskNdx":I
    :goto_0
    if-ltz v14, :cond_6

    .line 3449
    iget-object v15, v0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    move-object v8, v15

    check-cast v8, Lcom/android/server/wm/TaskRecord;

    .line 3450
    invoke-virtual {v8}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v15

    if-nez v15, :cond_2

    .line 3452
    goto :goto_1

    .line 3454
    :cond_2
    if-ne v8, v6, :cond_4

    .line 3458
    if-nez v13, :cond_6

    .line 3459
    sget-boolean v12, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v12, :cond_3

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " to task "

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v12, Ljava/lang/RuntimeException;

    invoke-direct {v12, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 3460
    invoke-virtual {v12}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v9

    .line 3459
    invoke-static {v11, v10, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3461
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->createAppWindowToken()V

    .line 3462
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 3463
    return-void

    .line 3466
    :cond_4
    iget v15, v8, Lcom/android/server/wm/TaskRecord;->numFullscreen:I

    if-lez v15, :cond_5

    .line 3467
    const/4 v13, 0x0

    .line 3448
    :cond_5
    :goto_1
    add-int/lit8 v14, v14, -0x1

    goto :goto_0

    .line 3476
    .end local v13    # "startIt":Z
    .end local v14    # "taskNdx":I
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v13

    .line 3477
    .local v13, "activityTask":Lcom/android/server/wm/TaskRecord;
    if-ne v8, v13, :cond_7

    iget-object v15, v0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v15

    iget-object v14, v0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    sub-int/2addr v14, v12

    if-eq v15, v14, :cond_7

    .line 3478
    iget-object v14, v0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v15, 0x0

    iput-boolean v15, v14, Lcom/android/server/wm/ActivityStackSupervisor;->mUserLeaving:Z

    .line 3479
    sget-boolean v14, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_USER_LEAVING:Z

    if-eqz v14, :cond_7

    const-string v14, "startActivity() behind front, mUserLeaving=false"

    invoke-static {v11, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3483
    :cond_7
    move-object v8, v13

    .line 3486
    sget-boolean v14, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v14, :cond_8

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " to stack to task "

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v14, Ljava/lang/RuntimeException;

    invoke-direct {v14, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 3487
    invoke-virtual {v14}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v9

    .line 3486
    invoke-static {v11, v10, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3491
    :cond_8
    iget-object v9, v1, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v9, :cond_9

    .line 3492
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->createAppWindowToken()V

    .line 3495
    :cond_9
    invoke-virtual {v8}, Lcom/android/server/wm/TaskRecord;->setFrontOfTask()V

    .line 3497
    sget-object v9, Lcom/android/server/wm/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/wm/ActivityPluginDelegate;

    if-eqz v9, :cond_a

    .line 3498
    iget-object v9, v1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-boolean v10, v1, Lcom/android/server/wm/ActivityRecord;->fullscreen:Z

    .line 3499
    invoke-static {v9, v10}, Lcom/android/server/wm/ActivityPluginDelegate;->activityInvokeNotification(Ljava/lang/String;Z)V

    .line 3502
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isHomeOrRecentsStack()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->numActivities()I

    move-result v9

    if-lez v9, :cond_b

    goto :goto_2

    .line 3576
    :cond_b
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    goto/16 :goto_9

    .line 3503
    :cond_c
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v9

    iget-object v9, v9, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 3504
    .local v9, "dc":Lcom/android/server/wm/DisplayContent;
    sget-boolean v10, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v10, :cond_d

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Prepare open transition: starting "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3506
    :cond_d
    iget-object v10, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getFlags()I

    move-result v10

    const/high16 v11, 0x10000

    and-int/2addr v10, v11

    const/4 v11, 0x0

    if-eqz v10, :cond_e

    .line 3507
    const/4 v10, 0x0

    invoke-virtual {v9, v10, v4}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    .line 3508
    iget-object v10, v0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v10, v10, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 3510
    :cond_e
    const/4 v10, 0x6

    .line 3511
    .local v10, "transit":I
    if-eqz v3, :cond_11

    .line 3512
    iget-boolean v14, v1, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v14, :cond_f

    .line 3513
    const/16 v10, 0x10

    goto :goto_3

    .line 3519
    :cond_f
    invoke-direct {v0, v2, v11, v1, v5}, Lcom/android/server/wm/ActivityStack;->canEnterPipOnTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 3521
    iput-boolean v12, v2, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    .line 3523
    :cond_10
    const/16 v10, 0x8

    .line 3526
    :cond_11
    :goto_3
    invoke-virtual {v9, v10, v4}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    .line 3527
    iget-object v14, v0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v14, v14, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3529
    .end local v10    # "transit":I
    :goto_4
    const/4 v10, 0x1

    .line 3530
    .local v10, "doShow":Z
    if-eqz v3, :cond_13

    .line 3536
    iget-object v14, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v14}, Landroid/content/Intent;->getFlags()I

    move-result v14

    const/high16 v15, 0x200000

    and-int/2addr v14, v15

    if-eqz v14, :cond_14

    .line 3537
    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/ActivityStack;->resetTaskIfNeededLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    .line 3538
    invoke-virtual {v0, v11}, Lcom/android/server/wm/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v14

    if-ne v14, v1, :cond_12

    move v14, v12

    goto :goto_5

    :cond_12
    const/4 v14, 0x0

    :goto_5
    move v10, v14

    goto :goto_6

    .line 3540
    :cond_13
    if-eqz v5, :cond_14

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v14

    const/4 v15, 0x5

    if-ne v14, v15, :cond_14

    .line 3542
    const/4 v10, 0x0

    .line 3544
    :cond_14
    :goto_6
    iget-boolean v14, v1, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v14, :cond_15

    .line 3547
    invoke-virtual {v1, v12}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 3548
    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12, v12}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/wm/ActivityRecord;IZ)V

    goto :goto_8

    .line 3549
    :cond_15
    if-eqz v10, :cond_18

    .line 3554
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v11

    .line 3555
    .local v11, "prevTask":Lcom/android/server/wm/TaskRecord;
    invoke-virtual {v11}, Lcom/android/server/wm/TaskRecord;->topRunningActivityWithStartingWindowLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v12

    .line 3556
    .local v12, "prev":Lcom/android/server/wm/ActivityRecord;
    if-eqz v12, :cond_17

    .line 3559
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v14

    if-eq v14, v11, :cond_16

    .line 3560
    const/4 v12, 0x0

    goto :goto_7

    .line 3563
    :cond_16
    iget-boolean v14, v12, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-eqz v14, :cond_17

    .line 3564
    const/4 v12, 0x0

    .line 3569
    :cond_17
    :goto_7
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->setFocusedTopActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 3571
    invoke-direct/range {p0 .. p2}, Lcom/android/server/wm/ActivityStack;->isTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v14

    invoke-virtual {v1, v12, v3, v14}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 3573
    .end local v9    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v10    # "doShow":Z
    .end local v11    # "prevTask":Lcom/android/server/wm/TaskRecord;
    .end local v12    # "prev":Lcom/android/server/wm/ActivityRecord;
    :cond_18
    :goto_8
    nop

    .line 3578
    :goto_9
    return-void
.end method

.method final startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;Z)Z
    .locals 10
    .param p1, "userLeaving"    # Z
    .param p2, "uiSleeping"    # Z
    .param p3, "resuming"    # Lcom/android/server/wm/ActivityRecord;
    .param p4, "pauseImmediately"    # Z

    .line 1781
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    const-string v2, "ActivityTaskManager"

    if-eqz v0, :cond_0

    .line 1782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Going to pause when pause is already pending for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " state="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1783
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1782
    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->shouldSleepActivities()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1788
    invoke-direct {p0, v1, p3}, Lcom/android/server/wm/ActivityStack;->completePauseLocked(ZLcom/android/server/wm/ActivityRecord;)V

    .line 1793
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mOnePlusActivityStack:Lcom/android/server/am/OnePlusSceneUtil$OnePlusActivityStack;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/am/OnePlusSceneUtil$OnePlusActivityStack;->startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;Z)Z

    .line 1797
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1

    .line 1798
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v0, v3, v4, v5}, Lcom/android/server/wm/OpWmInjector;->doUpdateProcessDuration(Ljava/lang/String;Ljava/lang/Long;Landroid/os/Handler;Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 1801
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1803
    .local v0, "prev":Lcom/android/server/wm/ActivityRecord;
    if-nez v0, :cond_3

    .line 1804
    if-nez p3, :cond_2

    .line 1805
    const-string v3, "Trying to pause when nothing is resumed"

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 1808
    :cond_2
    return v1

    .line 1813
    :cond_3
    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v3, :cond_4

    .line 1814
    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/wm/WindowProcessController;->lastFgTime:J

    .line 1819
    :cond_4
    if-ne v0, p3, :cond_5

    .line 1820
    const-string v3, "Trying to pause activity that is in process of being resumed"

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    return v1

    .line 1824
    :cond_5
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Moving to PAUSING: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1825
    :cond_6
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start pausing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1827
    :cond_7
    :goto_0
    sget-object v3, Lcom/android/server/wm/ActivityStack;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    if-eqz v3, :cond_8

    .line 1828
    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v5, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v0, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/app/ActivityTrigger;->activityPauseTrigger(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;)V

    .line 1831
    :cond_8
    sget-object v3, Lcom/android/server/wm/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/wm/ActivityPluginDelegate;

    const/4 v4, 0x1

    if-eqz v3, :cond_a

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v3

    if-eqz v3, :cond_a

    .line 1832
    sget-object v3, Lcom/android/server/wm/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/wm/ActivityPluginDelegate;

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1833
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v5

    if-ne v5, v4, :cond_9

    move v5, v4

    goto :goto_1

    :cond_9
    move v5, v1

    :goto_1
    invoke-static {v3, v5, v4}, Lcom/android/server/wm/ActivityPluginDelegate;->activitySuspendNotification(Ljava/lang/String;ZZ)V

    .line 1835
    :cond_a
    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1836
    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1837
    nop

    .line 1838
    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1837
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v3, v5

    const/4 v5, 0x0

    if-nez v3, :cond_c

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_b

    goto :goto_2

    .line 1838
    :cond_b
    move-object v3, v5

    goto :goto_3

    :cond_c
    :goto_2
    move-object v3, v0

    :goto_3
    iput-object v3, p0, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1839
    sget-object v3, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v6, "startPausingLocked"

    invoke-virtual {v0, v3, v6}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 1840
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/TaskRecord;->touchActiveTime()V

    .line 1841
    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityStack;->clearLaunchTime(Lcom/android/server/wm/ActivityRecord;)V

    .line 1843
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->updateCpuStats()V

    .line 1845
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1846
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v3, :cond_d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Enqueueing pending pause: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    :cond_d
    :try_start_0
    iget v3, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    iget-object v7, v0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "userLeaving="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v6, v7, v8}, Lcom/android/server/am/EventLogTags;->writeAmPauseActivity(IILjava/lang/String;Ljava/lang/String;)V

    .line 1851
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v3

    iget-object v6, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v8, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    iget v9, v0, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    .line 1852
    invoke-static {v8, p1, v9, p4}, Landroid/app/servertransaction/PauseActivityItem;->obtain(ZZIZ)Landroid/app/servertransaction/PauseActivityItem;

    move-result-object v8

    .line 1851
    invoke-virtual {v3, v6, v7, v8}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ActivityLifecycleItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 1854
    :catch_0
    move-exception v3

    .line 1856
    .local v3, "e":Ljava/lang/Exception;
    const-string v6, "Exception thrown during pause"

    invoke-static {v2, v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1857
    iput-object v5, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1858
    iput-object v5, p0, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1859
    iput-object v5, p0, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1860
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_4
    goto :goto_5

    .line 1862
    :cond_e
    iput-object v5, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1863
    iput-object v5, p0, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1864
    iput-object v5, p0, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1869
    :goto_5
    if-nez p2, :cond_f

    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->isSleepingOrShuttingDownLocked()Z

    move-result v3

    if-nez v3, :cond_f

    .line 1870
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStackSupervisor;->acquireLaunchWakelock()V

    .line 1873
    :cond_f
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_14

    .line 1878
    if-nez p2, :cond_10

    .line 1879
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->pauseKeyDispatchingLocked()V

    goto :goto_6

    .line 1880
    :cond_10
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v3, :cond_11

    .line 1881
    const-string v3, "Key dispatch not paused for screen off"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    :cond_11
    :goto_6
    sget-boolean v2, Lcom/android/server/wm/ActivityStack;->IS_SUPPORT_COLOR_ADS:Z

    if-eqz v2, :cond_12

    .line 1886
    invoke-static {v0, p3}, Lcom/android/server/OPAppSwitchManagerServiceInjector;->handleActivityPaused(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    .line 1889
    :cond_12
    if-eqz p4, :cond_13

    .line 1892
    invoke-direct {p0, v1, p3}, Lcom/android/server/wm/ActivityStack;->completePauseLocked(ZLcom/android/server/wm/ActivityRecord;)V

    .line 1893
    return v1

    .line 1896
    :cond_13
    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityStack;->schedulePauseTimeout(Lcom/android/server/wm/ActivityRecord;)V

    .line 1897
    return v4

    .line 1903
    :cond_14
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v3, :cond_15

    const-string v3, "Activity not running, resuming next."

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    :cond_15
    if-nez p3, :cond_16

    .line 1905
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 1907
    :cond_16
    return v1
.end method

.method final stopActivityLocked(Lcom/android/server/wm/ActivityRecord;)V
    .locals 11
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 4045
    const-string v0, "stopActivityLocked"

    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    const-string v2, "ActivityTaskManager"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4046
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->launching:Z

    .line 4049
    const/4 v3, 0x0

    .line 4050
    .local v3, "finishQuickPay":Z
    iget-boolean v4, p1, Lcom/android/server/wm/ActivityRecord;->isQuickPayNoHistory:Z

    if-eqz v4, :cond_2

    .line 4051
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "QuickPay: Stopping: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " Resumming: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4052
    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_1

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityRecord;->isQuickPayNoHistory:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 4053
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v5

    iget v5, v5, Lcom/android/server/wm/TaskRecord;->taskId:I

    if-eq v4, v5, :cond_2

    .line 4054
    :cond_1
    const/4 v3, 0x1

    .line 4058
    :cond_2
    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v4, v5

    if-nez v4, :cond_3

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_3

    if-eqz v3, :cond_7

    .line 4068
    :cond_3
    iget-boolean v4, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v4, :cond_7

    .line 4075
    sget-boolean v4, Lcom/android/server/wm/OpAppLockerInjector;->IS_APP_LOCKER_ENABLED:Z

    if-eqz v4, :cond_4

    invoke-static {p1}, Lcom/android/server/wm/OpAppLockerInjector;->isAppLocked(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4076
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AppLocker: Not finishing noHistory "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " on stop because it\'s locked"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4078
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->shouldSleepActivities()Z

    move-result v4

    if-nez v4, :cond_6

    .line 4080
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no-history finish of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4081
    :cond_5
    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const-string v9, "stop-no-history"

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 4085
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 4086
    return-void

    .line 4089
    :cond_6
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not finishing noHistory "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " on stop because we\'re just sleeping"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4095
    :cond_7
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 4096
    const-string v4, "stopActivity"

    invoke-direct {p0, p1, v4}, Lcom/android/server/wm/ActivityStack;->adjustFocusedActivityStack(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 4097
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 4099
    const/4 v4, 0x1

    :try_start_0
    iput-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    .line 4101
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v5, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Moving to STOPPING: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " (stop requested)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4103
    :cond_8
    sget-object v5, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p1, v5, v0}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 4105
    sget-object v5, Lcom/android/server/wm/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/wm/ActivityPluginDelegate;

    if-eqz v5, :cond_a

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v5

    if-eqz v5, :cond_a

    .line 4106
    sget-object v5, Lcom/android/server/wm/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/wm/ActivityPluginDelegate;

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 4107
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v6

    if-ne v6, v4, :cond_9

    move v6, v4

    goto :goto_1

    :cond_9
    move v6, v1

    :goto_1
    invoke-static {v5, v6, v1}, Lcom/android/server/wm/ActivityPluginDelegate;->activitySuspendNotification(Ljava/lang/String;ZZ)V

    .line 4109
    :cond_a
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v5, :cond_b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stopping visible="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p1, Lcom/android/server/wm/ActivityRecord;->visible:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4112
    :cond_b
    sget-object v5, Lcom/android/server/wm/ActivityStack;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    if-eqz v5, :cond_c

    .line 4113
    sget-object v5, Lcom/android/server/wm/ActivityStack;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v7, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/internal/app/ActivityTrigger;->activityStopTrigger(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;)V

    .line 4116
    :cond_c
    iget-boolean v5, p1, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-nez v5, :cond_d

    .line 4117
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->setVisible(Z)V

    .line 4119
    :cond_d
    iget v1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 4120
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 4119
    invoke-static {v1, v5, v6}, Lcom/android/server/am/EventLogTags;->writeAmStopActivity(IILjava/lang/String;)V

    .line 4121
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v1

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v7, p1, Lcom/android/server/wm/ActivityRecord;->visible:Z

    iget v8, p1, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    .line 4122
    invoke-static {v7, v8}, Landroid/app/servertransaction/StopActivityItem;->obtain(ZI)Landroid/app/servertransaction/StopActivityItem;

    move-result-object v7

    .line 4121
    invoke-virtual {v1, v5, v6, v7}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ActivityLifecycleItem;)V

    .line 4123
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 4124
    invoke-virtual {p1, v4}, Lcom/android/server/wm/ActivityRecord;->setSleeping(Z)V

    .line 4126
    :cond_e
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x68

    invoke-virtual {v1, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4127
    .local v1, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x2af8

    invoke-virtual {v5, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4140
    nop

    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_2

    .line 4128
    :catch_0
    move-exception v1

    .line 4132
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "Exception thrown during pause"

    invoke-static {v2, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4134
    iput-boolean v4, p1, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    .line 4135
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v5, :cond_f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stop failed; moving to STOPPED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4136
    :cond_f
    sget-object v2, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p1, v2, v0}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 4137
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->deferRelaunchUntilPaused:Z

    if-eqz v0, :cond_10

    .line 4138
    const-string v0, "stop-except"

    invoke-virtual {p0, p1, v4, v0}, Lcom/android/server/wm/ActivityStack;->destroyActivityLocked(Lcom/android/server/wm/ActivityRecord;ZLjava/lang/String;)Z

    .line 4142
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_10
    :goto_2
    return-void
.end method

.method public supportsSplitScreenWindowingMode()Z
    .locals 2

    .line 2495
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->topTask()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 2496
    .local v0, "topTask":Lcom/android/server/wm/TaskRecord;
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->supportsSplitScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 2497
    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->supportsSplitScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 2496
    :goto_0
    return v1
.end method

.method final switchUserLocked(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 1596
    iget v0, p0, Lcom/android/server/wm/ActivityStack;->mCurrentUser:I

    if-ne v0, p1, :cond_0

    .line 1597
    return-void

    .line 1599
    :cond_0
    iput p1, p0, Lcom/android/server/wm/ActivityStack;->mCurrentUser:I

    .line 1602
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1603
    .local v0, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 1604
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskRecord;

    .line 1606
    .local v2, "task":Lcom/android/server/wm/TaskRecord;
    invoke-virtual {v2}, Lcom/android/server/wm/TaskRecord;->okToShowLocked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1607
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchUser: stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getStackId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " moving "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to top"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityTaskManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1610
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1611
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1614
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 1616
    .end local v2    # "task":Lcom/android/server/wm/TaskRecord;
    :goto_1
    goto :goto_0

    .line 1617
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method taskForIdLocked(I)Lcom/android/server/wm/TaskRecord;
    .locals 3
    .param p1, "id"    # I

    .line 1260
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1261
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    .line 1262
    .local v1, "task":Lcom/android/server/wm/TaskRecord;
    iget v2, v1, Lcom/android/server/wm/TaskRecord;->taskId:I

    if-ne v2, p1, :cond_0

    .line 1263
    return-object v1

    .line 1260
    .end local v1    # "task":Lcom/android/server/wm/TaskRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1266
    .end local v0    # "taskNdx":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 6102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityStack{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " stackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/ActivityStack;->mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6103
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result v1

    invoke-static {v1}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6104
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v1

    invoke-static {v1}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6105
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " translucent="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6106
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityStack;->isStackTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    .line 6108
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " tasks}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6102
    return-object v0
.end method

.method topActivityOccludesKeyguard()Z
    .locals 1

    .line 2482
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStack;->mTopActivityOccludesKeyguard:Z

    return v0
.end method

.method public topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    .line 1159
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method final topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/wm/ActivityRecord;
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "taskId"    # I

    .line 1217
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_0
    if-ltz v0, :cond_3

    .line 1218
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    .line 1219
    .local v1, "task":Lcom/android/server/wm/TaskRecord;
    iget v2, v1, Lcom/android/server/wm/TaskRecord;->taskId:I

    if-ne v2, p2, :cond_0

    .line 1220
    goto :goto_2

    .line 1222
    :cond_0
    iget-object v2, v1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1223
    .local v2, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_2

    .line 1224
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 1226
    .local v4, "r":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v5, :cond_1

    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-eq p1, v5, :cond_1

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->okToShowLocked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1227
    return-object v4

    .line 1223
    .end local v4    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1217
    .end local v1    # "task":Lcom/android/server/wm/TaskRecord;
    .end local v2    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v3    # "i":I
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1231
    .end local v0    # "taskNdx":I
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method topRunningActivityLocked(Z)Lcom/android/server/wm/ActivityRecord;
    .locals 3
    .param p1, "focusableOnly"    # Z

    .line 1170
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1171
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskRecord;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1172
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1173
    :cond_0
    return-object v1

    .line 1170
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1176
    .end local v0    # "taskNdx":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .locals 6
    .param p1, "notTop"    # Lcom/android/server/wm/ActivityRecord;

    .line 1194
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1195
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    .line 1196
    .local v1, "task":Lcom/android/server/wm/TaskRecord;
    iget-object v2, v1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1197
    .local v2, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "activityNdx":I
    :goto_1
    if-ltz v3, :cond_1

    .line 1198
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 1199
    .local v4, "r":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v5, :cond_0

    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->delayedResume:Z

    if-nez v5, :cond_0

    if-eq v4, p1, :cond_0

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->okToShowLocked()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1200
    return-object v4

    .line 1197
    .end local v4    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1194
    .end local v1    # "task":Lcom/android/server/wm/TaskRecord;
    .end local v2    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v3    # "activityNdx":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1204
    .end local v0    # "taskNdx":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method topRunningNonOverlayTaskActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 6

    .line 1180
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1181
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    .line 1182
    .local v1, "task":Lcom/android/server/wm/TaskRecord;
    iget-object v2, v1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1183
    .local v2, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "activityNdx":I
    :goto_1
    if-ltz v3, :cond_1

    .line 1184
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 1185
    .local v4, "r":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v5, :cond_0

    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    if-nez v5, :cond_0

    .line 1186
    return-object v4

    .line 1183
    .end local v4    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1180
    .end local v1    # "task":Lcom/android/server/wm/TaskRecord;
    .end local v2    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v3    # "activityNdx":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1190
    .end local v0    # "taskNdx":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method final topTask()Lcom/android/server/wm/TaskRecord;
    .locals 3

    .line 1245
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1246
    .local v0, "size":I
    if-lez v0, :cond_0

    .line 1247
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    return-object v1

    .line 1249
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method unhandledBackLocked()V
    .locals 10

    .line 5644
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 5645
    .local v0, "top":I
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Performing unhandledBack(): top activity at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5646
    :cond_0
    if-ltz v0, :cond_1

    .line 5647
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    iget-object v1, v1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5648
    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 5649
    .local v2, "activityTop":I
    if-ltz v2, :cond_1

    .line 5650
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    const-string v8, "unhandled-back"

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/ActivityStack;->finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 5654
    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v2    # "activityTop":I
    :cond_1
    return-void
.end method

.method updateActivityApplicationInfoLocked(Landroid/content/pm/ApplicationInfo;)V
    .locals 7
    .param p1, "aInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 1651
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1652
    .local v0, "packageName":Ljava/lang/String;
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1654
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "taskNdx":I
    :goto_0
    if-ltz v2, :cond_2

    .line 1655
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskRecord;

    iget-object v3, v3, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1656
    .local v3, "activities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "activityNdx":I
    :goto_1
    if-ltz v4, :cond_1

    .line 1657
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    .line 1659
    .local v5, "ar":Lcom/android/server/wm/ActivityRecord;
    iget v6, v5, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne v1, v6, :cond_0

    iget-object v6, v5, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1660
    invoke-virtual {v5, p1}, Lcom/android/server/wm/ActivityRecord;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;)V

    .line 1656
    .end local v5    # "ar":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 1654
    .end local v3    # "activities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v4    # "activityNdx":I
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1664
    .end local v2    # "taskNdx":I
    :cond_2
    return-void
.end method

.method updateBoundsAllowed(Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 1128
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStack;->mUpdateBoundsDeferred:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1129
    return v1

    .line 1131
    :cond_0
    if-eqz p1, :cond_1

    .line 1132
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mDeferredBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1134
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mDeferredBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1136
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStack;->mUpdateBoundsDeferredCalled:Z

    .line 1137
    const/4 v0, 0x0

    return v0
.end method

.method updateDisplayedBoundsAllowed(Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 1141
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStack;->mUpdateBoundsDeferred:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1142
    return v1

    .line 1144
    :cond_0
    if-eqz p1, :cond_1

    .line 1145
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mDeferredDisplayedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1147
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mDeferredDisplayedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1149
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStack;->mUpdateDisplayedBoundsDeferredCalled:Z

    .line 1150
    const/4 v0, 0x0

    return v0
.end method

.method final updateLRUListLocked(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1326
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 1327
    .local v0, "hadit":Z
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1328
    return v0
.end method

.method public updatePictureInPictureModeForPinnedStackAnimation(Landroid/graphics/Rect;Z)V
    .locals 5
    .param p1, "targetStackBounds"    # Landroid/graphics/Rect;
    .param p2, "forceUpdate"    # Z

    .line 6084
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6085
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isAttached()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6086
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 6088
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v1

    .line 6089
    .local v1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskRecord;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 6090
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v3, v4, p1, p2}, Lcom/android/server/wm/ActivityStackSupervisor;->updatePictureInPictureMode(Lcom/android/server/wm/TaskRecord;Landroid/graphics/Rect;Z)V

    .line 6089
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6093
    .end local v1    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskRecord;>;"
    .end local v2    # "i":I
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6094
    return-void

    .line 6093
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method willActivityBeVisibleLocked(Landroid/os/IBinder;)Z
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;

    .line 5524
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "taskNdx":I
    :goto_0
    const/4 v2, 0x0

    if-ltz v0, :cond_3

    .line 5525
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskRecord;

    iget-object v3, v3, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5526
    .local v3, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    .local v4, "activityNdx":I
    :goto_1
    if-ltz v4, :cond_2

    .line 5527
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    .line 5528
    .local v5, "r":Lcom/android/server/wm/ActivityRecord;
    iget-object v6, v5, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-ne v6, p1, :cond_0

    .line 5529
    return v1

    .line 5531
    :cond_0
    iget-boolean v6, v5, Lcom/android/server/wm/ActivityRecord;->fullscreen:Z

    if-eqz v6, :cond_1

    iget-boolean v6, v5, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v6, :cond_1

    .line 5532
    return v2

    .line 5526
    .end local v5    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 5524
    .end local v3    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v4    # "activityNdx":I
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5536
    .end local v0    # "taskNdx":I
    :cond_3
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 5537
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v0, :cond_4

    .line 5538
    return v2

    .line 5540
    :cond_4
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "willActivityBeVisibleLocked: Returning false, would have returned true for r="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5542
    :cond_5
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    xor-int/2addr v1, v2

    return v1
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "logLevel"    # I

    .line 6141
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 6142
    .local v0, "token":J
    const-wide v2, 0x10b00000001L

    invoke-super {p0, p1, v2, v3, p4}, Lcom/android/server/wm/ConfigurationContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 6143
    iget v2, p0, Lcom/android/server/wm/ActivityStack;->mStackId:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6144
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "taskNdx":I
    :goto_0
    if-ltz v2, :cond_0

    .line 6145
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskRecord;

    .line 6146
    .local v3, "task":Lcom/android/server/wm/TaskRecord;
    const-wide v4, 0x20b00000003L

    invoke-virtual {v3, p1, v4, v5, p4}, Lcom/android/server/wm/TaskRecord;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 6144
    .end local v3    # "task":Lcom/android/server/wm/TaskRecord;
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 6148
    .end local v2    # "taskNdx":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_1

    .line 6149
    const-wide v3, 0x10b00000004L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/ActivityRecord;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 6151
    :cond_1
    const-wide v2, 0x10500000005L

    iget v4, p0, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6152
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->matchParentBounds()Z

    move-result v2

    if-nez v2, :cond_2

    .line 6153
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 6154
    .local v2, "bounds":Landroid/graphics/Rect;
    const-wide v3, 0x10b00000007L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 6158
    .end local v2    # "bounds":Landroid/graphics/Rect;
    :cond_2
    const-wide v2, 0x10800000006L

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->matchParentBounds()Z

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6159
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 6160
    return-void
.end method
