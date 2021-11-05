.class public Lcom/android/server/wm/ActivityStack;
.super Lcom/android/server/wm/Task;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;,
        Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;,
        Lcom/android/server/wm/ActivityStack$EnsureVisibleActivitiesConfigHelper;,
        Lcom/android/server/wm/ActivityStack$ActivityStackHandler;,
        Lcom/android/server/wm/ActivityStack$ActivityState;,
        Lcom/android/server/wm/ActivityStack$StackVisibility;
    }
.end annotation


# static fields
.field static final EVALUATE_GAME_MODE_MSG:I = 0x6d

.field static final EVALUATE_READ_MODE_MSG:I = 0x6c

.field static final EVALUATE_READ_MODE_NOTIFICATION_MSG:I = 0x6f

.field private static final IS_SUPPORT_COLOR_ADS:Z

.field private static final MAX_ENSURE_VISIBILITY_DEPTH:I = 0x6

.field private static final SHOW_APP_STARTING_PREVIEW:Z = true

.field static final STACK_VISIBILITY_INVISIBLE:I = 0x2

.field static final STACK_VISIBILITY_VISIBLE:I = 0x0

.field static final STACK_VISIBILITY_VISIBLE_BEHIND_TRANSLUCENT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field static final TAG_ADD_REMOVE:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_APP:Ljava/lang/String; = "ActivityTaskManager"

.field static final TAG_CLEANUP:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_PAUSE:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_RELEASE:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_RESULTS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_STACK:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_STATES:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_SWITCH:Ljava/lang/String; = "ActivityTaskManager"

.field static final TAG_TASKS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_TRANSITION:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_USER_LEAVING:Ljava/lang/String; = "ActivityTaskManager"

.field static final TAG_VISIBILITY:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TRANSLUCENT_CONVERSION_TIMEOUT:J = 0x7d0L

.field private static final TRANSLUCENT_TIMEOUT_MSG:I = 0x65

.field static final UPDATE_SCREEN_SCREEN_EFFECT_DISABLED_MSG:I = 0x6e

.field private static final mActivityPluginDelegate:Lcom/android/server/wm/ActivityPluginDelegate;

.field static final mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

.field private static final sResetTargetTaskHelper:Lcom/android/server/wm/ResetTargetTaskHelper;


# instance fields
.field private final mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

.field mAppLockerInResume:Z

.field private mBoundsAnimating:Z

.field private mBoundsAnimatingRequested:Z

.field private mBoundsAnimationSourceHintBounds:Landroid/graphics/Rect;

.field private mBoundsAnimationTarget:Landroid/graphics/Rect;

.field private final mCheckBehindFullscreenActivityHelper:Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;

.field mConfigWillChange:Z

.field mCurrentUser:I

.field private final mEnsureActivitiesVisibleHelper:Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

.field private mEnsureActivityVisibilityDepth:I

.field private final mEnsureVisibleActivitiesConfigHelper:Lcom/android/server/wm/ActivityStack$EnsureVisibleActivitiesConfigHelper;

.field final mHandler:Landroid/os/Handler;

.field mInResumeTopActivity:Z

.field protected mOnePlusActivityStack:Lcom/android/server/am/OnePlusSceneUtil$OnePlusActivityStack;

.field public mPerf:Landroid/util/BoostFramework;

.field mPreAnimationBounds:Landroid/graphics/Rect;

.field private final mRemoveHistoryRecordsForApp:Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTmpRect2:Landroid/graphics/Rect;

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


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 228
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xd8

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ActivityStack;->IS_SUPPORT_COLOR_ADS:Z

    .line 349
    new-instance v0, Lcom/android/internal/app/ActivityTrigger;

    invoke-direct {v0}, Lcom/android/internal/app/ActivityTrigger;-><init>()V

    sput-object v0, Lcom/android/server/wm/ActivityStack;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    .line 351
    new-instance v0, Lcom/android/server/wm/ActivityPluginDelegate;

    invoke-direct {v0}, Lcom/android/server/wm/ActivityPluginDelegate;-><init>()V

    sput-object v0, Lcom/android/server/wm/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/wm/ActivityPluginDelegate;

    .line 394
    new-instance v0, Lcom/android/server/wm/ResetTargetTaskHelper;

    invoke-direct {v0}, Lcom/android/server/wm/ResetTargetTaskHelper;-><init>()V

    sput-object v0, Lcom/android/server/wm/ActivityStack;->sResetTargetTaskHelper:Lcom/android/server/wm/ResetTargetTaskHelper;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;IILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Z)V
    .locals 9
    .param p1, "atmService"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "id"    # I
    .param p3, "activityType"    # I
    .param p4, "info"    # Landroid/content/pm/ActivityInfo;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "createdByOrganizer"    # Z

    .line 632
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/server/wm/ActivityStack;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/app/ActivityManager$TaskDescription;Lcom/android/server/wm/ActivityStack;)V

    .line 634
    iput-boolean p6, p0, Lcom/android/server/wm/ActivityStack;->mCreatedByOrganizer:Z

    .line 635
    invoke-virtual {p0, p3}, Lcom/android/server/wm/ActivityStack;->setActivityType(I)V

    .line 636
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;JZLandroid/app/ActivityManager$TaskDescription;IIIIILjava/lang/String;Ljava/lang/String;IZZZIILandroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Lcom/android/server/wm/ActivityStack;)V
    .locals 4
    .param p1, "atmService"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "id"    # I
    .param p3, "_intent"    # Landroid/content/Intent;
    .param p4, "_affinityIntent"    # Landroid/content/Intent;
    .param p5, "_affinity"    # Ljava/lang/String;
    .param p6, "_rootAffinity"    # Ljava/lang/String;
    .param p7, "_realActivity"    # Landroid/content/ComponentName;
    .param p8, "_origActivity"    # Landroid/content/ComponentName;
    .param p9, "_rootWasReset"    # Z
    .param p10, "_autoRemoveRecents"    # Z
    .param p11, "_askedCompatMode"    # Z
    .param p12, "_userId"    # I
    .param p13, "_effectiveUid"    # I
    .param p14, "_lastDescription"    # Ljava/lang/String;
    .param p15, "lastTimeMoved"    # J
    .param p17, "neverRelinquishIdentity"    # Z
    .param p18, "_lastTaskDescription"    # Landroid/app/ActivityManager$TaskDescription;
    .param p19, "taskAffiliation"    # I
    .param p20, "prevTaskId"    # I
    .param p21, "nextTaskId"    # I
    .param p22, "taskAffiliationColor"    # I
    .param p23, "callingUid"    # I
    .param p24, "callingPackage"    # Ljava/lang/String;
    .param p25, "callingFeatureId"    # Ljava/lang/String;
    .param p26, "resizeMode"    # I
    .param p27, "supportsPictureInPicture"    # Z
    .param p28, "_realActivitySuspended"    # Z
    .param p29, "userSetupComplete"    # Z
    .param p30, "minWidth"    # I
    .param p31, "minHeight"    # I
    .param p32, "info"    # Landroid/content/pm/ActivityInfo;
    .param p33, "_voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p34, "_voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p35, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 667
    move-object v0, p0

    invoke-direct/range {p0 .. p35}, Lcom/android/server/wm/Task;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;JZLandroid/app/ActivityManager$TaskDescription;IIIIILjava/lang/String;Ljava/lang/String;IZZZIILandroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Lcom/android/server/wm/ActivityStack;)V

    .line 240
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/wm/ActivityStack;->mEnsureActivityVisibilityDepth:I

    .line 279
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/wm/ActivityStack;->mPerf:Landroid/util/BoostFramework;

    .line 287
    iput-object v2, v0, Lcom/android/server/wm/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    .line 288
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/wm/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 299
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStack;->mInResumeTopActivity:Z

    .line 302
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStack;->mAppLockerInResume:Z

    .line 308
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v0, Lcom/android/server/wm/ActivityStack;->mTmpRect:Landroid/graphics/Rect;

    .line 309
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v0, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    .line 314
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStack;->mBoundsAnimating:Z

    .line 317
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStack;->mBoundsAnimatingRequested:Z

    .line 318
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/android/server/wm/ActivityStack;->mBoundsAnimationTarget:Landroid/graphics/Rect;

    .line 319
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/android/server/wm/ActivityStack;->mBoundsAnimationSourceHintBounds:Landroid/graphics/Rect;

    .line 321
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/android/server/wm/ActivityStack;->mPreAnimationBounds:Landroid/graphics/Rect;

    .line 323
    new-instance v1, Lcom/android/server/wm/AnimatingActivityRegistry;

    invoke-direct {v1}, Lcom/android/server/wm/AnimatingActivityRegistry;-><init>()V

    iput-object v1, v0, Lcom/android/server/wm/ActivityStack;->mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

    .line 395
    new-instance v1, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

    invoke-direct {v1, p0}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;-><init>(Lcom/android/server/wm/ActivityStack;)V

    iput-object v1, v0, Lcom/android/server/wm/ActivityStack;->mEnsureActivitiesVisibleHelper:Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

    .line 397
    new-instance v1, Lcom/android/server/wm/ActivityStack$EnsureVisibleActivitiesConfigHelper;

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/ActivityStack$EnsureVisibleActivitiesConfigHelper;-><init>(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStack$1;)V

    iput-object v1, v0, Lcom/android/server/wm/ActivityStack;->mEnsureVisibleActivitiesConfigHelper:Lcom/android/server/wm/ActivityStack$EnsureVisibleActivitiesConfigHelper;

    .line 436
    new-instance v1, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;-><init>(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStack$1;)V

    iput-object v1, v0, Lcom/android/server/wm/ActivityStack;->mCheckBehindFullscreenActivityHelper:Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;

    .line 512
    new-instance v1, Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;-><init>(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStack$1;)V

    iput-object v1, v0, Lcom/android/server/wm/ActivityStack;->mRemoveHistoryRecordsForApp:Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;

    .line 675
    invoke-static {p2}, Lcom/android/server/wm/EventLogTags;->writeWmStackCreated(I)V

    .line 676
    new-instance v1, Lcom/android/server/wm/ActivityStack$ActivityStackHandler;

    iget-object v2, v0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStackSupervisor;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/ActivityStack$ActivityStackHandler;-><init>(Lcom/android/server/wm/ActivityStack;Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    .line 677
    iget-object v1, v0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/ActivityStack;->mCurrentUser:I

    .line 680
    new-instance v1, Lcom/android/server/am/OnePlusSceneUtil$OnePlusActivityStack;

    iget-object v2, v0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/OnePlusSceneUtil$OnePlusActivityStack;-><init>(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStackSupervisor;)V

    iput-object v1, v0, Lcom/android/server/wm/ActivityStack;->mOnePlusActivityStack:Lcom/android/server/am/OnePlusSceneUtil$OnePlusActivityStack;

    .line 682
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/app/ActivityManager$TaskDescription;Lcom/android/server/wm/ActivityStack;)V
    .locals 36
    .param p1, "atmService"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "id"    # I
    .param p3, "info"    # Landroid/content/pm/ActivityInfo;
    .param p4, "_intent"    # Landroid/content/Intent;
    .param p5, "_voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p6, "_voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p7, "_taskDescription"    # Landroid/app/ActivityManager$TaskDescription;
    .param p8, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 641
    move-object/from16 v15, p3

    iget-object v0, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 644
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 645
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 647
    if-eqz p7, :cond_0

    move-object/from16 v32, p7

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v0}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    move-object/from16 v32, v0

    :goto_0
    const/16 v20, -0x1

    const/16 v21, -0x1

    const/16 v22, 0x0

    iget-object v0, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v23, v0

    iget-object v0, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    iget v0, v15, Landroid/content/pm/ActivityInfo;->resizeMode:I

    move/from16 v26, v0

    .line 650
    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v27

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, -0x1

    const/16 v31, -0x1

    .line 641
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    move-wide/from16 v15, v18

    move-object/from16 v18, v32

    move/from16 v19, p2

    move-object/from16 v32, p3

    move-object/from16 v33, p5

    move-object/from16 v34, p6

    move-object/from16 v35, p8

    invoke-direct/range {v0 .. v35}, Lcom/android/server/wm/ActivityStack;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;JZLandroid/app/ActivityManager$TaskDescription;IIIIILjava/lang/String;Ljava/lang/String;IZZZIILandroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Lcom/android/server/wm/ActivityStack;)V

    .line 653
    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .line 211
    sget-boolean v0, Lcom/android/server/wm/ActivityStack;->IS_SUPPORT_COLOR_ADS:Z

    return v0
.end method

.method private addChild(Lcom/android/server/wm/WindowContainer;IZ)V
    .locals 1
    .param p1, "child"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "position"    # I
    .param p3, "moveParents"    # Z

    .line 3526
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityStack;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    .line 3529
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/wm/ActivityStack;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 3530
    return-void
.end method

.method private canEnterPipOnTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .locals 3
    .param p1, "pipCandidate"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "toFrontTask"    # Lcom/android/server/wm/Task;
    .param p3, "toFrontActivity"    # Lcom/android/server/wm/ActivityRecord;
    .param p4, "opts"    # Landroid/app/ActivityOptions;

    .line 2488
    const/4 v0, 0x0

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/app/ActivityOptions;->disallowEnterPictureInPictureWhileLaunching()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2490
    return v0

    .line 2492
    :cond_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 2496
    :cond_1
    if-eqz p2, :cond_2

    .line 2497
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 2498
    .local v1, "targetStack":Lcom/android/server/wm/ActivityStack;
    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->isActivityTypeAssistant()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2500
    return v0

    .line 2502
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 2494
    .end local v1    # "targetStack":Lcom/android/server/wm/ActivityStack;
    :cond_4
    :goto_1
    return v0
.end method

.method private clearLaunchTime(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1119
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1120
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->removeIdleTimeoutForActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 1121
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleIdleTimeout(Lcom/android/server/wm/ActivityRecord;)V

    .line 1123
    :cond_0
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

    .line 1202
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

    .line 1203
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    if-ne v2, p0, :cond_0

    .line 1204
    const/4 v0, 0x1

    return v0

    .line 1206
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    goto :goto_0

    .line 1207
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private dumpActivities(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;ZLjava/lang/Runnable;)Z
    .locals 13
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "dumpAll"    # Z
    .param p4, "dumpClient"    # Z
    .param p5, "dumpPackage"    # Ljava/lang/String;
    .param p6, "needSep"    # Z
    .param p7, "header"    # Ljava/lang/Runnable;

    .line 3182
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->hasChild()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3183
    return v1

    .line 3185
    :cond_0
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v5, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 3186
    .local v5, "printedHeader":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 3187
    .local v4, "printed":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v0, Lcom/android/server/wm/-$$Lambda$ActivityStack$hBu5TaiY8B4H_AGkfMoFLmwCCRE;

    move-object v2, v0

    move-object v3, p0

    move/from16 v6, p6

    move-object v7, p2

    move-object/from16 v8, p7

    move-object/from16 v9, p5

    move-object v10, p1

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-direct/range {v2 .. v12}, Lcom/android/server/wm/-$$Lambda$ActivityStack$hBu5TaiY8B4H_AGkfMoFLmwCCRE;-><init>(Lcom/android/server/wm/ActivityStack;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;ZLjava/io/PrintWriter;Ljava/lang/Runnable;Ljava/lang/String;Ljava/io/FileDescriptor;ZZ)V

    const/4 v1, 0x1

    move-object v2, p0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityStack;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 3226
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private static finishIfVoiceActivity(Lcom/android/server/wm/ActivityRecord;Landroid/os/IBinder;)Z
    .locals 3
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 2612
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v0}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eq v0, p1, :cond_0

    goto :goto_1

    .line 2614
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->clearVoiceSessionLocked()V

    .line 2616
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/app/IApplicationThread;->scheduleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2619
    goto :goto_0

    .line 2617
    :catch_0
    move-exception v0

    .line 2620
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->finishRunningVoiceLocked()V

    .line 2621
    const/4 v0, 0x1

    return v0

    .line 2612
    :cond_1
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method private static finishIfVoiceTask(Lcom/android/server/wm/Task;Landroid/os/IBinder;)V
    .locals 2
    .param p0, "tr"    # Lcom/android/server/wm/Task;
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 2595
    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v0}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 2596
    new-instance v0, Lcom/android/server/wm/-$$Lambda$ActivityStack$DXQCHAtrf2X7qXtzByw5Fhuk8yg;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$ActivityStack$DXQCHAtrf2X7qXtzByw5Fhuk8yg;-><init>(Lcom/android/server/wm/Task;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 2603
    :cond_0
    sget-object v0, Lcom/android/server/wm/-$$Lambda$ActivityStack$N2PfGF62p6Y1TYGt9lvFtsW9LmQ;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStack$N2PfGF62p6Y1TYGt9lvFtsW9LmQ;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 2604
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    .line 2603
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainFunction(Ljava/util/function/BiFunction;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledFunction;

    move-result-object v0

    .line 2606
    .local v0, "f":Lcom/android/internal/util/function/pooled/PooledFunction;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Function;)Z

    .line 2607
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledFunction;->recycle()V

    .line 2609
    .end local v0    # "f":Lcom/android/internal/util/function/pooled/PooledFunction;
    :goto_0
    return-void
.end method

.method private getOccludingActivityAbove(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .locals 2
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 3089
    sget-object v0, Lcom/android/server/wm/-$$Lambda$ActivityStack$F5e-149Q73snCogeDQIX0CnQxZ8;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStack$F5e-149Q73snCogeDQIX0CnQxZ8;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/wm/ActivityStack;->getActivity(Ljava/util/function/Predicate;ZLcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3091
    .local v0, "top":Lcom/android/server/wm/ActivityRecord;
    if-eq v0, p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private getRawBounds()Landroid/graphics/Rect;
    .locals 1

    .line 3490
    invoke-super {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private inFrontOfStandardStack()Z
    .locals 4

    .line 2638
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 2639
    .local v0, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2640
    return v1

    .line 2642
    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/server/wm/TaskDisplayArea;->getIndexOf(Lcom/android/server/wm/ActivityStack;)I

    move-result v2

    .line 2643
    .local v2, "index":I
    if-nez v2, :cond_1

    .line 2644
    return v1

    .line 2646
    :cond_1
    add-int/lit8 v1, v2, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    .line 2647
    .local v1, "stackBehind":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->isActivityTypeStandard()Z

    move-result v3

    return v3
.end method

.method private isTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "topFocusedActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 2506
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$N2PfGF62p6Y1TYGt9lvFtsW9LmQ(Lcom/android/server/wm/ActivityRecord;Landroid/os/IBinder;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/wm/ActivityStack;->finishIfVoiceActivity(Lcom/android/server/wm/ActivityRecord;Landroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$QjNtYzBoevRHPhQzwu5fh58MK0E(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/wm/ActivityStack;->processTaskResizeBounds(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic lambda$VIuWlCdKwIo4qqRlevMLniedZ7o(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/wm/ActivityStack;->setTaskBounds(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic lambda$YAQEcQUrLqR06xiJJApMvOPIxhg(Lcom/android/server/wm/Task;Landroid/os/IBinder;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/wm/ActivityStack;->finishIfVoiceTask(Lcom/android/server/wm/Task;Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic lambda$awakeFromSleepingLocked$1(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1127
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->setSleeping(Z)V

    return-void
.end method

.method static synthetic lambda$finishAllActivitiesImmediately$4(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finishAllActivitiesImmediatelyLocked: finishing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2632
    const-string v0, "finishAllActivitiesImmediately"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->destroyIfPossible(Ljava/lang/String;)Z

    .line 2633
    return-void
.end method

.method static synthetic lambda$finishIfVoiceTask$3(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V
    .locals 2
    .param p0, "tr"    # Lcom/android/server/wm/Task;
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2597
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_0

    return-void

    .line 2598
    :cond_0
    const/4 v0, 0x0

    const-string v1, "finish-voice"

    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 2599
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateOomAdj()V

    .line 2600
    return-void
.end method

.method static synthetic lambda$getDumpActivitiesLocked$11(Lcom/android/server/am/ActivityManagerService$ItemMatcher;Ljava/util/ArrayList;Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p0, "matcher"    # Lcom/android/server/am/ActivityManagerService$ItemMatcher;
    .param p1, "activities"    # Ljava/util/ArrayList;
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 3244
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3245
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3247
    :cond_0
    return-void
.end method

.method static synthetic lambda$getOccludingActivityAbove$7(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p0, "ar"    # Lcom/android/server/wm/ActivityRecord;

    .line 3089
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$goToSleep$2(Lcom/android/server/wm/ActivityRecord;)V
    .locals 7
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1190
    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->STARTED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v2, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v3, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/wm/ActivityStack$ActivityState;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1191
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->setSleeping(Z)V

    .line 1193
    :cond_0
    return-void
.end method

.method static synthetic lambda$navigateUpTo$5(Landroid/content/ComponentName;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2
    .param p0, "dest"    # Landroid/content/ComponentName;
    .param p1, "ar"    # Lcom/android/server/wm/ActivityRecord;

    .line 2702
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 2703
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2702
    :goto_0
    return v0
.end method

.method static synthetic lambda$navigateUpTo$6(Lcom/android/server/wm/ActivityRecord;[I[Landroid/content/Intent;[Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/wm/ActivityRecord;)Ljava/lang/Boolean;
    .locals 7
    .param p0, "finalParent"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "resultCodeHolder"    # [I
    .param p2, "resultDataHolder"    # [Landroid/content/Intent;
    .param p3, "resultGrantsHolder"    # [Lcom/android/server/uri/NeededUriGrants;
    .param p4, "ar"    # Lcom/android/server/wm/ActivityRecord;

    .line 2741
    if-ne p4, p0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 2743
    :cond_0
    const/4 v0, 0x0

    aget v2, p1, v0

    aget-object v3, p2, v0

    aget-object v4, p3, v0

    const/4 v6, 0x1

    const-string v5, "navigate-up"

    move-object v1, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;Z)I

    .line 2746
    aput v0, p1, v0

    .line 2747
    const/4 v1, 0x0

    aput-object v1, p2, v0

    .line 2748
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$xHrv17CG5tAkxdutHyfCFt4-Iec(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/ActivityStack;->restartPackage(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    return-void
.end method

.method private static processTaskResizeBounds(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V
    .locals 1
    .param p0, "task"    # Lcom/android/server/wm/Task;
    .param p1, "displayedBounds"    # Landroid/graphics/Rect;

    .line 3064
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3066
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 3067
    return-void
.end method

.method private static restartPackage(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    .locals 1
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 3268
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->forceNewConfig:Z

    .line 3270
    if-eqz p1, :cond_0

    if-ne p0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v0, :cond_0

    .line 3271
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->startFreezingScreenLocked(I)V

    .line 3274
    :cond_0
    return-void
.end method

.method private resumeNextFocusableActivityWhenStackIsEmpty(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .locals 4
    .param p1, "prev"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;

    .line 2318
    const-string v0, "noMoreActivities"

    .line 2320
    .local v0, "reason":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v1

    const-string v2, "noMoreActivities"

    if-nez v1, :cond_0

    .line 2321
    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityStack;->adjustFocusToNextFocusableTask(Ljava/lang/String;)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 2322
    .local v1, "nextFocusedStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_0

    .line 2326
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, p1, v3}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v2

    return v2

    .line 2333
    .end local v1    # "nextFocusedStack":Lcom/android/server/wm/ActivityStack;
    :cond_0
    invoke-static {p2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2334
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v1, :cond_1

    const-string v1, "ActivityTaskManager"

    const-string v3, "resumeNextFocusableActivityWhenStackIsEmpty: noMoreActivities, go home"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2336
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/wm/RootWindowContainer;->resumeHomeActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v1

    return v1
.end method

.method private resumeTopActivityInnerLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .locals 26
    .param p1, "prev"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;

    .line 1796
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, ": "

    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooting()Z

    move-result v0

    const/4 v5, 0x0

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1798
    return v5

    .line 1804
    :cond_0
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lcom/android/server/wm/ActivityStack;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    .line 1806
    .local v7, "next":Lcom/android/server/wm/ActivityRecord;
    if-eqz v7, :cond_1

    move v0, v6

    goto :goto_0

    :cond_1
    move v0, v5

    :goto_0
    move v8, v0

    .line 1809
    .local v8, "hasRunningActivity":Z
    if-eqz v8, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isAttached()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1810
    return v5

    .line 1813
    :cond_2
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->cancelInitializingActivities()V

    .line 1817
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mUserLeaving:Z

    .line 1818
    .local v0, "userLeaving":Z
    iget-object v9, v1, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iput-boolean v5, v9, Lcom/android/server/wm/ActivityStackSupervisor;->mUserLeaving:Z

    .line 1820
    if-nez v8, :cond_3

    .line 1822
    invoke-direct/range {p0 .. p2}, Lcom/android/server/wm/ActivityStack;->resumeNextFocusableActivityWhenStackIsEmpty(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v4

    return v4

    .line 1825
    :cond_3
    iput-boolean v5, v7, Lcom/android/server/wm/ActivityRecord;->delayedResume:Z

    .line 1826
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v9

    .line 1829
    .local v9, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    iget-object v10, v1, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const-string v11, "ActivityTaskManager"

    if-ne v10, v7, :cond_5

    sget-object v10, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v7, v10}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1830
    invoke-virtual {v9}, Lcom/android/server/wm/TaskDisplayArea;->allResumedActivitiesComplete()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1833
    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityStack;->executeAppTransition(Landroid/app/ActivityOptions;)V

    .line 1834
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resumeTopActivityLocked: Top activity resumed "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    :cond_4
    return v5

    .line 1839
    :cond_5
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->canResumeByCompat()Z

    move-result v10

    if-nez v10, :cond_6

    .line 1840
    return v5

    .line 1844
    :cond_6
    iget-object v10, v1, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v10}, Lcom/android/server/wm/RootWindowContainer;->allPausedActivitiesComplete()Z

    move-result v10

    .line 1845
    .local v10, "allPausedComplete":Z
    const-string v12, "resumeTopActivityLocked: Skip resume: some activity pausing."

    if-nez v10, :cond_9

    .line 1846
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v4, :cond_7

    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-nez v4, :cond_7

    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v4, :cond_8

    .line 1847
    :cond_7
    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    :cond_8
    return v5

    .line 1854
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v13

    const/4 v14, 0x0

    if-eqz v13, :cond_10

    iget-object v13, v1, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v13, v7, :cond_10

    iget-object v13, v1, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1856
    invoke-virtual {v13}, Lcom/android/server/wm/RootWindowContainer;->allPausedActivitiesComplete()Z

    move-result v13

    if-eqz v13, :cond_10

    .line 1859
    const/4 v13, 0x1

    .line 1860
    .local v13, "nothingToResume":Z
    iget-object v15, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v15, v15, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    if-nez v15, :cond_e

    .line 1861
    iget-boolean v15, v1, Lcom/android/server/wm/ActivityStack;->mTopActivityOccludesKeyguard:Z

    if-nez v15, :cond_a

    .line 1862
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v15

    if-eqz v15, :cond_a

    move v15, v6

    goto :goto_1

    :cond_a
    move v15, v5

    .line 1863
    .local v15, "canShowWhenLocked":Z
    :goto_1
    iget-object v6, v1, Lcom/android/server/wm/ActivityStack;->mTopDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    if-eq v6, v7, :cond_b

    .line 1864
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->containsDismissKeyguardWindow()Z

    move-result v6

    if-eqz v6, :cond_b

    const/4 v6, 0x1

    goto :goto_2

    :cond_b
    move v6, v5

    .line 1866
    .local v6, "mayDismissKeyguard":Z
    :goto_2
    if-nez v15, :cond_d

    if-eqz v6, :cond_c

    goto :goto_3

    .line 1870
    :cond_c
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->currentLaunchCanTurnScreenOn()Z

    move-result v17

    if-eqz v17, :cond_e

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->canTurnScreenOn()Z

    move-result v17

    if-eqz v17, :cond_e

    .line 1871
    const/4 v13, 0x0

    goto :goto_4

    .line 1867
    :cond_d
    :goto_3
    invoke-virtual {v1, v14, v5, v5}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 1869
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->shouldSleepActivities()Z

    move-result v13

    .line 1874
    .end local v6    # "mayDismissKeyguard":Z
    .end local v15    # "canShowWhenLocked":Z
    :cond_e
    :goto_4
    if-eqz v13, :cond_10

    .line 1877
    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityStack;->executeAppTransition(Landroid/app/ActivityOptions;)V

    .line 1878
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v4, :cond_f

    const-string v4, "resumeTopActivityLocked: Going to sleep and all paused"

    invoke-static {v11, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    :cond_f
    return v5

    .line 1887
    .end local v13    # "nothingToResume":Z
    :cond_10
    iget-object v6, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v13, v7, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v6, v13}, Landroid/app/ActivityManagerInternal;->hasStartedUserState(I)Z

    move-result v6

    if-nez v6, :cond_11

    .line 1888
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping resume of top activity "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": user "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v7, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is stopped"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    return v5

    .line 1895
    :cond_11
    iget-object v6, v1, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v6, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1896
    invoke-virtual {v7, v5}, Lcom/android/server/wm/ActivityRecord;->setSleeping(Z)V

    .line 1897
    const/4 v6, 0x1

    iput-boolean v6, v7, Lcom/android/server/wm/ActivityRecord;->launching:Z

    .line 1899
    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v6, :cond_12

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Resuming "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    :cond_12
    sget-object v6, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const/4 v13, 0x1

    invoke-virtual {v7, v6, v13}, Lcom/android/server/wm/ActivityRecord;->callServiceTrackeronActivityStatechange(Lcom/android/server/wm/ActivityStack$ActivityState;Z)V

    .line 1902
    sget-object v6, Lcom/android/server/wm/ActivityStack;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    if-eqz v6, :cond_13

    .line 1903
    iget-object v13, v7, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v15, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v14, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1904
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v5

    .line 1903
    invoke-virtual {v6, v13, v15, v14, v5}, Lcom/android/internal/app/ActivityTrigger;->activityResumeTrigger(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;Z)V

    .line 1907
    :cond_13
    sget-object v5, Lcom/android/server/wm/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/wm/ActivityPluginDelegate;

    if-eqz v5, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v5

    if-eqz v5, :cond_15

    .line 1908
    iget-object v5, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1909
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v6

    const/4 v13, 0x1

    if-ne v6, v13, :cond_14

    const/4 v6, 0x1

    goto :goto_5

    :cond_14
    const/4 v6, 0x0

    :goto_5
    invoke-static {v5, v6}, Lcom/android/server/wm/ActivityPluginDelegate;->activityInvokeNotification(Ljava/lang/String;Z)V

    .line 1913
    :cond_15
    iget-object v5, v1, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/RootWindowContainer;->allPausedActivitiesComplete()Z

    move-result v5

    if-nez v5, :cond_18

    .line 1914
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v4, :cond_16

    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-nez v4, :cond_16

    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v4, :cond_17

    :cond_16
    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    :cond_17
    const/4 v4, 0x0

    return v4

    .line 1920
    :cond_18
    iget-object v5, v1, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v6, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityStackSupervisor;->setLaunchSource(I)V

    .line 1922
    const/4 v5, 0x0

    .line 1923
    .local v5, "lastResumed":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v9}, Lcom/android/server/wm/TaskDisplayArea;->getLastFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v6

    .line 1924
    .local v6, "lastFocusedStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v6, :cond_1a

    if-eq v6, v1, :cond_1a

    .line 1927
    iget-object v5, v6, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1928
    if-eqz v0, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->inMultiWindowMode()Z

    move-result v12

    if-eqz v12, :cond_1a

    invoke-virtual {v6, v7}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 1931
    sget-boolean v12, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_USER_LEAVING:Z

    if-eqz v12, :cond_19

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Overriding userLeaving to false next="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " lastResumed="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    :cond_19
    const/4 v0, 0x0

    move-object v12, v5

    move v5, v0

    goto :goto_6

    .line 1937
    :cond_1a
    move-object v12, v5

    move v5, v0

    .end local v0    # "userLeaving":Z
    .local v5, "userLeaving":Z
    .local v12, "lastResumed":Lcom/android/server/wm/ActivityRecord;
    :goto_6
    invoke-virtual {v9, v5, v7}, Lcom/android/server/wm/TaskDisplayArea;->pauseBackStacks(ZLcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    .line 1938
    .local v0, "pausing":Z
    iget-object v13, v1, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v13, :cond_1c

    .line 1939
    sget-boolean v13, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v13, :cond_1b

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "resumeTopActivityLocked: Pausing "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    :cond_1b
    const/4 v13, 0x0

    invoke-virtual {v1, v5, v13, v7}, Lcom/android/server/wm/ActivityStack;->startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;)Z

    move-result v14

    or-int/2addr v0, v14

    move v13, v0

    goto :goto_7

    .line 1938
    :cond_1c
    move v13, v0

    .line 1943
    .end local v0    # "pausing":Z
    .local v13, "pausing":Z
    :goto_7
    if-eqz v13, :cond_24

    .line 1944
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v0, :cond_1d

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_1e

    :cond_1d
    const-string v0, "resumeTopActivityLocked: Skip resume: need to start pausing"

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    :cond_1e
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1951
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    const/4 v4, 0x1

    const/4 v11, 0x0

    invoke-virtual {v0, v11, v4, v11, v11}, Lcom/android/server/wm/WindowProcessController;->updateProcessInfo(ZZZZ)V

    goto :goto_a

    .line 1954
    :cond_1f
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->isProcessRunning()Z

    move-result v0

    if-nez v0, :cond_22

    .line 1958
    invoke-virtual {v9}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-ne v1, v0, :cond_20

    const/4 v0, 0x1

    goto :goto_8

    :cond_20
    const/4 v0, 0x0

    .line 1959
    .local v0, "isTop":Z
    :goto_8
    iget-object v4, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1960
    if-eqz v0, :cond_21

    const-string v11, "pre-top-activity"

    goto :goto_9

    :cond_21
    const-string v11, "pre-activity"

    .line 1959
    :goto_9
    const/4 v14, 0x0

    invoke-virtual {v4, v7, v14, v0, v11}, Lcom/android/server/wm/ActivityTaskManagerService;->startProcessAsync(Lcom/android/server/wm/ActivityRecord;ZZLjava/lang/String;)V

    .line 1962
    .end local v0    # "isTop":Z
    :cond_22
    :goto_a
    if-eqz v12, :cond_23

    .line 1963
    const/4 v4, 0x1

    invoke-virtual {v12, v4}, Lcom/android/server/wm/ActivityRecord;->setWillCloseOrEnterPip(Z)V

    goto :goto_b

    .line 1962
    :cond_23
    const/4 v4, 0x1

    .line 1965
    :goto_b
    return v4

    .line 1966
    :cond_24
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, v7, :cond_26

    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v7, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1967
    invoke-virtual {v9}, Lcom/android/server/wm/TaskDisplayArea;->allResumedActivitiesComplete()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1973
    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityStack;->executeAppTransition(Landroid/app/ActivityOptions;)V

    .line 1974
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resumeTopActivityLocked: Top activity resumed (dontWaitForPause) "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1976
    :cond_25
    const/4 v4, 0x1

    return v4

    .line 1981
    :cond_26
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v14, v1, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    iget-object v15, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v0, v14, v15}, Lcom/android/server/wm/OpWmInjector;->doUpdateProcessLaunchTimes(Ljava/lang/String;Landroid/os/Handler;Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 1986
    sget-boolean v0, Lcom/android/server/wm/OpAppLockerInjector;->IS_APP_LOCKER_ENABLED:Z

    if-eqz v0, :cond_27

    invoke-static {v2, v7}, Lcom/android/server/wm/OpAppLockerInjector;->lockAppIfNeed(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1987
    const/4 v14, 0x1

    return v14

    .line 1986
    :cond_27
    const/4 v14, 0x1

    .line 1993
    new-array v0, v14, [I

    const/16 v14, 0x5b

    const/4 v15, 0x0

    aput v14, v0, v15

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1994
    if-eqz v7, :cond_2b

    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_2b

    .line 1995
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v14, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1996
    const-string v15, ""

    if-nez v2, :cond_28

    move-object v3, v15

    goto :goto_c

    :cond_28
    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1997
    :goto_c
    if-eqz v2, :cond_2a

    move/from16 v18, v5

    .end local v5    # "userLeaving":Z
    .local v18, "userLeaving":Z
    iget-object v5, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-nez v5, :cond_29

    goto :goto_d

    :cond_29
    iget-object v5, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v15, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    goto :goto_d

    .end local v18    # "userLeaving":Z
    .restart local v5    # "userLeaving":Z
    :cond_2a
    move/from16 v18, v5

    .line 1995
    .end local v5    # "userLeaving":Z
    .restart local v18    # "userLeaving":Z
    :goto_d
    invoke-static {v0, v14, v3, v15}, Lcom/oneplus/android/server/OpMotorInjector;->notifyActivityChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 1994
    .end local v18    # "userLeaving":Z
    .restart local v5    # "userLeaving":Z
    :cond_2b
    move/from16 v18, v5

    .end local v5    # "userLeaving":Z
    .restart local v18    # "userLeaving":Z
    goto :goto_e

    .line 1993
    .end local v18    # "userLeaving":Z
    .restart local v5    # "userLeaving":Z
    :cond_2c
    move/from16 v18, v5

    .line 2005
    .end local v5    # "userLeaving":Z
    .restart local v18    # "userLeaving":Z
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->shouldSleepActivities()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_2e

    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_2e

    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    if-eq v0, v7, :cond_2e

    .line 2008
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_2d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no-history finish of "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " on new resume"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    :cond_2d
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    const-string v3, "resume-no-history"

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 2011
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2016
    :cond_2e
    if-eqz v7, :cond_2f

    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_2f

    .line 2017
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v3, "--AM_RESUME_ACTIVITY--"

    invoke-static {v0, v3}, Lcom/android/server/am/OpBGFrozenInjector;->triggerResume(ILjava/lang/String;)V

    .line 2021
    :cond_2f
    if-eqz v2, :cond_31

    if-eq v2, v7, :cond_31

    iget-boolean v0, v7, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-eqz v0, :cond_31

    .line 2031
    iget-boolean v0, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const-string v3, ", nowVisible="

    if-eqz v0, :cond_30

    .line 2032
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 2033
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_31

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not waiting for visible to hide: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v7, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 2037
    :cond_30
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_31

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Previous already visible but still waiting to hide: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v7, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    :cond_31
    :goto_f
    :try_start_0
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v3, v7, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget v5, v7, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    const/4 v14, 0x0

    invoke-interface {v0, v3, v14, v5}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_10

    .line 2050
    :catch_0
    move-exception v0

    .line 2051
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed trying to unstop package "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v7, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 2049
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 2053
    :goto_10
    nop

    .line 2058
    :goto_11
    const/4 v0, 0x1

    .line 2059
    .local v0, "anim":Z
    iget-object v3, v9, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2060
    .local v3, "dc":Lcom/android/server/wm/DisplayContent;
    iget-object v5, v1, Lcom/android/server/wm/ActivityStack;->mPerf:Landroid/util/BoostFramework;

    if-nez v5, :cond_32

    .line 2061
    new-instance v5, Landroid/util/BoostFramework;

    invoke-direct {v5}, Landroid/util/BoostFramework;-><init>()V

    iput-object v5, v1, Lcom/android/server/wm/ActivityStack;->mPerf:Landroid/util/BoostFramework;

    .line 2063
    :cond_32
    if-eqz v2, :cond_40

    .line 2064
    iget-boolean v14, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v14, :cond_38

    .line 2065
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v5, :cond_33

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Prepare close transition: prev="

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2067
    :cond_33
    iget-object v5, v1, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v5, v5, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 2068
    const/4 v0, 0x0

    .line 2069
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v5}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    move v14, v5

    goto :goto_14

    .line 2071
    :cond_34
    iget-object v5, v1, Lcom/android/server/wm/ActivityStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v14

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v15

    const/16 v20, 0x7

    const/16 v21, 0x9

    if-ne v14, v15, :cond_35

    .line 2072
    move/from16 v14, v20

    goto :goto_12

    .line 2073
    :cond_35
    move/from16 v14, v21

    :goto_12
    nop

    .line 2071
    const/4 v15, 0x0

    invoke-virtual {v5, v14, v15}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 2074
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v14

    if-eq v5, v14, :cond_36

    iget-object v5, v1, Lcom/android/server/wm/ActivityStack;->mPerf:Landroid/util/BoostFramework;

    if-eqz v5, :cond_36

    .line 2075
    iget-object v14, v7, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/16 v15, 0x1083

    invoke-virtual {v5, v15, v14}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;)I

    .line 2077
    :cond_36
    nop

    .line 2078
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v14

    if-ne v5, v14, :cond_37

    move/from16 v5, v20

    goto :goto_13

    .line 2079
    :cond_37
    move/from16 v5, v21

    :goto_13
    nop

    .line 2077
    const/4 v14, 0x0

    invoke-virtual {v3, v5, v14}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    .line 2081
    :goto_14
    invoke-virtual {v2, v14}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    move v5, v0

    goto/16 :goto_18

    .line 2083
    :cond_38
    sget-boolean v14, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v14, :cond_39

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Prepare open transition: prev="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    :cond_39
    iget-object v14, v1, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v14, v14, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3a

    .line 2086
    const/4 v0, 0x0

    .line 2087
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v5}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    move v5, v0

    goto/16 :goto_18

    .line 2089
    :cond_3a
    iget-object v14, v1, Lcom/android/server/wm/ActivityStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v15

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    const/16 v21, 0x10

    const/16 v22, 0x8

    if-ne v15, v5, :cond_3b

    .line 2090
    const/4 v5, 0x6

    goto :goto_15

    .line 2091
    :cond_3b
    iget-boolean v5, v7, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v5, :cond_3c

    .line 2092
    move/from16 v5, v21

    goto :goto_15

    .line 2093
    :cond_3c
    move/from16 v5, v22

    :goto_15
    nop

    .line 2089
    const/4 v15, 0x0

    invoke-virtual {v14, v5, v15}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 2094
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v14

    if-eq v5, v14, :cond_3d

    iget-object v5, v1, Lcom/android/server/wm/ActivityStack;->mPerf:Landroid/util/BoostFramework;

    if-eqz v5, :cond_3d

    .line 2095
    iget-object v14, v7, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/16 v15, 0x1083

    invoke-virtual {v5, v15, v14}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;)I

    .line 2097
    :cond_3d
    nop

    .line 2098
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v14

    if-ne v5, v14, :cond_3e

    const/4 v5, 0x6

    goto :goto_16

    .line 2099
    :cond_3e
    iget-boolean v5, v7, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v5, :cond_3f

    move/from16 v5, v21

    goto :goto_16

    .line 2100
    :cond_3f
    move/from16 v5, v22

    :goto_16
    nop

    .line 2097
    const/4 v14, 0x0

    invoke-virtual {v3, v5, v14}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    goto :goto_17

    .line 2104
    :cond_40
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v5, :cond_41

    const-string v5, "Prepare open transition: no previous"

    invoke-static {v11, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2105
    :cond_41
    iget-object v5, v1, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v5, v5, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 2106
    const/4 v0, 0x0

    .line 2107
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v5}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    move v5, v0

    goto :goto_18

    .line 2109
    :cond_42
    const/4 v5, 0x0

    const/4 v14, 0x6

    invoke-virtual {v3, v14, v5}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    .line 2113
    :goto_17
    move v5, v0

    .end local v0    # "anim":Z
    .local v5, "anim":Z
    :goto_18
    if-eqz v5, :cond_43

    .line 2114
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->applyOptionsLocked()V

    goto :goto_19

    .line 2116
    :cond_43
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->clearOptionsLocked()V

    .line 2119
    :goto_19
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2121
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 2122
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_44

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Resume running: "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " stopped="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v14, v7, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, " visibleRequested="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v14, v7, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2133
    :cond_44
    if-eqz v6, :cond_46

    .line 2134
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->inMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, v6, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_46

    iget-object v0, v6, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2136
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v0

    if-nez v0, :cond_46

    :cond_45
    const/4 v0, 0x1

    goto :goto_1a

    :cond_46
    const/4 v0, 0x0

    :goto_1a
    move v14, v0

    .line 2139
    .local v14, "lastActivityTranslucent":Z
    iget-boolean v0, v7, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v0, :cond_47

    iget-boolean v0, v7, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    if-nez v0, :cond_47

    if-eqz v14, :cond_48

    .line 2140
    :cond_47
    const/4 v15, 0x1

    invoke-virtual {v7, v15}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 2144
    :cond_48
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->startLaunchTickingLocked()V

    .line 2147
    if-nez v6, :cond_49

    const/4 v0, 0x0

    goto :goto_1b

    :cond_49
    iget-object v0, v6, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    :goto_1b
    move-object v15, v0

    .line 2148
    .local v15, "lastResumedActivity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v2

    .line 2150
    .local v2, "lastState":Lcom/android/server/wm/ActivityStack$ActivityState;
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateCpuStats()V

    .line 2152
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_4a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v5

    .end local v5    # "anim":Z
    .local v19, "anim":Z
    const-string v5, "Moving to RESUMED: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " (in existing)"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .end local v19    # "anim":Z
    .restart local v5    # "anim":Z
    :cond_4a
    move/from16 v19, v5

    .line 2154
    .end local v5    # "anim":Z
    .restart local v19    # "anim":Z
    :goto_1c
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v5, "resumeTopActivityInnerLocked"

    invoke-virtual {v7, v0, v5}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 2156
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    move/from16 v20, v8

    move-object/from16 v21, v9

    const/4 v8, 0x1

    const/4 v9, 0x0

    .end local v8    # "hasRunningActivity":Z
    .end local v9    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .local v20, "hasRunningActivity":Z
    .local v21, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v0, v9, v8, v8, v8}, Lcom/android/server/wm/WindowProcessController;->updateProcessInfo(ZZZZ)V

    .line 2162
    const/4 v0, 0x1

    .line 2166
    .local v0, "notUpdated":Z
    invoke-virtual {v1, v7}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v16

    if-eqz v16, :cond_4b

    .line 2175
    move/from16 v22, v0

    .end local v0    # "notUpdated":Z
    .local v22, "notUpdated":Z
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    move/from16 v23, v10

    .end local v10    # "allPausedComplete":Z
    .local v23, "allPausedComplete":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplayId()I

    move-result v10

    invoke-virtual {v0, v7, v10, v8, v9}, Lcom/android/server/wm/RootWindowContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;IZZ)Z

    move-result v0

    xor-int/2addr v0, v8

    move/from16 v22, v0

    .end local v22    # "notUpdated":Z
    .restart local v0    # "notUpdated":Z
    goto :goto_1d

    .line 2166
    .end local v23    # "allPausedComplete":Z
    .restart local v10    # "allPausedComplete":Z
    :cond_4b
    move/from16 v22, v0

    move/from16 v23, v10

    .line 2179
    .end local v0    # "notUpdated":Z
    .end local v10    # "allPausedComplete":Z
    .restart local v22    # "notUpdated":Z
    .restart local v23    # "allPausedComplete":Z
    :goto_1d
    if-eqz v22, :cond_52

    .line 2185
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2186
    .local v0, "nextNext":Lcom/android/server/wm/ActivityRecord;
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v4, :cond_4c

    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v4, :cond_4d

    :cond_4c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity config changed during resume: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", new next: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    :cond_4d
    if-eq v0, v7, :cond_4e

    .line 2191
    iget-object v4, v1, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleResumeTopActivities()V

    .line 2193
    :cond_4e
    iget-boolean v4, v7, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v4, :cond_4f

    iget-boolean v4, v7, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    if-eqz v4, :cond_50

    .line 2194
    :cond_4f
    const/4 v4, 0x1

    invoke-virtual {v7, v4}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 2196
    :cond_50
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->completeResumeLocked()V

    .line 2199
    sget-boolean v4, Lcom/android/server/wm/ActivityStack;->IS_SUPPORT_COLOR_ADS:Z

    if-eqz v4, :cond_51

    .line 2200
    invoke-static {v7}, Lcom/android/server/OPAppSwitchManagerServiceInjector;->handleActivityResumed(Lcom/android/server/wm/ActivityRecord;)V

    .line 2203
    :cond_51
    const/4 v4, 0x1

    return v4

    .line 2207
    .end local v0    # "nextNext":Lcom/android/server/wm/ActivityRecord;
    :cond_52
    :try_start_1
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 2208
    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    iget-object v8, v7, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-static {v0, v8}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v0

    .line 2210
    .local v0, "transaction":Landroid/app/servertransaction/ClientTransaction;
    iget-object v8, v7, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 2211
    .local v8, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    if-eqz v8, :cond_55

    .line 2212
    :try_start_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 2213
    .local v9, "N":I
    iget-boolean v10, v7, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v10, :cond_54

    if-lez v9, :cond_54

    .line 2214
    sget-boolean v10, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RESULTS:Z

    if-eqz v10, :cond_53

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v24, v9

    .end local v9    # "N":I
    .local v24, "N":I
    const-string v9, "Delivering results to "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .end local v24    # "N":I
    .restart local v9    # "N":I
    :cond_53
    move/from16 v24, v9

    .line 2216
    .end local v9    # "N":I
    .restart local v24    # "N":I
    :goto_1e
    invoke-static {v8}, Landroid/app/servertransaction/ActivityResultItem;->obtain(Ljava/util/List;)Landroid/app/servertransaction/ActivityResultItem;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1f

    .line 2213
    .end local v24    # "N":I
    .restart local v9    # "N":I
    :cond_54
    move/from16 v24, v9

    .end local v9    # "N":I
    .restart local v24    # "N":I
    goto :goto_1f

    .line 2243
    .end local v0    # "transaction":Landroid/app/servertransaction/ClientTransaction;
    .end local v8    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    .end local v24    # "N":I
    :catch_2
    move-exception v0

    move-object/from16 v25, v12

    goto/16 :goto_20

    .line 2220
    .restart local v0    # "transaction":Landroid/app/servertransaction/ClientTransaction;
    .restart local v8    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    :cond_55
    :goto_1f
    :try_start_3
    iget-object v9, v7, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    if-eqz v9, :cond_56

    .line 2221
    :try_start_4
    iget-object v9, v7, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 2222
    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroid/app/servertransaction/NewIntentItem;->obtain(Ljava/util/List;Z)Landroid/app/servertransaction/NewIntentItem;

    move-result-object v9

    .line 2221
    invoke-virtual {v0, v9}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 2227
    :cond_56
    :try_start_5
    iget-boolean v9, v7, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    invoke-virtual {v7, v9}, Lcom/android/server/wm/ActivityRecord;->notifyAppResumed(Z)V

    .line 2229
    iget v9, v7, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {v7}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v10

    .line 2230
    move-object/from16 v24, v8

    .end local v8    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    .local v24, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v8

    iget v8, v8, Lcom/android/server/wm/Task;->mTaskId:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-object/from16 v25, v12

    .end local v12    # "lastResumed":Lcom/android/server/wm/ActivityRecord;
    .local v25, "lastResumed":Lcom/android/server/wm/ActivityRecord;
    :try_start_6
    iget-object v12, v7, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 2229
    invoke-static {v9, v10, v8, v12}, Lcom/android/server/wm/EventLogTags;->writeWmResumeActivity(IIILjava/lang/String;)V

    .line 2232
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/server/wm/ActivityRecord;->setSleeping(Z)V

    .line 2233
    iget-object v8, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppWarningsLocked()Lcom/android/server/wm/AppWarnings;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/server/wm/AppWarnings;->onResumeActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 2234
    iget-object v8, v7, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v9, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v9, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mTopProcessState:I

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowProcessController;->setPendingUiCleanAndForceProcessStateUpTo(I)V

    .line 2235
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->clearOptionsLocked()V

    .line 2236
    iget-object v8, v7, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 2237
    invoke-virtual {v8}, Lcom/android/server/wm/WindowProcessController;->getReportedProcState()I

    move-result v8

    .line 2238
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->isNextTransitionForward()Z

    move-result v9

    .line 2237
    invoke-static {v8, v9}, Landroid/app/servertransaction/ResumeActivityItem;->obtain(IZ)Landroid/app/servertransaction/ResumeActivityItem;

    move-result-object v8

    .line 2236
    invoke-virtual {v0, v8}, Landroid/app/servertransaction/ClientTransaction;->setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V

    .line 2239
    iget-object v8, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 2241
    sget-boolean v8, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v8, :cond_57

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "resumeTopActivityLocked: Resumed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 2266
    .end local v0    # "transaction":Landroid/app/servertransaction/ClientTransaction;
    .end local v24    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    :cond_57
    nop

    .line 2271
    :try_start_7
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->completeResumeLocked()V

    .line 2274
    sget-boolean v0, Lcom/android/server/wm/ActivityStack;->IS_SUPPORT_COLOR_ADS:Z

    if-eqz v0, :cond_58

    .line 2275
    invoke-static {v7}, Lcom/android/server/OPAppSwitchManagerServiceInjector;->handleActivityResumed(Lcom/android/server/wm/ActivityRecord;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 2284
    :cond_58
    nop

    .line 2285
    .end local v2    # "lastState":Lcom/android/server/wm/ActivityStack$ActivityState;
    .end local v14    # "lastActivityTranslucent":Z
    .end local v15    # "lastResumedActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v22    # "notUpdated":Z
    const/4 v2, 0x1

    goto/16 :goto_23

    .line 2278
    .restart local v2    # "lastState":Lcom/android/server/wm/ActivityStack$ActivityState;
    .restart local v14    # "lastActivityTranslucent":Z
    .restart local v15    # "lastResumedActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v22    # "notUpdated":Z
    :catch_3
    move-exception v0

    .line 2281
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception thrown during resume of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2282
    const-string v4, "resume-exception"

    const/4 v5, 0x1

    invoke-virtual {v7, v4, v5}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 2283
    return v5

    .line 2243
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v0

    goto :goto_20

    .end local v25    # "lastResumed":Lcom/android/server/wm/ActivityRecord;
    .restart local v12    # "lastResumed":Lcom/android/server/wm/ActivityRecord;
    :catch_5
    move-exception v0

    move-object/from16 v25, v12

    .line 2245
    .end local v12    # "lastResumed":Lcom/android/server/wm/ActivityRecord;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v25    # "lastResumed":Lcom/android/server/wm/ActivityRecord;
    :goto_20
    sget-boolean v8, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v8, :cond_59

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Resume failed; resetting state to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2247
    :cond_59
    const/4 v4, 0x1

    invoke-virtual {v7, v2, v4}, Lcom/android/server/wm/ActivityRecord;->callServiceTrackeronActivityStatechange(Lcom/android/server/wm/ActivityStack$ActivityState;Z)V

    .line 2248
    invoke-virtual {v7, v2, v5}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 2251
    if-eqz v15, :cond_5a

    .line 2252
    sget-object v8, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v15, v8, v4}, Lcom/android/server/wm/ActivityRecord;->callServiceTrackeronActivityStatechange(Lcom/android/server/wm/ActivityStack$ActivityState;Z)V

    .line 2253
    sget-object v4, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v15, v4, v5}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 2256
    :cond_5a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restarting because process died: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2257
    iget-boolean v4, v7, Lcom/android/server/wm/ActivityRecord;->hasBeenLaunched:Z

    if-nez v4, :cond_5b

    .line 2258
    const/4 v4, 0x1

    iput-boolean v4, v7, Lcom/android/server/wm/ActivityRecord;->hasBeenLaunched:Z

    const/4 v5, 0x0

    goto :goto_21

    .line 2259
    :cond_5b
    if-eqz v6, :cond_5d

    .line 2260
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->isTopStackInDisplayArea()Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 2261
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v7, v4, v5, v5}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZ)V

    goto :goto_21

    .line 2260
    :cond_5c
    const/4 v5, 0x0

    goto :goto_21

    .line 2259
    :cond_5d
    const/4 v5, 0x0

    .line 2264
    :goto_21
    iget-object v4, v1, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8, v5}, Lcom/android/server/wm/ActivityStackSupervisor;->startSpecificActivity(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 2265
    return v8

    .line 2287
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "lastState":Lcom/android/server/wm/ActivityStack$ActivityState;
    .end local v14    # "lastActivityTranslucent":Z
    .end local v15    # "lastResumedActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v19    # "anim":Z
    .end local v20    # "hasRunningActivity":Z
    .end local v21    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v22    # "notUpdated":Z
    .end local v23    # "allPausedComplete":Z
    .end local v25    # "lastResumed":Lcom/android/server/wm/ActivityRecord;
    .restart local v5    # "anim":Z
    .local v8, "hasRunningActivity":Z
    .local v9, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v10    # "allPausedComplete":Z
    .restart local v12    # "lastResumed":Lcom/android/server/wm/ActivityRecord;
    :cond_5e
    move/from16 v19, v5

    move/from16 v20, v8

    move-object/from16 v21, v9

    move/from16 v23, v10

    move-object/from16 v25, v12

    const/4 v5, 0x0

    const/4 v8, 0x1

    .end local v5    # "anim":Z
    .end local v8    # "hasRunningActivity":Z
    .end local v9    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v10    # "allPausedComplete":Z
    .end local v12    # "lastResumed":Lcom/android/server/wm/ActivityRecord;
    .restart local v19    # "anim":Z
    .restart local v20    # "hasRunningActivity":Z
    .restart local v21    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v23    # "allPausedComplete":Z
    .restart local v25    # "lastResumed":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v0, v7, Lcom/android/server/wm/ActivityRecord;->hasBeenLaunched:Z

    if-nez v0, :cond_5f

    .line 2288
    iput-boolean v8, v7, Lcom/android/server/wm/ActivityRecord;->hasBeenLaunched:Z

    goto :goto_22

    .line 2291
    :cond_5f
    const/4 v2, 0x0

    invoke-virtual {v7, v2, v5, v5}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 2294
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_60

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restarting: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2296
    :cond_60
    :goto_22
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_61

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeTopActivityLocked: Restarting "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2299
    :cond_61
    sget-boolean v0, Lcom/android/server/wm/ActivityStack;->IS_SUPPORT_COLOR_ADS:Z

    if-eqz v0, :cond_62

    .line 2300
    invoke-static {v7}, Lcom/android/server/OPAppSwitchManagerServiceInjector;->handleActivityResumed(Lcom/android/server/wm/ActivityRecord;)V

    .line 2303
    :cond_62
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v2, 0x1

    invoke-virtual {v0, v7, v2, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->startSpecificActivity(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 2306
    :goto_23
    return v2
.end method

.method private setBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 1
    .param p1, "existing"    # Landroid/graphics/Rect;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 3471
    invoke-static {p1, p2}, Lcom/android/server/wm/ActivityStack;->equivalentBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3472
    const/4 v0, 0x0

    return v0

    .line 3475
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p2

    :goto_0
    invoke-super {p0, v0}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    move-result v0

    .line 3477
    .local v0, "result":I
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStack;->updateSurfaceBounds()V

    .line 3478
    return v0
.end method

.method private setTaskBounds(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 3074
    sget-object v0, Lcom/android/server/wm/-$$Lambda$ActivityStack$VIuWlCdKwIo4qqRlevMLniedZ7o;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStack$VIuWlCdKwIo4qqRlevMLniedZ7o;

    const-class v1, Lcom/android/server/wm/Task;

    .line 3075
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    .line 3074
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0

    .line 3076
    .local v0, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityStack;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 3077
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 3078
    return-void
.end method

.method private static setTaskBounds(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V
    .locals 1
    .param p0, "task"    # Lcom/android/server/wm/Task;
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 3081
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 3082
    return-void
.end method

.method private setWindowingModeInSurfaceTransaction(IZ)V
    .locals 22
    .param p1, "preferredWindowingMode"    # I
    .param p2, "creating"    # Z

    .line 796
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    .line 797
    .local v2, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-nez v2, :cond_0

    .line 798
    const-string v0, "ActivityTaskManager"

    const-string v3, "taskDisplayArea is null, bail early"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    return-void

    .line 801
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v3

    .line 802
    .local v3, "currentMode":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideWindowingMode()I

    move-result v4

    .line 803
    .local v4, "currentOverrideMode":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v5

    .line 804
    .local v5, "topTask":Lcom/android/server/wm/Task;
    move/from16 v0, p1

    .line 808
    .local v0, "windowingMode":I
    const/4 v6, 0x0

    if-nez p2, :cond_1

    .line 809
    nop

    .line 810
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result v7

    .line 809
    invoke-virtual {v2, v0, v6, v5, v7}, Lcom/android/server/wm/TaskDisplayArea;->isValidWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 811
    const/4 v0, 0x0

    move v7, v0

    goto :goto_0

    .line 815
    :cond_1
    move v7, v0

    .end local v0    # "windowingMode":I
    .local v7, "windowingMode":I
    :goto_0
    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v8

    .line 817
    .local v8, "alreadyInSplitScreenMode":Z
    const/4 v0, 0x1

    if-eqz p2, :cond_2

    if-eqz v8, :cond_2

    if-ne v7, v0, :cond_2

    .line 818
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeStandardOrUndefined()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 821
    iget-object v9, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v9

    .line 822
    invoke-virtual {v9}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityDismissingDockedStack()V

    .line 823
    invoke-virtual {v2, v1}, Lcom/android/server/wm/TaskDisplayArea;->onSplitScreenModeDismissed(Lcom/android/server/wm/ActivityStack;)V

    .line 826
    :cond_2
    if-ne v3, v7, :cond_3

    .line 830
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, v7}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 831
    return-void

    .line 834
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    .line 839
    .local v9, "topActivity":Lcom/android/server/wm/ActivityRecord;
    move v10, v7

    .line 840
    .local v10, "likelyResolvedMode":I
    if-nez v7, :cond_5

    .line 841
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v11

    .line 842
    .local v11, "parent":Lcom/android/server/wm/ConfigurationContainer;
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v12

    goto :goto_1

    .line 843
    :cond_4
    move v12, v0

    :goto_1
    move v10, v12

    .line 845
    .end local v11    # "parent":Lcom/android/server/wm/ConfigurationContainer;
    :cond_5
    const/4 v11, 0x2

    if-ne v3, v11, :cond_6

    .line 846
    iget-object v12, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityUnpinned()V

    .line 848
    :cond_6
    if-ne v10, v11, :cond_7

    .line 849
    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v12

    if-eqz v12, :cond_7

    .line 851
    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityStack;->dismissPip()V

    .line 868
    :cond_7
    sget-boolean v12, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    const/16 v13, 0x64

    if-eqz v12, :cond_9

    .line 869
    if-eq v10, v0, :cond_8

    if-eqz v9, :cond_8

    iget-boolean v12, v9, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    if-nez v12, :cond_8

    move/from16 v12, p1

    if-eq v12, v13, :cond_a

    .line 872
    invoke-virtual {v9, v10}, Lcom/android/server/wm/ActivityRecord;->isNonResizableOrForcedResizable(I)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 875
    iget-object v14, v9, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 876
    .local v14, "packageName":Ljava/lang/String;
    iget-object v15, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v15}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v15

    iget v11, v5, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v15, v11, v0, v14}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityForcedResizable(IILjava/lang/String;)V

    .line 878
    .end local v14    # "packageName":Ljava/lang/String;
    goto :goto_2

    .line 869
    :cond_8
    move/from16 v12, p1

    goto :goto_2

    .line 880
    :cond_9
    move/from16 v12, p1

    if-eq v10, v0, :cond_a

    if-eqz v9, :cond_a

    iget-boolean v11, v9, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    if-nez v11, :cond_a

    .line 882
    invoke-virtual {v9, v10}, Lcom/android/server/wm/ActivityRecord;->isNonResizableOrForcedResizable(I)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 885
    iget-object v11, v9, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 886
    .local v11, "packageName":Ljava/lang/String;
    iget-object v14, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v14}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v14

    iget v15, v5, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v14, v15, v0, v11}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityForcedResizable(IILjava/lang/String;)V

    .line 892
    .end local v11    # "packageName":Ljava/lang/String;
    :cond_a
    :goto_2
    iget-object v11, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v11}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 894
    if-eqz v9, :cond_b

    .line 895
    :try_start_0
    iget-object v11, v1, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v11, v11, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 897
    :cond_b
    invoke-super {v1, v7}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 900
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v11

    move v7, v11

    .line 904
    sget-boolean v11, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    if-eqz v11, :cond_c

    if-ne v3, v13, :cond_c

    if-eq v7, v13, :cond_c

    .line 906
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/wm/Task;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v17

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    invoke-virtual/range {v16 .. v21}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 910
    :cond_c
    if-eqz p2, :cond_d

    .line 946
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 912
    return-void

    .line 915
    :cond_d
    const/4 v11, 0x3

    if-ne v7, v11, :cond_f

    if-nez v8, :cond_e

    goto :goto_3

    .line 919
    :cond_e
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v6, "Setting primary split-screen windowing mode while there is already one isn\'t currently supported"

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v2    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v3    # "currentMode":I
    .end local v4    # "currentOverrideMode":I
    .end local v5    # "topTask":Lcom/android/server/wm/Task;
    .end local v7    # "windowingMode":I
    .end local v8    # "alreadyInSplitScreenMode":Z
    .end local v9    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v10    # "likelyResolvedMode":I
    .end local p0    # "this":Lcom/android/server/wm/ActivityStack;
    .end local p1    # "preferredWindowingMode":I
    .end local p2    # "creating":Z
    throw v0

    .line 924
    .restart local v2    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v3    # "currentMode":I
    .restart local v4    # "currentOverrideMode":I
    .restart local v5    # "topTask":Lcom/android/server/wm/Task;
    .restart local v7    # "windowingMode":I
    .restart local v8    # "alreadyInSplitScreenMode":Z
    .restart local v9    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v10    # "likelyResolvedMode":I
    .restart local p0    # "this":Lcom/android/server/wm/ActivityStack;
    .restart local p1    # "preferredWindowingMode":I
    .restart local p2    # "creating":Z
    :cond_f
    :goto_3
    iget-object v11, v1, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->setEmpty()V

    .line 925
    if-eq v7, v0, :cond_11

    .line 926
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->matchParentBounds()Z

    move-result v11

    if-eqz v11, :cond_10

    .line 927
    iget-object v11, v1, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_4

    .line 929
    :cond_10
    iget-object v11, v1, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v1, v11}, Lcom/android/server/wm/ActivityStack;->getRawBounds(Landroid/graphics/Rect;)V

    .line 940
    :cond_11
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v11

    iget-object v13, v1, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-static {v11, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    const/4 v13, 0x0

    if-eqz v11, :cond_12

    const/4 v11, 0x5

    if-ne v3, v11, :cond_13

    .line 943
    :cond_12
    iget-object v11, v1, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v1, v11, v13, v0}, Lcom/android/server/wm/ActivityStack;->resize(Landroid/graphics/Rect;ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 946
    :cond_13
    iget-object v11, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v11}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 947
    nop

    .line 949
    iget-object v11, v1, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v11, v6, v13, v0}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 950
    iget-object v6, v1, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v6}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    .line 952
    const/4 v6, 0x2

    if-ne v3, v6, :cond_14

    if-ne v7, v0, :cond_14

    move v6, v0

    goto :goto_5

    :cond_14
    move v6, v13

    .line 954
    .local v6, "pinnedToFullscreen":Z
    :goto_5
    if-eqz v6, :cond_15

    if-eqz v9, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isForceHidden()Z

    move-result v11

    if-nez v11, :cond_15

    .line 955
    iget-object v11, v1, Lcom/android/server/wm/ActivityStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v11}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v11

    invoke-virtual {v11, v0}, Lcom/android/server/wm/PinnedStackController;->setPipWindowingModeChanging(Z)V

    .line 962
    :try_start_2
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->reportDescendantOrientationChangeIfNeeded()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 964
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/android/server/wm/PinnedStackController;->setPipWindowingModeChanging(Z)V

    .line 965
    goto :goto_6

    .line 964
    :catchall_0
    move-exception v0

    move-object v11, v0

    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/android/server/wm/PinnedStackController;->setPipWindowingModeChanging(Z)V

    .line 965
    throw v11

    .line 967
    :cond_15
    :goto_6
    return-void

    .line 946
    .end local v6    # "pinnedToFullscreen":Z
    :catchall_1
    move-exception v0

    iget-object v6, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 947
    throw v0
.end method

.method private updateSurfaceBounds()V
    .locals 1

    .line 3631
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V

    .line 3632
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->updateSurfacePosition()V

    .line 3633
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->scheduleAnimation()V

    .line 3634
    return-void
.end method

.method private updateTransitLocked(ILandroid/app/ActivityOptions;Z)V
    .locals 2
    .param p1, "transit"    # I
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "forceOverride"    # Z

    .line 2798
    if-eqz p2, :cond_1

    .line 2799
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2800
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2801
    invoke-virtual {v0, p2}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    goto :goto_0

    .line 2803
    :cond_0
    invoke-static {p2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2806
    .end local v0    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, p3}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZIZ)V

    .line 2808
    return-void
.end method


# virtual methods
.method addChild(Lcom/android/server/wm/WindowContainer;ZZ)V
    .locals 3
    .param p1, "child"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "toTop"    # Z
    .param p3, "showForAllUsers"    # Z

    .line 3317
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isSingleTaskInstance()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->hasChild()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3318
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

    .line 3321
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 3324
    .local v0, "task":Lcom/android/server/wm/Task;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3325
    :try_start_0
    invoke-virtual {v0, p3}, Lcom/android/server/wm/Task;->setForceShowForAllUsers(Z)V

    goto :goto_1

    .line 3331
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 3329
    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    const v2, 0x7fffffff

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_2
    invoke-direct {p0, p1, v2, p2}, Lcom/android/server/wm/ActivityStack;->addChild(Lcom/android/server/wm/WindowContainer;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3331
    if-eqz v0, :cond_4

    .line 3332
    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setForceShowForAllUsers(Z)V

    .line 3335
    :cond_4
    return-void

    .line 3331
    :goto_3
    if-eqz v0, :cond_5

    .line 3332
    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setForceShowForAllUsers(Z)V

    .line 3334
    :cond_5
    throw v2
.end method

.method awakeFromSleepingLocked()V
    .locals 2

    .line 1127
    sget-object v0, Lcom/android/server/wm/-$$Lambda$ActivityStack$kcQFk5WutXx0C5lv3vrFd4Ndfrc;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStack$kcQFk5WutXx0C5lv3vrFd4Ndfrc;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 1128
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    .line 1129
    const-string v0, "ActivityTaskManager"

    const-string v1, "awakeFromSleepingLocked: previously pausing activity didn\'t pause"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->activityPaused(Z)V

    .line 1132
    :cond_0
    return-void
.end method

.method canShowWithInsecureKeyguard()Z
    .locals 4

    .line 1644
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1645
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_1

    .line 1650
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getFlags()I

    move-result v1

    .line 1651
    .local v1, "flags":I
    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 1646
    .end local v1    # "flags":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stack is not attached to any display, stackId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1647
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getRootTaskId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method cancelInitializingActivities()V
    .locals 2

    .line 1708
    sget-object v0, Lcom/android/server/wm/-$$Lambda$_-mEZ6EASUAbbjgZj87dfvxRN64;->INSTANCE:Lcom/android/server/wm/-$$Lambda$_-mEZ6EASUAbbjgZj87dfvxRN64;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/ActivityStack;->checkBehindFullscreenActivity(Lcom/android/server/wm/ActivityRecord;Ljava/util/function/Consumer;)Z

    .line 1709
    return-void
.end method

.method checkBehindFullscreenActivity(Lcom/android/server/wm/ActivityRecord;Ljava/util/function/Consumer;)Z
    .locals 1
    .param p1, "toCheck"    # Lcom/android/server/wm/ActivityRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/ActivityRecord;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)Z"
        }
    .end annotation

    .line 1719
    .local p2, "handleBehindFullscreenActivity":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/ActivityRecord;>;"
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mCheckBehindFullscreenActivityHelper:Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ActivityStack$CheckBehindFullscreenActivityHelper;->process(Lcom/android/server/wm/ActivityRecord;Ljava/util/function/Consumer;)Z

    move-result v0

    return v0
.end method

.method checkKeyguardVisibility(Lcom/android/server/wm/ActivityRecord;ZZ)Z
    .locals 8
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "shouldBeVisible"    # Z
    .param p3, "isTop"    # Z

    .line 1601
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayId()I

    move-result v0

    .line 1602
    .local v0, "displayId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1604
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v1

    .line 1605
    invoke-virtual {v1, v0}, Lcom/android/server/wm/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v1

    .line 1606
    .local v1, "keyguardOrAodShowing":Z
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked()Z

    move-result v2

    .line 1607
    .local v2, "keyguardLocked":Z
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v3

    .line 1608
    .local v3, "showWhenLocked":Z
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->containsDismissKeyguardWindow()Z

    move-result v4

    .line 1609
    .local v4, "dismissKeyguard":Z
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz p2, :cond_4

    .line 1610
    if-eqz v4, :cond_1

    iget-object v7, p0, Lcom/android/server/wm/ActivityStack;->mTopDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    if-nez v7, :cond_1

    .line 1611
    iput-object p1, p0, Lcom/android/server/wm/ActivityStack;->mTopDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1616
    :cond_1
    if-eqz p3, :cond_2

    .line 1617
    iget-boolean v7, p0, Lcom/android/server/wm/ActivityStack;->mTopActivityOccludesKeyguard:Z

    or-int/2addr v7, v3

    iput-boolean v7, p0, Lcom/android/server/wm/ActivityStack;->mTopActivityOccludesKeyguard:Z

    .line 1620
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->canShowWithInsecureKeyguard()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 1621
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/KeyguardController;->canDismissKeyguard()Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v6

    goto :goto_0

    :cond_3
    move v7, v5

    .line 1622
    .local v7, "canShowWithKeyguard":Z
    :goto_0
    if-eqz v7, :cond_4

    .line 1623
    return v6

    .line 1626
    .end local v7    # "canShowWithKeyguard":Z
    :cond_4
    if-eqz v1, :cond_6

    .line 1629
    if-eqz p2, :cond_5

    iget-object v7, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v7

    .line 1630
    invoke-virtual {v7, p1, v4}, Lcom/android/server/wm/KeyguardController;->canShowActivityWhileKeyguardShowing(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result v7

    if-eqz v7, :cond_5

    move v5, v6

    goto :goto_1

    :cond_5
    nop

    .line 1629
    :goto_1
    return v5

    .line 1631
    :cond_6
    if-eqz v2, :cond_8

    .line 1632
    if-eqz p2, :cond_7

    iget-object v7, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v7

    invoke-virtual {v7, v4, v3}, Lcom/android/server/wm/KeyguardController;->canShowWhileOccluded(ZZ)Z

    move-result v7

    if-eqz v7, :cond_7

    move v5, v6

    :cond_7
    return v5

    .line 1635
    :cond_8
    return p2
.end method

.method checkReadyForSleep()V
    .locals 2

    .line 1135
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->shouldSleepActivities()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->goToSleepIfPossible(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1136
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->checkReadyForSleepLocked(Z)V

    .line 1138
    :cond_0
    return-void
.end method

.method checkTranslucentActivityWaiting(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2
    .param p1, "top"    # Lcom/android/server/wm/ActivityRecord;

    .line 1655
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    if-eq v0, p1, :cond_1

    .line 1656
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1657
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    .line 1659
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->notifyActivityDrawnLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 1660
    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    .line 1662
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1664
    :cond_1
    return-void
.end method

.method public bridge synthetic commitPendingTransaction()V
    .locals 0

    .line 211
    invoke-super {p0}, Lcom/android/server/wm/Task;->commitPendingTransaction()V

    return-void
.end method

.method public bridge synthetic compareTo(Lcom/android/server/wm/WindowContainer;)I
    .locals 0

    .line 211
    invoke-super {p0, p1}, Lcom/android/server/wm/Task;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result p1

    return p1
.end method

.method completePauseLocked(ZLcom/android/server/wm/ActivityRecord;)V
    .locals 11
    .param p1, "resumeNext"    # Z
    .param p2, "resuming"    # Lcom/android/server/wm/ActivityRecord;

    .line 1387
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1388
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

    .line 1390
    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_c

    .line 1391
    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityRecord;->setWillCloseOrEnterPip(Z)V

    .line 1392
    sget-object v4, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v4

    .line 1393
    .local v4, "wasStopping":Z
    sget-object v5, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Lcom/android/server/wm/ActivityRecord;->callServiceTrackeronActivityStatechange(Lcom/android/server/wm/ActivityStack$ActivityState;Z)V

    .line 1394
    sget-object v5, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v7, "completePausedLocked"

    invoke-virtual {v0, v5, v7}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 1395
    iget-boolean v5, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_2

    .line 1396
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

    .line 1397
    :cond_1
    invoke-virtual {v0, v7}, Lcom/android/server/wm/ActivityRecord;->completeFinishing(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    goto/16 :goto_0

    .line 1398
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1399
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

    const-string v8, " visibleRequested="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    :cond_3
    iget-boolean v5, v0, Lcom/android/server/wm/ActivityRecord;->deferRelaunchUntilPaused:Z

    if-eqz v5, :cond_5

    .line 1404
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Re-launching after pause: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    :cond_4
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->preserveWindowOnDeferredRelaunch:Z

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityRecord;->relaunchActivityLocked(Z)V

    goto :goto_0

    .line 1406
    :cond_5
    if-eqz v4, :cond_6

    .line 1410
    sget-object v2, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v0, v2, v6}, Lcom/android/server/wm/ActivityRecord;->callServiceTrackeronActivityStatechange(Lcom/android/server/wm/ActivityStack$ActivityState;Z)V

    .line 1411
    sget-object v2, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v0, v2, v7}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    goto :goto_0

    .line 1412
    :cond_6
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1414
    :cond_7
    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityRecord;->setDeferHidingClient(Z)V

    .line 1417
    const-string v2, "completePauseLocked"

    invoke-virtual {v0, v6, v3, v2}, Lcom/android/server/wm/ActivityRecord;->addToStopping(ZZLjava/lang/String;)V

    goto :goto_0

    .line 1421
    :cond_8
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v5, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "App died during pause, not stopping: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    :cond_9
    const/4 v0, 0x0

    .line 1427
    :cond_a
    :goto_0
    if-eqz v0, :cond_b

    .line 1428
    invoke-virtual {v0, v6}, Lcom/android/server/wm/ActivityRecord;->stopFreezingScreenLocked(Z)V

    .line 1430
    :cond_b
    iput-object v1, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1433
    .end local v4    # "wasStopping":Z
    :cond_c
    if-eqz p1, :cond_10

    .line 1434
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 1435
    .local v2, "topStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v4

    if-nez v4, :cond_d

    .line 1436
    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, v2, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    goto :goto_1

    .line 1438
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->checkReadyForSleep()V

    .line 1439
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1440
    .local v1, "top":Lcom/android/server/wm/ActivityRecord;
    :cond_e
    if-eqz v1, :cond_f

    if-eqz v0, :cond_10

    if-eq v1, v0, :cond_10

    .line 1445
    :cond_f
    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    .line 1450
    .end local v1    # "top":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "topStack":Lcom/android/server/wm/ActivityStack;
    :cond_10
    :goto_1
    if-eqz v0, :cond_12

    .line 1451
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 1453
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v1

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_11

    iget-wide v1, v0, Lcom/android/server/wm/ActivityRecord;->cpuTimeAtResume:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_11

    .line 1454
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getCpuTime()J

    move-result-wide v1

    iget-wide v6, v0, Lcom/android/server/wm/ActivityRecord;->cpuTimeAtResume:J

    sub-long/2addr v1, v6

    .line 1455
    .local v1, "diff":J
    cmp-long v6, v1, v4

    if-lez v6, :cond_11

    .line 1456
    sget-object v6, Lcom/android/server/wm/-$$Lambda$1636dquQO0UvkFayOGf_gceB4iw;->INSTANCE:Lcom/android/server/wm/-$$Lambda$1636dquQO0UvkFayOGf_gceB4iw;

    iget-object v7, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v8, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1459
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1460
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 1456
    invoke-static {v6, v7, v8, v9, v10}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v6

    .line 1461
    .local v6, "r":Ljava/lang/Runnable;
    iget-object v7, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v7, v6}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 1464
    .end local v1    # "diff":J
    .end local v6    # "r":Ljava/lang/Runnable;
    :cond_11
    iput-wide v4, v0, Lcom/android/server/wm/ActivityRecord;->cpuTimeAtResume:J

    .line 1467
    :cond_12
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p2, v3, v3}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 1472
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mAppVisibilitiesChangedSinceLastPause:Z

    if-nez v1, :cond_13

    .line 1473
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->hasPinnedTask()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1474
    :cond_13
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 1475
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iput-boolean v3, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mAppVisibilitiesChangedSinceLastPause:Z

    .line 1477
    :cond_14
    return-void
.end method

.method convertActivityToTranslucent(Lcom/android/server/wm/ActivityRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1667
    iput-object p1, p0, Lcom/android/server/wm/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    .line 1668
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1669
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1670
    return-void
.end method

.method dismissPip()V
    .locals 2

    .line 3427
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeStandardOrUndefined()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3431
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3436
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$ActivityStack$H90TQqsKyyw58luwtKGHNiaLMuI;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$ActivityStack$H90TQqsKyyw58luwtKGHNiaLMuI;-><init>(Lcom/android/server/wm/ActivityStack;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    .line 3446
    return-void

    .line 3432
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t exit pinned mode if it\'s not pinned already."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3428
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You can\'t move tasks from non-standard stacks."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .line 3666
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/Task;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 3667
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mExitingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3668
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Exiting application tokens:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3671
    .local v0, "doublePrefix":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mExitingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 3672
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mExitingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    .line 3673
    .local v2, "token":Lcom/android/server/wm/WindowToken;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Exiting App #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3674
    const/16 v3, 0x20

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3675
    const/16 v3, 0x3a

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(C)V

    .line 3676
    invoke-virtual {v2, p1, v0, p3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 3671
    .end local v2    # "token":Lcom/android/server/wm/WindowToken;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3678
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3680
    .end local v0    # "doublePrefix":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

    const-string v1, "AnimatingApps:"

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/wm/AnimatingActivityRegistry;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 3681
    return-void
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;Z)Z
    .locals 13
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "dumpAll"    # Z
    .param p4, "dumpClient"    # Z
    .param p5, "dumpPackage"    # Ljava/lang/String;
    .param p6, "needSep"    # Z

    .line 3143
    move-object v8, p0

    new-instance v0, Lcom/android/server/wm/-$$Lambda$ActivityStack$vQtWLZ5xfBAnoGvYGdMf4XbE_3w;

    move-object v9, p2

    move/from16 v10, p6

    .local v0, "headerPrinter":Ljava/lang/Runnable;
    invoke-direct {v0, p0, v10, p2}, Lcom/android/server/wm/-$$Lambda$ActivityStack$vQtWLZ5xfBAnoGvYGdMf4XbE_3w;-><init>(Lcom/android/server/wm/ActivityStack;ZLjava/io/PrintWriter;)V

    .line 3154
    const/4 v1, 0x0

    .line 3156
    .local v1, "printed":Z
    if-nez p5, :cond_0

    .line 3159
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3160
    const/4 v0, 0x0

    .line 3161
    const/4 v1, 0x1

    move-object v11, v0

    move v0, v1

    goto :goto_0

    .line 3156
    :cond_0
    move-object v11, v0

    move v0, v1

    .line 3164
    .end local v1    # "printed":Z
    .local v0, "printed":Z
    .local v11, "headerPrinter":Ljava/lang/Runnable;
    :goto_0
    iget-object v2, v8, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v5, "    mPausingActivity: "

    move-object v1, p2

    move-object/from16 v3, p5

    invoke-static/range {v1 .. v6}, Lcom/android/server/wm/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 3166
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    const-string v5, "    mResumedActivity: "

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lcom/android/server/wm/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 3168
    if-eqz p3, :cond_1

    .line 3169
    iget-object v2, v8, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v5, "    mLastPausedActivity: "

    move-object v1, p2

    move-object/from16 v3, p5

    invoke-static/range {v1 .. v6}, Lcom/android/server/wm/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 3171
    iget-object v2, v8, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    const-string v5, "    mLastNoHistoryActivity: "

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lcom/android/server/wm/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;)Z

    move-result v1

    or-int/2addr v0, v1

    move v12, v0

    goto :goto_1

    .line 3168
    :cond_1
    move v12, v0

    .line 3175
    .end local v0    # "printed":Z
    .local v12, "printed":Z
    :goto_1
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object v7, v11

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/ActivityStack;->dumpActivities(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;ZLjava/lang/Runnable;)Z

    move-result v0

    or-int/2addr v0, v12

    .line 3177
    .end local v12    # "printed":Z
    .restart local v0    # "printed":Z
    return v0
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "logLevel"    # I

    .line 3794
    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3795
    return-void

    .line 3798
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 3799
    .local v0, "token":J
    const-wide v2, 0x10b00000001L

    invoke-super {p0, p1, v2, v3, p4}, Lcom/android/server/wm/Task;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 3801
    const-wide v2, 0x10500000002L

    iget v4, p0, Lcom/android/server/wm/ActivityStack;->mTaskId:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3802
    const-wide v2, 0x1050000000fL

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayId()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3803
    const-wide v2, 0x10500000010L

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getRootTaskId()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3805
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_1

    .line 3806
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const-wide v3, 0x10b0000000cL

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/ActivityRecord;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3808
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->realActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_2

    .line 3809
    const-wide v2, 0x1090000000dL

    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3811
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->origActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_3

    .line 3812
    const-wide v2, 0x1090000000eL

    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3814
    :cond_3
    const-wide v2, 0x10500000011L

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3815
    const-wide v2, 0x10500000012L

    iget v4, p0, Lcom/android/server/wm/ActivityStack;->mResizeMode:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3816
    const-wide v2, 0x10500000013L

    iget v4, p0, Lcom/android/server/wm/ActivityStack;->mMinWidth:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3817
    const-wide v2, 0x10500000014L

    iget v4, p0, Lcom/android/server/wm/ActivityStack;->mMinHeight:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3819
    const-wide v2, 0x10800000004L

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->matchParentBounds()Z

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3820
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v2

    const-wide v3, 0x10b00000005L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3822
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_4

    .line 3823
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000016L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3826
    :cond_4
    const-wide v2, 0x1080000001aL

    iget-boolean v4, p0, Lcom/android/server/wm/ActivityStack;->mBoundsAnimating:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3828
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_5

    .line 3829
    const-wide v2, 0x10500000008L

    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->getWidth()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3830
    const-wide v2, 0x10500000009L

    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->getHeight()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3833
    :cond_5
    const-wide v2, 0x1080000001cL

    iget-boolean v4, p0, Lcom/android/server/wm/ActivityStack;->mCreatedByOrganizer:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3835
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3836
    return-void
.end method

.method ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V
    .locals 1
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "configChanges"    # I
    .param p3, "preserveWindows"    # Z

    .line 1508
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V

    .line 1509
    return-void
.end method

.method ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V
    .locals 2
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "configChanges"    # I
    .param p3, "preserveWindows"    # Z
    .param p4, "notifyClients"    # Z

    .line 1531
    iget v0, p0, Lcom/android/server/wm/ActivityStack;->mEnsureActivityVisibilityDepth:I

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    .line 1532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ensureActivitiesVisibleLocked quit for depth overflow, starting = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    return-void

    .line 1536
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStack;->mTopActivityOccludesKeyguard:Z

    .line 1537
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTopDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1538
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->beginActivityVisibilityUpdate()V

    .line 1542
    :try_start_0
    iget v1, p0, Lcom/android/server/wm/ActivityStack;->mEnsureActivityVisibilityDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wm/ActivityStack;->mEnsureActivityVisibilityDepth:I

    .line 1544
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mEnsureActivitiesVisibleHelper:Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->process(Lcom/android/server/wm/ActivityRecord;IZZ)V

    .line 1547
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 1548
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1550
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->notifyActivityDrawnLocked(Lcom/android/server/wm/ActivityRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1555
    :cond_1
    iget v0, p0, Lcom/android/server/wm/ActivityStack;->mEnsureActivityVisibilityDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/ActivityStack;->mEnsureActivityVisibilityDepth:I

    .line 1557
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->endActivityVisibilityUpdate()V

    .line 1558
    nop

    .line 1559
    return-void

    .line 1555
    :catchall_0
    move-exception v0

    iget v1, p0, Lcom/android/server/wm/ActivityStack;->mEnsureActivityVisibilityDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/wm/ActivityStack;->mEnsureActivityVisibilityDepth:I

    .line 1557
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->endActivityVisibilityUpdate()V

    .line 1558
    throw v0
.end method

.method ensureVisibleActivitiesConfiguration(Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 1
    .param p1, "start"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "preserveWindow"    # Z

    .line 3029
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mEnsureVisibleActivitiesConfigHelper:Lcom/android/server/wm/ActivityStack$EnsureVisibleActivitiesConfigHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ActivityStack$EnsureVisibleActivitiesConfigHelper;->process(Lcom/android/server/wm/ActivityRecord;Z)V

    .line 3030
    return-void
.end method

.method executeAppTransition(Landroid/app/ActivityOptions;)V
    .locals 1
    .param p1, "options"    # Landroid/app/ActivityOptions;

    .line 3759
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 3760
    invoke-static {p1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 3761
    return-void
.end method

.method finishAllActivitiesImmediately()V
    .locals 1

    .line 2626
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->hasChild()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2627
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->removeIfPossible()V

    .line 2628
    return-void

    .line 2630
    :cond_0
    sget-object v0, Lcom/android/server/wm/-$$Lambda$ActivityStack$m-oFReMdH7_A0S8OFso2ScvMNqM;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStack$m-oFReMdH7_A0S8OFso2ScvMNqM;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 2634
    return-void
.end method

.method final finishTopCrashedActivityLocked(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)Lcom/android/server/wm/Task;
    .locals 10
    .param p1, "app"    # Lcom/android/server/wm/WindowProcessController;
    .param p2, "reason"    # Ljava/lang/String;

    .line 2552
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2553
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eq v2, p1, :cond_0

    goto/16 :goto_0

    .line 2556
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v2

    const-string v3, "ActivityTaskManager"

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    if-ne v2, p1, :cond_1

    .line 2559
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Not force finishing home activity "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 2560
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2559
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2561
    return-object v1

    .line 2563
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Force finishing activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 2564
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2563
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2565
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 2566
    .local v1, "finishedTask":Lcom/android/server/wm/Task;
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v5, 0x1a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    .line 2568
    invoke-virtual {v0, p2, v6}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 2572
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 2573
    .local v4, "activityBelow":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_3

    .line 2574
    sget-object v5, Lcom/android/server/wm/ActivityStack$ActivityState;->STARTED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v9, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v4, v5, v7, v8, v9}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2575
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    iget-object v7, v4, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eq v5, v7, :cond_3

    .line 2577
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v4, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 2578
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2577
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2579
    invoke-virtual {v4, p2, v6}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 2584
    :cond_3
    return-object v1

    .line 2554
    .end local v1    # "finishedTask":Lcom/android/server/wm/Task;
    .end local v4    # "activityBelow":Lcom/android/server/wm/ActivityRecord;
    :cond_4
    :goto_0
    return-object v1
.end method

.method finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    .locals 3
    .param p1, "session"    # Landroid/service/voice/IVoiceInteractionSession;

    .line 2588
    sget-object v0, Lcom/android/server/wm/-$$Lambda$ActivityStack$YAQEcQUrLqR06xiJJApMvOPIxhg;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStack$YAQEcQUrLqR06xiJJApMvOPIxhg;

    const-class v1, Lcom/android/server/wm/Task;

    .line 2589
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2588
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0

    .line 2590
    .local v0, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityStack;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 2591
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 2592
    return-void
.end method

.method public bridge synthetic getActivityType()I
    .locals 1

    .line 211
    invoke-super {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v0

    return v0
.end method

.method getAnimatingActivityRegistry()Lcom/android/server/wm/AnimatingActivityRegistry;
    .locals 1

    .line 3748
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

    return-object v0
.end method

.method public bridge synthetic getAnimationLeashParent()Landroid/view/SurfaceControl;
    .locals 1

    .line 211
    invoke-super {p0}, Lcom/android/server/wm/Task;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 3495
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3496
    return-void
.end method

.method public getCurrentUser()I
    .locals 1

    .line 3841
    iget v0, p0, Lcom/android/server/wm/ActivityStack;->mCurrentUser:I

    return v0
.end method

.method getDimBounds(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "out"    # Landroid/graphics/Rect;

    .line 3514
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStack;->getBounds(Landroid/graphics/Rect;)V

    .line 3515
    return-void
.end method

.method getDisplay()Lcom/android/server/wm/DisplayContent;
    .locals 1

    .line 992
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayInfo()Landroid/view/DisplayInfo;
    .locals 1

    .line 3744
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
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

    .line 3230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3232
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    const-string v1, "all"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3233
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$hD1GQddqK6sJaBtwVBGHwmleilc;

    invoke-direct {v1, v0}, Lcom/android/server/wm/-$$Lambda$hD1GQddqK6sJaBtwVBGHwmleilc;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityStack;->forAllActivities(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 3234
    :cond_0
    const-string v1, "top"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3235
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 3236
    .local v1, "topActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_1

    .line 3237
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3239
    .end local v1    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    goto :goto_0

    .line 3240
    :cond_2
    new-instance v1, Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    invoke-direct {v1}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;-><init>()V

    .line 3241
    .local v1, "matcher":Lcom/android/server/am/ActivityManagerService$ItemMatcher;
    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->build(Ljava/lang/String;)V

    .line 3243
    new-instance v2, Lcom/android/server/wm/-$$Lambda$ActivityStack$jHtG24MuTe6p7JXjTvGcC5DidJ8;

    invoke-direct {v2, v1, v0}, Lcom/android/server/wm/-$$Lambda$ActivityStack$jHtG24MuTe6p7JXjTvGcC5DidJ8;-><init>(Lcom/android/server/am/ActivityManagerService$ItemMatcher;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityStack;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 3250
    .end local v1    # "matcher":Lcom/android/server/am/ActivityManagerService$ItemMatcher;
    :goto_0
    return-object v0
.end method

.method getFinalAnimationBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 3502
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mBoundsAnimationTarget:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3503
    return-void
.end method

.method getFinalAnimationSourceHintBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 3509
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mBoundsAnimationSourceHintBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3510
    return-void
.end method

.method public bridge synthetic getFreezeSnapshotTarget()Landroid/view/SurfaceControl;
    .locals 1

    .line 211
    invoke-super {p0}, Lcom/android/server/wm/Task;->getFreezeSnapshotTarget()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParentSurfaceControl()Landroid/view/SurfaceControl;
    .locals 1

    .line 211
    invoke-super {p0}, Lcom/android/server/wm/Task;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPendingTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 1

    .line 211
    invoke-super {p0}, Lcom/android/server/wm/Task;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method getRawBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "out"    # Landroid/graphics/Rect;

    .line 3486
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3487
    return-void
.end method

.method getRelativePosition(Landroid/graphics/Point;)V
    .locals 2
    .param p1, "outPos"    # Landroid/graphics/Point;

    .line 3638
    invoke-super {p0, p1}, Lcom/android/server/wm/Task;->getRelativePosition(Landroid/graphics/Point;)V

    .line 3639
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getTaskOutset()I

    move-result v0

    .line 3640
    .local v0, "outset":I
    iget v1, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 3641
    iget v1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Point;->y:I

    .line 3642
    return-void
.end method

.method public bridge synthetic getSurfaceControl()Landroid/view/SurfaceControl;
    .locals 1

    .line 211
    invoke-super {p0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSurfaceHeight()I
    .locals 1

    .line 211
    invoke-super {p0}, Lcom/android/server/wm/Task;->getSurfaceHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSurfaceWidth()I
    .locals 1

    .line 211
    invoke-super {p0}, Lcom/android/server/wm/Task;->getSurfaceWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSyncTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 1

    .line 211
    invoke-super {p0}, Lcom/android/server/wm/Task;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method getTopDismissingKeyguardActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    .line 1590
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTopDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    return-object v0
.end method

.method getZoomStackOrientation(I)I
    .locals 8
    .param p1, "candidate"    # I

    .line 3848
    iget v0, p0, Lcom/android/server/wm/ActivityStack;->mOrientation:I

    const/4 v1, -0x1

    const/4 v2, -0x2

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/server/wm/ActivityStack;->mOrientation:I

    if-eq v0, v1, :cond_0

    .line 3850
    iget v0, p0, Lcom/android/server/wm/ActivityStack;->mOrientation:I

    return v0

    .line 3853
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_6

    .line 3854
    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    .line 3855
    .local v4, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 3856
    .local v5, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v5, :cond_5

    iget-boolean v6, v5, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eq v6, v3, :cond_5

    .line 3857
    const/4 v6, 0x3

    if-ne p1, v6, :cond_1

    .line 3858
    move v7, v6

    goto :goto_1

    :cond_1
    move v7, v2

    .line 3857
    :goto_1
    invoke-virtual {v5, v7}, Lcom/android/server/wm/ActivityRecord;->getZoomStackOrientation(I)I

    move-result v7

    .line 3859
    .local v7, "orientation":I
    if-ne v7, v6, :cond_2

    .line 3863
    move p1, v7

    .line 3864
    goto :goto_2

    .line 3867
    :cond_2
    if-ne v7, v2, :cond_3

    .line 3868
    goto :goto_2

    .line 3871
    :cond_3
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->fillsParent()Z

    move-result v6

    if-nez v6, :cond_4

    if-eq v7, v1, :cond_5

    .line 3872
    :cond_4
    return v7

    .line 3853
    .end local v4    # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v5    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v7    # "orientation":I
    :cond_5
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3877
    .end local v0    # "i":I
    :cond_6
    return p1
.end method

.method goToSleep()V
    .locals 2

    .line 1189
    sget-object v0, Lcom/android/server/wm/-$$Lambda$ActivityStack$lRi576ARFILdHSErAxeCOOe5hlg;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStack$lRi576ARFILdHSErAxeCOOe5hlg;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 1197
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 1199
    return-void
.end method

.method goToSleepIfPossible(Z)Z
    .locals 5
    .param p1, "shuttingDown"    # Z

    .line 1152
    const/4 v0, 0x1

    .line 1154
    .local v0, "shouldSleep":Z
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const-string v2, "ActivityTaskManager"

    if-eqz v1, :cond_2

    .line 1156
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

    .line 1157
    :cond_0
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_USER_LEAVING:Z

    if-eqz v1, :cond_1

    const-string v1, "Sleep => pause with userLeaving=false"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    :cond_1
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/server/wm/ActivityStack;->startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;)Z

    .line 1161
    const/4 v0, 0x0

    goto :goto_0

    .line 1162
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_4

    .line 1164
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

    .line 1165
    :cond_3
    const/4 v0, 0x0

    .line 1168
    :cond_4
    :goto_0
    if-nez p1, :cond_6

    .line 1169
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/server/wm/ActivityStack;->containsActivityFromStack(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1171
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sleep still need to stop "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    .line 1172
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " activities"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1171
    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleIdle()V

    .line 1175
    const/4 v0, 0x0

    .line 1179
    :cond_6
    if-eqz v0, :cond_7

    .line 1180
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->goToSleep()V

    .line 1183
    :cond_7
    return v0
.end method

.method handleAppDied(Lcom/android/server/wm/WindowProcessController;)Z
    .locals 4
    .param p1, "app"    # Lcom/android/server/wm/WindowProcessController;

    .line 3124
    const/4 v0, 0x0

    .line 3125
    .local v0, "isPausingDied":Z
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-ne v1, p1, :cond_2

    .line 3126
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CLEANUP:Z

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App died while pausing: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3128
    :cond_1
    iput-object v2, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 3129
    const/4 v0, 0x1

    .line 3131
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-ne v1, p1, :cond_3

    .line 3132
    iput-object v2, p0, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 3133
    iput-object v2, p0, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    .line 3136
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->removeHistoryRecords(Lcom/android/server/wm/WindowProcessController;)V

    .line 3137
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mRemoveHistoryRecordsForApp:Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;->process(Lcom/android/server/wm/WindowProcessController;)Z

    move-result v1

    .line 3138
    .local v1, "hadVisibleActivities":Z
    if-nez v1, :cond_5

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method handleCompleteDeferredRemoval()Z
    .locals 1

    .line 3736
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->isAnimating(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3737
    const/4 v0, 0x1

    return v0

    .line 3740
    :cond_0
    invoke-super {p0}, Lcom/android/server/wm/Task;->handleCompleteDeferredRemoval()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isAttached()Z
    .locals 1

    .line 211
    invoke-super {p0}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v0

    return v0
.end method

.method public isCompatible(II)Z
    .locals 1
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I

    .line 972
    if-nez p2, :cond_0

    .line 975
    const/4 p2, 0x1

    .line 977
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/Task;->isCompatible(II)Z

    move-result v0

    return v0
.end method

.method isFocusedStackOnDisplay()Z
    .locals 2

    .line 1489
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1490
    .local v0, "display":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    if-ne p0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isForceScaled()Z
    .locals 1

    .line 3731
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStack;->mBoundsAnimating:Z

    return v0
.end method

.method final isHomeOrRecentsStack()Z
    .locals 1

    .line 1002
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

.method final isOnHomeDisplay()Z
    .locals 1

    .line 1006
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayId()I

    move-result v0

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

    .line 997
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 998
    .local v0, "display":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isSingleTaskInstance()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isTopSplitScreenStack()Z
    .locals 2

    .line 1582
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1583
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1582
    :goto_0
    return v0
.end method

.method isTopStackInDisplayArea()Z
    .locals 2

    .line 1480
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 1481
    .local v0, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TaskDisplayArea;->isTopStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public synthetic lambda$dismissPip$12$ActivityStack()V
    .locals 4

    .line 3437
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getBottomMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 3438
    .local v0, "task":Lcom/android/server/wm/Task;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(I)V

    .line 3440
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAtTop(Lcom/android/server/wm/ActivityStack;Z)V

    .line 3442
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1, v0, p0}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityStack;)V

    .line 3443
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget v2, v0, Lcom/android/server/wm/Task;->effectiveUid:I

    iget-object v3, v0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 3444
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    .line 3443
    invoke-static {v1, v2, v3}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->logPictureInPictureFullScreen(Landroid/content/Context;ILjava/lang/String;)V

    .line 3445
    return-void
.end method

.method public synthetic lambda$dump$8$ActivityStack(ZLjava/io/PrintWriter;)V
    .locals 2
    .param p1, "needSep"    # Z
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 3144
    if-eqz p1, :cond_0

    .line 3145
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3147
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Stack #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getRootTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3148
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result v1

    invoke-static {v1}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3149
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v1

    invoke-static {v1}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3147
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isSleeping="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->shouldSleepActivities()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3152
    return-void
.end method

.method public synthetic lambda$dumpActivities$10$ActivityStack(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;ZLjava/io/PrintWriter;Ljava/lang/Runnable;Ljava/lang/String;Ljava/io/FileDescriptor;ZZLcom/android/server/wm/Task;)V
    .locals 22
    .param p1, "printed"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p2, "printedHeader"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p3, "needSep"    # Z
    .param p4, "pw"    # Ljava/io/PrintWriter;
    .param p5, "header"    # Ljava/lang/Runnable;
    .param p6, "dumpPackage"    # Ljava/lang/String;
    .param p7, "fd"    # Ljava/io/FileDescriptor;
    .param p8, "dumpAll"    # Z
    .param p9, "dumpClient"    # Z
    .param p10, "task"    # Lcom/android/server/wm/Task;

    .line 3188
    const-string v0, "    "

    .line 3189
    .local v0, "prefix":Ljava/lang/String;
    new-instance v9, Lcom/android/server/wm/-$$Lambda$ActivityStack$R37x5SGnmhrl07es1b8tPUL02qE;

    .local v9, "headerPrinter":Ljava/lang/Runnable;
    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p10

    invoke-direct/range {v1 .. v8}, Lcom/android/server/wm/-$$Lambda$ActivityStack$R37x5SGnmhrl07es1b8tPUL02qE;-><init>(Lcom/android/server/wm/ActivityStack;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;ZLjava/io/PrintWriter;Ljava/lang/Runnable;Lcom/android/server/wm/Task;)V

    .line 3212
    if-nez p6, :cond_0

    .line 3215
    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    .line 3216
    const/4 v9, 0x0

    .line 3218
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3221
    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$hD1GQddqK6sJaBtwVBGHwmleilc;

    invoke-direct {v2, v1}, Lcom/android/server/wm/-$$Lambda$hD1GQddqK6sJaBtwVBGHwmleilc;-><init>(Ljava/util/ArrayList;)V

    const/4 v3, 0x0

    move-object/from16 v4, p10

    invoke-virtual {v4, v2, v3}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;Z)V

    .line 3223
    const/4 v15, 0x1

    xor-int/lit8 v16, p8, 0x1

    const/16 v19, 0x0

    const-string v13, "    "

    const-string v14, "Hist"

    move-object/from16 v10, p7

    move-object/from16 v11, p4

    move-object v12, v1

    move/from16 v17, p9

    move-object/from16 v18, p6

    move-object/from16 v20, v9

    move-object/from16 v21, p10

    invoke-static/range {v10 .. v21}, Lcom/android/server/wm/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/Runnable;Lcom/android/server/wm/Task;)Z

    .line 3225
    return-void
.end method

.method public synthetic lambda$dumpActivities$9$ActivityStack(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;ZLjava/io/PrintWriter;Ljava/lang/Runnable;Lcom/android/server/wm/Task;)V
    .locals 2
    .param p1, "printed"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p2, "printedHeader"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p3, "needSep"    # Z
    .param p4, "pw"    # Ljava/io/PrintWriter;
    .param p5, "header"    # Ljava/lang/Runnable;
    .param p6, "task"    # Lcom/android/server/wm/Task;

    .line 3190
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3191
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3192
    if-eqz p3, :cond_0

    .line 3193
    const-string v1, ""

    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3195
    :cond_0
    if-eqz p5, :cond_1

    .line 3196
    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    .line 3198
    :cond_1
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3200
    :cond_2
    const-string v0, "    "

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "* "

    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p4, p6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3201
    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  mBounds="

    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3202
    invoke-virtual {p6}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3203
    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  mMinWidth="

    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p6, Lcom/android/server/wm/Task;->mMinWidth:I

    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 3204
    const-string v1, " mMinHeight="

    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p6, Lcom/android/server/wm/Task;->mMinHeight:I

    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 3205
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_3

    .line 3206
    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3207
    const-string v0, "  mLastNonFullscreenBounds="

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3208
    iget-object v0, p6, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3210
    :cond_3
    const-string v0, "      "

    invoke-virtual {p6, p4, v0}, Lcom/android/server/wm/Task;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3211
    return-void
.end method

.method public synthetic lambda$setWindowingMode$0$ActivityStack(IZ)V
    .locals 0
    .param p1, "preferredWindowingMode"    # I
    .param p2, "creating"    # Z

    .line 790
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityStack;->setWindowingModeInSurfaceTransaction(IZ)V

    return-void
.end method

.method public bridge synthetic makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .locals 1

    .line 211
    invoke-super {p0}, Lcom/android/server/wm/Task;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method minimalResumeActivityLocked(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1110
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Moving to RESUMED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (starting new instance) callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    .line 1111
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1110
    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    :cond_0
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/ActivityRecord;->callServiceTrackeronActivityStatechange(Lcom/android/server/wm/ActivityStack$ActivityState;Z)V

    .line 1113
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v1, "minimalResumeActivityLocked"

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 1114
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->completeResumeLocked()V

    .line 1115
    return-void
.end method

.method moveTaskToBack(Lcom/android/server/wm/Task;)Z
    .locals 8
    .param p1, "tr"    # Lcom/android/server/wm/Task;

    .line 2932
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveTaskToBack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2936
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/LockTaskController;->canMoveTaskToBack(Lcom/android/server/wm/Task;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2937
    return v2

    .line 2943
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isTopStackInDisplayArea()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v0, :cond_2

    .line 2944
    iget v0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0, v3, v0}, Lcom/android/server/wm/ActivityStack;->topRunningActivity(Landroid/os/IBinder;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2945
    .local v0, "next":Lcom/android/server/wm/ActivityRecord;
    if-nez v0, :cond_1

    .line 2946
    const/4 v4, -0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/ActivityStack;->topRunningActivity(Landroid/os/IBinder;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2948
    :cond_1
    if-eqz v0, :cond_2

    .line 2950
    const/4 v4, 0x1

    .line 2952
    .local v4, "moveOK":Z
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    iget-object v6, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    .line 2956
    goto :goto_0

    .line 2953
    :catch_0
    move-exception v5

    .line 2954
    .local v5, "e":Landroid/os/RemoteException;
    iget-object v6, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v3, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 2955
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 2957
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_0
    if-nez v4, :cond_2

    .line 2958
    return v2

    .line 2963
    .end local v0    # "next":Lcom/android/server/wm/ActivityRecord;
    .end local v4    # "moveOK":Z
    :cond_2
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Prepare to back transition: task="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2966
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v4, 0xb

    invoke-virtual {v0, v4, v2}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    .line 2970
    sget-boolean v0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    const/16 v4, 0x64

    if-eqz v0, :cond_4

    .line 2971
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 2972
    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityStack;->setAlwaysOnTop(Z)V

    .line 2976
    :cond_4
    const-string v0, "moveTaskToBackLocked"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/ActivityStack;->moveToBack(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 2980
    sget-boolean v5, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    if-eqz v5, :cond_5

    .line 2981
    nop

    .line 2982
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 2981
    invoke-static {p0, v5, v2}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->prepareZoomTransition(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStack;Z)V

    .line 2986
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_6

    .line 2987
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityStackSupervisor;->removeStack(Lcom/android/server/wm/ActivityStack;)V

    .line 2988
    return v6

    .line 2993
    :cond_6
    sget-boolean v5, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    if-eqz v5, :cond_7

    .line 2994
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v5

    if-ne v5, v4, :cond_7

    .line 2995
    invoke-virtual {p0, v2, v6, v3, v0}, Lcom/android/server/wm/ActivityStack;->startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    .line 2999
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3000
    .local v0, "topActivity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 3001
    .local v4, "topStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v4, :cond_8

    if-eq v4, p0, :cond_8

    sget-object v5, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v0, v5}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 3005
    iget-object v5, p0, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 3006
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    iget v7, v7, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 3005
    invoke-virtual {v5, v3, v7, v2, v2}, Lcom/android/server/wm/RootWindowContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;IZZ)Z

    .line 3010
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 3013
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->affinity:Ljava/lang/String;

    .line 3014
    invoke-static {v2}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyIM(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3015
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QuickReply:resumeFocusedStacksTopActivities "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3016
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    goto :goto_1

    .line 3020
    :cond_8
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    .line 3022
    :cond_9
    :goto_1
    return v6
.end method

.method final moveTaskToFront(Lcom/android/server/wm/Task;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V
    .locals 7
    .param p1, "tr"    # Lcom/android/server/wm/Task;
    .param p2, "noAnimation"    # Z
    .param p3, "options"    # Landroid/app/ActivityOptions;
    .param p4, "timeTracker"    # Lcom/android/server/am/AppTimeTracker;
    .param p5, "reason"    # Ljava/lang/String;

    .line 2812
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/ActivityStack;->moveTaskToFront(Lcom/android/server/wm/Task;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;ZLjava/lang/String;)V

    .line 2813
    return-void
.end method

.method final moveTaskToFront(Lcom/android/server/wm/Task;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;ZLjava/lang/String;)V
    .locals 16
    .param p1, "tr"    # Lcom/android/server/wm/Task;
    .param p2, "noAnimation"    # Z
    .param p3, "options"    # Landroid/app/ActivityOptions;
    .param p4, "timeTracker"    # Lcom/android/server/am/AppTimeTracker;
    .param p5, "deferResume"    # Z
    .param p6, "reason"    # Ljava/lang/String;

    .line 2817
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    const-string v11, "ActivityTaskManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveTaskToFront: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2821
    :cond_0
    sget-boolean v0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    if-eqz v0, :cond_1

    .line 2822
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    .line 2823
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->updateZoomStack(Lcom/android/server/wm/ActivityStack;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;II)V

    .line 2827
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getTopStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 2828
    .local v1, "topStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_2

    .line 2829
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 2831
    .local v2, "topActivity":Lcom/android/server/wm/ActivityRecord;
    :goto_0
    const/16 v3, 0x1c

    const/16 v4, 0xa

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v8, v7, :cond_5

    invoke-virtual {v8, v7}, Lcom/android/server/wm/Task;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 2833
    if-eqz p2, :cond_3

    .line 2834
    invoke-static/range {p3 .. p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    goto :goto_1

    .line 2835
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isSingleTaskInstance()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2842
    invoke-direct {v7, v3, v9, v5}, Lcom/android/server/wm/ActivityStack;->updateTransitLocked(ILandroid/app/ActivityOptions;Z)V

    goto :goto_1

    .line 2845
    :cond_4
    invoke-direct {v7, v4, v9, v6}, Lcom/android/server/wm/ActivityStack;->updateTransitLocked(ILandroid/app/ActivityOptions;Z)V

    .line 2847
    :goto_1
    return-void

    .line 2850
    :cond_5
    if-eqz v10, :cond_6

    .line 2852
    sget-object v12, Lcom/android/server/wm/-$$Lambda$Q7nS26dC0McEbKsdlJZMFVXDNKY;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Q7nS26dC0McEbKsdlJZMFVXDNKY;

    const-class v13, Lcom/android/server/wm/ActivityRecord;

    .line 2853
    invoke-static {v13}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v13

    .line 2852
    invoke-static {v12, v13, v10}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v12

    .line 2854
    .local v12, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {v8, v12}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 2855
    invoke-interface {v12}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 2862
    .end local v12    # "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    :cond_6
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->deferUpdateImeTarget()V

    .line 2866
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/ActivityStack;->positionChildAtTop(Lcom/android/server/wm/Task;)V

    .line 2869
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v12

    .line 2870
    .local v12, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v12, :cond_f

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->okToShowLocked()Z

    move-result v13

    if-nez v13, :cond_7

    move-object/from16 v14, p6

    goto/16 :goto_4

    .line 2879
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2880
    .local v13, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v13, :cond_8

    .line 2881
    move-object/from16 v14, p6

    :try_start_1
    invoke-virtual {v13, v14}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    goto :goto_2

    .line 2880
    :cond_8
    move-object/from16 v14, p6

    .line 2884
    :goto_2
    sget-boolean v15, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v15, :cond_9

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Prepare to front transition: task="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2885
    :cond_9
    if-eqz p2, :cond_b

    .line 2886
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v6, v6}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    .line 2887
    if-eqz v13, :cond_a

    .line 2888
    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2890
    :cond_a
    invoke-static/range {p3 .. p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    goto :goto_3

    .line 2891
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isSingleTaskInstance()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2892
    invoke-direct {v7, v3, v9, v5}, Lcom/android/server/wm/ActivityStack;->updateTransitLocked(ILandroid/app/ActivityOptions;Z)V

    goto :goto_3

    .line 2895
    :cond_c
    invoke-direct {v7, v4, v9, v6}, Lcom/android/server/wm/ActivityStack;->updateTransitLocked(ILandroid/app/ActivityOptions;Z)V

    .line 2904
    :goto_3
    const/4 v0, 0x0

    invoke-direct {v7, v2, v8, v0, v9}, Lcom/android/server/wm/ActivityStack;->canEnterPipOnTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2906
    iput-boolean v5, v2, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    .line 2909
    :cond_d
    if-nez p5, :cond_e

    .line 2910
    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    .line 2912
    :cond_e
    iget v0, v8, Lcom/android/server/wm/Task;->mUserId:I

    iget v3, v8, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v0, v3}, Lcom/android/server/wm/EventLogTags;->writeWmTaskToFront(II)V

    .line 2913
    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    .line 2914
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskMovedToFront(Landroid/app/TaskInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2916
    .end local v12    # "top":Lcom/android/server/wm/ActivityRecord;
    .end local v13    # "r":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->continueUpdateImeTarget()V

    .line 2917
    nop

    .line 2918
    return-void

    .line 2870
    .restart local v12    # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_f
    move-object/from16 v14, p6

    .line 2871
    :goto_4
    if-eqz v12, :cond_10

    .line 2872
    :try_start_2
    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/Task;)V

    .line 2874
    :cond_10
    invoke-static/range {p3 .. p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2916
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->continueUpdateImeTarget()V

    .line 2875
    return-void

    .line 2916
    .end local v12    # "top":Lcom/android/server/wm/ActivityRecord;
    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v14, p6

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->continueUpdateImeTarget()V

    .line 2917
    throw v0
.end method

.method moveToBack(Ljava/lang/String;Lcom/android/server/wm/Task;)V
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "task"    # Lcom/android/server/wm/Task;

    .line 1066
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1067
    return-void

    .line 1069
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 1070
    .local v0, "displayArea":Lcom/android/server/wm/TaskDisplayArea;
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStack;->mCreatedByOrganizer:Z

    if-nez v1, :cond_4

    .line 1073
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    .line 1074
    .local v1, "parent":Lcom/android/server/wm/WindowContainer;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1075
    .local v2, "parentTask":Lcom/android/server/wm/Task;
    :goto_0
    if-eqz v2, :cond_2

    .line 1076
    move-object v3, v2

    check-cast v3, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v3, p1, p0}, Lcom/android/server/wm/ActivityStack;->moveToBack(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    goto :goto_1

    .line 1078
    :cond_2
    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAtBottom(Lcom/android/server/wm/ActivityStack;Ljava/lang/String;)V

    .line 1080
    :goto_1
    if-eqz p2, :cond_3

    if-eq p2, p0, :cond_3

    .line 1081
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityStack;->positionChildAtBottom(Lcom/android/server/wm/Task;)V

    .line 1083
    :cond_3
    return-void

    .line 1085
    .end local v1    # "parent":Lcom/android/server/wm/WindowContainer;
    .end local v2    # "parentTask":Lcom/android/server/wm/Task;
    :cond_4
    if-eqz p2, :cond_6

    if-ne p2, p0, :cond_5

    goto :goto_2

    .line 1092
    :cond_5
    move-object v1, p2

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->positionTaskBehindHome(Lcom/android/server/wm/ActivityStack;)V

    .line 1093
    return-void

    .line 1086
    :cond_6
    :goto_2
    return-void
.end method

.method moveToFront(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .line 1010
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 1011
    return-void
.end method

.method moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V
    .locals 6
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "task"    # Lcom/android/server/wm/Task;

    .line 1018
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1019
    return-void

    .line 1022
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 1024
    .local v0, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1030
    nop

    .line 1031
    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskDisplayArea;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 1032
    .local v1, "topFullScreenStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_1

    .line 1033
    nop

    .line 1034
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getRootSplitScreenPrimaryTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 1035
    .local v3, "primarySplitScreenStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v3, :cond_1

    .line 1036
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->getIndexOf(Lcom/android/server/wm/ActivityStack;)I

    move-result v4

    .line 1037
    invoke-virtual {v0, v3}, Lcom/android/server/wm/TaskDisplayArea;->getIndexOf(Lcom/android/server/wm/ActivityStack;)I

    move-result v5

    if-le v4, v5, :cond_1

    .line 1038
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " splitScreenToTop"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 1043
    .end local v1    # "topFullScreenStack":Lcom/android/server/wm/ActivityStack;
    .end local v3    # "primarySplitScreenStack":Lcom/android/server/wm/ActivityStack;
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->returnsToHomeStack()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1046
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " returnToHome"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->moveHomeStackToFront(Ljava/lang/String;)V

    .line 1049
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isRootTask()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1050
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAtTop(Lcom/android/server/wm/ActivityStack;ZLjava/lang/String;)V

    .line 1052
    :cond_3
    if-nez p2, :cond_4

    .line 1053
    move-object p2, p0

    .line 1055
    :cond_4
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    const v3, 0x7fffffff

    invoke-virtual {v1, v3, p2, v2}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 1056
    return-void
.end method

.method moveToFrontAndResumeStateIfNeeded(Lcom/android/server/wm/ActivityRecord;ZZZLjava/lang/String;)V
    .locals 3
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "moveToFront"    # Z
    .param p3, "setResume"    # Z
    .param p4, "setPause"    # Z
    .param p5, "reason"    # Ljava/lang/String;

    .line 3400
    if-nez p2, :cond_0

    .line 3401
    return-void

    .line 3404
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v0

    .line 3408
    .local v0, "origState":Lcom/android/server/wm/ActivityStack$ActivityState;
    if-eqz p3, :cond_1

    .line 3409
    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lcom/android/server/wm/ActivityRecord;->callServiceTrackeronActivityStatechange(Lcom/android/server/wm/ActivityStack$ActivityState;Z)V

    .line 3410
    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v2, "moveToFrontAndResumeStateIfNeeded"

    invoke-virtual {p1, v1, v2}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 3413
    :cond_1
    if-eqz p4, :cond_2

    .line 3414
    iput-object p1, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 3415
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->schedulePauseTimeout()V

    .line 3418
    :cond_2
    invoke-virtual {p0, p5}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 3421
    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-ne p1, v1, :cond_3

    .line 3422
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, p1, p5}, Lcom/android/server/wm/ActivityTaskManagerService;->setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 3424
    :cond_3
    return-void
.end method

.method navigateUpTo(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)Z
    .locals 26
    .param p1, "srec"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "destIntent"    # Landroid/content/Intent;
    .param p3, "destGrants"    # Lcom/android/server/uri/NeededUriGrants;
    .param p4, "resultCode"    # I
    .param p5, "resultData"    # Landroid/content/Intent;
    .param p6, "resultGrants"    # Lcom/android/server/uri/NeededUriGrants;

    .line 2687
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 2690
    return v4

    .line 2692
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    .line 2693
    .local v5, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityRecord;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2694
    return v4

    .line 2697
    :cond_1
    invoke-virtual {v5, v2}, Lcom/android/server/wm/Task;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2698
    .local v0, "parent":Lcom/android/server/wm/ActivityRecord;
    const/4 v6, 0x0

    .line 2699
    .local v6, "foundParentInTask":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    .line 2700
    .local v7, "dest":Landroid/content/ComponentName;
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getBottomMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    const/4 v9, 0x1

    if-eq v8, v2, :cond_2

    if-eqz v7, :cond_2

    .line 2701
    new-instance v8, Lcom/android/server/wm/-$$Lambda$ActivityStack$Z7hLQOOjJ2p3oOFuD0JWMXQ1pOQ;

    invoke-direct {v8, v7}, Lcom/android/server/wm/-$$Lambda$ActivityStack$Z7hLQOOjJ2p3oOFuD0JWMXQ1pOQ;-><init>(Landroid/content/ComponentName;)V

    invoke-virtual {v5, v8, v2, v4, v9}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    .line 2705
    .local v8, "candidate":Lcom/android/server/wm/ActivityRecord;
    if-eqz v8, :cond_2

    .line 2706
    move-object v0, v8

    .line 2707
    const/4 v6, 0x1

    move v8, v6

    move-object v6, v0

    goto :goto_0

    .line 2713
    .end local v8    # "candidate":Lcom/android/server/wm/ActivityRecord;
    :cond_2
    move v8, v6

    move-object v6, v0

    .end local v0    # "parent":Lcom/android/server/wm/ActivityRecord;
    .local v6, "parent":Lcom/android/server/wm/ActivityRecord;
    .local v8, "foundParentInTask":Z
    :goto_0
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v15, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 2714
    .local v15, "controller":Landroid/app/IActivityController;
    const/4 v10, -0x1

    if-eqz v15, :cond_3

    .line 2715
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-virtual {v1, v0, v10}, Lcom/android/server/wm/ActivityStack;->topRunningActivity(Landroid/os/IBinder;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v11

    .line 2716
    .local v11, "next":Lcom/android/server/wm/ActivityRecord;
    if-eqz v11, :cond_3

    .line 2718
    const/4 v12, 0x1

    .line 2720
    .local v12, "resumeOK":Z
    :try_start_0
    iget-object v0, v11, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v15, v0}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v12, v0

    .line 2724
    goto :goto_1

    .line 2721
    :catch_0
    move-exception v0

    .line 2722
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v13, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v14, 0x0

    iput-object v14, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 2723
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v13

    invoke-virtual {v13, v14}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 2726
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    if-nez v12, :cond_3

    .line 2727
    return v4

    .line 2731
    .end local v11    # "next":Lcom/android/server/wm/ActivityRecord;
    .end local v12    # "resumeOK":Z
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 2733
    .local v16, "origId":J
    new-array v14, v9, [I

    .line 2734
    .local v14, "resultCodeHolder":[I
    aput p4, v14, v4

    .line 2735
    new-array v13, v9, [Landroid/content/Intent;

    .line 2736
    .local v13, "resultDataHolder":[Landroid/content/Intent;
    aput-object p5, v13, v4

    .line 2737
    new-array v12, v9, [Lcom/android/server/uri/NeededUriGrants;

    .line 2738
    .local v12, "resultGrantsHolder":[Lcom/android/server/uri/NeededUriGrants;
    aput-object p6, v12, v4

    .line 2739
    move-object v11, v6

    .line 2740
    .local v11, "finalParent":Lcom/android/server/wm/ActivityRecord;
    new-instance v0, Lcom/android/server/wm/-$$Lambda$ActivityStack$kXdVD8q_DOMPZdFLvQXXFO8ZuFM;

    invoke-direct {v0, v11, v14, v13, v12}, Lcom/android/server/wm/-$$Lambda$ActivityStack$kXdVD8q_DOMPZdFLvQXXFO8ZuFM;-><init>(Lcom/android/server/wm/ActivityRecord;[I[Landroid/content/Intent;[Lcom/android/server/uri/NeededUriGrants;)V

    invoke-virtual {v5, v0, v2, v9, v9}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Function;Lcom/android/server/wm/WindowContainer;ZZ)Z

    .line 2750
    aget v18, v14, v4

    .line 2751
    .end local p4    # "resultCode":I
    .local v18, "resultCode":I
    aget-object v19, v13, v4

    .line 2753
    .end local p5    # "resultData":Landroid/content/Intent;
    .local v19, "resultData":Landroid/content/Intent;
    if-eqz v6, :cond_7

    if-eqz v8, :cond_7

    .line 2754
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2755
    .local v4, "callingUid":I
    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v15

    .end local v15    # "controller":Landroid/app/IActivityController;
    .local v21, "controller":Landroid/app/IActivityController;
    iget v15, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 2756
    .local v15, "parentLaunchMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v22

    .line 2757
    .local v22, "destIntentFlags":I
    const/4 v0, 0x3

    if-eq v15, v0, :cond_6

    const/4 v0, 0x2

    if-eq v15, v0, :cond_6

    if-eq v15, v9, :cond_6

    const/high16 v0, 0x4000000

    and-int v0, v22, v0

    if-eqz v0, :cond_4

    move-object/from16 v25, v5

    move-object v9, v11

    move-object/from16 v20, v12

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    move-object/from16 v5, v21

    move/from16 v21, v15

    goto/16 :goto_5

    .line 2764
    :cond_4
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 2765
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    iget v10, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2764
    move-object/from16 v25, v5

    const/16 v5, 0x400

    .end local v5    # "task":Lcom/android/server/wm/Task;
    .local v25, "task":Lcom/android/server/wm/Task;
    :try_start_2
    invoke-interface {v0, v9, v5, v10}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 2768
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v5, v1, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v5

    const-string v9, "navigateUpTo"

    .line 2769
    invoke-virtual {v5, v3, v9}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    iget-object v9, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 2770
    invoke-virtual {v9}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/android/server/wm/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    .line 2771
    invoke-virtual {v5, v0}, Lcom/android/server/wm/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    iget-object v9, v6, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    .line 2772
    invoke-virtual {v5, v9}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    .line 2773
    const/4 v9, -0x1

    invoke-virtual {v5, v9}, Lcom/android/server/wm/ActivityStarter;->setCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    .line 2774
    invoke-virtual {v5, v4}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    iget-object v9, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 2775
    invoke-virtual {v5, v9}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    iget-object v9, v6, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    .line 2776
    invoke-virtual {v5, v9}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    .line 2777
    const/4 v9, -0x1

    invoke-virtual {v5, v9}, Lcom/android/server/wm/ActivityStarter;->setRealCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    .line 2778
    invoke-virtual {v5, v4}, Lcom/android/server/wm/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    .line 2779
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lcom/android/server/wm/ActivityStarter;->setComponentSpecified(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    .line 2780
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v5
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2781
    .local v5, "res":I
    if-nez v5, :cond_5

    goto :goto_2

    :cond_5
    const/4 v9, 0x0

    :goto_2
    move v0, v9

    .line 2784
    .end local v5    # "res":I
    .end local v8    # "foundParentInTask":Z
    .local v0, "foundParentInTask":Z
    move v8, v0

    goto :goto_4

    .line 2782
    .end local v0    # "foundParentInTask":Z
    .restart local v8    # "foundParentInTask":Z
    :catch_1
    move-exception v0

    goto :goto_3

    .end local v25    # "task":Lcom/android/server/wm/Task;
    .local v5, "task":Lcom/android/server/wm/Task;
    :catch_2
    move-exception v0

    move-object/from16 v25, v5

    .line 2783
    .end local v5    # "task":Lcom/android/server/wm/Task;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v25    # "task":Lcom/android/server/wm/Task;
    :goto_3
    const/4 v5, 0x0

    move v8, v5

    .line 2785
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_4
    const/4 v0, 0x1

    const-string v5, "navigate-top"

    move-object v10, v6

    move-object v9, v11

    .end local v11    # "finalParent":Lcom/android/server/wm/ActivityRecord;
    .local v9, "finalParent":Lcom/android/server/wm/ActivityRecord;
    move/from16 v11, v18

    move-object/from16 v20, v12

    .end local v12    # "resultGrantsHolder":[Lcom/android/server/uri/NeededUriGrants;
    .local v20, "resultGrantsHolder":[Lcom/android/server/uri/NeededUriGrants;
    move-object/from16 v12, v19

    move-object/from16 v23, v13

    .end local v13    # "resultDataHolder":[Landroid/content/Intent;
    .local v23, "resultDataHolder":[Landroid/content/Intent;
    move-object/from16 v13, p6

    move-object/from16 v24, v14

    .end local v14    # "resultCodeHolder":[I
    .local v24, "resultCodeHolder":[I
    move-object v14, v5

    move-object/from16 v5, v21

    move/from16 v21, v15

    .end local v15    # "parentLaunchMode":I
    .local v5, "controller":Landroid/app/IActivityController;
    .local v21, "parentLaunchMode":I
    move v15, v0

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;Z)I

    move-object/from16 v10, p3

    goto :goto_6

    .line 2757
    .end local v9    # "finalParent":Lcom/android/server/wm/ActivityRecord;
    .end local v20    # "resultGrantsHolder":[Lcom/android/server/uri/NeededUriGrants;
    .end local v23    # "resultDataHolder":[Landroid/content/Intent;
    .end local v24    # "resultCodeHolder":[I
    .end local v25    # "task":Lcom/android/server/wm/Task;
    .local v5, "task":Lcom/android/server/wm/Task;
    .restart local v11    # "finalParent":Lcom/android/server/wm/ActivityRecord;
    .restart local v12    # "resultGrantsHolder":[Lcom/android/server/uri/NeededUriGrants;
    .restart local v13    # "resultDataHolder":[Landroid/content/Intent;
    .restart local v14    # "resultCodeHolder":[I
    .restart local v15    # "parentLaunchMode":I
    .local v21, "controller":Landroid/app/IActivityController;
    :cond_6
    move-object/from16 v25, v5

    move-object v9, v11

    move-object/from16 v20, v12

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    move-object/from16 v5, v21

    move/from16 v21, v15

    .line 2761
    .end local v11    # "finalParent":Lcom/android/server/wm/ActivityRecord;
    .end local v12    # "resultGrantsHolder":[Lcom/android/server/uri/NeededUriGrants;
    .end local v13    # "resultDataHolder":[Landroid/content/Intent;
    .end local v14    # "resultCodeHolder":[I
    .end local v15    # "parentLaunchMode":I
    .local v5, "controller":Landroid/app/IActivityController;
    .restart local v9    # "finalParent":Lcom/android/server/wm/ActivityRecord;
    .restart local v20    # "resultGrantsHolder":[Lcom/android/server/uri/NeededUriGrants;
    .local v21, "parentLaunchMode":I
    .restart local v23    # "resultDataHolder":[Landroid/content/Intent;
    .restart local v24    # "resultCodeHolder":[I
    .restart local v25    # "task":Lcom/android/server/wm/Task;
    :goto_5
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v10, p3

    invoke-virtual {v6, v4, v3, v10, v0}, Lcom/android/server/wm/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;)V

    goto :goto_6

    .line 2753
    .end local v4    # "callingUid":I
    .end local v9    # "finalParent":Lcom/android/server/wm/ActivityRecord;
    .end local v20    # "resultGrantsHolder":[Lcom/android/server/uri/NeededUriGrants;
    .end local v21    # "parentLaunchMode":I
    .end local v22    # "destIntentFlags":I
    .end local v23    # "resultDataHolder":[Landroid/content/Intent;
    .end local v24    # "resultCodeHolder":[I
    .end local v25    # "task":Lcom/android/server/wm/Task;
    .local v5, "task":Lcom/android/server/wm/Task;
    .restart local v11    # "finalParent":Lcom/android/server/wm/ActivityRecord;
    .restart local v12    # "resultGrantsHolder":[Lcom/android/server/uri/NeededUriGrants;
    .restart local v13    # "resultDataHolder":[Landroid/content/Intent;
    .restart local v14    # "resultCodeHolder":[I
    .local v15, "controller":Landroid/app/IActivityController;
    :cond_7
    move-object/from16 v10, p3

    move-object/from16 v25, v5

    move-object v9, v11

    move-object/from16 v20, v12

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    move-object v5, v15

    .line 2789
    .end local v11    # "finalParent":Lcom/android/server/wm/ActivityRecord;
    .end local v12    # "resultGrantsHolder":[Lcom/android/server/uri/NeededUriGrants;
    .end local v13    # "resultDataHolder":[Landroid/content/Intent;
    .end local v14    # "resultCodeHolder":[I
    .end local v15    # "controller":Landroid/app/IActivityController;
    .local v5, "controller":Landroid/app/IActivityController;
    .restart local v9    # "finalParent":Lcom/android/server/wm/ActivityRecord;
    .restart local v20    # "resultGrantsHolder":[Lcom/android/server/uri/NeededUriGrants;
    .restart local v23    # "resultDataHolder":[Landroid/content/Intent;
    .restart local v24    # "resultCodeHolder":[I
    .restart local v25    # "task":Lcom/android/server/wm/Task;
    :goto_6
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2790
    return v8
.end method

.method notifyActivityDrawnLocked(Lcom/android/server/wm/ActivityRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1681
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 1682
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 1683
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1686
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    .line 1687
    .local v0, "waitingActivity":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    .line 1688
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1689
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1691
    if-eqz v0, :cond_2

    .line 1692
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->setWindowOpaqueLocked(Landroid/os/IBinder;Z)V

    .line 1693
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1695
    :try_start_0
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-interface {v1, v2, v3}, Landroid/app/IApplicationThread;->scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1698
    goto :goto_0

    .line 1697
    :catch_0
    move-exception v1

    .line 1702
    .end local v0    # "waitingActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_2
    :goto_0
    return-void
.end method

.method public onARStopTriggered(Lcom/android/server/wm/ActivityRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 3752
    sget-object v0, Lcom/android/server/wm/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/wm/ActivityPluginDelegate;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    if-eqz v0, :cond_1

    .line 3753
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3754
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-static {v0, v3, v2}, Lcom/android/server/wm/ActivityPluginDelegate;->activitySuspendNotification(Ljava/lang/String;ZZ)V

    .line 3756
    :cond_1
    return-void
.end method

.method public bridge synthetic onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 0

    .line 211
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/Task;->onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public bridge synthetic onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 211
    invoke-super {p0, p1}, Lcom/android/server/wm/Task;->onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V
    .locals 5
    .param p1, "child"    # Lcom/android/server/wm/WindowContainer;

    .line 3576
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 3577
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->hasChild()Z

    move-result v0

    invoke-static {v0}, Lcom/android/server/wm/OpWindowManagerServiceInjector;->notifySplitScreenModeChange(Z)V

    .line 3581
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isOrganized()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3582
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/TaskOrganizerController;->dispatchTaskInfoChanged(Lcom/android/server/wm/Task;Z)V

    .line 3585
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3586
    return-void

    .line 3589
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-ne v0, p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    move v0, v1

    .line 3591
    .local v0, "isTop":Z
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 3592
    .local v1, "task":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_4

    .line 3593
    invoke-virtual {v1, v0}, Lcom/android/server/wm/Task;->updateTaskMovement(Z)V

    .line 3596
    :cond_4
    if-eqz v0, :cond_6

    .line 3597
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 3602
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v2, :cond_5

    .line 3603
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    goto :goto_0

    .line 3605
    :cond_5
    const-string v3, "ActivityTaskManager"

    const-string v4, "displayContent is null, so skip it avoid null exception"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3609
    .end local v2    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_6
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 16
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 689
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isRootTask()Z

    move-result v1

    if-nez v1, :cond_0

    .line 690
    invoke-super/range {p0 .. p1}, Lcom/android/server/wm/Task;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 691
    return-void

    .line 694
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v1

    .line 695
    .local v1, "prevWindowingMode":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isAlwaysOnTop()Z

    move-result v2

    .line 696
    .local v2, "prevIsAlwaysOnTop":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v3

    .line 697
    .local v3, "prevRotation":I
    iget-object v4, v0, Lcom/android/server/wm/ActivityStack;->mTmpRect:Landroid/graphics/Rect;

    .line 700
    .local v4, "newBounds":Landroid/graphics/Rect;
    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityStack;->getBounds(Landroid/graphics/Rect;)V

    .line 702
    invoke-super/range {p0 .. p1}, Lcom/android/server/wm/Task;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 704
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    .line 705
    .local v5, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-nez v5, :cond_1

    .line 706
    return-void

    .line 709
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v6

    if-eq v1, v6, :cond_2

    .line 710
    invoke-virtual {v5, v0}, Lcom/android/server/wm/TaskDisplayArea;->onStackWindowingModeChanged(Lcom/android/server/wm/ActivityStack;)V

    .line 713
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    .line 714
    .local v6, "display":Lcom/android/server/wm/DisplayContent;
    if-nez v6, :cond_3

    .line 715
    return-void

    .line 718
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v7

    if-eq v1, v7, :cond_4

    const/4 v7, 0x1

    goto :goto_0

    :cond_4
    const/4 v7, 0x0

    .line 719
    .local v7, "windowingModeChanged":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideWindowingMode()I

    move-result v10

    .line 721
    .local v10, "overrideWindowingMode":I
    const/4 v11, 0x0

    .line 723
    .local v11, "hasNewOverrideBounds":Z
    const/4 v12, 0x2

    if-eq v10, v12, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->matchParentBounds()Z

    move-result v13

    if-nez v13, :cond_7

    .line 726
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v13

    .line 727
    .local v13, "newRotation":I
    if-eq v3, v13, :cond_5

    const/4 v14, 0x1

    goto :goto_1

    :cond_5
    const/4 v14, 0x0

    .line 728
    .local v14, "rotationChanged":Z
    :goto_1
    if-eqz v14, :cond_6

    .line 729
    iget-object v15, v6, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v8, p1

    iget-object v9, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 730
    invoke-virtual {v9}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    .line 729
    invoke-virtual {v15, v9, v3, v13, v4}, Lcom/android/server/wm/DisplayContent;->rotateBounds(Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 732
    const/4 v11, 0x1

    goto :goto_2

    .line 728
    :cond_6
    move-object/from16 v8, p1

    goto :goto_2

    .line 723
    .end local v13    # "newRotation":I
    .end local v14    # "rotationChanged":Z
    :cond_7
    move-object/from16 v8, p1

    .line 736
    :goto_2
    if-eqz v7, :cond_8

    .line 737
    invoke-virtual {v5, v0}, Lcom/android/server/wm/TaskDisplayArea;->onStackWindowingModeChanged(Lcom/android/server/wm/ActivityStack;)V

    .line 742
    :cond_8
    sget-boolean v9, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    if-eqz v9, :cond_a

    .line 743
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v9

    if-eq v3, v9, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isAlwaysOnTop()Z

    move-result v9

    if-ne v2, v9, :cond_9

    .line 744
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    invoke-static {v9, v0}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->updateZoomWindowTaskBound(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityStack;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 745
    :cond_9
    const/4 v11, 0x0

    .line 750
    :cond_a
    if-eqz v11, :cond_c

    .line 751
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->inSplitScreenWindowingMode()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 752
    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityStack;->setBounds(Landroid/graphics/Rect;)I

    goto :goto_3

    .line 753
    :cond_b
    if-eq v10, v12, :cond_c

    .line 755
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v12, 0x1

    invoke-virtual {v0, v9, v12, v12}, Lcom/android/server/wm/ActivityStack;->resize(Landroid/graphics/Rect;ZZ)V

    .line 758
    :cond_c
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isAlwaysOnTop()Z

    move-result v9

    if-eq v2, v9, :cond_d

    .line 762
    const/4 v9, 0x0

    invoke-virtual {v5, v0, v9}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAtTop(Lcom/android/server/wm/ActivityStack;Z)V

    .line 764
    :cond_d
    return-void
.end method

.method public bridge synthetic onDescendantOrientationChanged(Landroid/os/IBinder;Lcom/android/server/wm/ConfigurationContainer;)Z
    .locals 0

    .line 211
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/Task;->onDescendantOrientationChanged(Landroid/os/IBinder;Lcom/android/server/wm/ConfigurationContainer;)Z

    move-result p1

    return p1
.end method

.method onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .locals 1
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 3646
    invoke-super {p0, p1}, Lcom/android/server/wm/Task;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 3647
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isRootTask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3648
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStack;->updateSurfaceBounds()V

    .line 3650
    :cond_0
    return-void
.end method

.method onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V
    .locals 3
    .param p1, "newParent"    # Lcom/android/server/wm/ConfigurationContainer;
    .param p2, "oldParent"    # Lcom/android/server/wm/ConfigurationContainer;

    .line 3613
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3614
    move-object v1, p1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 3615
    .local v1, "display":Lcom/android/server/wm/DisplayContent;
    :goto_0
    if-eqz p2, :cond_1

    .line 3616
    move-object v0, p2

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    goto :goto_1

    :cond_1
    nop

    .line 3617
    .local v0, "oldDisplay":Lcom/android/server/wm/DisplayContent;
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/Task;->onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V

    .line 3621
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isRemoving()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3622
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->postReparent()V

    .line 3624
    :cond_2
    return-void
.end method

.method public bridge synthetic onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 211
    invoke-super {p0, p1}, Lcom/android/server/wm/Task;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public bridge synthetic onTransactionReady(ILjava/util/Set;)V
    .locals 0

    .line 211
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/Task;->onTransactionReady(ILjava/util/Set;)V

    return-void
.end method

.method positionChildAt(Lcom/android/server/wm/Task;I)V
    .locals 9
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "position"    # I

    .line 3338
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-ne v0, p0, :cond_8

    .line 3343
    invoke-virtual {p1, p0}, Lcom/android/server/wm/Task;->updateOverrideConfigurationForStack(Lcom/android/server/wm/ActivityStack;)V

    .line 3345
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3346
    .local v0, "topRunningActivity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 3348
    .local v1, "wasResumed":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getChildCount()I

    move-result v4

    if-lt p2, v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    .line 3349
    .local v4, "toTop":Z
    :goto_1
    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    invoke-virtual {v5, p0, v2}, Lcom/android/server/wm/TaskDisplayArea;->getNextFocusableStack(Lcom/android/server/wm/ActivityStack;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    move v5, v3

    goto :goto_3

    :cond_3
    :goto_2
    move v5, v2

    .line 3351
    .local v5, "includingParents":Z
    :goto_3
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v6, :cond_4

    .line 3352
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "positionChildAt: positioning task="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "WindowManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3354
    :cond_4
    invoke-virtual {p0, p2, p1, v5}, Lcom/android/server/wm/ActivityStack;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 3355
    invoke-virtual {p1, v4}, Lcom/android/server/wm/Task;->updateTaskMovement(Z)V

    .line 3356
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 3360
    iget-object v6, p1, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v6, :cond_5

    .line 3362
    :try_start_0
    iget-object v6, p1, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v7, p1, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    iget v8, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {v6, v7, v8}, Landroid/service/voice/IVoiceInteractionSession;->taskStarted(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3364
    goto :goto_4

    .line 3363
    :catch_0
    move-exception v6

    .line 3367
    :cond_5
    :goto_4
    if-eqz v1, :cond_7

    .line 3368
    iget-object v6, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v6, :cond_6

    .line 3369
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mResumedActivity was already set when moving mResumedActivity from other stack to this stack mResumedActivity="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " other mResumedActivity="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ActivityTaskManager"

    invoke-static {v7, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3373
    :cond_6
    sget-object v6, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v0, v6, v2}, Lcom/android/server/wm/ActivityRecord;->callServiceTrackeronActivityStatechange(Lcom/android/server/wm/ActivityStack$ActivityState;Z)V

    .line 3374
    sget-object v2, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v6, "positionChildAt"

    invoke-virtual {v0, v2, v6}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 3379
    :cond_7
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v3, v3}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 3380
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    .line 3381
    return-void

    .line 3339
    .end local v0    # "topRunningActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v1    # "wasResumed":Z
    .end local v4    # "toTop":Z
    .end local v5    # "includingParents":Z
    :cond_8
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

    .line 3340
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method positionChildAtBottom(Lcom/android/server/wm/Task;)V
    .locals 3
    .param p1, "child"    # Lcom/android/server/wm/Task;

    .line 3555
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 3556
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 3555
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskDisplayArea;->getNextFocusableStack(Lcom/android/server/wm/ActivityStack;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 3557
    .local v0, "nextFocusableStack":Lcom/android/server/wm/ActivityStack;
    if-nez v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/ActivityStack;->positionChildAtBottom(Lcom/android/server/wm/Task;Z)V

    .line 3558
    invoke-virtual {p1, v2}, Lcom/android/server/wm/Task;->updateTaskMovement(Z)V

    .line 3559
    return-void
.end method

.method positionChildAtBottom(Lcom/android/server/wm/Task;Z)V
    .locals 1
    .param p1, "child"    # Lcom/android/server/wm/Task;
    .param p2, "includingParents"    # Z

    .line 3563
    if-nez p1, :cond_0

    .line 3565
    return-void

    .line 3568
    :cond_0
    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wm/ActivityStack;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 3569
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 3570
    return-void
.end method

.method positionChildAtTop(Lcom/android/server/wm/Task;)V
    .locals 2
    .param p1, "child"    # Lcom/android/server/wm/Task;

    .line 3533
    if-nez p1, :cond_0

    .line 3535
    return-void

    .line 3538
    :cond_0
    if-ne p1, p0, :cond_1

    .line 3540
    const-string v0, "positionChildAtTop"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 3541
    return-void

    .line 3544
    :cond_1
    const v0, 0x7fffffff

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/ActivityStack;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 3545
    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->updateTaskMovement(Z)V

    .line 3547
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 3548
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 3549
    return-void
.end method

.method postReparent()V
    .locals 3

    .line 982
    const-string v0, "reparent"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/wm/ActivityStack;->adjustFocusToNextFocusableTask(Ljava/lang/String;ZZ)Lcom/android/server/wm/ActivityStack;

    .line 984
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    .line 987
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 989
    return-void
.end method

.method prepareFreezingTaskBounds()V
    .locals 2

    .line 3449
    sget-object v0, Lcom/android/server/wm/-$$Lambda$x6Ib5GIrsWZg48HsPUVGxKBQJS4;->INSTANCE:Lcom/android/server/wm/-$$Lambda$x6Ib5GIrsWZg48HsPUVGxKBQJS4;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityStack;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 3450
    return-void
.end method

.method removeLaunchTickMessages()V
    .locals 1

    .line 2794
    sget-object v0, Lcom/android/server/wm/-$$Lambda$B16jdo1lKUkQ4B7iWXwPKs2MAdg;->INSTANCE:Lcom/android/server/wm/-$$Lambda$B16jdo1lKUkQ4B7iWXwPKs2MAdg;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 2795
    return-void
.end method

.method reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V
    .locals 1
    .param p1, "newParent"    # Lcom/android/server/wm/TaskDisplayArea;
    .param p2, "onTop"    # Z

    .line 3627
    if-eqz p2, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    const/high16 v0, -0x80000000

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityStack;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    .line 3628
    return-void
.end method

.method resetTaskIfNeeded(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .locals 4
    .param p1, "taskTop"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "newActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 2520
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2522
    .local v0, "forceReset":Z
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 2525
    .local v1, "task":Lcom/android/server/wm/Task;
    sget-object v2, Lcom/android/server/wm/ActivityStack;->sResetTargetTaskHelper:Lcom/android/server/wm/ResetTargetTaskHelper;

    invoke-virtual {v2, v1, v0}, Lcom/android/server/wm/ResetTargetTaskHelper;->process(Lcom/android/server/wm/Task;Z)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 2527
    .local v2, "topOptions":Landroid/app/ActivityOptions;
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2528
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 2529
    .local v3, "newTop":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_1

    .line 2530
    move-object p1, v3

    .line 2534
    .end local v3    # "newTop":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    if-eqz v2, :cond_2

    .line 2537
    invoke-virtual {p1, v2}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 2540
    :cond_2
    return-object p1
.end method

.method resize(Landroid/graphics/Rect;ZZ)V
    .locals 4
    .param p1, "displayedBounds"    # Landroid/graphics/Rect;
    .param p2, "preserveWindows"    # Z
    .param p3, "deferResume"    # Z

    .line 3035
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stack.resize_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getRootTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3036
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 3040
    :try_start_0
    sget-object v0, Lcom/android/server/wm/-$$Lambda$ActivityStack$QjNtYzBoevRHPhQzwu5fh58MK0E;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStack$QjNtYzBoevRHPhQzwu5fh58MK0E;

    const-class v3, Lcom/android/server/wm/Task;

    .line 3041
    invoke-static {v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v3

    .line 3040
    invoke-static {v0, v3, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0

    .line 3043
    .local v0, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/android/server/wm/ActivityStack;->forAllTasks(Ljava/util/function/Consumer;Z)V

    .line 3044
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 3046
    iget-boolean v3, p0, Lcom/android/server/wm/ActivityStack;->mBoundsAnimating:Z

    if-eqz v3, :cond_0

    .line 3049
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStack;->updateSurfaceBounds()V

    .line 3050
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 3051
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 3054
    :cond_0
    if-nez p3, :cond_1

    .line 3055
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/android/server/wm/ActivityStack;->ensureVisibleActivitiesConfiguration(Lcom/android/server/wm/ActivityRecord;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3058
    .end local v0    # "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 3059
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3060
    nop

    .line 3061
    return-void

    .line 3058
    :catchall_0
    move-exception v0

    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 3059
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3060
    throw v0
.end method

.method restartPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3254
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3258
    .local v0, "starting":Lcom/android/server/wm/ActivityRecord;
    sget-object v1, Lcom/android/server/wm/-$$Lambda$ActivityStack$xHrv17CG5tAkxdutHyfCFt4-Iec;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStack$xHrv17CG5tAkxdutHyfCFt4-Iec;

    const-class v2, Lcom/android/server/wm/ActivityRecord;

    .line 3259
    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v2

    .line 3258
    invoke-static {v1, v2, v0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v1

    .line 3260
    .local v1, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityStack;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 3261
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 3263
    return-object v0
.end method

.method resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .locals 5
    .param p1, "prev"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;

    .line 1743
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1744
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.oneplus.applocker/.ConfirmDeviceCredentialActivity"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1745
    invoke-static {p1}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyIM(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1748
    .local v0, "isApplockerActivityInQuickReply":Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/wm/ActivityStack;->mInResumeTopActivity:Z

    if-eqz v3, :cond_2

    .line 1756
    iget-boolean v3, p0, Lcom/android/server/wm/ActivityStack;->mAppLockerInResume:Z

    if-nez v3, :cond_1

    if-eqz v0, :cond_1

    .line 1757
    const-string v3, "ActivityTaskManager"

    const-string v4, "QuickReply: Allow applocker to start/resume"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStack;->mAppLockerInResume:Z

    goto :goto_1

    .line 1761
    :cond_1
    return v2

    .line 1766
    :cond_2
    :goto_1
    const/4 v3, 0x0

    .line 1769
    .local v3, "result":Z
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStack;->mInResumeTopActivity:Z

    .line 1770
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityStack;->resumeTopActivityInnerLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v4

    move v3, v4

    .line 1779
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityStack;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1780
    .local v1, "next":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->canTurnScreenOn()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1781
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->checkReadyForSleep()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1784
    .end local v1    # "next":Lcom/android/server/wm/ActivityRecord;
    :cond_4
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStack;->mInResumeTopActivity:Z

    .line 1787
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStack;->mAppLockerInResume:Z

    .line 1789
    nop

    .line 1791
    return v3

    .line 1784
    :catchall_0
    move-exception v1

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStack;->mInResumeTopActivity:Z

    .line 1787
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStack;->mAppLockerInResume:Z

    .line 1789
    throw v1
.end method

.method reuseOrCreateTask(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;
    .locals 13
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p4, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p5, "toTop"    # Z
    .param p6, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p7, "source"    # Lcom/android/server/wm/ActivityRecord;
    .param p8, "options"    # Landroid/app/ActivityOptions;

    .line 3287
    move-object v9, p0

    move-object v10, p1

    move-object/from16 v11, p6

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wm/DisplayContent;->alwaysCreateStack(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3290
    move-object v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object v3, p2

    move-object v4, p1

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStack;->reuseAsLeafTask(Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/Task;

    move-result-object v0

    move/from16 v6, p5

    move-object v7, v0

    .local v0, "task":Lcom/android/server/wm/Task;
    goto :goto_2

    .line 3293
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :cond_0
    if-eqz v11, :cond_1

    .line 3294
    iget-object v0, v9, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget v1, v11, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->getNextTaskIdForUser(I)I

    move-result v0

    move v2, v0

    goto :goto_0

    .line 3295
    :cond_1
    iget-object v0, v9, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->getNextTaskIdForUser()I

    move-result v0

    move v2, v0

    :goto_0
    nop

    .line 3296
    .local v2, "taskId":I
    new-instance v12, Lcom/android/server/wm/ActivityStack;

    iget-object v1, v9, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v7, 0x0

    move-object v0, v12

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/server/wm/ActivityStack;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/app/ActivityManager$TaskDescription;Lcom/android/server/wm/ActivityStack;)V

    .line 3300
    .restart local v0    # "task":Lcom/android/server/wm/Task;
    iget v1, v10, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    move/from16 v6, p5

    invoke-virtual {p0, v0, v6, v1}, Lcom/android/server/wm/ActivityStack;->addChild(Lcom/android/server/wm/WindowContainer;ZZ)V

    move-object v7, v0

    .line 3303
    .end local v0    # "task":Lcom/android/server/wm/Task;
    .end local v2    # "taskId":I
    .local v7, "task":Lcom/android/server/wm/Task;
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayId()I

    move-result v0

    .line 3304
    .local v0, "displayId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    :cond_3
    move v8, v0

    .line 3305
    .end local v0    # "displayId":I
    .local v8, "displayId":I
    iget-object v0, v9, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    .line 3306
    invoke-virtual {v0, v8}, Lcom/android/server/wm/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v12

    .line 3307
    .local v12, "isLockscreenShown":Z
    iget-object v0, v9, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;

    move-result-object v0

    iget-object v2, v10, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 3308
    move-object v1, v7

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/LaunchParamsController;->layoutTask(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3309
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->matchParentBounds()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v7}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez v12, :cond_4

    .line 3310
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 3313
    :cond_4
    return-object v7
.end method

.method reuseOrCreateTask(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Z)Lcom/android/server/wm/Task;
    .locals 9
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "toTop"    # Z

    .line 3277
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/ActivityStack;->reuseOrCreateTask(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method public setAlwaysOnTop(Z)V
    .locals 2
    .param p1, "alwaysOnTop"    # Z

    .line 3384
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isAlwaysOnTop()Z

    move-result v0

    if-ne v0, p1, :cond_0

    .line 3385
    return-void

    .line 3387
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/wm/Task;->setAlwaysOnTop(Z)V

    .line 3388
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 3394
    .local v0, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAtTop(Lcom/android/server/wm/ActivityStack;Z)V

    .line 3395
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)I
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 3456
    sget-boolean v0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    if-eqz v0, :cond_0

    .line 3457
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 3458
    invoke-super {p0, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    move-result v0

    return v0

    .line 3463
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3464
    invoke-super {p0, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    move-result v0

    return v0

    .line 3466
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/ActivityStack;->setBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic setBounds(Landroid/graphics/Rect;Z)I
    .locals 0

    .line 211
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;Z)I

    move-result p1

    return p1
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

    .line 3719
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/RemoteAction;>;"
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    if-nez v0, :cond_0

    .line 3720
    return-void

    .line 3723
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3724
    return-void

    .line 3727
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/PinnedStackController;->setActions(Ljava/util/List;)V

    .line 3728
    return-void
.end method

.method setPictureInPictureAspectRatio(F)V
    .locals 3
    .param p1, "aspectRatio"    # F

    .line 3687
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    if-nez v0, :cond_0

    .line 3688
    return-void

    .line 3691
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 3692
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_1

    .line 3693
    return-void

    .line 3696
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3697
    return-void

    .line 3700
    :cond_2
    nop

    .line 3701
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v1

    .line 3703
    .local v1, "pinnedStackController":Lcom/android/server/wm/PinnedStackController;
    invoke-virtual {v1}, Lcom/android/server/wm/PinnedStackController;->getAspectRatio()F

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_3

    .line 3704
    return-void

    .line 3710
    :cond_3
    nop

    .line 3711
    invoke-virtual {v1, p1}, Lcom/android/server/wm/PinnedStackController;->isValidPictureInPictureAspectRatio(F)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3712
    move v2, p1

    goto :goto_0

    :cond_4
    const/high16 v2, -0x40800000    # -1.0f

    .line 3710
    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/server/wm/PinnedStackController;->setAspectRatio(F)V

    .line 3713
    return-void
.end method

.method public setWindowingMode(I)V
    .locals 1
    .param p1, "windowingMode"    # I

    .line 769
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->stringName:Ljava/lang/String;

    .line 773
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_0

    .line 774
    invoke-super {p0, p1}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 775
    return-void

    .line 778
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(IZ)V

    .line 779
    return-void
.end method

.method setWindowingMode(IZ)V
    .locals 2
    .param p1, "preferredWindowingMode"    # I
    .param p2, "creating"    # Z

    .line 790
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$ActivityStack$1naDAoUMprftj-K2aF4LqsZgbmk;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/-$$Lambda$ActivityStack$1naDAoUMprftj-K2aF4LqsZgbmk;-><init>(Lcom/android/server/wm/ActivityStack;IZ)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    .line 792
    return-void
.end method

.method shouldIgnoreInput()Z
    .locals 2

    .line 3653
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3654
    return v1

    .line 3656
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHasLeanbackFeature:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3657
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isFocusedStackOnDisplay()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3659
    return v1

    .line 3661
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method shouldResizeStackWithLaunchBounds()Z
    .locals 1

    .line 1573
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v0

    return v0
.end method

.method shouldSleepActivities()Z
    .locals 3

    .line 3764
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 3768
    .local v0, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isFocusedStackOnDisplay()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 3769
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/KeyguardController;->isKeyguardGoingAway()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v1, :cond_0

    .line 3774
    return v2

    .line 3779
    :cond_0
    invoke-static {v0, p0}, Lcom/android/server/wm/OpFingerprintAccelerateInjector;->shouldSkipSleep(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ActivityStack;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3780
    return v2

    .line 3784
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isSleeping()Z

    move-result v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->isSleepingLocked()Z

    move-result v1

    :goto_0
    return v1
.end method

.method shouldSleepOrShutDownActivities()Z
    .locals 1

    .line 3788
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->shouldSleepActivities()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

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

    .line 2654
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v0

    invoke-static {p2, v0}, Lcom/android/server/wm/ActivityRecord;->getTaskAffinityWithUid(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2655
    .local v0, "affinity":Ljava/lang/String;
    const/4 v1, 0x1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 2656
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 2663
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 2664
    .local v2, "task":Lcom/android/server/wm/Task;
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 2665
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->isDocument()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2667
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStack;->inFrontOfStandardStack()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2669
    return v1

    .line 2672
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityStack;->getTaskBelow(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 2673
    .local v3, "prevTask":Lcom/android/server/wm/Task;
    if-nez v3, :cond_2

    .line 2674
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shouldUpRecreateTask: task not in history for "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "ActivityTaskManager"

    invoke-static {v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2675
    return v4

    .line 2677
    :cond_2
    iget-object v5, v2, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 2679
    return v1

    .line 2682
    .end local v3    # "prevTask":Lcom/android/server/wm/Task;
    :cond_3
    return v4

    .line 2657
    .end local v2    # "task":Lcom/android/server/wm/Task;
    :cond_4
    :goto_0
    return v1
.end method

.method startActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ZZLandroid/app/ActivityOptions;)V
    .locals 17
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "focusedTopActivity"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "newTask"    # Z
    .param p4, "keepCurTransition"    # Z
    .param p5, "options"    # Landroid/app/ActivityOptions;

    .line 2341
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p5

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    .line 2342
    .local v5, "rTask":Lcom/android/server/wm/Task;
    const/4 v6, 0x1

    if-eqz v4, :cond_1

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getAvoidMoveToFront()Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v8, v6

    .line 2343
    .local v8, "allowMoveToFront":Z
    :goto_1
    if-eq v5, v0, :cond_3

    invoke-virtual {v0, v5}, Lcom/android/server/wm/ActivityStack;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    move v9, v6

    .line 2345
    .local v9, "isOrhasTask":Z
    :goto_3
    iget-boolean v10, v1, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-nez v10, :cond_5

    if-eqz v8, :cond_5

    if-eqz v9, :cond_4

    if-eqz v3, :cond_5

    .line 2349
    :cond_4
    invoke-virtual {v0, v5}, Lcom/android/server/wm/ActivityStack;->positionChildAtTop(Lcom/android/server/wm/Task;)V

    .line 2351
    :cond_5
    const/4 v10, 0x0

    .line 2352
    .local v10, "task":Lcom/android/server/wm/Task;
    const-string v11, "here"

    const-string v12, "Adding activity "

    const-string v13, "ActivityTaskManager"

    if-nez v3, :cond_7

    if-eqz v9, :cond_7

    .line 2355
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/ActivityStack;->getOccludingActivityAbove(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v14

    .line 2356
    .local v14, "occludingActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v14, :cond_7

    .line 2360
    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v6, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " to task "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2361
    invoke-virtual {v7}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v7

    .line 2360
    invoke-static {v13, v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2362
    :cond_6
    invoke-virtual {v5, v1}, Lcom/android/server/wm/Task;->positionChildAtTop(Lcom/android/server/wm/ActivityRecord;)V

    .line 2363
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2364
    return-void

    .line 2372
    .end local v14    # "occludingActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v14

    .line 2373
    .local v14, "activityTask":Lcom/android/server/wm/Task;
    if-ne v10, v14, :cond_8

    iget-object v15, v0, Lcom/android/server/wm/ActivityStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v15, v10}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getChildCount()I

    move-result v16

    add-int/lit8 v7, v16, -0x1

    if-eq v15, v7, :cond_8

    .line 2374
    iget-object v7, v0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v15, 0x0

    iput-boolean v15, v7, Lcom/android/server/wm/ActivityStackSupervisor;->mUserLeaving:Z

    .line 2375
    sget-boolean v7, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_USER_LEAVING:Z

    if-eqz v7, :cond_8

    const-string v7, "startActivity() behind front, mUserLeaving=false"

    invoke-static {v13, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2379
    :cond_8
    move-object v7, v14

    .line 2382
    .end local v10    # "task":Lcom/android/server/wm/Task;
    .local v7, "task":Lcom/android/server/wm/Task;
    sget-boolean v10, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v10, :cond_9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " to stack to task "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v12, Ljava/lang/RuntimeException;

    invoke-direct {v12, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2383
    invoke-virtual {v12}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v11

    .line 2382
    invoke-static {v13, v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2384
    :cond_9
    invoke-virtual {v7, v1}, Lcom/android/server/wm/Task;->positionChildAtTop(Lcom/android/server/wm/ActivityRecord;)V

    .line 2386
    sget-object v10, Lcom/android/server/wm/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/wm/ActivityPluginDelegate;

    if-eqz v10, :cond_a

    .line 2387
    iget-object v10, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2388
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v11

    invoke-static {v10, v11}, Lcom/android/server/wm/ActivityPluginDelegate;->activityInvokeNotification(Ljava/lang/String;Z)V

    .line 2393
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isHomeOrRecentsStack()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->hasActivity()Z

    move-result v10

    if-eqz v10, :cond_b

    goto :goto_4

    :cond_b
    move/from16 v11, p4

    goto/16 :goto_b

    :cond_c
    :goto_4
    if-eqz v8, :cond_1a

    .line 2394
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v10

    iget-object v10, v10, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2395
    .local v10, "dc":Lcom/android/server/wm/DisplayContent;
    sget-boolean v11, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v11, :cond_d

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Prepare open transition: starting "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2397
    :cond_d
    iget-object v11, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getFlags()I

    move-result v11

    const/high16 v12, 0x10000

    and-int/2addr v11, v12

    const/4 v12, 0x0

    if-eqz v11, :cond_e

    .line 2398
    move/from16 v11, p4

    const/4 v13, 0x0

    invoke-virtual {v10, v13, v11}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    .line 2399
    iget-object v13, v0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v13, v13, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 2401
    :cond_e
    move/from16 v11, p4

    const/4 v13, 0x6

    .line 2402
    .local v13, "transit":I
    if-eqz v3, :cond_12

    .line 2403
    iget-boolean v15, v1, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v15, :cond_f

    .line 2404
    const/16 v13, 0x10

    goto :goto_5

    .line 2405
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/wm/DisplayContent;->isSingleTaskInstance()Z

    move-result v15

    if-eqz v15, :cond_10

    .line 2410
    const/16 v13, 0x1c

    .line 2411
    const/4 v11, 0x0

    .end local p4    # "keepCurTransition":Z
    .local v11, "keepCurTransition":Z
    goto :goto_5

    .line 2417
    .end local v11    # "keepCurTransition":Z
    .restart local p4    # "keepCurTransition":Z
    :cond_10
    invoke-direct {v0, v2, v12, v1, v4}, Lcom/android/server/wm/ActivityStack;->canEnterPipOnTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v15

    if-eqz v15, :cond_11

    .line 2419
    iput-boolean v6, v2, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    .line 2421
    :cond_11
    const/16 v13, 0x8

    .line 2424
    .end local p4    # "keepCurTransition":Z
    .restart local v11    # "keepCurTransition":Z
    :cond_12
    :goto_5
    invoke-virtual {v10, v13, v11}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    .line 2425
    iget-object v15, v0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v15, v15, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2427
    .end local v13    # "transit":I
    :goto_6
    const/4 v13, 0x1

    .line 2428
    .local v13, "doShow":Z
    if-eqz v3, :cond_14

    .line 2434
    iget-object v15, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v15}, Landroid/content/Intent;->getFlags()I

    move-result v15

    const/high16 v16, 0x200000

    and-int v15, v15, v16

    if-eqz v15, :cond_15

    .line 2435
    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/ActivityStack;->resetTaskIfNeeded(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    .line 2436
    invoke-virtual {v0, v12}, Lcom/android/server/wm/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v15

    if-ne v15, v1, :cond_13

    move v15, v6

    goto :goto_7

    :cond_13
    const/4 v15, 0x0

    :goto_7
    move v13, v15

    goto :goto_8

    .line 2438
    :cond_14
    if-eqz v4, :cond_15

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v15

    const/4 v12, 0x5

    if-ne v15, v12, :cond_15

    .line 2440
    const/4 v13, 0x0

    .line 2442
    :cond_15
    :goto_8
    iget-boolean v12, v1, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v12, :cond_16

    .line 2445
    invoke-virtual {v1, v6}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 2446
    const/4 v6, 0x0

    const/4 v12, 0x0

    invoke-virtual {v0, v6, v12, v12}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 2449
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    goto :goto_a

    .line 2450
    :cond_16
    if-eqz v13, :cond_19

    .line 2455
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v6

    .line 2456
    .local v6, "prevTask":Lcom/android/server/wm/Task;
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->topActivityWithStartingWindow()Lcom/android/server/wm/ActivityRecord;

    move-result-object v12

    .line 2457
    .local v12, "prev":Lcom/android/server/wm/ActivityRecord;
    if-eqz v12, :cond_18

    .line 2460
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v15

    if-eq v15, v6, :cond_17

    .line 2461
    const/4 v12, 0x0

    goto :goto_9

    .line 2464
    :cond_17
    iget-boolean v15, v12, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-eqz v15, :cond_18

    .line 2465
    const/4 v12, 0x0

    .line 2470
    :cond_18
    :goto_9
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->setFocusedTopActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 2472
    invoke-direct/range {p0 .. p2}, Lcom/android/server/wm/ActivityStack;->isTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v15

    invoke-virtual {v1, v12, v3, v15}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 2474
    .end local v6    # "prevTask":Lcom/android/server/wm/Task;
    .end local v10    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v12    # "prev":Lcom/android/server/wm/ActivityRecord;
    .end local v13    # "doShow":Z
    :cond_19
    :goto_a
    goto :goto_c

    .line 2393
    .end local v11    # "keepCurTransition":Z
    .restart local p4    # "keepCurTransition":Z
    :cond_1a
    move/from16 v11, p4

    .line 2477
    :goto_b
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2479
    .end local p4    # "keepCurTransition":Z
    .restart local v11    # "keepCurTransition":Z
    :goto_c
    return-void
.end method

.method final startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p1, "userLeaving"    # Z
    .param p2, "uiSleeping"    # Z
    .param p3, "resuming"    # Lcom/android/server/wm/ActivityRecord;

    .line 1227
    const-string v0, "other-request"

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/ActivityStack;->startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method final startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z
    .locals 11
    .param p1, "userLeaving"    # Z
    .param p2, "uiSleeping"    # Z
    .param p3, "resuming"    # Lcom/android/server/wm/ActivityRecord;
    .param p4, "reason"    # Ljava/lang/String;

    .line 1232
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    const-string v1, "startPausingLocked, reason:"

    const-string v2, "ActivityTaskManager"

    if-eqz v0, :cond_0

    .line 1233
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 1234
    .local v0, "trace":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1235
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "trace":Ljava/lang/RuntimeException;
    goto :goto_0

    .line 1236
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_1

    .line 1237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " call by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1236
    :cond_1
    :goto_0
    nop

    .line 1240
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Going to pause when pause is already pending for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " state="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1242
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1241
    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->shouldSleepActivities()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1247
    invoke-virtual {p0, v1, p3}, Lcom/android/server/wm/ActivityStack;->completePauseLocked(ZLcom/android/server/wm/ActivityRecord;)V

    .line 1252
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_3

    .line 1253
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v0, v3, v4, v5}, Lcom/android/server/wm/OpWmInjector;->doUpdateProcessDuration(Ljava/lang/String;Ljava/lang/Long;Landroid/os/Handler;Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 1259
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mOnePlusActivityStack:Lcom/android/server/am/OnePlusSceneUtil$OnePlusActivityStack;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/server/am/OnePlusSceneUtil$OnePlusActivityStack;->startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;Z)Z

    .line 1261
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1263
    .local v0, "prev":Lcom/android/server/wm/ActivityRecord;
    if-nez v0, :cond_5

    .line 1264
    if-nez p3, :cond_4

    .line 1265
    const-string v3, "Trying to pause when nothing is resumed"

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    .line 1268
    :cond_4
    return v1

    .line 1273
    :cond_5
    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v3, :cond_6

    .line 1274
    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/wm/WindowProcessController;->lastFgTime:J

    .line 1279
    :cond_6
    if-ne v0, p3, :cond_7

    .line 1280
    const-string v3, "Trying to pause activity that is in process of being resumed"

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    return v1

    .line 1284
    :cond_7
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Moving to PAUSING: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1285
    :cond_8
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v3, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start pausing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    :cond_9
    :goto_2
    sget-object v3, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/android/server/wm/ActivityRecord;->callServiceTrackeronActivityStatechange(Lcom/android/server/wm/ActivityStack$ActivityState;Z)V

    .line 1288
    sget-object v3, Lcom/android/server/wm/ActivityStack;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    if-eqz v3, :cond_a

    .line 1289
    iget-object v5, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v6, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/internal/app/ActivityTrigger;->activityPauseTrigger(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;)V

    .line 1292
    :cond_a
    sget-object v3, Lcom/android/server/wm/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/wm/ActivityPluginDelegate;

    if-eqz v3, :cond_c

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v3

    if-eqz v3, :cond_c

    .line 1293
    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1294
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v5

    if-ne v5, v4, :cond_b

    move v5, v4

    goto :goto_3

    :cond_b
    move v5, v1

    :goto_3
    invoke-static {v3, v5, v4}, Lcom/android/server/wm/ActivityPluginDelegate;->activitySuspendNotification(Ljava/lang/String;ZZ)V

    .line 1296
    :cond_c
    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1297
    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1298
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isNoHistory()Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_d

    move-object v3, v0

    goto :goto_4

    :cond_d
    move-object v3, v5

    :goto_4
    iput-object v3, p0, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1299
    sget-object v3, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v6, "startPausingLocked"

    invoke-virtual {v0, v3, v6}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 1300
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->touchActiveTime()V

    .line 1301
    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityStack;->clearLaunchTime(Lcom/android/server/wm/ActivityRecord;)V

    .line 1303
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->updateCpuStats()V

    .line 1305
    const/4 v3, 0x0

    .line 1306
    .local v3, "pauseImmediately":Z
    if-eqz p3, :cond_f

    iget-object v6, p3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v6, v6, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v6, v6, 0x4000

    if-eqz v6, :cond_f

    .line 1311
    if-eqz v0, :cond_e

    const-string v6, "shouldResumeWhilePausing"

    invoke-virtual {v0, v6, p1}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_e

    move v6, v4

    goto :goto_5

    :cond_e
    move v6, v1

    .line 1313
    .local v6, "lastResumedCanPip":Z
    :goto_5
    if-nez v6, :cond_f

    .line 1314
    const/4 v3, 0x1

    .line 1318
    .end local v6    # "lastResumedCanPip":Z
    :cond_f
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 1319
    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v6, :cond_10

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Enqueueing pending pause: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    :cond_10
    :try_start_0
    iget v6, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    iget-object v8, v0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "userLeaving="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/server/wm/EventLogTags;->writeWmPauseActivity(IILjava/lang/String;Ljava/lang/String;)V

    .line 1324
    iget-object v6, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    iget-boolean v9, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    iget v10, v0, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    .line 1325
    invoke-static {v9, p1, v10, v3}, Landroid/app/servertransaction/PauseActivityItem;->obtain(ZZIZ)Landroid/app/servertransaction/PauseActivityItem;

    move-result-object v9

    .line 1324
    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ActivityLifecycleItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 1327
    :catch_0
    move-exception v6

    .line 1329
    .local v6, "e":Ljava/lang/Exception;
    const-string v7, "Exception thrown during pause"

    invoke-static {v2, v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1330
    iput-object v5, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1331
    iput-object v5, p0, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1332
    iput-object v5, p0, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1333
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_6
    goto :goto_7

    .line 1335
    :cond_11
    iput-object v5, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1336
    iput-object v5, p0, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1337
    iput-object v5, p0, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1342
    :goto_7
    if-nez p2, :cond_12

    iget-object v5, p0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->isSleepingOrShuttingDownLocked()Z

    move-result v5

    if-nez v5, :cond_12

    .line 1343
    iget-object v5, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStackSupervisor;->acquireLaunchWakelock()V

    .line 1346
    :cond_12
    iget-object v5, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v5, :cond_17

    .line 1351
    if-nez p2, :cond_13

    .line 1352
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->pauseKeyDispatchingLocked()V

    goto :goto_8

    .line 1353
    :cond_13
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v5, :cond_14

    .line 1354
    const-string v5, "Key dispatch not paused for screen off"

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    :cond_14
    :goto_8
    sget-boolean v2, Lcom/android/server/wm/ActivityStack;->IS_SUPPORT_COLOR_ADS:Z

    if-eqz v2, :cond_15

    .line 1359
    invoke-static {v0, p3}, Lcom/android/server/OPAppSwitchManagerServiceInjector;->handleActivityPaused(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    .line 1363
    :cond_15
    if-eqz v3, :cond_16

    .line 1366
    invoke-virtual {p0, v1, p3}, Lcom/android/server/wm/ActivityStack;->completePauseLocked(ZLcom/android/server/wm/ActivityRecord;)V

    .line 1367
    return v1

    .line 1370
    :cond_16
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->schedulePauseTimeout()V

    .line 1371
    return v4

    .line 1377
    :cond_17
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v4, :cond_18

    const-string v4, "Activity not running, resuming next."

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    :cond_18
    if-nez p3, :cond_19

    .line 1379
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    .line 1381
    :cond_19
    return v1
.end method

.method public bridge synthetic supportsSplitScreenWindowingMode()Z
    .locals 1

    .line 211
    invoke-super {p0}, Lcom/android/server/wm/Task;->supportsSplitScreenWindowingMode()Z

    move-result v0

    return v0
.end method

.method switchUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 1098
    iget v0, p0, Lcom/android/server/wm/ActivityStack;->mCurrentUser:I

    if-ne v0, p1, :cond_0

    .line 1099
    return-void

    .line 1101
    :cond_0
    iput p1, p0, Lcom/android/server/wm/ActivityStack;->mCurrentUser:I

    .line 1103
    invoke-super {p0, p1}, Lcom/android/server/wm/Task;->switchUser(I)V

    .line 1104
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isLeafTask()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->showToCurrentUser()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1105
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 1107
    :cond_1
    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 211
    invoke-super {p0}, Lcom/android/server/wm/Task;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method topActivityOccludesKeyguard()Z
    .locals 1

    .line 1565
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStack;->mTopActivityOccludesKeyguard:Z

    return v0
.end method

.method unhandledBackLocked()V
    .locals 3

    .line 3110
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3111
    .local v0, "topActivity":Lcom/android/server/wm/ActivityRecord;
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Performing unhandledBack(): top activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3113
    :cond_0
    if-eqz v0, :cond_1

    .line 3114
    const/4 v1, 0x1

    const-string v2, "unhandled-back"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 3116
    :cond_1
    return-void
.end method

.method willActivityBeVisible(Landroid/os/IBinder;)Z
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 3095
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3096
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3097
    return v1

    .line 3101
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityStack;->getOccludingActivityAbove(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 3102
    .local v2, "occludingActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_1

    return v1

    .line 3104
    :cond_1
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "willActivityBeVisible: Returning false, would have returned true for r="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3106
    :cond_2
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method
