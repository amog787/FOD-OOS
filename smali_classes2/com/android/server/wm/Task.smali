.class Lcom/android/server/wm/Task;
.super Lcom/android/server/wm/WindowContainer;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/Task$TaskActivitiesReport;,
        Lcom/android/server/wm/Task$FindRootHelper;,
        Lcom/android/server/wm/Task$ReparentMoveStackMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/WindowContainer<",
        "Lcom/android/server/wm/WindowContainer;",
        ">;"
    }
.end annotation


# static fields
.field private static final ATTR_AFFINITY:Ljava/lang/String; = "affinity"

.field private static final ATTR_ASKEDCOMPATMODE:Ljava/lang/String; = "asked_compat_mode"

.field private static final ATTR_AUTOREMOVERECENTS:Ljava/lang/String; = "auto_remove_recents"

.field private static final ATTR_CALLING_FEATURE_ID:Ljava/lang/String; = "calling_feature_id"

.field private static final ATTR_CALLING_PACKAGE:Ljava/lang/String; = "calling_package"

.field private static final ATTR_CALLING_UID:Ljava/lang/String; = "calling_uid"

.field private static final ATTR_EFFECTIVE_UID:Ljava/lang/String; = "effective_uid"

.field private static final ATTR_LASTDESCRIPTION:Ljava/lang/String; = "last_description"

.field private static final ATTR_LASTTIMEMOVED:Ljava/lang/String; = "last_time_moved"

.field private static final ATTR_MIN_HEIGHT:Ljava/lang/String; = "min_height"

.field private static final ATTR_MIN_WIDTH:Ljava/lang/String; = "min_width"

.field private static final ATTR_NEVERRELINQUISH:Ljava/lang/String; = "never_relinquish_identity"

.field private static final ATTR_NEXT_AFFILIATION:Ljava/lang/String; = "next_affiliation"

.field private static final ATTR_NON_FULLSCREEN_BOUNDS:Ljava/lang/String; = "non_fullscreen_bounds"

.field private static final ATTR_ORIGACTIVITY:Ljava/lang/String; = "orig_activity"

.field private static final ATTR_PERSIST_TASK_VERSION:Ljava/lang/String; = "persist_task_version"

.field private static final ATTR_PREV_AFFILIATION:Ljava/lang/String; = "prev_affiliation"

.field private static final ATTR_REALACTIVITY:Ljava/lang/String; = "real_activity"

.field private static final ATTR_REALACTIVITY_SUSPENDED:Ljava/lang/String; = "real_activity_suspended"

.field private static final ATTR_RESIZE_MODE:Ljava/lang/String; = "resize_mode"

.field private static final ATTR_ROOTHASRESET:Ljava/lang/String; = "root_has_reset"

.field private static final ATTR_ROOT_AFFINITY:Ljava/lang/String; = "root_affinity"

.field private static final ATTR_SUPPORTS_PICTURE_IN_PICTURE:Ljava/lang/String; = "supports_picture_in_picture"

.field private static final ATTR_TASKID:Ljava/lang/String; = "task_id"

.field private static final ATTR_TASKTYPE:Ljava/lang/String; = "task_type"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ATTR_TASK_AFFILIATION:Ljava/lang/String; = "task_affiliation"

.field private static final ATTR_TASK_AFFILIATION_COLOR:Ljava/lang/String; = "task_affiliation_color"

.field private static final ATTR_USERID:Ljava/lang/String; = "user_id"

.field private static final ATTR_USER_SETUP_COMPLETE:Ljava/lang/String; = "user_setup_complete"

.field private static final ATTR_WINDOW_LAYOUT_AFFINITY:Ljava/lang/String; = "window_layout_affinity"

.field static final FLAG_FORCE_HIDDEN_FOR_PINNED_TASK:I = 0x1

.field static final FLAG_FORCE_HIDDEN_FOR_TASK_ORG:I = 0x2

.field static final INVALID_MIN_SIZE:I = -0x1

.field static final LOCK_TASK_AUTH_DONT_LOCK:I = 0x0

.field static final LOCK_TASK_AUTH_LAUNCHABLE:I = 0x2

.field static final LOCK_TASK_AUTH_LAUNCHABLE_PRIV:I = 0x4

.field static final LOCK_TASK_AUTH_PINNABLE:I = 0x1

.field static final LOCK_TASK_AUTH_WHITELISTED:I = 0x3

.field static final PERSIST_TASK_VERSION:I = 0x1

.field static final REPARENT_KEEP_STACK_AT_FRONT:I = 0x1

.field static final REPARENT_LEAVE_STACK_IN_PLACE:I = 0x2

.field static final REPARENT_MOVE_STACK_TO_FRONT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final TAG_ADD_REMOVE:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_AFFINITYINTENT:Ljava/lang/String; = "affinity_intent"

.field private static final TAG_INTENT:Ljava/lang/String; = "intent"

.field private static final TAG_LOCKTASK:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_RECENTS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_TASKS:Ljava/lang/String; = "ActivityTaskManager"

.field private static sTmpException:Ljava/lang/Exception;


# instance fields
.field affinity:Ljava/lang/String;

.field affinityIntent:Landroid/content/Intent;

.field askedCompatMode:Z

.field autoRemoveRecents:Z

.field effectiveUid:I

.field inRecents:Z

.field intent:Landroid/content/Intent;

.field isAvailable:Z

.field isPersistable:Z

.field lastActiveTime:J

.field lastDescription:Ljava/lang/CharSequence;

.field mAffiliatedTaskColor:I

.field mAffiliatedTaskId:I

.field public mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field mCallingFeatureId:Ljava/lang/String;

.field mCallingPackage:Ljava/lang/String;

.field mCallingUid:I

.field private mCanAffectSystemUiFlags:Z

.field mCreatedByOrganizer:Z

.field private mDimmer:Lcom/android/server/wm/Dimmer;

.field private mDragResizeMode:I

.field private mDragResizing:Z

.field final mExitingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mFindRootHelper:Lcom/android/server/wm/Task$FindRootHelper;

.field private mForceHiddenFlags:I

.field private mForceShowForAllUsers:Z

.field private mHasBeenVisible:Z

.field mInRemoveTask:Z

.field mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

.field mLastNonFullscreenBounds:Landroid/graphics/Rect;

.field mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

.field mLastReportedRequestedOrientation:I

.field private mLastRotationDisplayId:I

.field private final mLastSurfaceSize:Landroid/graphics/Point;

.field private mLastTaskOrganizerWindowingMode:I

.field mLastTimeMoved:J

.field mLayerRank:I

.field mLockTaskAuth:I

.field mLockTaskUid:I

.field mMainWindowSizeChangeTask:Lcom/android/server/wm/Task;

.field mMainWindowSizeChangeTransaction:Landroid/view/SurfaceControl$Transaction;

.field mMinHeight:I

.field mMinWidth:I

.field private mNeverRelinquishIdentity:Z

.field mNextAffiliate:Lcom/android/server/wm/Task;

.field mNextAffiliateTaskId:I

.field mPausingActivity:Lcom/android/server/wm/ActivityRecord;

.field final mPreparedFrozenBounds:Landroid/graphics/Rect;

.field final mPreparedFrozenMergedConfig:Landroid/content/res/Configuration;

.field private mPreserveNonFloatingState:Z

.field mPrevAffiliate:Lcom/android/server/wm/Task;

.field mPrevAffiliateTaskId:I

.field mPrevDisplayId:I

.field mResizeMode:I

.field public mResumedActivity:Lcom/android/server/wm/ActivityRecord;

.field final mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

.field private mReuseTask:Z

.field private mRootProcess:Lcom/android/server/wm/WindowProcessController;

.field final mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field private mRotation:I

.field private mShadowRadius:F

.field final mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

.field mSupportsPictureInPicture:Z

.field mTaskAppearedSent:Z

.field private mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

.field final mTaskId:I

.field mTaskOrganizer:Landroid/window/ITaskOrganizer;

.field private final mTmpBounds:Landroid/graphics/Rect;

.field private mTmpConfig:Landroid/content/res/Configuration;

.field private final mTmpDimBoundsRect:Landroid/graphics/Rect;

.field private final mTmpFullBounds:Landroid/graphics/Rect;

.field private final mTmpInsets:Landroid/graphics/Rect;

.field private final mTmpNonDecorBounds:Landroid/graphics/Rect;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTmpRect2:Landroid/graphics/Rect;

.field private final mTmpStableBounds:Landroid/graphics/Rect;

.field mUserId:I

.field mUserSetupComplete:Z

.field mWindowLayoutAffinity:Ljava/lang/String;

.field maxRecents:I

.field origActivity:Landroid/content/ComponentName;

.field realActivity:Landroid/content/ComponentName;

.field realActivitySuspended:Z

.field rootAffinity:Ljava/lang/String;

.field rootWasReset:Z

.field stringName:Ljava/lang/String;

.field voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field voiceSession:Landroid/service/voice/IVoiceInteractionSession;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;JZLandroid/app/ActivityManager$TaskDescription;IIIIILjava/lang/String;Ljava/lang/String;IZZZIILandroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Lcom/android/server/wm/ActivityStack;)V
    .locals 16
    .param p1, "atmService"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "_taskId"    # I
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

    .line 570
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p26

    move-object/from16 v5, p32

    iget-object v6, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v6}, Lcom/android/server/wm/WindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 223
    const/4 v6, 0x0

    iput v6, v0, Lcom/android/server/wm/Task;->mShadowRadius:F

    .line 283
    const/4 v6, 0x1

    iput v6, v0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    .line 285
    const/4 v7, -0x1

    iput v7, v0, Lcom/android/server/wm/Task;->mLockTaskUid:I

    .line 293
    const/4 v8, 0x0

    iput-boolean v8, v0, Lcom/android/server/wm/Task;->isPersistable:Z

    .line 302
    iput-boolean v6, v0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    .line 306
    iput-boolean v8, v0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 313
    iput v7, v0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    .line 315
    iput v7, v0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    .line 322
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, v0, Lcom/android/server/wm/Task;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 323
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, v0, Lcom/android/server/wm/Task;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    .line 324
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, v0, Lcom/android/server/wm/Task;->mTmpBounds:Landroid/graphics/Rect;

    .line 325
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, v0, Lcom/android/server/wm/Task;->mTmpInsets:Landroid/graphics/Rect;

    .line 326
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    .line 331
    const/4 v9, 0x0

    iput-object v9, v0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 339
    iput v7, v0, Lcom/android/server/wm/Task;->mLayerRank:I

    .line 342
    new-instance v10, Landroid/content/res/Configuration;

    invoke-direct {v10}, Landroid/content/res/Configuration;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mTmpConfig:Landroid/content/res/Configuration;

    .line 345
    new-instance v10, Lcom/android/server/wm/Task$TaskActivitiesReport;

    invoke-direct {v10}, Lcom/android/server/wm/Task$TaskActivitiesReport;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    .line 363
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mPreparedFrozenBounds:Landroid/graphics/Rect;

    .line 364
    new-instance v10, Landroid/content/res/Configuration;

    invoke-direct {v10}, Landroid/content/res/Configuration;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mPreparedFrozenMergedConfig:Landroid/content/res/Configuration;

    .line 367
    iput v7, v0, Lcom/android/server/wm/Task;->mPrevDisplayId:I

    .line 370
    iput v7, v0, Lcom/android/server/wm/Task;->mLastRotationDisplayId:I

    .line 385
    iput v7, v0, Lcom/android/server/wm/Task;->mLastReportedRequestedOrientation:I

    .line 388
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    .line 390
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    .line 412
    iput-boolean v8, v0, Lcom/android/server/wm/Task;->mPreserveNonFloatingState:Z

    .line 414
    new-instance v10, Lcom/android/server/wm/Dimmer;

    invoke-direct {v10, v0}, Lcom/android/server/wm/Dimmer;-><init>(Lcom/android/server/wm/WindowContainer;)V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    .line 415
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    .line 416
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mLastSurfaceSize:Landroid/graphics/Point;

    .line 419
    iput-boolean v6, v0, Lcom/android/server/wm/Task;->mCanAffectSystemUiFlags:Z

    .line 424
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mExitingActivities:Ljava/util/ArrayList;

    .line 430
    iput-object v9, v0, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 437
    iput-object v9, v0, Lcom/android/server/wm/Task;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 444
    iput-object v9, v0, Lcom/android/server/wm/Task;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    .line 450
    iput-object v9, v0, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 462
    iput v8, v0, Lcom/android/server/wm/Task;->mForceHiddenFlags:I

    .line 478
    new-instance v8, Lcom/android/server/wm/Task$FindRootHelper;

    invoke-direct {v8, v0, v9}, Lcom/android/server/wm/Task$FindRootHelper;-><init>(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task$1;)V

    iput-object v8, v0, Lcom/android/server/wm/Task;->mFindRootHelper:Lcom/android/server/wm/Task$FindRootHelper;

    .line 520
    iput v7, v0, Lcom/android/server/wm/Task;->mLastTaskOrganizerWindowingMode:I

    .line 572
    if-eqz p35, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v7

    :cond_0
    invoke-static {v2, v7}, Lcom/android/server/wm/EventLogTags;->writeWmTaskCreated(II)V

    .line 573
    iput-object v1, v0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 574
    iget-object v7, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iput-object v7, v0, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 575
    iget-object v7, v0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iput-object v7, v0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 576
    iput v2, v0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 577
    move/from16 v7, p12

    iput v7, v0, Lcom/android/server/wm/Task;->mUserId:I

    .line 578
    iput v4, v0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 579
    move/from16 v8, p27

    iput-boolean v8, v0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    .line 580
    move-object/from16 v9, p18

    iput-object v9, v0, Lcom/android/server/wm/Task;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 582
    const/4 v10, -0x2

    invoke-virtual {v0, v10}, Lcom/android/server/wm/Task;->setOrientation(I)V

    .line 583
    new-instance v10, Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-direct {v10, v0}, Lcom/android/server/wm/WindowContainer$RemoteToken;-><init>(Lcom/android/server/wm/WindowContainer;)V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    .line 584
    move-object/from16 v10, p4

    iput-object v10, v0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    .line 585
    move-object/from16 v11, p5

    iput-object v11, v0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    .line 586
    move-object/from16 v12, p6

    iput-object v12, v0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    .line 587
    move-object/from16 v13, p33

    iput-object v13, v0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 588
    move-object/from16 v14, p34

    iput-object v14, v0, Lcom/android/server/wm/Task;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 589
    move-object/from16 v15, p7

    iput-object v15, v0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 590
    move/from16 v6, p28

    iput-boolean v6, v0, Lcom/android/server/wm/Task;->realActivitySuspended:Z

    .line 591
    move-object/from16 v1, p8

    iput-object v1, v0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    .line 592
    move/from16 v1, p9

    iput-boolean v1, v0, Lcom/android/server/wm/Task;->rootWasReset:Z

    .line 593
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/Task;->isAvailable:Z

    .line 594
    move/from16 v1, p10

    iput-boolean v1, v0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    .line 595
    move/from16 v1, p11

    iput-boolean v1, v0, Lcom/android/server/wm/Task;->askedCompatMode:Z

    .line 596
    move/from16 v1, p29

    iput-boolean v1, v0, Lcom/android/server/wm/Task;->mUserSetupComplete:Z

    .line 597
    move/from16 v1, p13

    iput v1, v0, Lcom/android/server/wm/Task;->effectiveUid:I

    .line 598
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->touchActiveTime()V

    .line 599
    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/server/wm/Task;->lastDescription:Ljava/lang/CharSequence;

    .line 600
    move-wide/from16 v6, p15

    iput-wide v6, v0, Lcom/android/server/wm/Task;->mLastTimeMoved:J

    .line 601
    move/from16 v1, p17

    iput-boolean v1, v0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    .line 602
    move/from16 v1, p19

    iput v1, v0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    .line 603
    move/from16 v1, p22

    iput v1, v0, Lcom/android/server/wm/Task;->mAffiliatedTaskColor:I

    .line 604
    move/from16 v1, p20

    iput v1, v0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    .line 605
    move/from16 v1, p21

    iput v1, v0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    .line 606
    move/from16 v1, p23

    iput v1, v0, Lcom/android/server/wm/Task;->mCallingUid:I

    .line 607
    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    .line 608
    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    .line 609
    iput v4, v0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 612
    iget-object v1, v0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-static {v4, v1}, Lcom/android/server/wm/OpQuickReplyInjector;->shouldForceResizeTask(ILandroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 613
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 616
    :cond_1
    if-eqz v5, :cond_2

    .line 617
    invoke-direct {v0, v3, v5}, Lcom/android/server/wm/Task;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 618
    invoke-virtual {v0, v5}, Lcom/android/server/wm/Task;->setMinDimensions(Landroid/content/pm/ActivityInfo;)V

    move/from16 v1, p31

    goto :goto_0

    .line 620
    :cond_2
    iput-object v3, v0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 621
    move/from16 v1, p30

    iput v1, v0, Lcom/android/server/wm/Task;->mMinWidth:I

    .line 622
    move/from16 v1, p31

    iput v1, v0, Lcom/android/server/wm/Task;->mMinHeight:I

    .line 624
    :goto_0
    iget-object v1, v0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v1

    iget-object v3, v0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskCreated(ILandroid/content/ComponentName;)V

    .line 625
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/app/ActivityManager$TaskDescription;Lcom/android/server/wm/ActivityStack;)V
    .locals 36
    .param p1, "atmService"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "_taskId"    # I
    .param p3, "info"    # Landroid/content/pm/ActivityInfo;
    .param p4, "_intent"    # Landroid/content/Intent;
    .param p5, "_voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p6, "_voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p7, "_taskDescription"    # Landroid/app/ActivityManager$TaskDescription;
    .param p8, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 544
    move-object/from16 v15, p3

    iget-object v0, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 547
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 548
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 550
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

    .line 553
    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v27

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, -0x1

    const/16 v31, -0x1

    .line 544
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

    invoke-direct/range {v0 .. v35}, Lcom/android/server/wm/Task;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;JZLandroid/app/ActivityManager$TaskDescription;IIIIILjava/lang/String;Ljava/lang/String;IZZZIILandroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Lcom/android/server/wm/ActivityStack;)V

    .line 556
    return-void
.end method

.method private autoRemoveFromRecents()Z
    .locals 1

    .line 1555
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getHasBeenVisible()Z

    move-result v0

    if-nez v0, :cond_0

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

.method private calculateInsetFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;)V
    .locals 7
    .param p1, "outNonDecorBounds"    # Landroid/graphics/Rect;
    .param p2, "outStableBounds"    # Landroid/graphics/Rect;
    .param p3, "bounds"    # Landroid/graphics/Rect;
    .param p4, "displayInfo"    # Landroid/view/DisplayInfo;

    .line 2246
    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2247
    invoke-virtual {p2, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2248
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2251
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    .line 2252
    .local v0, "policy":Lcom/android/server/wm/DisplayPolicy;
    if-nez v0, :cond_1

    .line 2253
    return-void

    .line 2255
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpBounds:Landroid/graphics/Rect;

    iget v2, p4, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, p4, Landroid/view/DisplayInfo;->logicalHeight:I

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2257
    iget v2, p4, Landroid/view/DisplayInfo;->rotation:I

    iget v3, p4, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v4, p4, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v5, p4, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iget-object v6, p0, Lcom/android/server/wm/Task;->mTmpInsets:Landroid/graphics/Rect;

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 2259
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpInsets:Landroid/graphics/Rect;

    invoke-static {p1, v1, v2}, Lcom/android/server/wm/Task;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2261
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpInsets:Landroid/graphics/Rect;

    iget v2, p4, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayPolicy;->convertNonDecorInsetsToStableInsets(Landroid/graphics/Rect;I)V

    .line 2262
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpInsets:Landroid/graphics/Rect;

    invoke-static {p2, v1, v2}, Lcom/android/server/wm/Task;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2263
    return-void

    .line 2249
    .end local v0    # "policy":Lcom/android/server/wm/DisplayPolicy;
    :cond_2
    :goto_0
    return-void
.end method

.method private canResizeToBounds(Landroid/graphics/Rect;)Z
    .locals 6
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 1737
    const/4 v0, 0x1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_5

    .line 1741
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/4 v3, 0x0

    if-le v1, v2, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v3

    .line 1742
    .local v1, "landscape":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 1743
    .local v2, "configBounds":Landroid/graphics/Rect;
    iget v4, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_5

    .line 1744
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1745
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v4, v5, :cond_2

    move v4, v0

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    if-ne v1, v4, :cond_3

    goto :goto_2

    :cond_3
    move v0, v3

    goto :goto_3

    :cond_4
    :goto_2
    nop

    .line 1744
    :goto_3
    return v0

    .line 1747
    :cond_5
    const/4 v5, 0x6

    if-ne v4, v5, :cond_6

    if-nez v1, :cond_7

    :cond_6
    iget v4, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_8

    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    move v0, v3

    :cond_8
    :goto_4
    return v0

    .line 1739
    .end local v1    # "landscape":Z
    .end local v2    # "configBounds":Landroid/graphics/Rect;
    :cond_9
    :goto_5
    return v0
.end method

.method private canSpecifyOrientation()Z
    .locals 4

    .line 3489
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    .line 3490
    .local v0, "windowingMode":I
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v1

    .line 3491
    .local v1, "activityType":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method private cleanUpResourcesForDestroy(Lcom/android/server/wm/ConfigurationContainer;)V
    .locals 4
    .param p1, "oldParent"    # Lcom/android/server/wm/ConfigurationContainer;

    .line 645
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    return-void

    .line 649
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 651
    move-object v0, p1

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/Task;->saveLaunchingStateIfNeeded(Lcom/android/server/wm/DisplayContent;)V

    .line 655
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 656
    .local v0, "isVoiceSession":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 658
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v2, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    iget v3, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {v1, v2, v3}, Landroid/service/voice/IVoiceInteractionSession;->taskFinished(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 660
    goto :goto_1

    .line 659
    :catch_0
    move-exception v1

    .line 662
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/server/wm/Task;->autoRemoveFromRecents()Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz v0, :cond_5

    .line 665
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/RecentTasks;->remove(Lcom/android/server/wm/Task;)V

    .line 668
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->removeIfPossible()V

    .line 669
    return-void
.end method

.method private closeRecentsChain()V
    .locals 2

    .line 1273
    iget-object v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_0

    .line 1274
    iget-object v1, p0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    .line 1276
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_1

    .line 1277
    iget-object v1, p0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setPrevAffiliate(Lcom/android/server/wm/Task;)V

    .line 1279
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setPrevAffiliate(Lcom/android/server/wm/Task;)V

    .line 1280
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    .line 1281
    return-void
.end method

.method private computeMaxUserPosition(I)I
    .locals 2
    .param p1, "maxPosition"    # I

    .line 2844
    :goto_0
    if-lez p1, :cond_1

    .line 2845
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    .line 2846
    .local v0, "child":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->showToCurrentUser()Z

    move-result v1

    .line 2847
    .local v1, "canShow":Z
    if-nez v1, :cond_0

    .line 2848
    goto :goto_1

    .line 2850
    :cond_0
    nop

    .end local v0    # "child":Lcom/android/server/wm/WindowContainer;
    .end local v1    # "canShow":Z
    add-int/lit8 p1, p1, -0x1

    .line 2851
    goto :goto_0

    .line 2852
    :cond_1
    :goto_1
    return p1
.end method

.method private computeMinUserPosition(II)I
    .locals 2
    .param p1, "minPosition"    # I
    .param p2, "size"    # I

    .line 2826
    :goto_0
    if-ge p1, p2, :cond_1

    .line 2827
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    .line 2828
    .local v0, "child":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->showToCurrentUser()Z

    move-result v1

    .line 2829
    .local v1, "canShow":Z
    if-eqz v1, :cond_0

    .line 2830
    goto :goto_1

    .line 2832
    :cond_0
    nop

    .end local v0    # "child":Lcom/android/server/wm/WindowContainer;
    .end local v1    # "canShow":Z
    add-int/lit8 p1, p1, 0x1

    .line 2833
    goto :goto_0

    .line 2834
    :cond_1
    :goto_1
    return p1
.end method

.method static computeScreenLayoutOverride(III)I
    .locals 3
    .param p0, "sourceScreenLayout"    # I
    .param p1, "screenWidthDp"    # I
    .param p2, "screenHeightDp"    # I

    .line 2468
    and-int/lit8 p0, p0, 0x3f

    .line 2470
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2471
    .local v0, "longSize":I
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2472
    .local v1, "shortSize":I
    invoke-static {p0, v0, v1}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v2

    return v2
.end method

.method private static finishActivityAbove(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 3
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "boundaryActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 1630
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1635
    :cond_0
    sget-boolean v1, Lcom/android/server/wm/OpAppLockerInjector;->IS_APP_LOCKER_ENABLED:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1636
    const-string v2, "com.oneplus.applocker"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1637
    invoke-static {p1}, Lcom/android/server/wm/OpAppLockerInjector;->isAppLocked(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1638
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppLocker: finishActivityAbove skip for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    return v0

    .line 1643
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 1644
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityRecord;->takeOptionsLocked(Z)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 1645
    .local v0, "opts":Landroid/app/ActivityOptions;
    if-eqz v0, :cond_2

    .line 1647
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 1649
    :cond_2
    const-string v2, "clear-task-stack"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 1652
    .end local v0    # "opts":Landroid/app/ActivityOptions;
    :cond_3
    return v1
.end method

.method private static fitWithinBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .locals 6
    .param p0, "bounds"    # Landroid/graphics/Rect;
    .param p1, "stackBounds"    # Landroid/graphics/Rect;
    .param p2, "overlapPxX"    # I
    .param p3, "overlapPxY"    # I

    .line 2178
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2184
    :cond_0
    const/4 v0, 0x0

    .line 2186
    .local v0, "horizontalDiff":I
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2187
    .local v1, "overlapLR":I
    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    if-ge v2, v3, :cond_1

    .line 2188
    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    sub-int v0, v1, v2

    goto :goto_0

    .line 2189
    :cond_1
    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v1

    if-le v2, v3, :cond_2

    .line 2190
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    sub-int v2, v1, v2

    neg-int v0, v2

    .line 2192
    :cond_2
    :goto_0
    const/4 v2, 0x0

    .line 2193
    .local v2, "verticalDiff":I
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2194
    .local v3, "overlapTB":I
    iget v4, p0, Landroid/graphics/Rect;->bottom:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v3

    if-ge v4, v5, :cond_3

    .line 2195
    iget v4, p0, Landroid/graphics/Rect;->bottom:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    goto :goto_1

    .line 2196
    :cond_3
    iget v4, p0, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v3

    if-le v4, v5, :cond_4

    .line 2197
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v4, v3, v4

    neg-int v2, v4

    .line 2199
    :cond_4
    :goto_1
    invoke-virtual {p0, v0, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 2200
    return-void

    .line 2179
    .end local v0    # "horizontalDiff":I
    .end local v1    # "overlapLR":I
    .end local v2    # "verticalDiff":I
    .end local v3    # "overlapTB":I
    :cond_5
    :goto_2
    return-void
.end method

.method private getAdjustedChildPosition(Lcom/android/server/wm/WindowContainer;I)I
    .locals 6
    .param p1, "wc"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "suggestedPosition"    # I

    .line 2856
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->showToCurrentUser()Z

    move-result v0

    .line 2858
    .local v0, "canShowChild":Z
    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    .line 2861
    .local v1, "size":I
    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/Task;->computeMinUserPosition(II)I

    move-result v2

    .line 2862
    .local v2, "minPosition":I
    :cond_0
    if-eqz v0, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v1, -0x1

    invoke-direct {p0, v3}, Lcom/android/server/wm/Task;->computeMaxUserPosition(I)I

    move-result v3

    .line 2865
    .local v3, "maxPosition":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isAlwaysOnTop()Z

    move-result v4

    if-nez v4, :cond_3

    .line 2868
    :goto_1
    if-le v3, v2, :cond_3

    .line 2869
    iget-object v4, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isAlwaysOnTop()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    .line 2870
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2875
    :cond_3
    :goto_2
    const/high16 v4, -0x80000000

    if-ne p2, v4, :cond_4

    if-nez v2, :cond_4

    .line 2876
    return v4

    .line 2877
    :cond_4
    const v4, 0x7fffffff

    if-ne p2, v4, :cond_5

    add-int/lit8 v5, v1, -0x1

    if-lt v3, v5, :cond_5

    .line 2878
    return v4

    .line 2881
    :cond_5
    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    return v4
.end method

.method private static getMaxVisibleBounds(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;[Z)V
    .locals 3
    .param p0, "token"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "out"    # Landroid/graphics/Rect;
    .param p2, "foundTop"    # [Z

    .line 3094
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mIsExiting:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isClientVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 3097
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 3098
    .local v0, "win":Lcom/android/server/wm/WindowState;
    if-nez v0, :cond_1

    .line 3099
    return-void

    .line 3101
    :cond_1
    const/4 v1, 0x0

    aget-boolean v2, p2, v1

    if-nez v2, :cond_2

    .line 3102
    const/4 v2, 0x1

    aput-boolean v2, p2, v1

    .line 3103
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 3106
    :cond_2
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowState;->getMaxVisibleBounds(Landroid/graphics/Rect;)V

    .line 3107
    return-void

    .line 3095
    .end local v0    # "win":Lcom/android/server/wm/WindowState;
    :cond_3
    :goto_0
    return-void
.end method

.method private getNextFocusableTask(Z)Lcom/android/server/wm/Task;
    .locals 3
    .param p1, "allowFocusSelf"    # Z

    .line 2748
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 2749
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    if-nez v0, :cond_0

    .line 2750
    const/4 v1, 0x0

    return-object v1

    .line 2753
    :cond_0
    new-instance v1, Lcom/android/server/wm/-$$Lambda$Task$kW0PT0lvgYRkZBZvY3NzGSDUDQQ;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/-$$Lambda$Task$kW0PT0lvgYRkZBZvY3NzGSDUDQQ;-><init>(Lcom/android/server/wm/Task;Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v1

    .line 2755
    .local v1, "focusableTask":Lcom/android/server/wm/Task;
    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2756
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-direct {v2, p1}, Lcom/android/server/wm/Task;->getNextFocusableTask(Z)Lcom/android/server/wm/Task;

    move-result-object v2

    return-object v2

    .line 2758
    :cond_1
    return-object v1
.end method

.method private getNumRunningActivities(Lcom/android/server/wm/Task$TaskActivitiesReport;)V
    .locals 0
    .param p1, "reportOut"    # Lcom/android/server/wm/Task$TaskActivitiesReport;

    .line 1381
    invoke-virtual {p1}, Lcom/android/server/wm/Task$TaskActivitiesReport;->reset()V

    .line 1382
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 1383
    return-void
.end method

.method private getShadowRadius(Z)F
    .locals 3
    .param p1, "taskIsFocused"    # Z

    .line 4638
    const/4 v0, 0x0

    .line 4641
    .local v0, "elevation":I
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4642
    const/4 v0, 0x5

    goto :goto_1

    .line 4643
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4644
    if-eqz p1, :cond_1

    .line 4645
    const/16 v1, 0x14

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    :goto_0
    move v0, v1

    .line 4652
    :goto_1
    invoke-direct {p0}, Lcom/android/server/wm/Task;->hasVisibleChildren()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4653
    return v2

    .line 4656
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v1

    int-to-float v1, v1

    return v1

    .line 4648
    :cond_3
    return v2
.end method

.method private hasVisibleChildren()Z
    .locals 2

    .line 4627
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isForceHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4631
    :cond_0
    sget-object v0, Lcom/android/server/wm/-$$Lambda$l6AtA6HpQmFuEYd_DP955eyY_WI;->INSTANCE:Lcom/android/server/wm/-$$Lambda$l6AtA6HpQmFuEYd_DP955eyY_WI;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 4628
    :cond_2
    :goto_0
    return v1
.end method

.method private initializeChangeTransition(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "startBounds"    # Landroid/graphics/Rect;

    .line 2020
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZIZ)V

    .line 2022
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2024
    iget-object v0, p0, Lcom/android/server/wm/Task;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/SurfaceFreezer;->freeze(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)V

    .line 2025
    return-void
.end method

.method static intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2
    .param p0, "inOutBounds"    # Landroid/graphics/Rect;
    .param p1, "intersectBounds"    # Landroid/graphics/Rect;
    .param p2, "intersectInsets"    # Landroid/graphics/Rect;

    .line 2216
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_0

    .line 2217
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Rect;->right:I

    .line 2218
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 2220
    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-gt v0, v1, :cond_1

    .line 2221
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    .line 2222
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 2224
    :cond_1
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-lt v0, v1, :cond_2

    .line 2225
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Rect;->left:I

    .line 2226
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 2228
    :cond_2
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-lt v0, v1, :cond_3

    .line 2229
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Rect;->top:I

    .line 2230
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 2232
    :cond_3
    return-void
.end method

.method private static invalidateAppBoundsConfig(Landroid/content/res/Configuration;)V
    .locals 2
    .param p0, "inOutConfig"    # Landroid/content/res/Configuration;

    .line 2271
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2272
    .local v0, "appBounds":Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    .line 2273
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2275
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 2276
    iput v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 2277
    return-void
.end method

.method private isFocused()Z
    .locals 2

    .line 4617
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4620
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-ne v0, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 4618
    :cond_2
    :goto_0
    return v1
.end method

.method private static isOpaqueActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;

    .line 3277
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3280
    return v1

    .line 3283
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-nez v0, :cond_1

    if-eq p0, p1, :cond_1

    .line 3286
    return v1

    .line 3289
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->hasWallpaper:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 3294
    :cond_2
    return v1

    .line 3292
    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private isTopActivityLaunchedBehind()Z
    .locals 2

    .line 3923
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3924
    .local v0, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v1, :cond_0

    .line 3925
    const/4 v1, 0x1

    return v1

    .line 3927
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private static isTopRunning(Lcom/android/server/wm/ActivityRecord;ILandroid/os/IBinder;)Z
    .locals 1
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "taskId"    # I
    .param p2, "notTop"    # Landroid/os/IBinder;

    .line 3418
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    if-eq v0, p2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canBeTopRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isTopRunningNonDelayed(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "notTop"    # Lcom/android/server/wm/ActivityRecord;

    .line 3397
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->delayedResume:Z

    if-nez v0, :cond_0

    if-eq p0, p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canBeTopRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$BP51Xfr33NBfsJ4rKO04RomX2Tg(Lcom/android/server/wm/ActivityRecord;Landroid/content/ComponentName;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/wm/Task;->matchesActivityInHistory(Lcom/android/server/wm/ActivityRecord;Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$CKQ9RLMNPYajktwO1VrUoQGHF_8(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/wm/Task;->isOpaqueActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$OQmaRDKXdgA0v6VfNwTX7wOkwBs(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lorg/xmlpull/v1/XmlSerializer;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/Task;->saveActivityToXml(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lorg/xmlpull/v1/XmlSerializer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$SAhnD6goWlY1lXYn6fWba8f2JLs(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;[Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/Task;->getMaxVisibleBounds(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;[Z)V

    return-void
.end method

.method public static synthetic lambda$TUGPkEKamN60PF6hJQxUwDBjU-M(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityManager$TaskDescription;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/Task;->setTaskDescriptionFromActivityAboveRoot(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityManager$TaskDescription;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$applyAnimationUnchecked$9(Ljava/util/ArrayList;ILcom/android/server/wm/AnimationAdapter;)V
    .locals 2
    .param p0, "sources"    # Ljava/util/ArrayList;
    .param p1, "type"    # I
    .param p2, "anim"    # Lcom/android/server/wm/AnimationAdapter;

    .line 3660
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3661
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WindowContainer;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 3660
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3663
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method static synthetic lambda$getDescendantTaskCount$3(Lcom/android/server/wm/Task;[I)V
    .locals 2
    .param p0, "t"    # Lcom/android/server/wm/Task;
    .param p1, "count"    # [I

    .line 2730
    const/4 v0, 0x0

    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    return-void
.end method

.method static synthetic lambda$getTopFullscreenActivity$7(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 3423
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 3424
    .local v0, "win":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic lambda$getTopVisibleActivity$8(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 3431
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mIsExiting:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isClientVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$lqGdYR9ABiPuG3_68w1VS6hrr8c(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/wm/Task;->finishActivityAbove(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$performClearTask$2(Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;)V
    .locals 7
    .param p0, "reason"    # Ljava/lang/String;
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1570
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_0

    return-void

    .line 1572
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v5, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;Z)I

    .line 1574
    return-void
.end method

.method static synthetic lambda$topActivityWithStartingWindow$0(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1372
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindowState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1373
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->okToShowLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1372
    :goto_0
    return v1
.end method

.method static synthetic lambda$topRunningActivity$6(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 3382
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canBeTopRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$vJaPYJ0TW6MLVfOETMoxr75oHkk(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/wm/Task;->isTopRunningNonDelayed(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$wc9vA2EWxCoWO_MzNTKvEB8eLgw(Lcom/android/server/wm/ActivityRecord;ILandroid/os/IBinder;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/Task;->isTopRunning(Lcom/android/server/wm/ActivityRecord;ILandroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method private static matchesActivityInHistory(Lcom/android/server/wm/ActivityRecord;Landroid/content/ComponentName;)Z
    .locals 1
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "activityComponent"    # Landroid/content/ComponentName;

    .line 1772
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private performClearTaskLocked(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityRecord;
    .locals 5
    .param p1, "newR"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "launchFlags"    # I

    .line 1606
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->findActivityInHistory(Landroid/content/ComponentName;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1607
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1609
    :cond_0
    sget-object v2, Lcom/android/server/wm/-$$Lambda$Task$lqGdYR9ABiPuG3_68w1VS6hrr8c;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$lqGdYR9ABiPuG3_68w1VS6hrr8c;

    const-class v3, Lcom/android/server/wm/ActivityRecord;

    .line 1610
    invoke-static {v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v3

    .line 1609
    invoke-static {v2, v3, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainFunction(Ljava/util/function/BiFunction;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledFunction;

    move-result-object v2

    .line 1611
    .local v2, "f":Lcom/android/internal/util/function/pooled/PooledFunction;
    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Function;)Z

    .line 1612
    invoke-interface {v2}, Lcom/android/internal/util/function/pooled/PooledFunction;->recycle()V

    .line 1616
    iget v3, v0, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    if-nez v3, :cond_1

    const/high16 v3, 0x20000000

    and-int/2addr v3, p2

    if-nez v3, :cond_1

    .line 1618
    invoke-static {p2}, Lcom/android/server/wm/ActivityStarter;->isDocumentLaunchesIntoExisting(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1619
    iget-boolean v3, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v3, :cond_1

    .line 1620
    const/4 v3, 0x0

    const-string v4, "clear-task-top"

    invoke-virtual {v0, v4, v3}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 1621
    return-object v1

    .line 1625
    :cond_1
    return-object v0
.end method

.method private static replaceWindowsOnTaskMove(II)Z
    .locals 1
    .param p0, "sourceWindowingMode"    # I
    .param p1, "targetWindowingMode"    # I

    .line 934
    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    if-ne p1, v0, :cond_0

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

.method private resolveLeafOnlyOverrideConfigs(Landroid/content/res/Configuration;Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;
    .param p2, "previousBounds"    # Landroid/graphics/Rect;

    .line 2500
    nop

    .line 2501
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 2502
    .local v0, "windowingMode":I
    if-nez v0, :cond_0

    .line 2503
    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 2505
    :cond_0
    nop

    .line 2506
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 2508
    .local v1, "outOverrideBounds":Landroid/graphics/Rect;
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 2509
    const/4 v2, 0x0

    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 2510
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    .line 2509
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/wm/Task;->computeFullscreenBounds(Landroid/graphics/Rect;Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;I)V

    .line 2514
    return-void

    .line 2517
    :cond_1
    invoke-virtual {p0, v1, p2, p1}, Lcom/android/server/wm/Task;->adjustForMinimalTaskDimensions(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;)V

    .line 2518
    const/4 v2, 0x5

    if-ne v0, v2, :cond_3

    .line 2520
    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v2, v2

    const/high16 v3, 0x43200000    # 160.0f

    div-float/2addr v2, v3

    .line 2522
    .local v2, "density":F
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 2523
    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2524
    .local v3, "parentBounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    .line 2525
    .local v4, "display":Lcom/android/server/wm/DisplayContent;
    if-eqz v4, :cond_2

    .line 2529
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 2530
    .local v5, "stableBounds":Landroid/graphics/Rect;
    invoke-virtual {v4, v5}, Lcom/android/server/wm/DisplayContent;->getStableRect(Landroid/graphics/Rect;)V

    .line 2531
    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 2534
    .end local v5    # "stableBounds":Landroid/graphics/Rect;
    :cond_2
    const/high16 v5, 0x42400000    # 48.0f

    mul-float/2addr v5, v2

    float-to-int v5, v5

    const/high16 v6, 0x42000000    # 32.0f

    mul-float/2addr v6, v2

    float-to-int v6, v6

    invoke-static {v1, v3, v5, v6}, Lcom/android/server/wm/Task;->fitWithinBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 2539
    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    .line 2540
    .local v5, "offsetTop":I
    if-lez v5, :cond_3

    .line 2548
    iget-object v6, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-static {v6, v0}, Lcom/android/server/wm/OpQuickReplyInjector;->skipTopBoundsAdjust(Landroid/content/ComponentName;I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 2549
    const/4 v6, 0x0

    invoke-virtual {v1, v6, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 2554
    .end local v2    # "density":F
    .end local v3    # "parentBounds":Landroid/graphics/Rect;
    .end local v4    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v5    # "offsetTop":I
    :cond_3
    return-void
.end method

.method static restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wm/ActivityStackSupervisor;)Lcom/android/server/wm/Task;
    .locals 80
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "stackSupervisor"    # Lcom/android/server/wm/ActivityStackSupervisor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 4236
    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 4237
    .local v0, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 4238
    .local v2, "affinityIntent":Landroid/content/Intent;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4239
    .local v3, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    const/4 v4, 0x0

    .line 4240
    .local v4, "realActivity":Landroid/content/ComponentName;
    const/4 v5, 0x0

    .line 4241
    .local v5, "realActivitySuspended":Z
    const/4 v6, 0x0

    .line 4242
    .local v6, "origActivity":Landroid/content/ComponentName;
    const/4 v7, 0x0

    .line 4243
    .local v7, "affinity":Ljava/lang/String;
    const/4 v8, 0x0

    .line 4244
    .local v8, "rootAffinity":Ljava/lang/String;
    const/4 v9, 0x0

    .line 4245
    .local v9, "hasRootAffinity":Z
    const/4 v10, 0x0

    .line 4246
    .local v10, "windowLayoutAffinity":Ljava/lang/String;
    const/4 v11, 0x0

    .line 4247
    .local v11, "rootHasReset":Z
    const/4 v12, 0x0

    .line 4248
    .local v12, "autoRemoveRecents":Z
    const/4 v13, 0x0

    .line 4249
    .local v13, "askedCompatMode":Z
    const/4 v14, 0x0

    .line 4250
    .local v14, "taskType":I
    const/4 v15, 0x0

    .line 4251
    .local v15, "userId":I
    const/16 v16, 0x1

    .line 4252
    .local v16, "userSetupComplete":Z
    const/16 v17, -0x1

    .line 4253
    .local v17, "effectiveUid":I
    const/16 v18, 0x0

    .line 4254
    .local v18, "lastDescription":Ljava/lang/String;
    const-wide/16 v19, 0x0

    .line 4255
    .local v19, "lastTimeOnTop":J
    const/16 v21, 0x1

    .line 4256
    .local v21, "neverRelinquishIdentity":Z
    const/16 v22, -0x1

    .line 4257
    .local v22, "taskId":I
    move-object/from16 v23, v2

    .end local v2    # "affinityIntent":Landroid/content/Intent;
    .local v23, "affinityIntent":Landroid/content/Intent;
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 4258
    .local v2, "outerDepth":I
    new-instance v24, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct/range {v24 .. v24}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    move-object/from16 v61, v24

    .line 4259
    .local v61, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    const/16 v24, -0x1

    .line 4260
    .local v24, "taskAffiliation":I
    const/16 v25, 0x0

    .line 4261
    .local v25, "taskAffiliationColor":I
    const/16 v26, -0x1

    .line 4262
    .local v26, "prevTaskId":I
    const/16 v27, -0x1

    .line 4263
    .local v27, "nextTaskId":I
    const/16 v28, -0x1

    .line 4264
    .local v28, "callingUid":I
    const-string v29, ""

    .line 4265
    .local v29, "callingPackage":Ljava/lang/String;
    const/16 v30, 0x0

    .line 4266
    .local v30, "callingFeatureId":Ljava/lang/String;
    const/16 v31, 0x4

    .line 4267
    .local v31, "resizeMode":I
    const/16 v32, 0x0

    .line 4268
    .local v32, "supportsPictureInPicture":Z
    const/16 v33, 0x0

    .line 4269
    .local v33, "lastNonFullscreenBounds":Landroid/graphics/Rect;
    const/16 v34, -0x1

    .line 4270
    .local v34, "minWidth":I
    const/16 v35, -0x1

    .line 4271
    .local v35, "minHeight":I
    const/16 v36, 0x0

    .line 4273
    .local v36, "persistTaskVersion":I
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v37

    move-object/from16 v38, v4

    .end local v4    # "realActivity":Landroid/content/ComponentName;
    .local v38, "realActivity":Landroid/content/ComponentName;
    const/4 v4, 0x1

    add-int/lit8 v37, v37, -0x1

    move/from16 v73, v5

    move-object/from16 v69, v10

    move/from16 v62, v15

    move/from16 v4, v22

    move/from16 v63, v25

    move/from16 v64, v26

    move/from16 v65, v27

    move/from16 v66, v28

    move-object/from16 v67, v29

    move-object/from16 v68, v30

    move-object/from16 v70, v33

    move/from16 v71, v34

    move/from16 v72, v35

    move-object/from16 v5, v38

    move-object/from16 v25, v0

    move v10, v9

    move v15, v14

    move/from16 v0, v37

    move-object v9, v8

    move v14, v13

    move-object v8, v7

    move v13, v12

    move-object v7, v6

    move v12, v11

    move/from16 v11, v31

    move/from16 v6, v36

    .end local v22    # "taskId":I
    .end local v26    # "prevTaskId":I
    .end local v27    # "nextTaskId":I
    .end local v28    # "callingUid":I
    .end local v29    # "callingPackage":Ljava/lang/String;
    .end local v30    # "callingFeatureId":Ljava/lang/String;
    .end local v31    # "resizeMode":I
    .end local v33    # "lastNonFullscreenBounds":Landroid/graphics/Rect;
    .end local v34    # "minWidth":I
    .end local v35    # "minHeight":I
    .end local v36    # "persistTaskVersion":I
    .end local v38    # "realActivity":Landroid/content/ComponentName;
    .local v0, "attrNdx":I
    .local v4, "taskId":I
    .local v5, "realActivity":Landroid/content/ComponentName;
    .local v6, "persistTaskVersion":I
    .local v7, "origActivity":Landroid/content/ComponentName;
    .local v8, "affinity":Ljava/lang/String;
    .local v9, "rootAffinity":Ljava/lang/String;
    .local v10, "hasRootAffinity":Z
    .local v11, "resizeMode":I
    .local v12, "rootHasReset":Z
    .local v13, "autoRemoveRecents":Z
    .local v14, "askedCompatMode":Z
    .local v15, "taskType":I
    .local v25, "intent":Landroid/content/Intent;
    .local v62, "userId":I
    .local v63, "taskAffiliationColor":I
    .local v64, "prevTaskId":I
    .local v65, "nextTaskId":I
    .local v66, "callingUid":I
    .local v67, "callingPackage":Ljava/lang/String;
    .local v68, "callingFeatureId":Ljava/lang/String;
    .local v69, "windowLayoutAffinity":Ljava/lang/String;
    .local v70, "lastNonFullscreenBounds":Landroid/graphics/Rect;
    .local v71, "minWidth":I
    .local v72, "minHeight":I
    .local v73, "realActivitySuspended":Z
    :goto_0
    move/from16 v74, v14

    .end local v14    # "askedCompatMode":Z
    .local v74, "askedCompatMode":Z
    const-string v14, "ActivityTaskManager"

    if-ltz v0, :cond_3

    .line 4274
    move/from16 v75, v13

    .end local v13    # "autoRemoveRecents":Z
    .local v75, "autoRemoveRecents":Z
    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v13

    .line 4275
    .local v13, "attrName":Ljava/lang/String;
    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v28

    .line 4280
    .local v28, "attrValue":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v29

    move/from16 v76, v12

    .end local v12    # "rootHasReset":Z
    .local v76, "rootHasReset":Z
    sparse-switch v29, :sswitch_data_0

    :cond_0
    goto/16 :goto_1

    :sswitch_0
    const-string v12, "root_has_reset"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x7

    goto/16 :goto_2

    :sswitch_1
    const-string v12, "window_layout_affinity"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x6

    goto/16 :goto_2

    :sswitch_2
    const-string v12, "real_activity"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x1

    goto/16 :goto_2

    :sswitch_3
    const-string v12, "never_relinquish_identity"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v12, 0x10

    goto/16 :goto_2

    :sswitch_4
    const-string v12, "calling_package"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v12, 0x16

    goto/16 :goto_2

    :sswitch_5
    const-string v12, "persist_task_version"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v12, 0x1d

    goto/16 :goto_2

    :sswitch_6
    const-string v12, "last_description"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v12, 0xe

    goto/16 :goto_2

    :sswitch_7
    const-string v12, "affinity"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x4

    goto/16 :goto_2

    :sswitch_8
    const-string v12, "min_width"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v12, 0x1b

    goto/16 :goto_2

    :sswitch_9
    const-string v12, "calling_feature_id"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v12, 0x17

    goto/16 :goto_2

    :sswitch_a
    const-string v12, "prev_affiliation"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v12, 0x12

    goto/16 :goto_2

    :sswitch_b
    const-string v12, "task_type"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v12, 0xd

    goto/16 :goto_2

    :sswitch_c
    const-string v12, "calling_uid"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v12, 0x15

    goto/16 :goto_2

    :sswitch_d
    const-string v12, "user_id"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v12, 0xa

    goto/16 :goto_2

    :sswitch_e
    const-string v12, "root_affinity"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x5

    goto/16 :goto_2

    :sswitch_f
    const-string v12, "supports_picture_in_picture"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v12, 0x19

    goto/16 :goto_2

    :sswitch_10
    const-string v12, "auto_remove_recents"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v12, 0x8

    goto/16 :goto_2

    :sswitch_11
    const-string v12, "orig_activity"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x3

    goto/16 :goto_2

    :sswitch_12
    const-string v12, "non_fullscreen_bounds"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v12, 0x1a

    goto/16 :goto_2

    :sswitch_13
    const-string v12, "min_height"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v12, 0x1c

    goto/16 :goto_2

    :sswitch_14
    const-string v12, "resize_mode"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v12, 0x18

    goto/16 :goto_2

    :sswitch_15
    const-string v12, "effective_uid"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v12, 0xc

    goto :goto_2

    :sswitch_16
    const-string v12, "user_setup_complete"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v12, 0xb

    goto :goto_2

    :sswitch_17
    const-string v12, "task_affiliation"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v12, 0x11

    goto :goto_2

    :sswitch_18
    const-string v12, "real_activity_suspended"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x2

    goto :goto_2

    :sswitch_19
    const-string v12, "task_affiliation_color"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v12, 0x14

    goto :goto_2

    :sswitch_1a
    const-string v12, "next_affiliation"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v12, 0x13

    goto :goto_2

    :sswitch_1b
    const-string v12, "task_id"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x0

    goto :goto_2

    :sswitch_1c
    const-string v12, "last_time_moved"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v12, 0xf

    goto :goto_2

    :sswitch_1d
    const-string v12, "asked_compat_mode"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v12, 0x9

    goto :goto_2

    :goto_1
    const/4 v12, -0x1

    :goto_2
    packed-switch v12, :pswitch_data_0

    .line 4373
    const-string v12, "task_description_"

    invoke-virtual {v13, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 4374
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v77, v7

    .end local v7    # "origActivity":Landroid/content/ComponentName;
    .local v77, "origActivity":Landroid/content/ComponentName;
    const-string v7, "Task: Unknown attribute="

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 4370
    .end local v77    # "origActivity":Landroid/content/ComponentName;
    .restart local v7    # "origActivity":Landroid/content/ComponentName;
    :pswitch_0
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 4371
    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    .line 4367
    :pswitch_1
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 4368
    .end local v72    # "minHeight":I
    .local v12, "minHeight":I
    move/from16 v72, v12

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    .line 4364
    .end local v12    # "minHeight":I
    .restart local v72    # "minHeight":I
    :pswitch_2
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 4365
    .end local v71    # "minWidth":I
    .local v12, "minWidth":I
    move/from16 v71, v12

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    .line 4361
    .end local v12    # "minWidth":I
    .restart local v71    # "minWidth":I
    :pswitch_3
    invoke-static/range {v28 .. v28}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v12

    .line 4362
    .end local v70    # "lastNonFullscreenBounds":Landroid/graphics/Rect;
    .local v12, "lastNonFullscreenBounds":Landroid/graphics/Rect;
    move-object/from16 v70, v12

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    .line 4358
    .end local v12    # "lastNonFullscreenBounds":Landroid/graphics/Rect;
    .restart local v70    # "lastNonFullscreenBounds":Landroid/graphics/Rect;
    :pswitch_4
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 4359
    .end local v32    # "supportsPictureInPicture":Z
    .local v12, "supportsPictureInPicture":Z
    move/from16 v32, v12

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    .line 4355
    .end local v12    # "supportsPictureInPicture":Z
    .restart local v32    # "supportsPictureInPicture":Z
    :pswitch_5
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 4356
    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    .line 4352
    :pswitch_6
    move-object/from16 v12, v28

    .line 4353
    .end local v68    # "callingFeatureId":Ljava/lang/String;
    .local v12, "callingFeatureId":Ljava/lang/String;
    move-object/from16 v68, v12

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    .line 4349
    .end local v12    # "callingFeatureId":Ljava/lang/String;
    .restart local v68    # "callingFeatureId":Ljava/lang/String;
    :pswitch_7
    move-object/from16 v12, v28

    .line 4350
    .end local v67    # "callingPackage":Ljava/lang/String;
    .local v12, "callingPackage":Ljava/lang/String;
    move-object/from16 v67, v12

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    .line 4346
    .end local v12    # "callingPackage":Ljava/lang/String;
    .restart local v67    # "callingPackage":Ljava/lang/String;
    :pswitch_8
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 4347
    .end local v66    # "callingUid":I
    .local v12, "callingUid":I
    move/from16 v66, v12

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    .line 4343
    .end local v12    # "callingUid":I
    .restart local v66    # "callingUid":I
    :pswitch_9
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 4344
    .end local v63    # "taskAffiliationColor":I
    .local v12, "taskAffiliationColor":I
    move/from16 v63, v12

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    .line 4340
    .end local v12    # "taskAffiliationColor":I
    .restart local v63    # "taskAffiliationColor":I
    :pswitch_a
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 4341
    .end local v65    # "nextTaskId":I
    .local v12, "nextTaskId":I
    move/from16 v65, v12

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    .line 4337
    .end local v12    # "nextTaskId":I
    .restart local v65    # "nextTaskId":I
    :pswitch_b
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 4338
    .end local v64    # "prevTaskId":I
    .local v12, "prevTaskId":I
    move/from16 v64, v12

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    .line 4334
    .end local v12    # "prevTaskId":I
    .restart local v64    # "prevTaskId":I
    :pswitch_c
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 4335
    .end local v24    # "taskAffiliation":I
    .local v12, "taskAffiliation":I
    move/from16 v24, v12

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    .line 4331
    .end local v12    # "taskAffiliation":I
    .restart local v24    # "taskAffiliation":I
    :pswitch_d
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 4332
    .end local v21    # "neverRelinquishIdentity":Z
    .local v12, "neverRelinquishIdentity":Z
    move/from16 v21, v12

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    .line 4328
    .end local v12    # "neverRelinquishIdentity":Z
    .restart local v21    # "neverRelinquishIdentity":Z
    :pswitch_e
    invoke-static/range {v28 .. v28}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    .line 4329
    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    .line 4325
    :pswitch_f
    move-object/from16 v12, v28

    .line 4326
    .end local v18    # "lastDescription":Ljava/lang/String;
    .local v12, "lastDescription":Ljava/lang/String;
    move-object/from16 v18, v12

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    .line 4322
    .end local v12    # "lastDescription":Ljava/lang/String;
    .restart local v18    # "lastDescription":Ljava/lang/String;
    :pswitch_10
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 4323
    .end local v15    # "taskType":I
    .local v12, "taskType":I
    move v15, v12

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    .line 4319
    .end local v12    # "taskType":I
    .restart local v15    # "taskType":I
    :pswitch_11
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 4320
    .end local v17    # "effectiveUid":I
    .local v12, "effectiveUid":I
    move/from16 v17, v12

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    .line 4316
    .end local v12    # "effectiveUid":I
    .restart local v17    # "effectiveUid":I
    :pswitch_12
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 4317
    .end local v16    # "userSetupComplete":Z
    .local v12, "userSetupComplete":Z
    move/from16 v16, v12

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    .line 4313
    .end local v12    # "userSetupComplete":Z
    .restart local v16    # "userSetupComplete":Z
    :pswitch_13
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 4314
    .end local v62    # "userId":I
    .local v12, "userId":I
    move/from16 v62, v12

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    .line 4310
    .end local v12    # "userId":I
    .restart local v62    # "userId":I
    :pswitch_14
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 4311
    .end local v74    # "askedCompatMode":Z
    .local v12, "askedCompatMode":Z
    move v14, v12

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    .line 4307
    .end local v12    # "askedCompatMode":Z
    .restart local v74    # "askedCompatMode":Z
    :pswitch_15
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 4308
    .end local v75    # "autoRemoveRecents":Z
    .local v12, "autoRemoveRecents":Z
    move v13, v12

    move/from16 v14, v74

    move/from16 v12, v76

    goto/16 :goto_4

    .line 4304
    .end local v12    # "autoRemoveRecents":Z
    .restart local v75    # "autoRemoveRecents":Z
    :pswitch_16
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 4305
    .end local v76    # "rootHasReset":Z
    .local v12, "rootHasReset":Z
    move/from16 v14, v74

    move/from16 v13, v75

    goto/16 :goto_4

    .line 4301
    .end local v12    # "rootHasReset":Z
    .restart local v76    # "rootHasReset":Z
    :pswitch_17
    move-object/from16 v12, v28

    .line 4302
    .end local v69    # "windowLayoutAffinity":Ljava/lang/String;
    .local v12, "windowLayoutAffinity":Ljava/lang/String;
    move-object/from16 v69, v12

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    .line 4297
    .end local v12    # "windowLayoutAffinity":Ljava/lang/String;
    .restart local v69    # "windowLayoutAffinity":Ljava/lang/String;
    :pswitch_18
    move-object/from16 v9, v28

    .line 4298
    const/4 v10, 0x1

    .line 4299
    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto :goto_4

    .line 4294
    :pswitch_19
    move-object/from16 v8, v28

    .line 4295
    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto :goto_4

    .line 4291
    :pswitch_1a
    invoke-static/range {v28 .. v28}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    .line 4292
    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto :goto_4

    .line 4288
    :pswitch_1b
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 4289
    .end local v73    # "realActivitySuspended":Z
    .local v12, "realActivitySuspended":Z
    move/from16 v73, v12

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto :goto_4

    .line 4285
    .end local v12    # "realActivitySuspended":Z
    .restart local v73    # "realActivitySuspended":Z
    :pswitch_1c
    invoke-static/range {v28 .. v28}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .line 4286
    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto :goto_4

    .line 4282
    :pswitch_1d
    const/4 v12, -0x1

    if-ne v4, v12, :cond_1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto :goto_4

    :cond_1
    move-object/from16 v77, v7

    goto :goto_3

    .line 4373
    :cond_2
    move-object/from16 v77, v7

    .line 4273
    .end local v13    # "attrName":Ljava/lang/String;
    .end local v28    # "attrValue":Ljava/lang/String;
    :goto_3
    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    move-object/from16 v7, v77

    .end local v74    # "askedCompatMode":Z
    .end local v75    # "autoRemoveRecents":Z
    .end local v76    # "rootHasReset":Z
    .local v12, "rootHasReset":Z
    .local v13, "autoRemoveRecents":Z
    .restart local v14    # "askedCompatMode":Z
    :goto_4
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .end local v14    # "askedCompatMode":Z
    .restart local v74    # "askedCompatMode":Z
    :cond_3
    move-object/from16 v77, v7

    move/from16 v76, v12

    move/from16 v75, v13

    .line 4378
    .end local v0    # "attrNdx":I
    .end local v7    # "origActivity":Landroid/content/ComponentName;
    .end local v12    # "rootHasReset":Z
    .end local v13    # "autoRemoveRecents":Z
    .restart local v75    # "autoRemoveRecents":Z
    .restart local v76    # "rootHasReset":Z
    .restart local v77    # "origActivity":Landroid/content/ComponentName;
    move-object/from16 v7, v61

    .end local v61    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .local v7, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    invoke-virtual {v7, v1}, Landroid/app/ActivityManager$TaskDescription;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    move-object/from16 v12, v25

    .line 4381
    .end local v25    # "intent":Landroid/content/Intent;
    .local v12, "intent":Landroid/content/Intent;
    :goto_5
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v13, v0

    const/4 v1, 0x1

    .local v13, "event":I
    if-eq v0, v1, :cond_b

    const/4 v1, 0x3

    if-ne v13, v1, :cond_5

    .line 4382
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-lt v0, v2, :cond_4

    goto :goto_6

    :cond_4
    move/from16 v61, v2

    goto/16 :goto_8

    .line 4383
    :cond_5
    :goto_6
    const/4 v1, 0x2

    if-ne v13, v1, :cond_a

    .line 4384
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 4386
    .local v0, "name":Ljava/lang/String;
    const-string v1, "affinity_intent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4387
    invoke-static/range {p0 .. p0}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v1

    move-object/from16 v23, v1

    move/from16 v61, v2

    .end local v23    # "affinityIntent":Landroid/content/Intent;
    .local v1, "affinityIntent":Landroid/content/Intent;
    goto :goto_7

    .line 4388
    .end local v1    # "affinityIntent":Landroid/content/Intent;
    .restart local v23    # "affinityIntent":Landroid/content/Intent;
    :cond_6
    const-string v1, "intent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4389
    invoke-static/range {p0 .. p0}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v1

    move-object v12, v1

    move/from16 v61, v2

    .end local v12    # "intent":Landroid/content/Intent;
    .local v1, "intent":Landroid/content/Intent;
    goto :goto_7

    .line 4390
    .end local v1    # "intent":Landroid/content/Intent;
    .restart local v12    # "intent":Landroid/content/Intent;
    :cond_7
    const-string v1, "activity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 4391
    nop

    .line 4392
    invoke-static/range {p0 .. p1}, Lcom/android/server/wm/ActivityRecord;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wm/ActivityStackSupervisor;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 4396
    .local v1, "activity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_8

    .line 4397
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4399
    .end local v1    # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_8
    move/from16 v61, v2

    goto :goto_7

    .line 4400
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v61, v2

    .end local v2    # "outerDepth":I
    .local v61, "outerDepth":I
    const-string v2, "restoreTask: Unexpected name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4401
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4403
    .end local v0    # "name":Ljava/lang/String;
    :goto_7
    move-object/from16 v1, p0

    move/from16 v2, v61

    goto :goto_5

    .line 4383
    .end local v61    # "outerDepth":I
    .restart local v2    # "outerDepth":I
    :cond_a
    move/from16 v61, v2

    .end local v2    # "outerDepth":I
    .restart local v61    # "outerDepth":I
    move-object/from16 v1, p0

    goto :goto_5

    .line 4381
    .end local v61    # "outerDepth":I
    .restart local v2    # "outerDepth":I
    :cond_b
    move/from16 v61, v2

    .line 4405
    .end local v2    # "outerDepth":I
    .restart local v61    # "outerDepth":I
    :goto_8
    if-nez v10, :cond_c

    .line 4406
    move-object v9, v8

    goto :goto_9

    .line 4407
    :cond_c
    const-string v0, "@"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4408
    const/4 v9, 0x0

    .line 4410
    :cond_d
    :goto_9
    if-gtz v17, :cond_11

    .line 4411
    if-eqz v12, :cond_e

    move-object v0, v12

    goto :goto_a

    :cond_e
    move-object/from16 v0, v23

    :goto_a
    move-object v1, v0

    .line 4412
    .local v1, "checkIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 4413
    .end local v17    # "effectiveUid":I
    .local v2, "effectiveUid":I
    if-eqz v1, :cond_10

    .line 4414
    move/from16 v17, v2

    .end local v2    # "effectiveUid":I
    .restart local v17    # "effectiveUid":I
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 4416
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    nop

    .line 4417
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v78, v10

    .end local v10    # "hasRootAffinity":Z
    .local v78, "hasRootAffinity":Z
    const/16 v10, 0x2200

    .line 4416
    move/from16 v79, v13

    move/from16 v13, v62

    .end local v62    # "userId":I
    .local v13, "userId":I
    .local v79, "event":I
    :try_start_1
    invoke-interface {v2, v0, v10, v13}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 4420
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_f

    .line 4421
    iget v10, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v17, v10

    .line 4424
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_f
    move/from16 v0, v17

    goto :goto_c

    .line 4423
    :catch_0
    move-exception v0

    goto :goto_b

    .end local v78    # "hasRootAffinity":Z
    .end local v79    # "event":I
    .restart local v10    # "hasRootAffinity":Z
    .local v13, "event":I
    .restart local v62    # "userId":I
    :catch_1
    move-exception v0

    move/from16 v78, v10

    move/from16 v79, v13

    move/from16 v13, v62

    .end local v10    # "hasRootAffinity":Z
    .end local v62    # "userId":I
    .local v13, "userId":I
    .restart local v78    # "hasRootAffinity":Z
    .restart local v79    # "event":I
    goto :goto_b

    .line 4413
    .end local v17    # "effectiveUid":I
    .end local v78    # "hasRootAffinity":Z
    .end local v79    # "event":I
    .local v2, "effectiveUid":I
    .restart local v10    # "hasRootAffinity":Z
    .local v13, "event":I
    .restart local v62    # "userId":I
    :cond_10
    move/from16 v17, v2

    move/from16 v78, v10

    move/from16 v79, v13

    move/from16 v13, v62

    .line 4426
    .end local v2    # "effectiveUid":I
    .end local v10    # "hasRootAffinity":Z
    .end local v62    # "userId":I
    .local v13, "userId":I
    .restart local v17    # "effectiveUid":I
    .restart local v78    # "hasRootAffinity":Z
    .restart local v79    # "event":I
    :goto_b
    move/from16 v0, v17

    .end local v17    # "effectiveUid":I
    .local v0, "effectiveUid":I
    :goto_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Updating task #"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " for "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ": effectiveUid="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v17, v0

    goto :goto_d

    .line 4410
    .end local v0    # "effectiveUid":I
    .end local v1    # "checkIntent":Landroid/content/Intent;
    .end local v78    # "hasRootAffinity":Z
    .end local v79    # "event":I
    .restart local v10    # "hasRootAffinity":Z
    .local v13, "event":I
    .restart local v17    # "effectiveUid":I
    .restart local v62    # "userId":I
    :cond_11
    move/from16 v78, v10

    move/from16 v79, v13

    move/from16 v13, v62

    .line 4430
    .end local v10    # "hasRootAffinity":Z
    .end local v62    # "userId":I
    .local v13, "userId":I
    .restart local v78    # "hasRootAffinity":Z
    .restart local v79    # "event":I
    :goto_d
    const/4 v1, 0x1

    if-ge v6, v1, :cond_12

    .line 4435
    if-ne v15, v1, :cond_13

    const/4 v1, 0x2

    if-ne v11, v1, :cond_13

    .line 4436
    const/4 v11, 0x1

    move/from16 v0, v32

    goto :goto_e

    .line 4443
    :cond_12
    const/4 v1, 0x3

    if-ne v11, v1, :cond_13

    .line 4444
    const/4 v11, 0x2

    .line 4445
    const/16 v32, 0x1

    move/from16 v0, v32

    goto :goto_e

    .line 4449
    :cond_13
    move/from16 v0, v32

    .end local v32    # "supportsPictureInPicture":Z
    .local v0, "supportsPictureInPicture":Z
    :goto_e
    new-instance v1, Lcom/android/server/wm/ActivityStack;

    move-object/from16 v25, v1

    move-object/from16 v2, p1

    iget-object v10, v2, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    move-object/from16 v26, v10

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    move/from16 v27, v4

    move-object/from16 v28, v12

    move-object/from16 v29, v23

    move-object/from16 v30, v8

    move-object/from16 v31, v9

    move-object/from16 v32, v5

    move-object/from16 v33, v77

    move/from16 v34, v76

    move/from16 v35, v75

    move/from16 v36, v74

    move/from16 v37, v13

    move/from16 v38, v17

    move-object/from16 v39, v18

    move-wide/from16 v40, v19

    move/from16 v42, v21

    move-object/from16 v43, v7

    move/from16 v44, v24

    move/from16 v45, v64

    move/from16 v46, v65

    move/from16 v47, v63

    move/from16 v48, v66

    move-object/from16 v49, v67

    move-object/from16 v50, v68

    move/from16 v51, v11

    move/from16 v52, v0

    move/from16 v53, v73

    move/from16 v54, v16

    move/from16 v55, v71

    move/from16 v56, v72

    invoke-direct/range {v25 .. v60}, Lcom/android/server/wm/ActivityStack;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;JZLandroid/app/ActivityManager$TaskDescription;IIIIILjava/lang/String;Ljava/lang/String;IZZZIILandroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Lcom/android/server/wm/ActivityStack;)V

    .line 4457
    .local v1, "task":Lcom/android/server/wm/Task;
    move-object/from16 v10, v70

    .end local v70    # "lastNonFullscreenBounds":Landroid/graphics/Rect;
    .local v10, "lastNonFullscreenBounds":Landroid/graphics/Rect;
    iput-object v10, v1, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 4458
    invoke-virtual {v1, v10}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 4459
    move-object/from16 v2, v69

    .end local v69    # "windowLayoutAffinity":Ljava/lang/String;
    .local v2, "windowLayoutAffinity":Ljava/lang/String;
    iput-object v2, v1, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    .line 4461
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v25

    const/16 v22, 0x1

    add-int/lit8 v25, v25, -0x1

    move/from16 v22, v0

    move/from16 v0, v25

    .local v0, "activityNdx":I
    .local v22, "supportsPictureInPicture":Z
    :goto_f
    if-ltz v0, :cond_14

    .line 4462
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v26, v2

    .end local v2    # "windowLayoutAffinity":Ljava/lang/String;
    .local v26, "windowLayoutAffinity":Ljava/lang/String;
    move-object/from16 v2, v25

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/ActivityRecord;)V

    .line 4461
    add-int/lit8 v0, v0, -0x1

    move-object/from16 v2, v26

    goto :goto_f

    .end local v26    # "windowLayoutAffinity":Ljava/lang/String;
    .restart local v2    # "windowLayoutAffinity":Ljava/lang/String;
    :cond_14
    move-object/from16 v26, v2

    .line 4465
    .end local v0    # "activityNdx":I
    .end local v2    # "windowLayoutAffinity":Ljava/lang/String;
    .restart local v26    # "windowLayoutAffinity":Ljava/lang/String;
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v0, :cond_15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restored task="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4466
    :cond_15
    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x7f3eb8a7 -> :sswitch_1d
        -0x5ccdaff6 -> :sswitch_1c
        -0x5ba06deb -> :sswitch_1b
        -0x591a685c -> :sswitch_1a
        -0x4d0e36e6 -> :sswitch_19
        -0x43dc2f14 -> :sswitch_18
        -0x430d08ca -> :sswitch_17
        -0x3a0f4851 -> :sswitch_16
        -0x37680e48 -> :sswitch_15
        -0x3395d9b2 -> :sswitch_14
        -0x313f784c -> :sswitch_13
        -0x2a27c539 -> :sswitch_12
        -0x2a0990b3 -> :sswitch_11
        -0x1df202b3 -> :sswitch_10
        -0x158140a0 -> :sswitch_f
        -0x9b3481b -> :sswitch_e
        -0x8c511f1 -> :sswitch_d
        -0x7e175ab -> :sswitch_c
        0xac8bdb4 -> :sswitch_b
        0x13bdcee4 -> :sswitch_a
        0x1782e55f -> :sswitch_9
        0x2046b199 -> :sswitch_8
        0x24172928 -> :sswitch_7
        0x33cf43d3 -> :sswitch_6
        0x3c12eca9 -> :sswitch_5
        0x40756fcb -> :sswitch_4
        0x56e1584e -> :sswitch_3
        0x5bc3bc90 -> :sswitch_2
        0x772fa04e -> :sswitch_1
        0x789a804d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static saveActivityToXml(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lorg/xmlpull/v1/XmlSerializer;)Z
    .locals 4
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "first"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "out"    # Lorg/xmlpull/v1/XmlSerializer;

    .line 4216
    const-string v0, "activity"

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->persistableMode:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isPersistable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 4217
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v3, 0x80000

    and-int/2addr v1, v3

    or-int/lit16 v1, v1, 0x2000

    if-ne v1, v3, :cond_0

    if-eq p0, p1, :cond_0

    goto :goto_0

    .line 4224
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4225
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityRecord;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 4226
    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4227
    const/4 v0, 0x0

    return v0

    .line 4228
    :catch_0
    move-exception v0

    .line 4229
    .local v0, "e":Ljava/lang/Exception;
    sput-object v0, Lcom/android/server/wm/Task;->sTmpException:Ljava/lang/Exception;

    .line 4230
    return v2

    .line 4221
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return v2
.end method

.method private saveLaunchingStateIfNeeded()V
    .locals 1

    .line 2139
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/Task;->saveLaunchingStateIfNeeded(Lcom/android/server/wm/DisplayContent;)V

    .line 2140
    return-void
.end method

.method private saveLaunchingStateIfNeeded(Lcom/android/server/wm/DisplayContent;)V
    .locals 3
    .param p1, "display"    # Lcom/android/server/wm/DisplayContent;

    .line 2143
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getHasBeenVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2145
    return-void

    .line 2148
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    .line 2149
    .local v0, "windowingMode":I
    const/4 v1, 0x1

    const/4 v2, 0x5

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_1

    .line 2151
    return-void

    .line 2157
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getDisplayWindowingMode()I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 2158
    return-void

    .line 2162
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-virtual {v1, p0, p1}, Lcom/android/server/wm/LaunchParamsPersister;->saveTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/DisplayContent;)V

    .line 2163
    return-void
.end method

.method private sendTaskAppeared()V
    .locals 2

    .line 4532
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-eqz v0, :cond_0

    .line 4533
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    iget-object v1, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/TaskOrganizerController;->onTaskAppeared(Landroid/window/ITaskOrganizer;Lcom/android/server/wm/Task;)V

    .line 4535
    :cond_0
    return-void
.end method

.method private sendTaskVanished(Landroid/window/ITaskOrganizer;)V
    .locals 1
    .param p1, "organizer"    # Landroid/window/ITaskOrganizer;

    .line 4538
    if-eqz p1, :cond_0

    .line 4539
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {v0, p1, p0}, Lcom/android/server/wm/TaskOrganizerController;->onTaskVanished(Landroid/window/ITaskOrganizer;Lcom/android/server/wm/Task;)V

    .line 4541
    :cond_0
    return-void
.end method

.method private setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V
    .locals 9
    .param p1, "_intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;

    .line 987
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    .line 988
    .local v0, "isLeaf":Z
    iget-object v1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 989
    iget v1, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v1, v1, 0x1000

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    goto :goto_1

    .line 991
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 992
    return-void

    .line 995
    :cond_2
    :goto_1
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v4, v1

    :goto_2
    iput-object v4, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    .line 996
    iget-object v5, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-nez v5, :cond_4

    .line 1000
    iput-object v4, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    .line 1002
    :cond_4
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v4, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    .line 1003
    iput-object v1, p0, Lcom/android/server/wm/Task;->stringName:Ljava/lang/String;

    .line 1005
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    const-string v5, "Setting Intent of "

    const-string v6, "ActivityTaskManager"

    if-nez v4, :cond_9

    .line 1006
    if-eqz p1, :cond_6

    .line 1010
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v4

    if-nez v4, :cond_5

    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 1011
    :cond_5
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object p1, v4

    .line 1012
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 1013
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 1016
    :cond_6
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    :cond_7
    iput-object p1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 1018
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    goto :goto_3

    :cond_8
    move-object v4, v1

    :goto_3
    iput-object v4, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 1019
    iput-object v1, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    goto :goto_4

    .line 1021
    :cond_9
    new-instance v4, Landroid/content/ComponentName;

    iget-object v7, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v4, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    .local v4, "targetComponent":Landroid/content/ComponentName;
    if-eqz p1, :cond_b

    .line 1024
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1025
    .local v7, "targetIntent":Landroid/content/Intent;
    invoke-virtual {v7, v1}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 1026
    invoke-virtual {v7, v1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 1027
    sget-boolean v8, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v8, :cond_a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to target "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    :cond_a
    iput-object v7, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 1030
    iput-object v4, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 1031
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    .line 1032
    .end local v7    # "targetIntent":Landroid/content/Intent;
    goto :goto_4

    .line 1033
    :cond_b
    iput-object v1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 1034
    iput-object v4, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 1035
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    .line 1038
    .end local v4    # "targetComponent":Landroid/content/ComponentName;
    :goto_4
    nop

    .line 1039
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-nez v4, :cond_c

    goto :goto_5

    :cond_c
    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    :goto_5
    iput-object v1, p0, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    .line 1041
    iget-object v1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-nez v1, :cond_d

    move v1, v3

    goto :goto_6

    :cond_d
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    .line 1042
    .local v1, "intentFlags":I
    :goto_6
    const/high16 v4, 0x200000

    and-int/2addr v4, v1

    if-eqz v4, :cond_e

    .line 1045
    iput-boolean v2, p0, Lcom/android/server/wm/Task;->rootWasReset:Z

    .line 1047
    :cond_e
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/wm/Task;->mUserId:I

    .line 1048
    iget-object v4, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 1049
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wm/Task;->mUserId:I

    .line 1048
    const-string v6, "user_setup_complete"

    invoke-static {v4, v6, v3, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_f

    move v4, v2

    goto :goto_7

    :cond_f
    move v4, v3

    :goto_7
    iput-boolean v4, p0, Lcom/android/server/wm/Task;->mUserSetupComplete:Z

    .line 1050
    iget v4, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_10

    .line 1052
    iput-boolean v2, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    goto :goto_8

    .line 1053
    :cond_10
    const v4, 0x82000

    and-int/2addr v4, v1

    const/high16 v5, 0x80000

    if-ne v4, v5, :cond_12

    .line 1058
    iget v4, p2, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    if-eqz v4, :cond_11

    .line 1059
    iput-boolean v3, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    goto :goto_8

    .line 1061
    :cond_11
    iput-boolean v2, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    goto :goto_8

    .line 1064
    :cond_12
    iput-boolean v3, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    .line 1066
    :goto_8
    iget v2, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    iget v3, p2, Landroid/content/pm/ActivityInfo;->resizeMode:I

    if-eq v2, v3, :cond_13

    .line 1067
    iget v2, p2, Landroid/content/pm/ActivityInfo;->resizeMode:I

    iput v2, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 1068
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateTaskDescription()V

    .line 1072
    :cond_13
    iget v2, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    iget-object v3, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-static {v2, v3}, Lcom/android/server/wm/OpQuickReplyInjector;->shouldForceResizeTask(ILandroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1073
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 1076
    :cond_14
    invoke-virtual {p2}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    .line 1077
    return-void
.end method

.method private setLockTaskAuth(Lcom/android/server/wm/ActivityRecord;)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1671
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 1672
    iput v0, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    .line 1673
    return-void

    .line 1676
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1677
    .local v1, "pkg":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v2

    .line 1678
    .local v2, "lockTaskController":Lcom/android/server/wm/LockTaskController;
    iget v3, p1, Lcom/android/server/wm/ActivityRecord;->lockTaskLaunchMode:I

    const/4 v4, 0x3

    if-eqz v3, :cond_6

    if-eq v3, v0, :cond_5

    const/4 v5, 0x2

    if-eq v3, v5, :cond_4

    if-eq v3, v4, :cond_2

    goto :goto_3

    .line 1693
    :cond_2
    iget v3, p0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/LockTaskController;->isPackageWhitelisted(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1694
    move v0, v5

    goto :goto_1

    :cond_3
    nop

    :goto_1
    iput v0, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    goto :goto_3

    .line 1689
    :cond_4
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    .line 1690
    goto :goto_3

    .line 1685
    :cond_5
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    .line 1686
    goto :goto_3

    .line 1680
    :cond_6
    iget v3, p0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/LockTaskController;->isPackageWhitelisted(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1681
    move v0, v4

    goto :goto_2

    :cond_7
    nop

    :goto_2
    iput v0, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    .line 1682
    nop

    .line 1697
    :goto_3
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_LOCKTASK:Z

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLockTaskAuth: task="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mLockTaskAuth="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1698
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->lockTaskAuthToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1697
    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    :cond_8
    return-void
.end method

.method private setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/Task;)V
    .locals 3
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "origin"    # Lcom/android/server/wm/Task;

    .line 4699
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 4700
    .local v0, "topActivity":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 4701
    .local v2, "leaf":Lcom/android/server/wm/Task;
    :goto_0
    if-nez v2, :cond_1

    .line 4702
    return-void

    .line 4704
    :cond_1
    if-eq v2, p0, :cond_2

    .line 4705
    invoke-direct {v2, p1, p2}, Lcom/android/server/wm/Task;->setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/Task;)V

    .line 4706
    return-void

    .line 4708
    :cond_2
    iput-object p1, p0, Lcom/android/server/wm/Task;->mMainWindowSizeChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 4709
    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, p2

    :goto_1
    iput-object v1, p0, Lcom/android/server/wm/Task;->mMainWindowSizeChangeTask:Lcom/android/server/wm/Task;

    .line 4710
    return-void
.end method

.method private static setTaskDescriptionFromActivityAboveRoot(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityManager$TaskDescription;)Z
    .locals 2
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "root"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "td"    # Landroid/app/ActivityManager$TaskDescription;

    .line 1812
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v0, :cond_6

    .line 1813
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 1814
    .local v0, "atd":Landroid/app/ActivityManager$TaskDescription;
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1815
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setLabel(Ljava/lang/String;)V

    .line 1817
    :cond_0
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getRawIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1818
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getRawIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setIcon(Landroid/graphics/drawable/Icon;)V

    .line 1820
    :cond_1
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1821
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setIconFilename(Ljava/lang/String;)V

    .line 1823
    :cond_2
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v1

    if-nez v1, :cond_3

    .line 1824
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setPrimaryColor(I)V

    .line 1826
    :cond_3
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v1

    if-nez v1, :cond_4

    .line 1827
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setBackgroundColor(I)V

    .line 1829
    :cond_4
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v1

    if-nez v1, :cond_5

    .line 1830
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setStatusBarColor(I)V

    .line 1831
    nop

    .line 1832
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getEnsureStatusBarContrastWhenTransparent()Z

    move-result v1

    .line 1831
    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setEnsureStatusBarContrastWhenTransparent(Z)V

    .line 1834
    :cond_5
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getNavigationBarColor()I

    move-result v1

    if-nez v1, :cond_6

    .line 1835
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getNavigationBarColor()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setNavigationBarColor(I)V

    .line 1836
    nop

    .line 1837
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getEnsureNavigationBarContrastWhenTransparent()Z

    move-result v1

    .line 1836
    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setEnsureNavigationBarContrastWhenTransparent(Z)V

    .line 1843
    .end local v0    # "atd":Landroid/app/ActivityManager$TaskDescription;
    :cond_6
    if-ne p0, p1, :cond_7

    const/4 v0, 0x1

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldStartChangeTransition(II)Z
    .locals 4
    .param p1, "prevWinMode"    # I
    .param p2, "newWinMode"    # I

    .line 2028
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisableTransitionAnimation:Z

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 2029
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2030
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2031
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2032
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 2037
    :cond_0
    const/4 v0, 0x5

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    if-ne p2, v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    if-eq v3, v0, :cond_3

    move v1, v2

    :cond_3
    return v1

    .line 2033
    :cond_4
    :goto_2
    return v1
.end method

.method private supportsSplitScreenWindowingModeInner()Z
    .locals 2

    .line 1711
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->supportsSplitScreenWindowingMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsSplitScreenMultiWindow:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    if-nez v0, :cond_0

    .line 1714
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->isResizeable(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 1715
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isPreserveOrientationMode(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 1711
    :goto_0
    return v1
.end method

.method private updateShadowsRadius(ZLandroid/view/SurfaceControl$Transaction;)V
    .locals 3
    .param p1, "taskIsFocused"    # Z
    .param p2, "pendingTransaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 4664
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mRenderShadowsInCompositor:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4666
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/Task;->getShadowRadius(Z)F

    move-result v0

    .line 4667
    .local v0, "newShadowRadius":F
    iget v1, p0, Lcom/android/server/wm/Task;->mShadowRadius:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_1

    .line 4668
    iput v0, p0, Lcom/android/server/wm/Task;->mShadowRadius:F

    .line 4669
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/Task;->mShadowRadius:F

    invoke-virtual {p2, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setShadowRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 4671
    :cond_1
    return-void

    .line 4664
    .end local v0    # "newShadowRadius":F
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method addChild(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1459
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 1460
    return-void
.end method

.method addChild(Lcom/android/server/wm/WindowContainer;I)V
    .locals 9
    .param p1, "child"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "index"    # I

    .line 1408
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v0

    .line 1411
    .local v0, "hadChild":Z
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v1

    .line 1413
    .local v1, "activityType":I
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/Task;->getAdjustedChildPosition(Lcom/android/server/wm/WindowContainer;I)I

    move-result p2

    .line 1414
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 1416
    sget-boolean v2, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam0":Ljava/lang/String;
    sget-object v4, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/server/wm/ProtoLogGroup;

    const v5, 0x4f52761a

    const/4 v6, 0x0

    new-array v7, v3, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-static {v4, v5, v8, v6, v7}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1420
    .end local v2    # "protoLogParam0":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1421
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    move-object v4, p1

    check-cast v4, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/TaskDisplayArea;->addStackReferenceIfNeeded(Lcom/android/server/wm/ActivityStack;)V

    .line 1426
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->updateUIDsPresentOnDisplay()V

    .line 1428
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 1429
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v2, :cond_2

    return-void

    .line 1431
    :cond_2
    iput-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->inHistory:Z

    .line 1434
    if-nez v0, :cond_4

    .line 1435
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v4

    if-nez v4, :cond_3

    .line 1440
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityRecord;->setActivityType(I)V

    .line 1442
    :cond_3
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/wm/Task;->setActivityType(I)V

    .line 1443
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->isPersistable()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/wm/Task;->isPersistable:Z

    .line 1444
    iget v4, v2, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    iput v4, p0, Lcom/android/server/wm/Task;->mCallingUid:I

    .line 1445
    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    .line 1446
    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    .line 1448
    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->maxRecents:I

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1449
    invoke-static {}, Landroid/app/ActivityTaskManager;->getMaxAppRecentsLimitStatic()I

    move-result v4

    .line 1448
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/Task;->maxRecents:I

    goto :goto_0

    .line 1452
    :cond_4
    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityRecord;->setActivityType(I)V

    .line 1455
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateEffectiveIntent()V

    .line 1456
    return-void
.end method

.method adjustBoundsForDisplayChangeIfNeeded(Lcom/android/server/wm/DisplayContent;)V
    .locals 6
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 3169
    if-nez p1, :cond_0

    .line 3170
    return-void

    .line 3172
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->matchParentBounds()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3175
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 3176
    return-void

    .line 3178
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    .line 3179
    .local v0, "displayId":I
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    iget v1, v1, Landroid/view/DisplayInfo;->rotation:I

    .line 3180
    .local v1, "newRotation":I
    iget v2, p0, Lcom/android/server/wm/Task;->mLastRotationDisplayId:I

    if-eq v0, v2, :cond_2

    .line 3184
    iput v0, p0, Lcom/android/server/wm/Task;->mLastRotationDisplayId:I

    .line 3185
    iput v1, p0, Lcom/android/server/wm/Task;->mRotation:I

    .line 3186
    return-void

    .line 3189
    :cond_2
    iget v2, p0, Lcom/android/server/wm/Task;->mRotation:I

    if-ne v2, v1, :cond_3

    .line 3192
    return-void

    .line 3200
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3202
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->canResizeTask()Z

    move-result v2

    if-nez v2, :cond_4

    .line 3203
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 3204
    return-void

    .line 3207
    :cond_4
    iget v2, p0, Lcom/android/server/wm/Task;->mRotation:I

    iget-object v3, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v1, v3}, Lcom/android/server/wm/DisplayContent;->rotateBounds(IILandroid/graphics/Rect;)V

    .line 3208
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    move-result v2

    if-eqz v2, :cond_5

    .line 3209
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v3, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->resizeTask(ILandroid/graphics/Rect;I)Z

    .line 3211
    :cond_5
    return-void
.end method

.method adjustFocusToNextFocusableTask(Ljava/lang/String;)Lcom/android/server/wm/ActivityStack;
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 2742
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/Task;->adjustFocusToNextFocusableTask(Ljava/lang/String;ZZ)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method adjustFocusToNextFocusableTask(Ljava/lang/String;ZZ)Lcom/android/server/wm/ActivityStack;
    .locals 6
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "allowFocusSelf"    # Z
    .param p3, "moveDisplayToTop"    # Z

    .line 2771
    invoke-direct {p0, p2}, Lcom/android/server/wm/Task;->getNextFocusableTask(Z)Lcom/android/server/wm/Task;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityStack;

    .line 2772
    .local v0, "focusableTask":Lcom/android/server/wm/ActivityStack;
    if-nez v0, :cond_0

    .line 2773
    iget-object v1, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    move-object v2, p0

    check-cast v2, Lcom/android/server/wm/ActivityStack;

    xor-int/lit8 v3, p2, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/RootWindowContainer;->getNextFocusableStack(Lcom/android/server/wm/ActivityStack;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2776
    :cond_0
    if-nez v0, :cond_1

    .line 2777
    const/4 v1, 0x0

    return-object v1

    .line 2780
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    .line 2781
    .local v1, "rootTask":Lcom/android/server/wm/ActivityStack;
    if-nez p3, :cond_4

    .line 2785
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    .line 2786
    .local v2, "parent":Lcom/android/server/wm/WindowContainer;
    move-object v3, v0

    .line 2788
    .local v3, "next":Lcom/android/server/wm/WindowContainer;
    :cond_2
    const v4, 0x7fffffff

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 2789
    move-object v3, v2

    .line 2790
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    .line 2791
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_3

    if-nez v2, :cond_2

    .line 2792
    :cond_3
    return-object v1

    .line 2795
    .end local v2    # "parent":Lcom/android/server/wm/WindowContainer;
    .end local v3    # "next":Lcom/android/server/wm/WindowContainer;
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " adjustFocusToNextFocusableStack"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2796
    .local v2, "myReason":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 2797
    .local v3, "top":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz v3, :cond_5

    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v4, :cond_6

    .line 2800
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/wm/TaskDisplayArea;->moveHomeActivityToTop(Ljava/lang/String;)V

    .line 2801
    return-object v1

    .line 2806
    :cond_6
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 2808
    iget-object v4, v1, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_7

    .line 2809
    iget-object v4, p0, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStackSupervisor;->updateTopResumedActivityIfNeeded()V

    .line 2813
    iget-object v4, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v1, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4, v5, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 2815
    :cond_7
    return-object v1
.end method

.method adjustForMinimalTaskDimensions(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "previousBounds"    # Landroid/graphics/Rect;
    .param p3, "parentConfig"    # Landroid/content/res/Configuration;

    .line 1859
    iget v0, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    .line 1860
    .local v0, "minWidth":I
    iget v1, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    .line 1864
    .local v1, "minHeight":I
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1865
    iget-object v2, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v2, v2, Lcom/android/server/wm/RootWindowContainer;->mDefaultMinSizeOfResizeableTaskDp:I

    .line 1866
    .local v2, "defaultMinSizeDp":I
    iget v3, p3, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v3, v3

    const/high16 v4, 0x43200000    # 160.0f

    div-float/2addr v3, v4

    .line 1867
    .local v3, "density":F
    int-to-float v4, v2

    mul-float/2addr v4, v3

    float-to-int v4, v4

    .line 1869
    .local v4, "defaultMinSize":I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_0

    .line 1870
    move v0, v4

    .line 1872
    :cond_0
    if-ne v1, v5, :cond_1

    .line 1873
    move v1, v4

    .line 1876
    .end local v2    # "defaultMinSizeDp":I
    .end local v3    # "density":F
    .end local v4    # "defaultMinSize":I
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1879
    iget-object v2, p3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 1880
    .local v2, "parentBounds":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-lt v3, v0, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-lt v3, v1, :cond_2

    .line 1881
    return-void

    .line 1883
    :cond_2
    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1885
    .end local v2    # "parentBounds":Landroid/graphics/Rect;
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v0, v2, :cond_4

    move v2, v3

    goto :goto_0

    :cond_4
    move v2, v4

    .line 1886
    .local v2, "adjustWidth":Z
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v1, v5, :cond_5

    goto :goto_1

    :cond_5
    move v3, v4

    .line 1887
    .local v3, "adjustHeight":Z
    :goto_1
    if-nez v2, :cond_6

    if-nez v3, :cond_6

    .line 1888
    return-void

    .line 1891
    :cond_6
    if-eqz v2, :cond_8

    .line 1892
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p2, Landroid/graphics/Rect;->right:I

    if-ne v4, v5, :cond_7

    .line 1893
    iget v4, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v0

    iput v4, p1, Landroid/graphics/Rect;->left:I

    goto :goto_2

    .line 1897
    :cond_7
    iget v4, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v0

    iput v4, p1, Landroid/graphics/Rect;->right:I

    .line 1900
    :cond_8
    :goto_2
    if-eqz v3, :cond_a

    .line 1901
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    if-ne v4, v5, :cond_9

    .line 1902
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v1

    iput v4, p1, Landroid/graphics/Rect;->top:I

    goto :goto_3

    .line 1906
    :cond_9
    iget v4, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 1909
    :cond_a
    :goto_3
    return-void
.end method

.method protected applyAnimationUnchecked(Landroid/view/WindowManager$LayoutParams;ZIZLjava/util/ArrayList;)V
    .locals 10
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "enter"    # Z
    .param p3, "transit"    # I
    .param p4, "isVoiceInteraction"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowManager$LayoutParams;",
            "ZIZ",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;)V"
        }
    .end annotation

    .line 3651
    .local p5, "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowContainer;>;"
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    .line 3652
    .local v0, "control":Lcom/android/server/wm/RecentsAnimationController;
    if-eqz v0, :cond_1

    .line 3655
    if-eqz p2, :cond_2

    .line 3656
    sget-boolean v1, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam0":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam1":Ljava/lang/String;
    invoke-static {p3}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam2":Ljava/lang/String;
    sget-object v4, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v5, 0xc8fcb49

    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v9, 0x1

    aput-object v2, v7, v9

    const/4 v9, 0x2

    aput-object v3, v7, v9

    invoke-static {v4, v5, v8, v6, v7}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 3659
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    .end local v2    # "protoLogParam1":Ljava/lang/String;
    .end local v3    # "protoLogParam2":Ljava/lang/String;
    :cond_0
    new-instance v1, Lcom/android/server/wm/-$$Lambda$Task$kSFegYxPHp4qdhnWjQbYn0gwVbI;

    invoke-direct {v1, p5}, Lcom/android/server/wm/-$$Lambda$Task$kSFegYxPHp4qdhnWjQbYn0gwVbI;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/RecentsAnimationController;->addTaskToTargets(Lcom/android/server/wm/Task;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    goto :goto_0

    .line 3666
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/android/server/wm/WindowContainer;->applyAnimationUnchecked(Landroid/view/WindowManager$LayoutParams;ZIZLjava/util/ArrayList;)V

    .line 3668
    :cond_2
    :goto_0
    return-void
.end method

.method asTask()Lcom/android/server/wm/Task;
    .locals 0

    .line 3762
    return-object p0
.end method

.method canAffectSystemUiFlags()Z
    .locals 1

    .line 3575
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCanAffectSystemUiFlags:Z

    return v0
.end method

.method canBeLaunchedOnDisplay(I)Z
    .locals 3
    .param p1, "displayId"    # I

    .line 1726
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v1, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->canPlaceEntityOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method canCreateRemoteAnimationTarget()Z
    .locals 1

    .line 3367
    const/4 v0, 0x1

    return v0
.end method

.method cancelTaskWindowTransition()V
    .locals 2

    .line 3215
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 3216
    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    .line 3215
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3218
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method cleanUpActivityReferences(Lcom/android/server/wm/ActivityRecord;)V
    .locals 3
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1225
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 1226
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1227
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/Task;->cleanUpActivityReferences(Lcom/android/server/wm/ActivityRecord;)V

    .line 1228
    return-void

    .line 1230
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->removeTimeouts()V

    .line 1231
    iget-object v1, p0, Lcom/android/server/wm/Task;->mExitingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1233
    iget-object v1, p0, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-ne v1, p1, :cond_1

    .line 1234
    const-string v1, "cleanUpActivityReferences"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/Task;->setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 1236
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_2

    if-ne v1, p1, :cond_2

    .line 1237
    iput-object v2, p0, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1239
    :cond_2
    return-void
.end method

.method clearPreserveNonFloatingState()V
    .locals 1

    .line 3587
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mPreserveNonFloatingState:Z

    .line 3588
    return-void
.end method

.method clearRootProcess()V
    .locals 1

    .line 2677
    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_0

    .line 2678
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowProcessController;->removeRecentTask(Lcom/android/server/wm/Task;)V

    .line 2679
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    .line 2681
    :cond_0
    return-void
.end method

.method computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "inOutConfig"    # Landroid/content/res/Configuration;
    .param p2, "parentConfig"    # Landroid/content/res/Configuration;

    .line 2292
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/server/wm/Task;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/view/DisplayInfo;Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)V

    .line 2294
    return-void
.end method

.method computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/view/DisplayInfo;)V
    .locals 1
    .param p1, "inOutConfig"    # Landroid/content/res/Configuration;
    .param p2, "parentConfig"    # Landroid/content/res/Configuration;
    .param p3, "overrideDisplayInfo"    # Landroid/view/DisplayInfo;

    .line 2281
    if-eqz p3, :cond_0

    .line 2283
    const/4 v0, 0x0

    iput v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 2284
    invoke-static {p1}, Lcom/android/server/wm/Task;->invalidateAppBoundsConfig(Landroid/content/res/Configuration;)V

    .line 2286
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/Task;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/view/DisplayInfo;Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)V

    .line 2288
    return-void
.end method

.method computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/view/DisplayInfo;Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)V
    .locals 16
    .param p1, "inOutConfig"    # Landroid/content/res/Configuration;
    .param p2, "parentConfig"    # Landroid/content/res/Configuration;
    .param p3, "overrideDisplayInfo"    # Landroid/view/DisplayInfo;
    .param p4, "compatInsets"    # Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    .line 2318
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    iget-object v4, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v4

    .line 2319
    .local v4, "windowingMode":I
    if-nez v4, :cond_0

    .line 2320
    iget-object v5, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v4

    .line 2323
    :cond_0
    iget v5, v1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v5, v5

    .line 2324
    .local v5, "density":F
    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-nez v6, :cond_1

    .line 2325
    iget v6, v2, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v5, v6

    .line 2327
    :cond_1
    const v6, 0x3bcccccd    # 0.00625f

    mul-float/2addr v5, v6

    .line 2333
    iget-object v6, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 2334
    .local v6, "parentBounds":Landroid/graphics/Rect;
    iget-object v7, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 2335
    .local v7, "resolvedBounds":Landroid/graphics/Rect;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_0

    .line 2339
    :cond_2
    iget-object v8, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2340
    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v8

    .local v8, "insideParentBounds":Z
    goto :goto_1

    .line 2336
    .end local v8    # "insideParentBounds":Z
    :cond_3
    :goto_0
    iget-object v8, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2337
    const/4 v8, 0x1

    .line 2345
    .restart local v8    # "insideParentBounds":Z
    :goto_1
    if-eqz v3, :cond_4

    const/4 v10, 0x1

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    .line 2347
    .local v10, "customContainerPolicy":Z
    :goto_2
    iget-object v11, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v11}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v11

    .line 2348
    .local v11, "outAppBounds":Landroid/graphics/Rect;
    const/16 v12, 0x64

    if-eqz v11, :cond_5

    invoke-virtual {v11}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 2350
    :cond_5
    iget-object v13, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v14, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 2351
    iget-object v13, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v13}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v11

    .line 2359
    if-nez v10, :cond_8

    const/4 v13, 0x5

    if-eq v4, v13, :cond_8

    if-eq v4, v12, :cond_8

    .line 2362
    if-eqz v8, :cond_6

    .line 2363
    iget-object v13, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v13}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v13

    .local v13, "containingAppBounds":Landroid/graphics/Rect;
    goto :goto_4

    .line 2368
    .end local v13    # "containingAppBounds":Landroid/graphics/Rect;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v13

    .line 2369
    .local v13, "displayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v13, :cond_7

    .line 2370
    invoke-virtual {v13}, Lcom/android/server/wm/TaskDisplayArea;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v14

    goto :goto_3

    :cond_7
    const/4 v14, 0x0

    :goto_3
    move-object v13, v14

    .line 2372
    .local v13, "containingAppBounds":Landroid/graphics/Rect;
    :goto_4
    if-eqz v13, :cond_8

    invoke-virtual {v13}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_8

    .line 2373
    invoke-virtual {v11, v13}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 2378
    .end local v13    # "containingAppBounds":Landroid/graphics/Rect;
    :cond_8
    iget v13, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v13, :cond_9

    iget v13, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-nez v13, :cond_14

    .line 2380
    :cond_9
    if-nez v10, :cond_a

    invoke-static {v4}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 2381
    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    iget-object v14, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2382
    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpStableBounds:Landroid/graphics/Rect;

    iget-object v14, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_6

    .line 2383
    :cond_a
    if-nez v10, :cond_d

    if-nez p3, :cond_b

    .line 2384
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v13

    if-eqz v13, :cond_d

    .line 2385
    :cond_b
    if-eqz p3, :cond_c

    .line 2386
    move-object/from16 v13, p3

    goto :goto_5

    .line 2387
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v13

    :goto_5
    nop

    .line 2393
    .local v13, "di":Landroid/view/DisplayInfo;
    iget-object v14, v0, Lcom/android/server/wm/Task;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    iget-object v15, v0, Lcom/android/server/wm/Task;->mTmpStableBounds:Landroid/graphics/Rect;

    iget-object v9, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v14, v15, v9, v13}, Lcom/android/server/wm/Task;->calculateInsetFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;)V

    .line 2394
    .end local v13    # "di":Landroid/view/DisplayInfo;
    goto :goto_6

    .line 2397
    :cond_d
    iget-object v9, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v9}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v9

    .line 2398
    .local v9, "rotation":I
    const/4 v13, -0x1

    if-ne v9, v13, :cond_e

    .line 2399
    iget-object v14, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v14}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v9

    .line 2401
    :cond_e
    if-eq v9, v13, :cond_f

    if-eqz v10, :cond_f

    .line 2402
    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    iget-object v14, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2403
    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpStableBounds:Landroid/graphics/Rect;

    iget-object v14, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2404
    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v13, v9}, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->getBoundsByRotation(Landroid/graphics/Rect;I)V

    .line 2405
    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    iget-object v14, v0, Lcom/android/server/wm/Task;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v15, v3, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object v15, v15, v9

    invoke-static {v13, v14, v15}, Lcom/android/server/wm/Task;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2407
    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpStableBounds:Landroid/graphics/Rect;

    iget-object v14, v0, Lcom/android/server/wm/Task;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v15, v3, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    aget-object v15, v15, v9

    invoke-static {v13, v14, v15}, Lcom/android/server/wm/Task;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2409
    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v11, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_6

    .line 2412
    :cond_f
    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v13, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2413
    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v13, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2417
    .end local v9    # "rotation":I
    :goto_6
    iget v9, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-nez v9, :cond_11

    .line 2418
    iget-object v9, v0, Lcom/android/server/wm/Task;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v5

    float-to-int v9, v9

    .line 2419
    .local v9, "overrideScreenWidthDp":I
    if-eqz v8, :cond_10

    if-nez v10, :cond_10

    .line 2420
    iget v13, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v9, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    goto :goto_7

    .line 2421
    :cond_10
    move v13, v9

    :goto_7
    iput v13, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 2423
    .end local v9    # "overrideScreenWidthDp":I
    :cond_11
    iget v9, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-nez v9, :cond_13

    .line 2424
    iget-object v9, v0, Lcom/android/server/wm/Task;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v5

    float-to-int v9, v9

    .line 2425
    .local v9, "overrideScreenHeightDp":I
    if-eqz v8, :cond_12

    if-nez v10, :cond_12

    .line 2426
    iget v13, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v9, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    goto :goto_8

    .line 2427
    :cond_12
    move v13, v9

    :goto_8
    iput v13, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 2430
    .end local v9    # "overrideScreenHeightDp":I
    :cond_13
    iget v9, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-nez v9, :cond_14

    .line 2432
    invoke-static {v4}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 2434
    iget-object v9, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    .line 2435
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-static {v9, v13}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v5

    float-to-int v9, v9

    iput v9, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 2441
    :cond_14
    iget v9, v1, Landroid/content/res/Configuration;->orientation:I

    if-nez v9, :cond_16

    .line 2442
    iget v9, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v13, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-gt v9, v13, :cond_15

    .line 2443
    const/4 v9, 0x1

    goto :goto_9

    :cond_15
    const/4 v9, 0x2

    :goto_9
    iput v9, v1, Landroid/content/res/Configuration;->orientation:I

    .line 2445
    :cond_16
    iget v9, v1, Landroid/content/res/Configuration;->screenLayout:I

    if-nez v9, :cond_17

    .line 2449
    iget-object v9, v0, Lcom/android/server/wm/Task;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v5

    float-to-int v9, v9

    .line 2450
    .local v9, "compatScreenWidthDp":I
    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v5

    float-to-int v13, v13

    .line 2452
    .local v13, "compatScreenHeightDp":I
    iget v14, v2, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v14, v9, v13}, Lcom/android/server/wm/Task;->computeScreenLayoutOverride(III)I

    move-result v14

    iput v14, v1, Landroid/content/res/Configuration;->screenLayout:I

    .line 2456
    sget-boolean v14, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    if-eqz v14, :cond_17

    if-ne v4, v12, :cond_17

    iget v12, v1, Landroid/content/res/Configuration;->screenLayout:I

    if-eqz v12, :cond_17

    .line 2459
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v12, v12, Landroid/content/res/Configuration;->screenLayout:I

    iput v12, v1, Landroid/content/res/Configuration;->screenLayout:I

    .line 2463
    .end local v9    # "compatScreenWidthDp":I
    .end local v13    # "compatScreenHeightDp":I
    :cond_17
    return-void
.end method

.method computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)V
    .locals 1
    .param p1, "inOutConfig"    # Landroid/content/res/Configuration;
    .param p2, "parentConfig"    # Landroid/content/res/Configuration;
    .param p3, "compatInsets"    # Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    .line 2299
    if-eqz p3, :cond_0

    .line 2301
    invoke-static {p1}, Lcom/android/server/wm/Task;->invalidateAppBoundsConfig(Landroid/content/res/Configuration;)V

    .line 2303
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/wm/Task;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/view/DisplayInfo;Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)V

    .line 2305
    return-void
.end method

.method computeFullscreenBounds(Landroid/graphics/Rect;Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;I)V
    .locals 10
    .param p1, "outBounds"    # Landroid/graphics/Rect;
    .param p2, "refActivity"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "parentBounds"    # Landroid/graphics/Rect;
    .param p4, "parentOrientation"    # I

    .line 2564
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 2565
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->handlesOrientationChangeFromDescendant()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2566
    return-void

    .line 2568
    :cond_0
    if-nez p2, :cond_1

    .line 2572
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    .line 2577
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 2579
    .local v0, "overrideOrientation":I
    if-nez v0, :cond_3

    if-nez p2, :cond_2

    goto :goto_0

    .line 2580
    :cond_2
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getRequestedConfigurationOrientation()I

    move-result v1

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v0

    .line 2581
    .local v1, "forcedOrientation":I
    :goto_1
    if-eqz v1, :cond_6

    if-ne v1, p4, :cond_4

    goto :goto_3

    .line 2585
    :cond_4
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 2586
    .local v2, "parentWidth":I
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 2587
    .local v3, "parentHeight":I
    int-to-float v4, v3

    int-to-float v5, v2

    div-float/2addr v4, v5

    .line 2588
    .local v4, "aspect":F
    const/4 v5, 0x2

    if-ne v1, v5, :cond_5

    .line 2589
    int-to-float v5, v2

    div-float/2addr v5, v4

    float-to-int v5, v5

    .line 2590
    .local v5, "height":I
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    div-int/lit8 v7, v5, 0x2

    sub-int/2addr v6, v7

    .line 2591
    .local v6, "top":I
    iget v7, p3, Landroid/graphics/Rect;->left:I

    iget v8, p3, Landroid/graphics/Rect;->right:I

    add-int v9, v6, v5

    invoke-virtual {p1, v7, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 2592
    .end local v5    # "height":I
    .end local v6    # "top":I
    goto :goto_2

    .line 2593
    :cond_5
    int-to-float v5, v3

    mul-float/2addr v5, v4

    float-to-int v5, v5

    .line 2594
    .local v5, "width":I
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    div-int/lit8 v7, v5, 0x2

    sub-int/2addr v6, v7

    .line 2595
    .local v6, "left":I
    iget v7, p3, Landroid/graphics/Rect;->top:I

    add-int v8, v6, v5

    iget v9, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 2597
    .end local v5    # "width":I
    .end local v6    # "left":I
    :goto_2
    return-void

    .line 2582
    .end local v2    # "parentWidth":I
    .end local v3    # "parentHeight":I
    .end local v4    # "aspect":F
    :cond_6
    :goto_3
    return-void
.end method

.method createRemoteAnimationTarget(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;)Landroid/view/RemoteAnimationTarget;
    .locals 3
    .param p1, "record"    # Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    .line 3360
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3361
    .local v0, "activity":Lcom/android/server/wm/ActivityRecord;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createRemoteAnimationTarget "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " top most activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3362
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityRecord;->createRemoteAnimationTarget(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;)Landroid/view/RemoteAnimationTarget;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method cropWindowsToStackBounds()Z
    .locals 3

    .line 3047
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeRecents()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3050
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 3052
    .local v0, "rootTask":Lcom/android/server/wm/Task;
    iget-boolean v1, v0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 3053
    .local v1, "topNonOrgTask":Lcom/android/server/wm/Task;
    :goto_0
    if-eq p0, v1, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 3057
    .end local v0    # "rootTask":Lcom/android/server/wm/Task;
    .end local v1    # "topNonOrgTask":Lcom/android/server/wm/Task;
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    return v0

    .line 3054
    .restart local v0    # "rootTask":Lcom/android/server/wm/Task;
    .restart local v1    # "topNonOrgTask":Lcom/android/server/wm/Task;
    :cond_3
    :goto_1
    const/4 v2, 0x0

    return v2
.end method

.method dontAnimateDimExit()V
    .locals 1

    .line 3579
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {v0}, Lcom/android/server/wm/Dimmer;->dontAnimateExit()V

    .line 3580
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 3941
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "userId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3942
    const-string v0, " effectiveUid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 3943
    const-string v0, " mCallingUid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->mCallingUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 3944
    const-string v0, " mUserSetupComplete="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mUserSetupComplete:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3945
    const-string v0, " mCallingPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3946
    const-string v0, " mCallingFeatureId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3947
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 3948
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "affinity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3949
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 3952
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_1

    .line 3950
    :cond_2
    :goto_0
    const-string v0, " root="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3955
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 3956
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "windowLayoutAffinity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3958
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    if-eqz v0, :cond_6

    .line 3959
    :cond_5
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "VOICE: session=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3960
    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3961
    const-string v0, " interactor=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3962
    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3964
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    const/16 v1, 0x7d

    const/16 v2, 0x80

    if-eqz v0, :cond_7

    .line 3965
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3966
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "intent={"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3967
    iget-object v3, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 3968
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3969
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3971
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    if-eqz v0, :cond_8

    .line 3972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3973
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "affinityIntent={"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3974
    iget-object v3, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 3975
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3976
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3978
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_9

    .line 3979
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "origActivity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3980
    iget-object v0, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3982
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_a

    .line 3983
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mActivityComponent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3984
    iget-object v0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3986
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->isPersistable:Z

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeStandard()Z

    move-result v0

    if-nez v0, :cond_c

    .line 3987
    :cond_b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "autoRemoveRecents="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3988
    const-string v0, " isPersistable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->isPersistable:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3989
    const-string v0, " activityType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3991
    :cond_c
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->rootWasReset:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    if-nez v0, :cond_d

    iget v0, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    .line 3993
    :cond_d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "rootWasReset="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->rootWasReset:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3994
    const-string v0, " mNeverRelinquishIdentity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3995
    const-string v0, " mReuseTask="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3996
    const-string v0, " mLockTaskAuth="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->lockTaskAuthToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3998
    :cond_e
    iget v0, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v0, v1, :cond_f

    iget v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    if-nez v0, :cond_f

    iget v0, p0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_12

    .line 4001
    :cond_f
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "affiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4002
    const-string v0, " prevAffiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4003
    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4004
    iget-object v1, p0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    const-string v2, "null"

    if-nez v1, :cond_10

    .line 4005
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 4007
    :cond_10
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4009
    :goto_2
    const-string v1, ") nextAffiliation="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 4010
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4011
    iget-object v0, p0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-nez v0, :cond_11

    .line 4012
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    .line 4014
    :cond_11
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4016
    :goto_3
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4018
    :cond_12
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Activities="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4019
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->askedCompatMode:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->inRecents:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->isAvailable:Z

    if-nez v0, :cond_14

    .line 4020
    :cond_13
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "askedCompatMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->askedCompatMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4021
    const-string v0, " inRecents="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->inRecents:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4022
    const-string v0, " isAvailable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->isAvailable:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4024
    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/Task;->lastDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_15

    .line 4025
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "lastDescription="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->lastDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4027
    :cond_15
    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_16

    .line 4028
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRootProcess="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4030
    :cond_16
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " stackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4031
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHasBeenVisible="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getHasBeenVisible()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4032
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mResizeMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4033
    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->resizeModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4034
    const-string v0, " mSupportsPictureInPicture="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4035
    const-string v0, " isResizeable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4036
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "lastActiveTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/wm/Task;->lastActiveTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 4037
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " (inactive for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getInactiveDuration()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "s)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4038
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .line 3672
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 3673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "bounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3675
    .local v0, "doublePrefix":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 3676
    iget-object v2, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 3677
    .local v2, "child":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "* "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3680
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-nez v3, :cond_0

    .line 3681
    invoke-virtual {v2, p1, v0, p3}, Lcom/android/server/wm/WindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 3675
    .end local v2    # "child":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3684
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method fillTaskInfo(Landroid/app/TaskInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/app/TaskInfo;

    .line 3692
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;Z)V

    .line 3693
    return-void
.end method

.method fillTaskInfo(Landroid/app/TaskInfo;Z)V
    .locals 6
    .param p1, "info"    # Landroid/app/TaskInfo;
    .param p2, "stripExtras"    # Z

    .line 3699
    iget-object v0, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    invoke-direct {p0, v0}, Lcom/android/server/wm/Task;->getNumRunningActivities(Lcom/android/server/wm/Task$TaskActivitiesReport;)V

    .line 3700
    iget v0, p0, Lcom/android/server/wm/Task;->mUserId:I

    iput v0, p1, Landroid/app/TaskInfo;->userId:I

    .line 3701
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v0

    iput v0, p1, Landroid/app/TaskInfo;->stackId:I

    .line 3702
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    iput v0, p1, Landroid/app/TaskInfo;->taskId:I

    .line 3703
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayId()I

    move-result v0

    iput v0, p1, Landroid/app/TaskInfo;->displayId:I

    .line 3704
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p1, Landroid/app/TaskInfo;->isRunning:Z

    .line 3705
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    .line 3708
    .local v0, "baseIntent":Landroid/content/Intent;
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    .line 3709
    .local v1, "baseIntentFlags":I
    :goto_1
    if-nez v0, :cond_2

    .line 3710
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    goto :goto_2

    .line 3711
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {v0}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v2

    goto :goto_2

    :cond_3
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    :goto_2
    iput-object v2, p1, Landroid/app/TaskInfo;->baseIntent:Landroid/content/Intent;

    .line 3712
    iget-object v2, p1, Landroid/app/TaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3713
    iget-object v2, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v2, v2, Lcom/android/server/wm/Task$TaskActivitiesReport;->base:Lcom/android/server/wm/ActivityRecord;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 3714
    iget-object v2, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v2, v2, Lcom/android/server/wm/Task$TaskActivitiesReport;->base:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    goto :goto_3

    .line 3715
    :cond_4
    move-object v2, v3

    :goto_3
    iput-object v2, p1, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 3716
    iget-object v2, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v2, v2, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_5

    .line 3717
    iget-object v2, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v2, v2, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    goto :goto_4

    .line 3718
    :cond_5
    move-object v2, v3

    :goto_4
    iput-object v2, p1, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 3719
    iget-object v2, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    iput-object v2, p1, Landroid/app/TaskInfo;->origActivity:Landroid/content/ComponentName;

    .line 3720
    iget-object v2, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    iput-object v2, p1, Landroid/app/TaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 3721
    iget-object v2, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget v2, v2, Lcom/android/server/wm/Task$TaskActivitiesReport;->numActivities:I

    iput v2, p1, Landroid/app/TaskInfo;->numActivities:I

    .line 3722
    iget-wide v4, p0, Lcom/android/server/wm/Task;->lastActiveTime:J

    iput-wide v4, p1, Landroid/app/TaskInfo;->lastActiveTime:J

    .line 3723
    new-instance v2, Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/app/ActivityManager$TaskDescription;-><init>(Landroid/app/ActivityManager$TaskDescription;)V

    iput-object v2, p1, Landroid/app/TaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 3724
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->supportsSplitScreenWindowingMode()Z

    move-result v2

    iput-boolean v2, p1, Landroid/app/TaskInfo;->supportsSplitScreenMultiWindow:Z

    .line 3725
    iget-object v2, p1, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 3726
    iget-object v2, p0, Lcom/android/server/wm/Task;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v2

    iput-object v2, p1, Landroid/app/TaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 3730
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 3731
    .local v2, "top":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_6

    iget v4, v2, Lcom/android/server/wm/Task;->mResizeMode:I

    goto :goto_5

    :cond_6
    iget v4, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    :goto_5
    iput v4, p1, Landroid/app/TaskInfo;->resizeMode:I

    .line 3732
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v4

    iput v4, p1, Landroid/app/TaskInfo;->topActivityType:I

    .line 3733
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v4

    iput-boolean v4, p1, Landroid/app/TaskInfo;->isResizeable:Z

    .line 3735
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 3736
    .local v4, "rootActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_8

    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v5}, Landroid/app/PictureInPictureParams;->empty()Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_6

    .line 3739
    :cond_7
    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    iput-object v5, p1, Landroid/app/TaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    goto :goto_7

    .line 3737
    :cond_8
    :goto_6
    iput-object v3, p1, Landroid/app/TaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 3741
    :goto_7
    iget-object v5, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v5, v5, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    if-eqz v5, :cond_9

    .line 3742
    iget-object v3, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v3, v3, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    goto :goto_8

    .line 3743
    :cond_9
    nop

    :goto_8
    iput-object v3, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 3744
    return-void
.end method

.method fillsParent()Z
    .locals 1

    .line 3499
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->matchParentBounds()Z

    move-result v0

    return v0
.end method

.method findActivityInHistory(Landroid/content/ComponentName;)Lcom/android/server/wm/ActivityRecord;
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 1763
    sget-object v0, Lcom/android/server/wm/-$$Lambda$Task$BP51Xfr33NBfsJ4rKO04RomX2Tg;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$BP51Xfr33NBfsJ4rKO04RomX2Tg;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 1764
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    .line 1763
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v0

    .line 1765
    .local v0, "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1766
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 1767
    return-object v1
.end method

.method forAllLeafTasks(Ljava/util/function/Consumer;Z)V
    .locals 4
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/Task;",
            ">;Z)V"
        }
    .end annotation

    .line 3504
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/Task;>;"
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 3505
    .local v0, "count":I
    const/4 v1, 0x1

    .line 3506
    .local v1, "isLeafTask":Z
    if-eqz p2, :cond_2

    .line 3507
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 3508
    iget-object v3, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 3509
    .local v3, "child":Lcom/android/server/wm/Task;
    if-eqz v3, :cond_0

    .line 3510
    const/4 v1, 0x0

    .line 3511
    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 3507
    .end local v3    # "child":Lcom/android/server/wm/Task;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .end local v2    # "i":I
    :cond_1
    goto :goto_2

    .line 3515
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 3516
    iget-object v3, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 3517
    .restart local v3    # "child":Lcom/android/server/wm/Task;
    if-eqz v3, :cond_3

    .line 3518
    const/4 v1, 0x0

    .line 3519
    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 3515
    .end local v3    # "child":Lcom/android/server/wm/Task;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3523
    .end local v2    # "i":I
    :cond_4
    :goto_2
    if-eqz v1, :cond_5

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3524
    :cond_5
    return-void
.end method

.method forAllLeafTasks(Ljava/util/function/Function;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/wm/Task;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 3540
    .local p1, "callback":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/server/wm/Task;Ljava/lang/Boolean;>;"
    const/4 v0, 0x1

    .line 3541
    .local v0, "isLeafTask":Z
    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 3542
    iget-object v3, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 3543
    .local v3, "child":Lcom/android/server/wm/Task;
    if-eqz v3, :cond_0

    .line 3544
    const/4 v0, 0x0

    .line 3545
    invoke-virtual {v3, p1}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Function;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3546
    return v2

    .line 3541
    .end local v3    # "child":Lcom/android/server/wm/Task;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3550
    .end local v1    # "i":I
    :cond_1
    if-eqz v0, :cond_2

    .line 3551
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 3553
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method forAllTasks(Ljava/util/function/Consumer;Z)V
    .locals 0
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/Task;",
            ">;Z)V"
        }
    .end annotation

    .line 3528
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/Task;>;"
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;Z)V

    .line 3529
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3530
    return-void
.end method

.method forAllTasks(Ljava/util/function/Function;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/wm/Task;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 3534
    .local p1, "callback":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/server/wm/Task;Ljava/lang/Boolean;>;"
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Function;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 3535
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method forceWindowsScaleable(Z)V
    .locals 3
    .param p1, "force"    # Z

    .line 3460
    const-string v0, "forceWindowsScaleable"

    iget-object v1, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 3462
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 3463
    iget-object v2, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowContainer;->forceWindowsScaleableInTransaction(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3462
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3466
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 3467
    nop

    .line 3468
    return-void

    .line 3466
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 3467
    throw v1
.end method

.method public getActivityType()I
    .locals 2

    .line 1398
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getActivityType()I

    move-result v0

    .line 1399
    .local v0, "applicationType":I
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1402
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getActivityType()I

    move-result v1

    return v1

    .line 1400
    :cond_1
    :goto_0
    return v0
.end method

.method getAnimationBounds(I)Landroid/graphics/Rect;
    .locals 1
    .param p1, "appStackClipMode"    # I

    .line 3316
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3318
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 3320
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->getAnimationBounds(I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method getAnimationFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outFrame"    # Landroid/graphics/Rect;
    .param p2, "outInsets"    # Landroid/graphics/Rect;
    .param p3, "outStableInsets"    # Landroid/graphics/Rect;
    .param p4, "outSurfaceInsets"    # Landroid/graphics/Rect;

    .line 3072
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 3073
    .local v0, "windowState":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_0

    .line 3074
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowState;->getAnimationFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 3076
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowContainer;->getAnimationFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3078
    :goto_0
    return-void
.end method

.method public getAnimationLeashParent()Landroid/view/SurfaceControl;
    .locals 1

    .line 3304
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->sHierarchicalAnimations:Z

    if-eqz v0, :cond_0

    .line 3305
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0

    .line 3310
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getAppAnimationLayer(I)Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method getBaseIntent()Landroid/content/Intent;
    .locals 2

    .line 1321
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    return-object v0

    .line 1322
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    return-object v0

    .line 1324
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1325
    .local v0, "topTask":Lcom/android/server/wm/Task;
    if-eq v0, p0, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method getDescendantTaskCount()I
    .locals 4

    .line 2729
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 2730
    .local v0, "currentCount":[I
    sget-object v2, Lcom/android/server/wm/-$$Lambda$Task$Cht49HFU7XWpGlhw2YJ9bd8TX-Q;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$Cht49HFU7XWpGlhw2YJ9bd8TX-Q;

    const-class v3, Lcom/android/server/wm/Task;

    .line 2731
    invoke-static {v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v3

    .line 2730
    invoke-static {v2, v3, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v2

    .line 2732
    .local v2, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 2733
    invoke-interface {v2}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 2734
    aget v1, v0, v1

    return v1
.end method

.method getDimBounds(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "out"    # Landroid/graphics/Rect;

    .line 3111
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 3114
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 3115
    invoke-virtual {v3}, Lcom/android/server/wm/DockedStackDividerController;->isResizing()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 3116
    .local v3, "dockedResizing":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3117
    new-array v1, v1, [Z

    aput-boolean v2, v1, v2

    .line 3118
    .local v1, "foundTop":[Z
    sget-object v4, Lcom/android/server/wm/-$$Lambda$Task$SAhnD6goWlY1lXYn6fWba8f2JLs;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$SAhnD6goWlY1lXYn6fWba8f2JLs;

    const-class v5, Lcom/android/server/wm/ActivityRecord;

    .line 3119
    invoke-static {v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v5

    .line 3118
    invoke-static {v4, v5, p1, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v4

    .line 3120
    .local v4, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {p0, v4}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 3121
    invoke-interface {v4}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 3122
    aget-boolean v2, v1, v2

    if-eqz v2, :cond_1

    .line 3123
    return-void

    .line 3127
    .end local v1    # "foundTop":[Z
    .end local v4    # "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->matchParentBounds()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3134
    if-eqz v3, :cond_2

    .line 3135
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityStack;->getBounds(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 3137
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStack;->getBounds(Landroid/graphics/Rect;)V

    .line 3138
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 3139
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 3142
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3144
    :goto_1
    return-void
.end method

.method getDimmer()Lcom/android/server/wm/Dimmer;
    .locals 1

    .line 3594
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3595
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    return-object v0

    .line 3603
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3607
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    return-object v0

    .line 3604
    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getDimmer()Lcom/android/server/wm/Dimmer;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic getDisplayArea()Lcom/android/server/wm/DisplayArea;
    .locals 1

    .line 176
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    return-object v0
.end method

.method getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;
    .locals 1

    .line 3245
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskDisplayArea;

    return-object v0
.end method

.method getDisplayContent()Lcom/android/server/wm/DisplayContent;
    .locals 2

    .line 2686
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2687
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 2688
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 2687
    :goto_0
    return-object v1
.end method

.method getDisplayId()I
    .locals 2

    .line 2692
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 2693
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method getDragResizeMode()I
    .locals 1

    .line 3165
    iget v0, p0, Lcom/android/server/wm/Task;->mDragResizeMode:I

    return v0
.end method

.method public getFreezeSnapshotTarget()Landroid/view/SurfaceControl;
    .locals 5

    .line 2106
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v0

    .line 2107
    .local v0, "transit":I
    invoke-static {v0}, Lcom/android/server/wm/AppTransition;->isChangeTransit(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2108
    return-object v2

    .line 2112
    :cond_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 2113
    .local v1, "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2114
    iget-object v3, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mAppTransitionController:Lcom/android/server/wm/AppTransitionController;

    .line 2115
    invoke-virtual {v3, p0, v0, v1}, Lcom/android/server/wm/AppTransitionController;->getRemoteAnimationOverride(Lcom/android/server/wm/WindowContainer;ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;

    move-result-object v3

    .line 2117
    .local v3, "adapter":Landroid/view/RemoteAnimationAdapter;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/RemoteAnimationAdapter;->getChangeNeedsSnapshot()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2118
    return-object v2

    .line 2120
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    return-object v2
.end method

.method getHasBeenVisible()Z
    .locals 1

    .line 4507
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mHasBeenVisible:Z

    return v0
.end method

.method getInactiveDuration()J
    .locals 4

    .line 954
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wm/Task;->lastActiveTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method getLastSurfaceSize()Landroid/graphics/Point;
    .locals 1

    .line 2096
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastSurfaceSize:Landroid/graphics/Point;

    return-object v0
.end method

.method getLaunchBounds()Landroid/graphics/Rect;
    .locals 4

    .line 2642
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2643
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2644
    return-object v1

    .line 2647
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v2

    .line 2651
    .local v2, "windowingMode":I
    sget-boolean v3, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    if-eqz v3, :cond_1

    const/16 v3, 0x64

    if-ne v2, v3, :cond_1

    .line 2653
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->getTaskBound()Landroid/graphics/Rect;

    move-result-object v1

    return-object v1

    .line 2657
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeStandardOrUndefined()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 2659
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 2661
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2662
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    return-object v1

    .line 2664
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    return-object v1

    .line 2660
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    :cond_5
    return-object v1
.end method

.method getMainWindowSizeChangeTask()Lcom/android/server/wm/Task;
    .locals 1

    .line 4717
    iget-object v0, p0, Lcom/android/server/wm/Task;->mMainWindowSizeChangeTask:Lcom/android/server/wm/Task;

    return-object v0
.end method

.method getMainWindowSizeChangeTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 1

    .line 4713
    iget-object v0, p0, Lcom/android/server/wm/Task;->mMainWindowSizeChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 2

    .line 3583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getOrientation(I)I
    .locals 1
    .param p1, "candidate"    # I

    .line 3485
    invoke-direct {p0}, Lcom/android/server/wm/Task;->canSpecifyOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->getOrientation(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    :goto_0
    return v0
.end method

.method getProtoFieldId()J
    .locals 2

    .line 4761
    const-wide v0, 0x10b00000005L

    return-wide v0
.end method

.method getResumedActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    .line 1243
    iget-object v0, p0, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    return-object v0
.end method

.method getRootActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 2

    .line 1331
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getRootActivity(Z)Lcom/android/server/wm/ActivityRecord;
    .locals 1
    .param p1, "setToBottomIfNone"    # Z

    .line 1335
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;
    .locals 1
    .param p1, "ignoreRelinquishIdentity"    # Z
    .param p2, "setToBottomIfNone"    # Z

    .line 1339
    iget-object v0, p0, Lcom/android/server/wm/Task;->mFindRootHelper:Lcom/android/server/wm/Task$FindRootHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/Task$FindRootHelper;->findRoot(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getRootTask()Lcom/android/server/wm/Task;
    .locals 3

    .line 2707
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 2708
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    if-nez v0, :cond_0

    return-object p0

    .line 2710
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 2711
    .local v1, "parentTask":Lcom/android/server/wm/Task;
    if-nez v1, :cond_1

    move-object v2, p0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    :goto_0
    return-object v2
.end method

.method getRootTaskId()I
    .locals 1

    .line 2703
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    return v0
.end method

.method getSnapshot(ZZ)Landroid/app/ActivityManager$TaskSnapshot;
    .locals 3
    .param p1, "isLowResolution"    # Z
    .param p2, "restoreFromDisk"    # Z

    .line 945
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    iget v2, p0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/server/wm/WindowManagerService;->getTaskSnapshot(IIZZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v0

    return-object v0
.end method

.method getStack()Lcom/android/server/wm/ActivityStack;
    .locals 1

    .line 2698
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityStack;

    return-object v0
.end method

.method getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;
    .locals 2
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/Task;",
            ">;Z)",
            "Lcom/android/server/wm/Task;"
        }
    .end annotation

    .line 3558
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/Task;>;"
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 3559
    .local v0, "t":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_0

    return-object v0

    .line 3560
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method getTaskDescription()Landroid/app/ActivityManager$TaskDescription;
    .locals 1

    .line 3480
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    return-object v0
.end method

.method getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 1

    .line 3750
    new-instance v0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>()V

    .line 3751
    .local v0, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;)V

    .line 3752
    return-object v0
.end method

.method getTaskOutset()I
    .locals 4

    .line 2078
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mRenderShadowsInCompositor:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2079
    return v1

    .line 2081
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 2082
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 2083
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 2087
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x5

    .line 2088
    invoke-static {v2, v1}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    .line 2087
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    return v2

    .line 2091
    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_1
    return v1
.end method

.method getTopFullscreenActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    .line 3422
    sget-object v0, Lcom/android/server/wm/-$$Lambda$Task$s9wiZSThkGOKye0Zl5MRKv-8Iq0;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$s9wiZSThkGOKye0Zl5MRKv-8Iq0;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    .line 1343
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getTopNonFinishingActivity(Z)Lcom/android/server/wm/ActivityRecord;
    .locals 1
    .param p1, "includeOverlays"    # Z

    .line 1347
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/Task;->getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    .line 3429
    sget-object v0, Lcom/android/server/wm/-$$Lambda$Task$N6swnhdrHvxOfp81yUqye9AbX7A;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$N6swnhdrHvxOfp81yUqye9AbX7A;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;
    .locals 2

    .line 3371
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3372
    .local v0, "activity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method getVisibility(Lcom/android/server/wm/ActivityRecord;)I
    .locals 21
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;

    .line 3781
    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isForceHidden()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v3, p0

    goto/16 :goto_8

    .line 3785
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/Task;->isTopActivityLaunchedBehind()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 3786
    return v3

    .line 3789
    :cond_1
    const/4 v1, 0x0

    .line 3790
    .local v1, "gotSplitScreenStack":Z
    const/4 v4, 0x0

    .line 3791
    .local v4, "gotOpaqueSplitScreenPrimary":Z
    const/4 v5, 0x0

    .line 3792
    .local v5, "gotOpaqueSplitScreenSecondary":Z
    const/4 v6, 0x0

    .line 3793
    .local v6, "gotTranslucentFullscreen":Z
    const/4 v7, 0x0

    .line 3794
    .local v7, "gotTranslucentSplitScreenPrimary":Z
    const/4 v8, 0x0

    .line 3795
    .local v8, "gotTranslucentSplitScreenSecondary":Z
    const/4 v9, 0x1

    .line 3799
    .local v9, "shouldBeVisible":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v10

    .line 3800
    .local v10, "parent":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v11

    const/4 v12, 0x1

    if-eqz v11, :cond_3

    .line 3801
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v11

    invoke-virtual {v11, v0}, Lcom/android/server/wm/Task;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    move-result v11

    .line 3802
    .local v11, "parentVisibility":I
    if-ne v11, v2, :cond_2

    .line 3804
    return v2

    .line 3805
    :cond_2
    if-ne v11, v12, :cond_3

    .line 3808
    const/4 v6, 0x1

    .line 3812
    .end local v11    # "parentVisibility":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v11

    .line 3813
    .local v11, "windowingMode":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isActivityTypeAssistant()Z

    move-result v13

    .line 3814
    .local v13, "isAssistantType":Z
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v14

    sub-int/2addr v14, v12

    .local v14, "i":I
    :goto_0
    if-ltz v14, :cond_10

    .line 3815
    invoke-virtual {v10, v14}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v17

    .line 3816
    .local v17, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v15

    .line 3817
    .local v15, "other":Lcom/android/server/wm/Task;
    if-nez v15, :cond_4

    move-object/from16 v3, p0

    goto/16 :goto_4

    .line 3819
    :cond_4
    invoke-virtual {v15}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v19

    if-eqz v19, :cond_5

    move/from16 v19, v12

    goto :goto_1

    :cond_5
    const/16 v19, 0x0

    .line 3820
    .local v19, "hasRunningActivities":Z
    :goto_1
    move-object/from16 v3, p0

    if-ne v15, v3, :cond_8

    .line 3823
    if-nez v19, :cond_7

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/Task;->isInTask(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v20

    if-nez v20, :cond_7

    .line 3824
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v20

    if-eqz v20, :cond_6

    goto :goto_2

    :cond_6
    const/16 v20, 0x0

    goto :goto_3

    :cond_7
    :goto_2
    move/from16 v20, v12

    :goto_3
    move/from16 v9, v20

    .line 3825
    goto :goto_5

    .line 3828
    :cond_8
    if-nez v19, :cond_9

    .line 3829
    goto :goto_4

    .line 3832
    :cond_9
    invoke-virtual {v15}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v2

    .line 3834
    .local v2, "otherWindowingMode":I
    if-ne v2, v12, :cond_b

    .line 3835
    invoke-virtual {v15, v0}, Lcom/android/server/wm/Task;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 3837
    const/4 v6, 0x1

    .line 3838
    goto :goto_4

    .line 3840
    :cond_a
    const/4 v12, 0x2

    return v12

    .line 3841
    :cond_b
    const/4 v12, 0x3

    if-ne v2, v12, :cond_c

    if-nez v4, :cond_c

    .line 3843
    const/4 v1, 0x1

    .line 3844
    invoke-virtual {v15, v0}, Lcom/android/server/wm/Task;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v7

    .line 3845
    xor-int/lit8 v12, v7, 0x1

    move v4, v12

    .line 3846
    const/4 v12, 0x3

    if-ne v11, v12, :cond_d

    if-eqz v4, :cond_d

    .line 3849
    const/4 v12, 0x2

    return v12

    .line 3851
    :cond_c
    const/4 v12, 0x4

    if-ne v2, v12, :cond_d

    if-nez v5, :cond_d

    .line 3853
    const/4 v1, 0x1

    .line 3854
    invoke-virtual {v15, v0}, Lcom/android/server/wm/Task;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v8

    .line 3855
    xor-int/lit8 v12, v8, 0x1

    move v5, v12

    .line 3856
    const/4 v12, 0x4

    if-ne v11, v12, :cond_d

    if-eqz v5, :cond_d

    .line 3859
    const/4 v12, 0x2

    return v12

    .line 3862
    :cond_d
    if-eqz v4, :cond_e

    if-eqz v5, :cond_e

    .line 3865
    const/4 v12, 0x2

    return v12

    .line 3862
    :cond_e
    const/4 v12, 0x2

    .line 3867
    if-eqz v13, :cond_f

    if-eqz v1, :cond_f

    .line 3871
    return v12

    .line 3814
    .end local v2    # "otherWindowingMode":I
    .end local v15    # "other":Lcom/android/server/wm/Task;
    .end local v17    # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v19    # "hasRunningActivities":Z
    :cond_f
    :goto_4
    add-int/lit8 v14, v14, -0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_10
    move-object/from16 v3, p0

    .line 3875
    .end local v14    # "i":I
    :goto_5
    if-nez v9, :cond_11

    .line 3876
    const/4 v2, 0x2

    return v2

    .line 3880
    :cond_11
    const/4 v2, 0x1

    if-eq v11, v2, :cond_14

    const/4 v12, 0x3

    if-eq v11, v12, :cond_13

    const/4 v12, 0x4

    if-eq v11, v12, :cond_12

    goto :goto_6

    .line 3910
    :cond_12
    if-eqz v8, :cond_17

    .line 3912
    return v2

    .line 3904
    :cond_13
    if-eqz v7, :cond_17

    .line 3906
    return v2

    .line 3888
    :cond_14
    if-eqz v8, :cond_15

    .line 3891
    return v2

    .line 3895
    :cond_15
    if-eqz v7, :cond_17

    .line 3896
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v2, :cond_16

    .line 3897
    const-string v2, "WindowManager"

    const-string v12, "getVisibility: make stack invisible behind translucent split-screen primary"

    invoke-static {v2, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3899
    :cond_16
    const/4 v2, 0x2

    return v2

    .line 3918
    :cond_17
    :goto_6
    if-eqz v6, :cond_18

    move/from16 v16, v2

    goto :goto_7

    .line 3919
    :cond_18
    const/16 v16, 0x0

    .line 3918
    :goto_7
    return v16

    .line 3781
    .end local v1    # "gotSplitScreenStack":Z
    .end local v4    # "gotOpaqueSplitScreenPrimary":Z
    .end local v5    # "gotOpaqueSplitScreenSecondary":Z
    .end local v6    # "gotTranslucentFullscreen":Z
    .end local v7    # "gotTranslucentSplitScreenPrimary":Z
    .end local v8    # "gotTranslucentSplitScreenSecondary":Z
    .end local v9    # "shouldBeVisible":Z
    .end local v10    # "parent":Lcom/android/server/wm/WindowContainer;
    .end local v11    # "windowingMode":I
    .end local v13    # "isAssistantType":Z
    :cond_19
    move-object/from16 v3, p0

    .line 3782
    :goto_8
    const/4 v1, 0x2

    return v1
.end method

.method hasWindowsAlive()Z
    .locals 1

    .line 2902
    sget-object v0, Lcom/android/server/wm/-$$Lambda$kMHOkFJdJNCG8WGqd9dfu58tyGo;->INSTANCE:Lcom/android/server/wm/-$$Lambda$kMHOkFJdJNCG8WGqd9dfu58tyGo;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAttached()Z
    .locals 2

    .line 3238
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 3239
    .local v0, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isClearingToReuseTask()Z
    .locals 1

    .line 1755
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    return v0
.end method

.method isDragResizing()Z
    .locals 1

    .line 3161
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mDragResizing:Z

    return v0
.end method

.method isFloating()Z
    .locals 1

    .line 3255
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mPreserveNonFloatingState:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isFocusableAndVisible()Z
    .locals 1

    .line 3442
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isTopActivityFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isForceHidden()Z
    .locals 1

    .line 4756
    iget v0, p0, Lcom/android/server/wm/Task;->mForceHiddenFlags:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isInChangeTransition()Z
    .locals 1

    .line 2101
    iget-object v0, p0, Lcom/android/server/wm/Task;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceFreezer;->hasLeash()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/Task;->mTransit:I

    invoke-static {v0}, Lcom/android/server/wm/AppTransition;->isChangeTransit(I)Z

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

.method isInTask(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .locals 2
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 3931
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 3932
    return-object v0

    .line 3934
    :cond_0
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityRecord;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3935
    return-object p1

    .line 3937
    :cond_1
    return-object v0
.end method

.method isLeafTask()Z
    .locals 3

    .line 2720
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2721
    iget-object v2, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2722
    const/4 v1, 0x0

    return v1

    .line 2720
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2725
    .end local v0    # "i":I
    :cond_1
    return v1
.end method

.method isOrganized()Z
    .locals 1

    .line 4471
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isResizeable()Z
    .locals 1

    .line 3029
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->isResizeable(Z)Z

    move-result v0

    return v0
.end method

.method isResizeable(Z)Z
    .locals 1
    .param p1, "checkSupportsPip"    # Z

    .line 3024
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

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

.method isRootTask()Z
    .locals 1

    .line 2716
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isSameIntentFilter(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 3
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1095
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1098
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 1099
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1101
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method isTaskAnimating()Z
    .locals 2

    .line 3348
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    .line 3349
    .local v0, "recentsAnim":Lcom/android/server/wm/RecentsAnimationController;
    if-eqz v0, :cond_0

    .line 3350
    invoke-virtual {v0, p0}, Lcom/android/server/wm/RecentsAnimationController;->isAnimatingTask(Lcom/android/server/wm/Task;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3351
    const/4 v1, 0x1

    return v1

    .line 3354
    :cond_0
    new-instance v1, Lcom/android/server/wm/-$$Lambda$Task$c3doYleeoysLZS5RwSL9gEvAHmk;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$Task$c3doYleeoysLZS5RwSL9gEvAHmk;-><init>(Lcom/android/server/wm/Task;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->forAllTasks(Ljava/util/function/Function;)Z

    move-result v1

    return v1
.end method

.method isTaskId(I)Z
    .locals 1
    .param p1, "taskId"    # I

    .line 3756
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isTopActivityFocusable()Z
    .locals 2

    .line 3436
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3437
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result v1

    goto :goto_0

    .line 3438
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->canReceiveKeys()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 3437
    :goto_0
    return v1
.end method

.method isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 3
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;

    .line 3266
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isForceHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3269
    :cond_0
    sget-object v0, Lcom/android/server/wm/-$$Lambda$Task$CKQ9RLMNPYajktwO1VrUoQGHF_8;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$CKQ9RLMNPYajktwO1VrUoQGHF_8;

    const-class v2, Lcom/android/server/wm/ActivityRecord;

    .line 3270
    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v2

    .line 3269
    invoke-static {v0, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v0

    .line 3271
    .local v0, "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 3272
    .local v2, "opaque":Lcom/android/server/wm/ActivityRecord;
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 3273
    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 3267
    .end local v0    # "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    .end local v2    # "opaque":Lcom/android/server/wm/ActivityRecord;
    :cond_2
    :goto_1
    return v1
.end method

.method isUidPresent(I)Z
    .locals 3
    .param p1, "uid"    # I

    .line 1361
    sget-object v0, Lcom/android/server/wm/-$$Lambda$QEISWTQzWbgxRMT5rMnIEzpsKpc;->INSTANCE:Lcom/android/server/wm/-$$Lambda$QEISWTQzWbgxRMT5rMnIEzpsKpc;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 1362
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1361
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v0

    .line 1363
    .local v0, "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1364
    .local v1, "isUidPresent":Z
    :goto_0
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 1365
    return v1
.end method

.method public synthetic lambda$getNextFocusableTask$4$Task(ZLjava/lang/Object;)Z
    .locals 1
    .param p1, "allowFocusSelf"    # Z
    .param p2, "task"    # Ljava/lang/Object;

    .line 2753
    if-nez p1, :cond_0

    if-eq p2, p0, :cond_1

    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/android/server/wm/ActivityStack;

    .line 2754
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isFocusableAndVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2753
    :goto_0
    return v0
.end method

.method public synthetic lambda$isTaskAnimating$5$Task(Lcom/android/server/wm/Task;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "t"    # Lcom/android/server/wm/Task;

    .line 3354
    if-eq p1, p0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isTaskAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$performClearTask$1$Task(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1563
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_0

    return-void

    .line 1565
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->takeFromHistory()V

    .line 1566
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 1567
    return-void
.end method

.method lockTaskAuthToString()Ljava/lang/String;
    .locals 2

    .line 1656
    iget v0, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1661
    :cond_0
    const-string v0, "LOCK_TASK_AUTH_LAUNCHABLE_PRIV"

    return-object v0

    .line 1660
    :cond_1
    const-string v0, "LOCK_TASK_AUTH_WHITELISTED"

    return-object v0

    .line 1659
    :cond_2
    const-string v0, "LOCK_TASK_AUTH_LAUNCHABLE"

    return-object v0

    .line 1658
    :cond_3
    const-string v0, "LOCK_TASK_AUTH_PINNABLE"

    return-object v0

    .line 1657
    :cond_4
    const-string v0, "LOCK_TASK_AUTH_DONT_LOCK"

    return-object v0
.end method

.method public makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .locals 3

    .line 3299
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method migrateToNewSurfaceControl()V
    .locals 2

    .line 2042
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->migrateToNewSurfaceControl()V

    .line 2043
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastSurfaceSize:Landroid/graphics/Point;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 2044
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastSurfaceSize:Landroid/graphics/Point;

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 2045
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V

    .line 2046
    return-void
.end method

.method final moveActivityToFrontLocked(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2
    .param p1, "newTop"    # Lcom/android/server/wm/ActivityRecord;

    .line 1389
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing and adding activity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to stack at top callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    .line 1390
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1389
    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->positionChildAtTop(Lcom/android/server/wm/ActivityRecord;)V

    .line 1393
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateEffectiveIntent()V

    .line 1394
    return-void
.end method

.method onActivityStateChanged(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V
    .locals 4
    .param p1, "record"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "state"    # Lcom/android/server/wm/ActivityStack$ActivityState;
    .param p3, "reason"    # Ljava/lang/String;

    .line 1932
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1934
    .local v0, "parentTask":Lcom/android/server/wm/Task;
    :goto_0
    if-eqz v0, :cond_1

    .line 1935
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/Task;->onActivityStateChanged(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 1939
    iget-boolean v2, v0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-nez v2, :cond_1

    .line 1940
    return-void

    .line 1944
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const-string v3, " - onActivityStateChanged"

    if-ne p1, v2, :cond_2

    sget-object v2, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-eq p2, v2, :cond_2

    .line 1945
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/Task;->setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 1948
    :cond_2
    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne p2, v1, :cond_5

    .line 1949
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v1, :cond_3

    .line 1950
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set resumed activity to:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/Task;->setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 1953
    iget-object v1, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-ne p1, v1, :cond_4

    .line 1954
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 1956
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/Task;)V

    .line 1958
    :cond_5
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 1964
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v0

    .line 1965
    .local v0, "prevPersistTaskBounds":Z
    nop

    .line 1966
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v1

    .line 1967
    .local v1, "nextPersistTaskBounds":Z
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideWindowingMode()I

    move-result v2

    if-nez v2, :cond_0

    .line 1968
    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v1

    .line 1970
    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_1

    .line 1971
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1973
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v3, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 1974
    invoke-virtual {v2, v3}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 1977
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v2

    .line 1978
    .local v2, "prevWinMode":I
    iget-object v3, p0, Lcom/android/server/wm/Task;->mTmpPrevBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1979
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inMultiWindowMode()Z

    move-result v3

    .line 1980
    .local v3, "wasInMultiWindowMode":Z
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v4

    .line 1981
    .local v4, "wasInPictureInPicture":Z
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1984
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/wm/Task;->updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V

    .line 1986
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v5

    if-eq v4, v5, :cond_2

    .line 1987
    iget-object v5, p0, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v6

    invoke-virtual {v5, p0, v6}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityStack;)V

    goto :goto_0

    .line 1988
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inMultiWindowMode()Z

    move-result v5

    if-eq v3, v5, :cond_3

    .line 1989
    iget-object v5, p0, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v5, p0}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleUpdateMultiWindowMode(Lcom/android/server/wm/Task;)V

    .line 1992
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v5

    .line 1993
    .local v5, "newWinMode":I
    if-eq v2, v5, :cond_4

    iget-object v6, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v6, :cond_4

    .line 1994
    invoke-direct {p0, v2, v5}, Lcom/android/server/wm/Task;->shouldStartChangeTransition(II)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1995
    iget-object v6, p0, Lcom/android/server/wm/Task;->mTmpPrevBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v6}, Lcom/android/server/wm/Task;->initializeChangeTransition(Landroid/graphics/Rect;)V

    .line 2000
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2001
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 2002
    .local v6, "currentBounds":Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 2003
    invoke-virtual {p0, v6}, Lcom/android/server/wm/Task;->setLastNonFullscreenBounds(Landroid/graphics/Rect;)V

    .line 2007
    .end local v6    # "currentBounds":Landroid/graphics/Rect;
    :cond_5
    invoke-direct {p0}, Lcom/android/server/wm/Task;->saveLaunchingStateIfNeeded()V

    .line 2008
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/server/wm/Task;->updateTaskOrganizerState(Z)Z

    move-result v7

    .line 2011
    .local v7, "taskOrgChanged":Z
    if-nez v7, :cond_6

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2012
    iget-object v8, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {v8, p0, v6}, Lcom/android/server/wm/TaskOrganizerController;->dispatchTaskInfoChanged(Lcom/android/server/wm/Task;Z)V

    .line 2014
    :cond_6
    return-void
.end method

.method public onDescendantOrientationChanged(Landroid/os/IBinder;Lcom/android/server/wm/ConfigurationContainer;)Z
    .locals 2
    .param p1, "freezeDisplayToken"    # Landroid/os/IBinder;
    .param p2, "requestingContainer"    # Lcom/android/server/wm/ConfigurationContainer;

    .line 2990
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onDescendantOrientationChanged(Landroid/os/IBinder;Lcom/android/server/wm/ConfigurationContainer;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2991
    return v1

    .line 2996
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2997
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2998
    return v1

    .line 3000
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .locals 4
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 3011
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    .line 3012
    .local v0, "isRootTask":Z
    if-nez v0, :cond_0

    .line 3013
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->adjustBoundsForDisplayChangeIfNeeded(Lcom/android/server/wm/DisplayContent;)V

    .line 3015
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 3016
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3017
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    .line 3018
    .local v1, "displayId":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskDisplayChanged(II)V

    .line 3021
    .end local v1    # "displayId":I
    :cond_2
    return-void
.end method

.method onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V
    .locals 7
    .param p1, "newParent"    # Lcom/android/server/wm/ConfigurationContainer;
    .param p2, "oldParent"    # Lcom/android/server/wm/ConfigurationContainer;

    .line 1126
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1127
    move-object v1, p1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 1128
    .local v1, "display":Lcom/android/server/wm/DisplayContent;
    :goto_0
    if-eqz p2, :cond_1

    .line 1129
    move-object v2, p2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v0

    .line 1131
    .local v2, "oldDisplay":Lcom/android/server/wm/DisplayContent;
    :goto_1
    if-eqz v2, :cond_2

    iget v3, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    goto :goto_2

    :cond_2
    const/4 v3, -0x1

    :goto_2
    iput v3, p0, Lcom/android/server/wm/Task;->mPrevDisplayId:I

    .line 1133
    if-eqz p2, :cond_3

    if-nez p1, :cond_3

    .line 1134
    invoke-direct {p0, p2}, Lcom/android/server/wm/Task;->cleanUpResourcesForDestroy(Lcom/android/server/wm/ConfigurationContainer;)V

    .line 1137
    :cond_3
    if-eqz v1, :cond_4

    .line 1146
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1147
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v4

    .line 1146
    invoke-virtual {v3, v4}, Landroid/app/WindowConfiguration;->setRotation(I)V

    .line 1150
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V

    .line 1158
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v3, :cond_5

    .line 1159
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/wm/EventLogTags;->writeWmStackRemoved(I)V

    .line 1160
    iput-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1161
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 1164
    :cond_5
    if-eqz p2, :cond_8

    .line 1165
    move-object v0, p2

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1166
    .local v0, "oldParentTask":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_6

    .line 1167
    sget-object v3, Lcom/android/server/wm/-$$Lambda$ABB1r3i-Ua4IQKhbebsmnEGpWd8;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ABB1r3i-Ua4IQKhbebsmnEGpWd8;

    const-class v4, Lcom/android/server/wm/ActivityRecord;

    .line 1169
    invoke-static {v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v4

    .line 1167
    invoke-static {v3, v0, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v3

    .line 1170
    .local v3, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {p0, v3}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 1171
    invoke-interface {v3}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 1174
    .end local v3    # "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    :cond_6
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz p1, :cond_7

    .line 1175
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v3

    if-nez v3, :cond_8

    .line 1178
    :cond_7
    iget-object v3, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityUnpinned()V

    .line 1182
    .end local v0    # "oldParentTask":Lcom/android/server/wm/Task;
    :cond_8
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    .line 1183
    move-object v3, p1

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 1184
    .local v3, "newParentTask":Lcom/android/server/wm/Task;
    if-eqz v3, :cond_9

    .line 1185
    invoke-virtual {v3, v0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 1187
    .local v4, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_9

    sget-object v5, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1188
    const-string v5, "addedToTask"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/Task;->setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 1194
    .end local v4    # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_9
    iget-object v4, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v4, :cond_a

    .line 1196
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    iget v6, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {v4, v5, v6}, Landroid/service/voice/IVoiceInteractionSession;->taskStarted(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1198
    goto :goto_3

    .line 1197
    :catch_0
    move-exception v4

    .line 1203
    .end local v3    # "newParentTask":Lcom/android/server/wm/Task;
    :cond_a
    :goto_3
    if-nez p2, :cond_b

    if-eqz p1, :cond_b

    .line 1207
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateOverrideConfigurationFromLaunchBounds()Landroid/graphics/Rect;

    .line 1211
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wm/Task;->adjustBoundsForDisplayChangeIfNeeded(Lcom/android/server/wm/DisplayContent;)V

    .line 1213
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->windowsAreScaleable()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1216
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forceWindowsScaleable(Z)V

    goto :goto_4

    .line 1218
    :cond_c
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forceWindowsScaleable(Z)V

    .line 1221
    :goto_4
    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->updateUIDsPresentOnDisplay()V

    .line 1222
    return-void
.end method

.method onPictureInPictureParamsChanged()V
    .locals 2

    .line 4682
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4683
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/TaskOrganizerController;->dispatchTaskInfoChanged(Lcom/android/server/wm/Task;Z)V

    .line 4685
    :cond_0
    return-void
.end method

.method onSnapshotChanged(Landroid/app/ActivityManager$TaskSnapshot;)V
    .locals 2
    .param p1, "snapshot"    # Landroid/app/ActivityManager$TaskSnapshot;

    .line 3475
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskSnapshotChanged(ILandroid/app/ActivityManager$TaskSnapshot;)V

    .line 3477
    return-void
.end method

.method onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .line 4678
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/Task;->updateShadowsRadius(ZLandroid/view/SurfaceControl$Transaction;)V

    .line 4679
    return-void
.end method

.method onlyHasTaskOverlayActivities(Z)Z
    .locals 6
    .param p1, "includeFinishing"    # Z

    .line 1533
    const/4 v0, 0x0

    .line 1534
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x0

    if-ltz v1, :cond_3

    .line 1535
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 1536
    .local v4, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v4, :cond_0

    .line 1538
    return v3

    .line 1540
    :cond_0
    if-nez p1, :cond_1

    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_1

    .line 1541
    goto :goto_1

    .line 1543
    :cond_1
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1544
    return v3

    .line 1546
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 1534
    .end local v4    # "r":Lcom/android/server/wm/ActivityRecord;
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1548
    .end local v1    # "i":I
    :cond_3
    if-lez v0, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    return v2
.end method

.method performClearTask(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .line 1561
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1562
    new-instance v0, Lcom/android/server/wm/-$$Lambda$Task$iKnNpBBRFRHs1rtFSWGK99Fqn1E;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$Task$iKnNpBBRFRHs1rtFSWGK99Fqn1E;-><init>(Lcom/android/server/wm/Task;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 1569
    :cond_0
    new-instance v0, Lcom/android/server/wm/-$$Lambda$Task$s8aJAJv5Mq4hljFdutdcLenli4o;

    invoke-direct {v0, p1}, Lcom/android/server/wm/-$$Lambda$Task$s8aJAJv5Mq4hljFdutdcLenli4o;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 1576
    :goto_0
    return-void
.end method

.method performClearTaskForReuseLocked(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityRecord;
    .locals 2
    .param p1, "newR"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "launchFlags"    # I

    .line 1588
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 1589
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/Task;->performClearTaskLocked(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1590
    .local v0, "result":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 1591
    return-object v0
.end method

.method performClearTaskLocked()V
    .locals 1

    .line 1582
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 1583
    const-string v0, "clear-task-all"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->performClearTask(Ljava/lang/String;)V

    .line 1584
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 1585
    return-void
.end method

.method positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "child"    # Lcom/android/server/wm/WindowContainer;
    .param p3, "includingParents"    # Z

    .line 2886
    invoke-direct {p0, p2, p1}, Lcom/android/server/wm/Task;->getAdjustedChildPosition(Lcom/android/server/wm/WindowContainer;I)I

    move-result p1

    .line 2887
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 2890
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_MOVEMENT:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "positionChildAt: child="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2893
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 2894
    .local v0, "toTop":I
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 2895
    .local v1, "task":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_2

    .line 2896
    iget v2, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v2, v0, p1}, Lcom/android/server/wm/EventLogTags;->writeWmTaskMoved(III)V

    .line 2898
    :cond_2
    return-void
.end method

.method positionChildAt(Lcom/android/server/wm/ActivityRecord;I)V
    .locals 2
    .param p1, "child"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "position"    # I

    .line 3450
    if-nez p1, :cond_0

    .line 3451
    const-string v0, "WindowManager"

    const-string v1, "Attempted to position of non-existing app"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3453
    return-void

    .line 3456
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/wm/Task;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 3457
    return-void
.end method

.method positionChildAtTop(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p1, "child"    # Lcom/android/server/wm/ActivityRecord;

    .line 3446
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->positionChildAt(Lcom/android/server/wm/ActivityRecord;I)V

    .line 3447
    return-void
.end method

.method prepareFreezingBounds()V
    .locals 2

    .line 3065
    iget-object v0, p0, Lcom/android/server/wm/Task;->mPreparedFrozenBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3066
    iget-object v0, p0, Lcom/android/server/wm/Task;->mPreparedFrozenMergedConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 3067
    return-void
.end method

.method prepareSurfaces()V
    .locals 4

    .line 3612
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {v0}, Lcom/android/server/wm/Dimmer;->resetDimStates()V

    .line 3613
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->prepareSurfaces()V

    .line 3614
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 3617
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3618
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 3619
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    .line 3622
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 3625
    :goto_0
    invoke-direct {p0}, Lcom/android/server/wm/Task;->isFocused()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/Task;->updateShadowsRadius(ZLandroid/view/SurfaceControl$Transaction;)V

    .line 3629
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 3630
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_2

    .line 3631
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    iget-object v1, v1, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    iget-object v1, v1, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iget-boolean v1, v1, Lcom/android/server/wm/Dimmer$DimState;->mDimming:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    iget-object v1, v1, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iget-boolean v1, v1, Lcom/android/server/wm/Dimmer$DimState;->mAnimateExit:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 3633
    const-string v2, "com.android.settings"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3634
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_1

    .line 3635
    const-string v1, "WindowManager"

    const-string v2, "Task(): skip update dim layers, tansit=TRANSIT_TASK_OPEN"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3637
    :cond_1
    return-void

    .line 3642
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/Dimmer;->updateDims(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3643
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->scheduleAnimation()V

    .line 3645
    :cond_3
    return-void
.end method

.method preserveOrientationOnResize()Z
    .locals 2

    .line 3038
    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

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

.method removeChild(Lcom/android/server/wm/WindowContainer;)V
    .locals 1
    .param p1, "child"    # Lcom/android/server/wm/WindowContainer;

    .line 1464
    const-string v0, "removeChild"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->removeChild(Lcom/android/server/wm/WindowContainer;Ljava/lang/String;)V

    .line 1465
    return-void
.end method

.method removeChild(Lcom/android/server/wm/WindowContainer;Ljava/lang/String;)V
    .locals 3
    .param p1, "r"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "reason"    # Ljava/lang/String;

    .line 1470
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1471
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->removeStackReferenceIfNeeded(Lcom/android/server/wm/ActivityStack;)V

    .line 1473
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeChild: r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " not found in t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    return-void

    .line 1478
    :cond_1
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_MOVEMENT:Z

    if-eqz v0, :cond_2

    .line 1479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeChild: child="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    :cond_2
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 1483
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1487
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 1490
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1491
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateEffectiveIntent()V

    .line 1496
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->onlyHasTaskOverlayActivities(Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1504
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v1, p2}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;)V

    goto :goto_0

    .line 1507
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-nez v0, :cond_7

    .line 1510
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1511
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/android/server/wm/ActivityStack;->removeChild(Lcom/android/server/wm/WindowContainer;Ljava/lang/String;)V

    .line 1513
    :cond_5
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeChild: last r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " in t="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wm/EventLogTags;->writeWmTaskRemoved(ILjava/lang/String;)V

    .line 1518
    sget-boolean v0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    if-eqz v0, :cond_6

    .line 1519
    invoke-static {p0}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->removeIfPossible(Lcom/android/server/wm/Task;)V

    .line 1523
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->removeIfPossible()V

    .line 1525
    :cond_7
    :goto_0
    return-void
.end method

.method removeIfPossible()V
    .locals 3

    .line 674
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    .line 675
    .local v0, "isRootTask":Z
    if-nez v0, :cond_0

    .line 676
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/wm/LockTaskController;->clearLockedTask(Lcom/android/server/wm/Task;)V

    .line 678
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->shouldDeferRemoval()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 679
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeTask: deferring removing taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_1
    return-void

    .line 682
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->removeImmediately()V

    .line 683
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 684
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskRemoved(I)V

    .line 686
    :cond_3
    return-void
.end method

.method removeImmediately()V
    .locals 2

    .line 2916
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeTask: removing taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2917
    :cond_0
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    const-string v1, "removeTask"

    invoke-static {v0, v1}, Lcom/android/server/wm/EventLogTags;->writeWmTaskRemoved(ILjava/lang/String;)V

    .line 2920
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/LockTaskController;->clearLockedTask(Lcom/android/server/wm/Task;)V

    .line 2923
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isSingleTaskInstance()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2924
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->notifySingleTaskDisplayEmpty(I)V

    .line 2928
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setTaskOrganizer(Landroid/window/ITaskOrganizer;)Z

    .line 2930
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->removeImmediately()V

    .line 2931
    return-void
.end method

.method removedFromRecents()V
    .locals 3

    .line 1284
    invoke-direct {p0}, Lcom/android/server/wm/Task;->closeRecentsChain()V

    .line 1285
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->inRecents:Z

    if-eqz v0, :cond_0

    .line 1286
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->inRecents:Z

    .line 1287
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    .line 1290
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->clearRootProcess()V

    .line 1292
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    iget v2, p0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskSnapshotController;->notifyTaskRemovedFromRecents(II)V

    .line 1294
    return-void
.end method

.method reparent(Lcom/android/server/wm/ActivityStack;IZLjava/lang/String;)V
    .locals 3
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "position"    # I
    .param p3, "moveParents"    # Z
    .param p4, "reason"    # Ljava/lang/String;

    .line 2935
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reParentTask: removing taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " from stack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2936
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2935
    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2937
    :cond_0
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reParentTask:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wm/EventLogTags;->writeWmTaskRemoved(ILjava/lang/String;)V

    .line 2939
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    .line 2941
    invoke-virtual {p1, p2, p0, p3}, Lcom/android/server/wm/ActivityStack;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 2946
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mPreserveNonFloatingState:Z

    .line 2947
    return-void
.end method

.method reparent(Lcom/android/server/wm/ActivityStack;IIZZLjava/lang/String;)Z
    .locals 8
    .param p1, "preferredStack"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "position"    # I
    .param p3, "moveStackMode"    # I
    .param p4, "animate"    # Z
    .param p5, "deferResume"    # Z
    .param p6, "reason"    # Ljava/lang/String;

    .line 793
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/ActivityStack;IIZZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method reparent(Lcom/android/server/wm/ActivityStack;IIZZZLjava/lang/String;)Z
    .locals 26
    .param p1, "preferredStack"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "position"    # I
    .param p3, "moveStackMode"    # I
    .param p4, "animate"    # Z
    .param p5, "deferResume"    # Z
    .param p6, "schedulePictureInPictureModeChange"    # Z
    .param p7, "reason"    # Ljava/lang/String;

    .line 819
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v12, p7

    iget-object v13, v1, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 820
    .local v13, "supervisor":Lcom/android/server/wm/ActivityStackSupervisor;
    iget-object v14, v1, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 821
    .local v14, "root":Lcom/android/server/wm/RootWindowContainer;
    iget-object v0, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v15, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 822
    .local v15, "windowManager":Lcom/android/server/wm/WindowManagerService;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v11

    .line 823
    .local v11, "sourceStack":Lcom/android/server/wm/ActivityStack;
    const v0, 0x7fffffff

    const/4 v7, 0x0

    if-ne v3, v0, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    move v6, v7

    :goto_0
    invoke-virtual {v13, v1, v2, v6}, Lcom/android/server/wm/ActivityStackSupervisor;->getReparentTargetStack(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityStack;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v6

    .line 825
    .local v6, "toStack":Lcom/android/server/wm/ActivityStack;
    if-ne v6, v11, :cond_1

    .line 826
    return v7

    .line 828
    :cond_1
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->getDisplayId()I

    move-result v9

    invoke-virtual {v1, v9}, Lcom/android/server/wm/Task;->canBeLaunchedOnDisplay(I)Z

    move-result v9

    if-nez v9, :cond_2

    .line 829
    return v7

    .line 832
    :cond_2
    if-ne v3, v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v7

    :goto_1
    move/from16 v16, v0

    .line 833
    .local v16, "toTopOfStack":Z
    const/4 v0, 0x0

    if-eqz v16, :cond_4

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 834
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 836
    invoke-virtual {v6, v7, v7, v0}, Lcom/android/server/wm/ActivityStack;->startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;)Z

    .line 840
    :cond_4
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v10

    .line 841
    .local v10, "toStackWindowingMode":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    .line 843
    .local v9, "topActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v9, :cond_5

    .line 844
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v7

    invoke-static {v7, v10}, Lcom/android/server/wm/Task;->replaceWindowsOnTaskMove(II)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    :goto_2
    move/from16 v18, v7

    .line 845
    .local v18, "mightReplaceWindow":Z
    if-eqz v18, :cond_6

    .line 854
    iget-object v7, v9, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-virtual {v15, v7, v5}, Lcom/android/server/wm/WindowManagerService;->setWillReplaceWindow(Landroid/os/IBinder;Z)V

    .line 857
    :cond_6
    iget-object v7, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 858
    const/16 v19, 0x1

    .line 860
    .local v19, "kept":Z
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 861
    .local v7, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v7, :cond_7

    :try_start_1
    invoke-virtual {v14, v11}, Lcom/android/server/wm/RootWindowContainer;->isTopDisplayFocusedStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 862
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-ne v0, v7, :cond_7

    const/4 v0, 0x1

    goto :goto_3

    .line 903
    .end local v7    # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_0
    move-exception v0

    move-object v8, v9

    move-object/from16 v25, v11

    move-object v9, v6

    move-object v6, v14

    move v14, v10

    goto/16 :goto_d

    .line 862
    .restart local v7    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_7
    const/4 v0, 0x0

    .line 863
    .local v0, "wasFocused":Z
    :goto_3
    if-eqz v7, :cond_8

    invoke-virtual {v11}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v8, v7, :cond_8

    const/4 v8, 0x1

    goto :goto_4

    :cond_8
    const/4 v8, 0x0

    :goto_4
    move-object v2, v9

    .end local v9    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .local v2, "topActivity":Lcom/android/server/wm/ActivityRecord;
    move v9, v8

    .line 864
    .local v9, "wasResumed":Z
    if-eqz v7, :cond_9

    :try_start_2
    iget-object v8, v11, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v8, v7, :cond_9

    const/4 v8, 0x1

    goto :goto_5

    .line 903
    .end local v0    # "wasFocused":Z
    .end local v7    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v9    # "wasResumed":Z
    :catchall_1
    move-exception v0

    move-object v8, v2

    move-object v9, v6

    move-object/from16 v25, v11

    move-object v6, v14

    move-object/from16 v2, p1

    move v14, v10

    goto/16 :goto_d

    .line 864
    .restart local v0    # "wasFocused":Z
    .restart local v7    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v9    # "wasResumed":Z
    :cond_9
    const/4 v8, 0x0

    :goto_5
    move-object/from16 v22, v14

    move v14, v10

    .end local v10    # "toStackWindowingMode":I
    .local v14, "toStackWindowingMode":I
    .local v22, "root":Lcom/android/server/wm/RootWindowContainer;
    move v10, v8

    .line 869
    .local v10, "wasPaused":Z
    if-eqz v7, :cond_a

    :try_start_3
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityStack;->isTopStackInDisplayArea()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 870
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne v8, v7, :cond_a

    const/4 v8, 0x1

    goto :goto_6

    .line 903
    .end local v0    # "wasFocused":Z
    .end local v7    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v9    # "wasResumed":Z
    .end local v10    # "wasPaused":Z
    :catchall_2
    move-exception v0

    move-object v8, v2

    move-object v9, v6

    move-object/from16 v25, v11

    move-object/from16 v6, v22

    move-object/from16 v2, p1

    goto/16 :goto_d

    .line 870
    .restart local v0    # "wasFocused":Z
    .restart local v7    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v9    # "wasResumed":Z
    .restart local v10    # "wasPaused":Z
    :cond_a
    const/4 v8, 0x0

    :goto_6
    move/from16 v23, v8

    .line 872
    .local v23, "wasFront":Z
    if-eqz v4, :cond_c

    const/4 v8, 0x1

    if-ne v4, v8, :cond_b

    if-nez v0, :cond_d

    if-eqz v23, :cond_b

    goto :goto_7

    :cond_b
    const/16 v21, 0x0

    goto :goto_8

    :cond_c
    const/4 v8, 0x1

    :cond_d
    :goto_7
    move/from16 v21, v8

    :goto_8
    move/from16 v24, v21

    .line 875
    .local v24, "moveStackToFront":Z
    move/from16 v21, v0

    move/from16 v0, v24

    .end local v24    # "moveStackToFront":Z
    .local v0, "moveStackToFront":Z
    .local v21, "wasFocused":Z
    :try_start_4
    invoke-virtual {v1, v6, v3, v0, v12}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/ActivityStack;IZLjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 877
    if-eqz p6, :cond_e

    .line 879
    :try_start_5
    invoke-virtual {v13, v1, v11}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityStack;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 884
    :cond_e
    if-eqz v7, :cond_f

    .line 885
    move-object/from16 v24, v6

    .end local v6    # "toStack":Lcom/android/server/wm/ActivityStack;
    .local v24, "toStack":Lcom/android/server/wm/ActivityStack;
    move-object/from16 v17, v7

    const/4 v3, 0x0

    .end local v7    # "r":Lcom/android/server/wm/ActivityRecord;
    .local v17, "r":Lcom/android/server/wm/ActivityRecord;
    move v3, v8

    move v8, v0

    move-object/from16 v25, v11

    .end local v11    # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .local v25, "sourceStack":Lcom/android/server/wm/ActivityStack;
    move-object/from16 v11, p7

    :try_start_6
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/wm/ActivityStack;->moveToFrontAndResumeStateIfNeeded(Lcom/android/server/wm/ActivityRecord;ZZZLjava/lang/String;)V

    goto :goto_9

    .line 903
    .end local v0    # "moveStackToFront":Z
    .end local v9    # "wasResumed":Z
    .end local v10    # "wasPaused":Z
    .end local v17    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v21    # "wasFocused":Z
    .end local v23    # "wasFront":Z
    :catchall_3
    move-exception v0

    move-object v8, v2

    move-object/from16 v6, v22

    move-object/from16 v9, v24

    move-object/from16 v2, p1

    goto/16 :goto_d

    .line 884
    .end local v24    # "toStack":Lcom/android/server/wm/ActivityStack;
    .end local v25    # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .restart local v0    # "moveStackToFront":Z
    .restart local v6    # "toStack":Lcom/android/server/wm/ActivityStack;
    .restart local v7    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v9    # "wasResumed":Z
    .restart local v10    # "wasPaused":Z
    .restart local v11    # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .restart local v21    # "wasFocused":Z
    .restart local v23    # "wasFront":Z
    :cond_f
    move-object/from16 v24, v6

    move-object/from16 v17, v7

    move v3, v8

    move-object/from16 v25, v11

    .line 888
    .end local v6    # "toStack":Lcom/android/server/wm/ActivityStack;
    .end local v7    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v11    # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .restart local v17    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v24    # "toStack":Lcom/android/server/wm/ActivityStack;
    .restart local v25    # "sourceStack":Lcom/android/server/wm/ActivityStack;
    :goto_9
    if-nez v5, :cond_10

    .line 889
    iget-object v6, v1, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v6, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 894
    :cond_10
    :try_start_7
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/ActivityStack;->prepareFreezingTaskBounds()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 896
    const/4 v6, 0x3

    if-ne v14, v6, :cond_11

    if-ne v4, v3, :cond_11

    .line 900
    :try_start_8
    iget-object v6, v1, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v6, v12}, Lcom/android/server/wm/ActivityStackSupervisor;->moveRecentsStackToFront(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 903
    .end local v0    # "moveStackToFront":Z
    .end local v9    # "wasResumed":Z
    .end local v10    # "wasPaused":Z
    .end local v17    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v21    # "wasFocused":Z
    .end local v23    # "wasFront":Z
    :cond_11
    iget-object v0, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 904
    nop

    .line 906
    if-eqz v18, :cond_12

    .line 910
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    xor-int/lit8 v6, v19, 0x1

    invoke-virtual {v15, v0, v6}, Lcom/android/server/wm/WindowManagerService;->scheduleClearWillReplaceWindows(Landroid/os/IBinder;Z)V

    .line 913
    :cond_12
    if-nez p5, :cond_14

    .line 916
    if-nez v18, :cond_13

    move v8, v3

    goto :goto_a

    :cond_13
    const/4 v8, 0x0

    :goto_a
    move-object/from16 v6, v22

    const/4 v0, 0x0

    const/4 v7, 0x0

    .end local v22    # "root":Lcom/android/server/wm/RootWindowContainer;
    .local v6, "root":Lcom/android/server/wm/RootWindowContainer;
    invoke-virtual {v6, v0, v7, v8}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 917
    invoke-virtual {v6}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    goto :goto_b

    .line 913
    .end local v6    # "root":Lcom/android/server/wm/RootWindowContainer;
    .restart local v22    # "root":Lcom/android/server/wm/RootWindowContainer;
    :cond_14
    move-object/from16 v6, v22

    const/4 v7, 0x0

    .line 921
    .end local v22    # "root":Lcom/android/server/wm/RootWindowContainer;
    .restart local v6    # "root":Lcom/android/server/wm/RootWindowContainer;
    :goto_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    iget-object v8, v1, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 922
    invoke-virtual {v8}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v8

    .line 921
    move-object/from16 v9, v24

    .end local v24    # "toStack":Lcom/android/server/wm/ActivityStack;
    .local v9, "toStack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v13, v1, v0, v8, v9}, Lcom/android/server/wm/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;ILcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityStack;)V

    .line 924
    move-object v8, v2

    move-object/from16 v2, p1

    .end local v2    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .local v8, "topActivity":Lcom/android/server/wm/ActivityRecord;
    if-ne v2, v9, :cond_15

    goto :goto_c

    :cond_15
    move v3, v7

    :goto_c
    return v3

    .line 903
    .end local v6    # "root":Lcom/android/server/wm/RootWindowContainer;
    .end local v8    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v9    # "toStack":Lcom/android/server/wm/ActivityStack;
    .restart local v2    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v22    # "root":Lcom/android/server/wm/RootWindowContainer;
    .restart local v24    # "toStack":Lcom/android/server/wm/ActivityStack;
    :catchall_4
    move-exception v0

    move-object v8, v2

    move-object/from16 v6, v22

    move-object/from16 v9, v24

    move-object/from16 v2, p1

    .end local v2    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v22    # "root":Lcom/android/server/wm/RootWindowContainer;
    .end local v24    # "toStack":Lcom/android/server/wm/ActivityStack;
    .restart local v6    # "root":Lcom/android/server/wm/RootWindowContainer;
    .restart local v8    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v9    # "toStack":Lcom/android/server/wm/ActivityStack;
    goto :goto_d

    .end local v8    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v9    # "toStack":Lcom/android/server/wm/ActivityStack;
    .end local v25    # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .restart local v2    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .local v6, "toStack":Lcom/android/server/wm/ActivityStack;
    .restart local v11    # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .restart local v22    # "root":Lcom/android/server/wm/RootWindowContainer;
    :catchall_5
    move-exception v0

    move-object v8, v2

    move-object v9, v6

    move-object/from16 v25, v11

    move-object/from16 v6, v22

    move-object/from16 v2, p1

    .end local v2    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v11    # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .end local v22    # "root":Lcom/android/server/wm/RootWindowContainer;
    .local v6, "root":Lcom/android/server/wm/RootWindowContainer;
    .restart local v8    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v9    # "toStack":Lcom/android/server/wm/ActivityStack;
    .restart local v25    # "sourceStack":Lcom/android/server/wm/ActivityStack;
    goto :goto_d

    .end local v8    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v25    # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .local v6, "toStack":Lcom/android/server/wm/ActivityStack;
    .local v9, "topActivity":Lcom/android/server/wm/ActivityRecord;
    .local v10, "toStackWindowingMode":I
    .restart local v11    # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .local v14, "root":Lcom/android/server/wm/RootWindowContainer;
    :catchall_6
    move-exception v0

    move-object v8, v9

    move-object/from16 v25, v11

    move-object v9, v6

    move-object v6, v14

    move v14, v10

    .end local v10    # "toStackWindowingMode":I
    .end local v11    # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .local v6, "root":Lcom/android/server/wm/RootWindowContainer;
    .restart local v8    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .local v9, "toStack":Lcom/android/server/wm/ActivityStack;
    .local v14, "toStackWindowingMode":I
    .restart local v25    # "sourceStack":Lcom/android/server/wm/ActivityStack;
    :goto_d
    iget-object v3, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 904
    throw v0
.end method

.method reparent(Lcom/android/server/wm/ActivityStack;ZIZZLjava/lang/String;)Z
    .locals 9
    .param p1, "preferredStack"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "toTop"    # Z
    .param p3, "moveStackMode"    # I
    .param p4, "animate"    # Z
    .param p5, "deferResume"    # Z
    .param p6, "reason"    # Ljava/lang/String;

    .line 774
    if-eqz p2, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v3, v0

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/ActivityStack;IIZZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method reparent(Lcom/android/server/wm/ActivityStack;ZIZZZLjava/lang/String;)Z
    .locals 9
    .param p1, "preferredStack"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "toTop"    # Z
    .param p3, "moveStackMode"    # I
    .param p4, "animate"    # Z
    .param p5, "deferResume"    # Z
    .param p6, "schedulePictureInPictureModeChange"    # Z
    .param p7, "reason"    # Ljava/lang/String;

    .line 785
    if-eqz p2, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v3, v0

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/ActivityStack;IIZZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected reparentSurfaceControl(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "newParent"    # Landroid/view/SurfaceControl;

    .line 4480
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4481
    return-void

    .line 4483
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->reparentSurfaceControl(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 4484
    return-void
.end method

.method resize(ZZ)V
    .locals 1
    .param p1, "relayout"    # Z
    .param p2, "forced"    # Z

    .line 3004
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;Z)I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 3005
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 3007
    :cond_0
    return-void
.end method

.method resize(Landroid/graphics/Rect;IZ)Z
    .locals 8
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "resizeMode"    # I
    .param p3, "preserveWindow"    # Z

    .line 705
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 708
    and-int/lit8 v0, p2, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 710
    .local v0, "forced":Z
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-nez v3, :cond_2

    .line 714
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 715
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 717
    iget-object v3, p0, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->restoreRecentTaskLocked(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 719
    :cond_1
    nop

    .line 766
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 719
    return v1

    .line 722
    :cond_2
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/wm/Task;->canResizeToBounds(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 731
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resizeTask_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x20

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 733
    const/4 v3, 0x0

    .line 734
    .local v3, "updatedConfig":Z
    iget-object v6, p0, Lcom/android/server/wm/Task;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 735
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    move-result v6

    if-eqz v6, :cond_3

    .line 736
    iget-object v6, p0, Lcom/android/server/wm/Task;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v6

    xor-int/2addr v1, v6

    move v3, v1

    .line 741
    :cond_3
    const/4 v1, 0x1

    .line 742
    .local v1, "kept":Z
    if-eqz v3, :cond_4

    .line 743
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    .line 744
    .local v6, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v6, :cond_4

    .line 745
    invoke-virtual {v6, v2, p3}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZ)Z

    move-result v7

    move v1, v7

    .line 753
    iget-object v7, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v7, v6, v2, p3}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 754
    if-nez v1, :cond_4

    .line 755
    iget-object v2, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    .line 759
    .end local v6    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_4
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/Task;->resize(ZZ)V

    .line 761
    invoke-direct {p0}, Lcom/android/server/wm/Task;->saveLaunchingStateIfNeeded()V

    .line 763
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 764
    nop

    .line 766
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 764
    return v1

    .line 723
    .end local v1    # "kept":Z
    .end local v3    # "updatedConfig":Z
    :cond_5
    :try_start_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resizeTask: Can not resize task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to bounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " resizeMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wm/Task;
    .end local p1    # "bounds":Landroid/graphics/Rect;
    .end local p2    # "resizeMode":I
    .end local p3    # "preserveWindow":Z
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 766
    .end local v0    # "forced":Z
    .restart local p0    # "this":Lcom/android/server/wm/Task;
    .restart local p1    # "bounds":Landroid/graphics/Rect;
    .restart local p2    # "resizeMode":I
    .restart local p3    # "preserveWindow":Z
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 767
    throw v0
.end method

.method resolveOverrideConfiguration(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 2477
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2478
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->resolveOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 2480
    nop

    .line 2481
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 2485
    .local v0, "windowingMode":I
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_1

    .line 2486
    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v1

    .line 2487
    .local v1, "parentWindowingMode":I
    invoke-static {v1}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2488
    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .line 2489
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2, v0}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 2492
    .end local v1    # "parentWindowingMode":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2493
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/Task;->resolveLeafOnlyOverrideConfigs(Landroid/content/res/Configuration;Landroid/graphics/Rect;)V

    .line 2495
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/Task;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 2496
    return-void
.end method

.method returnsToHomeStack()Z
    .locals 5

    .line 1105
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inMultiWindowMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1106
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 1107
    const v3, 0x10004000

    .line 1108
    .local v3, "returnHomeFlags":I
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const v4, 0x10004000

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 1110
    .end local v3    # "returnHomeFlags":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBottomMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1111
    .local v0, "bottomTask":Lcom/android/server/wm/Task;
    if-eq v0, p0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->returnsToHomeStack()Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    :cond_3
    return v1

    .line 1105
    .end local v0    # "bottomTask":Lcom/android/server/wm/Task;
    :cond_4
    :goto_0
    return v1
.end method

.method reuseAsLeafTask(Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/Task;
    .locals 3
    .param p1, "_voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p2, "_voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "info"    # Landroid/content/pm/ActivityInfo;
    .param p5, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 629
    iput-object p1, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 630
    iput-object p2, p0, Lcom/android/server/wm/Task;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 631
    invoke-virtual {p0, p5, p3, p4}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 632
    invoke-virtual {p0, p4}, Lcom/android/server/wm/Task;->setMinDimensions(Landroid/content/pm/ActivityInfo;)V

    .line 640
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v2, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskCreated(ILandroid/content/ComponentName;)V

    .line 641
    return-object p0
.end method

.method saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 5
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4134
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Saving task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4136
    :cond_0
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "task_id"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4137
    iget-object v0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 4138
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "real_activity"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4140
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->realActivitySuspended:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "real_activity_suspended"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4141
    iget-object v0, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_2

    .line 4142
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "orig_activity"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4148
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    const-string v2, "@"

    const-string v3, "root_affinity"

    if-eqz v0, :cond_4

    .line 4149
    const-string v4, "affinity"

    invoke-interface {p1, v1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4150
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 4151
    iget-object v0, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    if-eqz v0, :cond_3

    move-object v2, v0

    :cond_3
    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 4153
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 4154
    if-eqz v0, :cond_5

    move-object v2, v0

    :cond_5
    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4156
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 4157
    const-string v2, "window_layout_affinity"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4159
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->rootWasReset:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "root_has_reset"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4160
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "auto_remove_recents"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4161
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->askedCompatMode:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "asked_compat_mode"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4162
    iget v0, p0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "user_id"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4163
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mUserSetupComplete:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "user_setup_complete"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4164
    iget v0, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "effective_uid"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4165
    iget-wide v2, p0, Lcom/android/server/wm/Task;->mLastTimeMoved:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "last_time_moved"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4166
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "never_relinquish_identity"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4167
    iget-object v0, p0, Lcom/android/server/wm/Task;->lastDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    .line 4168
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "last_description"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4170
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 4171
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager$TaskDescription;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 4173
    :cond_9
    iget v0, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskColor:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "task_affiliation_color"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4174
    iget v0, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "task_affiliation"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4175
    iget v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "prev_affiliation"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4176
    iget v0, p0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "next_affiliation"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4177
    iget v0, p0, Lcom/android/server/wm/Task;->mCallingUid:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "calling_uid"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4178
    iget-object v0, p0, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    const-string v2, ""

    if-nez v0, :cond_a

    move-object v0, v2

    :cond_a
    const-string v3, "calling_package"

    invoke-interface {p1, v1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4179
    nop

    .line 4180
    iget-object v0, p0, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    if-nez v0, :cond_b

    goto :goto_1

    :cond_b
    move-object v2, v0

    .line 4179
    :goto_1
    const-string v0, "calling_feature_id"

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4181
    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "resize_mode"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4182
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    .line 4183
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    .line 4182
    const-string v2, "supports_picture_in_picture"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4184
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_c

    .line 4185
    nop

    .line 4186
    invoke-virtual {v0}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 4185
    const-string v2, "non_fullscreen_bounds"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4188
    :cond_c
    iget v0, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "min_width"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4189
    iget v0, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "min_height"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4190
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "persist_task_version"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4192
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    if-eqz v0, :cond_d

    .line 4193
    const-string v0, "affinity_intent"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4194
    iget-object v2, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v2, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 4195
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4198
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_e

    .line 4199
    const-string v0, "intent"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4200
    iget-object v2, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v2, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 4201
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4204
    :cond_e
    sput-object v1, Lcom/android/server/wm/Task;->sTmpException:Ljava/lang/Exception;

    .line 4205
    sget-object v0, Lcom/android/server/wm/-$$Lambda$Task$OQmaRDKXdgA0v6VfNwTX7wOkwBs;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$OQmaRDKXdgA0v6VfNwTX7wOkwBs;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 4206
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBottomMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 4205
    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainFunction(Lcom/android/internal/util/function/TriFunction;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledFunction;

    move-result-object v0

    .line 4207
    .local v0, "f":Lcom/android/internal/util/function/pooled/PooledFunction;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Function;)Z

    .line 4208
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledFunction;->recycle()V

    .line 4209
    sget-object v1, Lcom/android/server/wm/Task;->sTmpException:Ljava/lang/Exception;

    if-nez v1, :cond_f

    .line 4212
    return-void

    .line 4210
    :cond_f
    throw v1
.end method

.method setActivityWindowingMode(I)V
    .locals 3
    .param p1, "windowingMode"    # I

    .line 4721
    sget-object v0, Lcom/android/server/wm/-$$Lambda$eT9SjQHKmQJBvlyYh6oQCJNBjSE;->INSTANCE:Lcom/android/server/wm/-$$Lambda$eT9SjQHKmQJBvlyYh6oQCJNBjSE;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 4722
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4721
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0

    .line 4723
    .local v0, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 4724
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 4725
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)I
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 2970
    invoke-static {p0, p1}, Lcom/android/server/wm/OpQuickReplyInjector;->resetBoundsIfNeeded(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2971
    const/4 v0, 0x0

    return v0

    .line 2974
    :cond_0
    const/4 v0, 0x0

    .line 2975
    .local v0, "rotation":I
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2976
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 2977
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    :goto_0
    if-eqz v1, :cond_2

    .line 2978
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    iget v0, v2, Landroid/view/DisplayInfo;->rotation:I

    .line 2981
    :cond_2
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->setBounds(Landroid/graphics/Rect;)I

    move-result v2

    .line 2982
    .local v2, "boundsChange":I
    iput v0, p0, Lcom/android/server/wm/Task;->mRotation:I

    .line 2983
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateSurfacePosition()V

    .line 2984
    return v2
.end method

.method public setBounds(Landroid/graphics/Rect;Z)I
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "forceResize"    # Z

    .line 2952
    invoke-static {p2}, Lcom/android/server/wm/OpQuickReplyInjector;->setForceResize(Z)V

    .line 2954
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    move-result v0

    .line 2956
    .local v0, "boundsChanged":I
    if-eqz p2, :cond_0

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 2957
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->onResize()V

    .line 2958
    or-int/lit8 v1, v0, 0x2

    return v1

    .line 2961
    :cond_0
    return v0
.end method

.method setCanAffectSystemUiFlags(Z)V
    .locals 0
    .param p1, "canAffectSystemUiFlags"    # Z

    .line 3568
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mCanAffectSystemUiFlags:Z

    .line 3569
    return-void
.end method

.method setDragResizing(ZI)V
    .locals 3
    .param p1, "dragResizing"    # Z
    .param p2, "dragResizeMode"    # I

    .line 3148
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mDragResizing:Z

    if-eq v0, p1, :cond_2

    .line 3150
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/wm/DragResizeMode;->isModeAllowedForStack(Lcom/android/server/wm/ActivityStack;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3151
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Drag resize mode not allow for stack stackId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3152
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dragResizeMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3154
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mDragResizing:Z

    .line 3155
    iput p2, p0, Lcom/android/server/wm/Task;->mDragResizeMode:I

    .line 3156
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->resetDragResizingChangeReported()V

    .line 3158
    :cond_2
    return-void
.end method

.method setForceHidden(IZ)Z
    .locals 3
    .param p1, "flags"    # I
    .param p2, "set"    # Z

    .line 4732
    iget v0, p0, Lcom/android/server/wm/Task;->mForceHiddenFlags:I

    .line 4733
    .local v0, "newFlags":I
    if-eqz p2, :cond_0

    .line 4734
    or-int/2addr v0, p1

    goto :goto_0

    .line 4736
    :cond_0
    not-int v1, p1

    and-int/2addr v0, v1

    .line 4738
    :goto_0
    iget v1, p0, Lcom/android/server/wm/Task;->mForceHiddenFlags:I

    if-ne v1, v0, :cond_1

    .line 4739
    const/4 v1, 0x0

    return v1

    .line 4741
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isForceHidden()Z

    move-result v1

    .line 4742
    .local v1, "wasHidden":Z
    iput v0, p0, Lcom/android/server/wm/Task;->mForceHiddenFlags:I

    .line 4743
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFocusableAndVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4747
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/server/wm/TaskDisplayArea;->resetPreferredTopFocusableStackIfBelow(Lcom/android/server/wm/Task;)V

    .line 4749
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method setForceShowForAllUsers(Z)V
    .locals 0
    .param p1, "forceShowForAllUsers"    # Z

    .line 3233
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mForceShowForAllUsers:Z

    .line 3234
    return-void
.end method

.method setHasBeenVisible(Z)V
    .locals 3
    .param p1, "hasBeenVisible"    # Z

    .line 4487
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mHasBeenVisible:Z

    .line 4488
    .local v0, "prevHasBeenVisible":Z
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mHasBeenVisible:Z

    .line 4489
    if-eqz p1, :cond_1

    .line 4494
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 4495
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 4496
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->commitPendingTransaction()V

    .line 4499
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/Task;->sendTaskAppeared()V

    .line 4500
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4501
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->setHasBeenVisible(Z)V

    .line 4504
    :cond_1
    return-void
.end method

.method setInitialSurfaceControlProperties(Landroid/view/SurfaceControl$Builder;)V
    .locals 3
    .param p1, "b"    # Landroid/view/SurfaceControl$Builder;

    .line 3343
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->setEffectLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    .line 3344
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->setInitialSurfaceControlProperties(Landroid/view/SurfaceControl$Builder;)V

    .line 3345
    return-void
.end method

.method setIntent(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 959
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 960
    return-void
.end method

.method setIntent(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "info"    # Landroid/content/pm/ActivityInfo;

    .line 970
    iget v0, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    iput v0, p0, Lcom/android/server/wm/Task;->mCallingUid:I

    .line 971
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    .line 972
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    .line 973
    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    :goto_0
    if-eqz p3, :cond_1

    move-object v1, p3

    goto :goto_1

    :cond_1
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/Task;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 974
    invoke-direct {p0, p1}, Lcom/android/server/wm/Task;->setLockTaskAuth(Lcom/android/server/wm/ActivityRecord;)V

    .line 976
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 977
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    if-eqz v0, :cond_2

    .line 978
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 979
    .local v1, "t":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_2

    .line 980
    invoke-virtual {v1, p1}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 983
    .end local v1    # "t":Lcom/android/server/wm/Task;
    :cond_2
    return-void
.end method

.method setLastNonFullscreenBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 1912
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 1913
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    goto :goto_0

    .line 1915
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1917
    :goto_0
    return-void
.end method

.method setLockTaskAuth()V
    .locals 1

    .line 1667
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/Task;->setLockTaskAuth(Lcom/android/server/wm/ActivityRecord;)V

    .line 1668
    return-void
.end method

.method setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 4693
    invoke-direct {p0, p1, p0}, Lcom/android/server/wm/Task;->setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/Task;)V

    .line 4694
    sget-object v0, Lcom/android/server/wm/-$$Lambda$6CGpg-bvz7DUll5JEZwd1mT8fPQ;->INSTANCE:Lcom/android/server/wm/-$$Lambda$6CGpg-bvz7DUll5JEZwd1mT8fPQ;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/Task;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 4695
    return-void
.end method

.method setMinDimensions(Landroid/content/pm/ActivityInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .line 1081
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz v0, :cond_0

    .line 1082
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    iput v0, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    .line 1083
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    iput v0, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    goto :goto_0

    .line 1085
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    .line 1086
    iput v0, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    .line 1088
    :goto_0
    return-void
.end method

.method setNextAffiliate(Lcom/android/server/wm/Task;)V
    .locals 1
    .param p1, "nextAffiliate"    # Lcom/android/server/wm/Task;

    .line 1120
    iput-object p1, p0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    .line 1121
    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    :goto_0
    iput v0, p0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    .line 1122
    return-void
.end method

.method setPrevAffiliate(Lcom/android/server/wm/Task;)V
    .locals 1
    .param p1, "prevAffiliate"    # Lcom/android/server/wm/Task;

    .line 1115
    iput-object p1, p0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    .line 1116
    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    :goto_0
    iput v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    .line 1117
    return-void
.end method

.method setResizeMode(I)V
    .locals 3
    .param p1, "resizeMode"    # I

    .line 689
    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    if-ne v0, p1, :cond_0

    .line 690
    return-void

    .line 692
    :cond_0
    iput p1, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 695
    iget-object v0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-static {p1, v0}, Lcom/android/server/wm/OpQuickReplyInjector;->shouldForceResizeTask(ILandroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 696
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 699
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 700
    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    .line 701
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateTaskDescription()V

    .line 702
    return-void
.end method

.method setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 1247
    iget-object v0, p0, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, p1, :cond_0

    .line 1248
    return-void

    .line 1251
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

    iget-object v1, p0, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

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

    .line 1254
    :cond_1
    iput-object p1, p0, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1255
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->updateTopResumedActivityIfNeeded()V

    .line 1256
    return-void
.end method

.method setRootProcess(Lcom/android/server/wm/WindowProcessController;)V
    .locals 2
    .param p1, "proc"    # Lcom/android/server/wm/WindowProcessController;

    .line 2668
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->clearRootProcess()V

    .line 2669
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 2670
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 2671
    iput-object p1, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    .line 2672
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowProcessController;->addRecentTask(Lcom/android/server/wm/Task;)V

    .line 2674
    :cond_0
    return-void
.end method

.method setSurfaceControl(Landroid/view/SurfaceControl;)V
    .locals 0
    .param p1, "sc"    # Landroid/view/SurfaceControl;

    .line 4607
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->setSurfaceControl(Landroid/view/SurfaceControl;)V

    .line 4610
    invoke-direct {p0}, Lcom/android/server/wm/Task;->sendTaskAppeared()V

    .line 4611
    return-void
.end method

.method setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .locals 0
    .param p1, "taskDescription"    # Landroid/app/ActivityManager$TaskDescription;

    .line 3471
    iput-object p1, p0, Lcom/android/server/wm/Task;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 3472
    return-void
.end method

.method setTaskOrganizer(Landroid/window/ITaskOrganizer;)Z
    .locals 3
    .param p1, "organizer"    # Landroid/window/ITaskOrganizer;

    .line 4545
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    .line 4546
    return v1

    .line 4549
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 4552
    .local v0, "previousOrganizer":Landroid/window/ITaskOrganizer;
    iput-object p1, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 4554
    invoke-direct {p0, v0}, Lcom/android/server/wm/Task;->sendTaskVanished(Landroid/window/ITaskOrganizer;)V

    .line 4556
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-eqz v2, :cond_1

    .line 4557
    invoke-direct {p0}, Lcom/android/server/wm/Task;->sendTaskAppeared()V

    goto :goto_0

    .line 4560
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/wm/Task;->mTaskAppearedSent:Z

    .line 4561
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/wm/Task;->mLastTaskOrganizerWindowingMode:I

    .line 4562
    const/4 v2, 0x2

    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/Task;->setForceHidden(IZ)Z

    .line 4563
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v1, :cond_2

    .line 4564
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->removeImmediately()V

    .line 4568
    :cond_2
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method setTaskToAffiliateWith(Lcom/android/server/wm/Task;)V
    .locals 4
    .param p1, "taskToAffiliateWith"    # Lcom/android/server/wm/Task;

    .line 1297
    invoke-direct {p0}, Lcom/android/server/wm/Task;->closeRecentsChain()V

    .line 1298
    iget v0, p1, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    iput v0, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    .line 1299
    iget v0, p1, Lcom/android/server/wm/Task;->mAffiliatedTaskColor:I

    iput v0, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskColor:I

    .line 1301
    :goto_0
    iget-object v0, p1, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1302
    iget-object v0, p1, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    .line 1303
    .local v0, "nextRecents":Lcom/android/server/wm/Task;
    iget v2, v0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    iget v3, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    if-eq v2, v3, :cond_1

    .line 1304
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTaskToAffiliateWith: nextRecents="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " affilTaskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    iget-object v2, v0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    if-ne v2, p1, :cond_0

    .line 1307
    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setPrevAffiliate(Lcom/android/server/wm/Task;)V

    .line 1309
    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    .line 1310
    goto :goto_1

    .line 1312
    :cond_1
    move-object p1, v0

    .line 1313
    .end local v0    # "nextRecents":Lcom/android/server/wm/Task;
    goto :goto_0

    .line 1314
    :cond_2
    :goto_1
    invoke-virtual {p1, p0}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    .line 1315
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setPrevAffiliate(Lcom/android/server/wm/Task;)V

    .line 1316
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    .line 1317
    return-void
.end method

.method shouldAnimate()Z
    .locals 3

    .line 3327
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3328
    return v1

    .line 3333
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    .line 3334
    .local v0, "controller":Lcom/android/server/wm/RecentsAnimationController;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/android/server/wm/RecentsAnimationController;->isAnimatingTask(Lcom/android/server/wm/Task;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3335
    invoke-virtual {v0}, Lcom/android/server/wm/RecentsAnimationController;->shouldDeferCancelUntilNextTransition()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3336
    return v1

    .line 3338
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;

    .line 3771
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

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

.method shouldDeferRemoval()Z
    .locals 3

    .line 2907
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2909
    return v1

    .line 2911
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasWindowsAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStack;->isAnimating(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method showForAllUsers()Z
    .locals 3

    .line 3221
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 3222
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3223
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->mShowForAllUsers:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method showToCurrentUser()Z
    .locals 2

    .line 3228
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mForceShowForAllUsers:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 3229
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfile(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 3228
    :goto_1
    return v0
.end method

.method public supportsSplitScreenWindowingMode()Z
    .locals 2

    .line 1703
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1704
    .local v0, "topTask":Lcom/android/server/wm/Task;
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->supportsSplitScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 1705
    invoke-direct {v0}, Lcom/android/server/wm/Task;->supportsSplitScreenWindowingModeInner()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1704
    :goto_0
    return v1
.end method

.method taskAppearedReady()Z
    .locals 3

    .line 4520
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4521
    return v1

    .line 4524
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 4525
    return v2

    .line 4528
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getHasBeenVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 4042
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4043
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/wm/Task;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4044
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4045
    const-string v1, " U="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4046
    iget v1, p0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4047
    const-string v1, " StackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4048
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4049
    const-string v1, " sz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4050
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4051
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4052
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4054
    :cond_0
    const-string v1, "Task{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4055
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4056
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4057
    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4058
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " visible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4059
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " type="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v3

    invoke-static {v3}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4060
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v3

    invoke-static {v3}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4061
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " translucent="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4062
    iget-object v1, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 4063
    const-string v1, " A="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4064
    iget-object v1, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4065
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4066
    const-string v1, " I="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4067
    iget-object v1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4068
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 4069
    const-string v1, " aI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4070
    iget-object v1, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4072
    :cond_3
    const-string v1, " ??"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4074
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/Task;->stringName:Ljava/lang/String;

    .line 4075
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method topActivityWithStartingWindow()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    .line 1369
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1370
    const/4 v0, 0x0

    return-object v0

    .line 1372
    :cond_0
    sget-object v0, Lcom/android/server/wm/-$$Lambda$Task$NjqppbKxK56id-VgjMiQP_fUgAA;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$NjqppbKxK56id-VgjMiQP_fUgAA;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method topRunningActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    .line 3376
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method topRunningActivity(Landroid/os/IBinder;I)Lcom/android/server/wm/ActivityRecord;
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "taskId"    # I

    .line 3410
    sget-object v0, Lcom/android/server/wm/-$$Lambda$Task$wc9vA2EWxCoWO_MzNTKvEB8eLgw;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$wc9vA2EWxCoWO_MzNTKvEB8eLgw;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 3411
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3410
    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Lcom/android/internal/util/function/TriPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v0

    .line 3412
    .local v0, "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 3413
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 3414
    return-object v1
.end method

.method topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;
    .locals 1
    .param p1, "focusableOnly"    # Z

    .line 3381
    if-eqz p1, :cond_0

    .line 3382
    sget-object v0, Lcom/android/server/wm/-$$Lambda$Task$9j7BnRlFAodU0lX24yspPfgQBcI;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$9j7BnRlFAodU0lX24yspPfgQBcI;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0

    .line 3384
    :cond_0
    sget-object v0, Lcom/android/server/wm/-$$Lambda$DaFwIyqZTBVKE2y-TN2iE7CD-r8;->INSTANCE:Lcom/android/server/wm/-$$Lambda$DaFwIyqZTBVKE2y-TN2iE7CD-r8;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    .line 1351
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1352
    const/4 v0, 0x0

    return-object v0

    .line 1354
    :cond_0
    sget-object v0, Lcom/android/server/wm/-$$Lambda$DaFwIyqZTBVKE2y-TN2iE7CD-r8;->INSTANCE:Lcom/android/server/wm/-$$Lambda$DaFwIyqZTBVKE2y-TN2iE7CD-r8;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .locals 2
    .param p1, "notTop"    # Lcom/android/server/wm/ActivityRecord;

    .line 3389
    sget-object v0, Lcom/android/server/wm/-$$Lambda$Task$vJaPYJ0TW6MLVfOETMoxr75oHkk;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$vJaPYJ0TW6MLVfOETMoxr75oHkk;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 3390
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    .line 3389
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v0

    .line 3391
    .local v0, "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 3392
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 3393
    return-object v1
.end method

.method touchActiveTime()V
    .locals 2

    .line 950
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/Task;->lastActiveTime:J

    .line 951
    return-void
.end method

.method updateEffectiveIntent()V
    .locals 1

    .line 1849
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getRootActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1850
    .local v0, "root":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_0

    .line 1851
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 1853
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateTaskDescription()V

    .line 1855
    :cond_0
    return-void
.end method

.method updateOverrideConfigurationForStack(Lcom/android/server/wm/ActivityStack;)V
    .locals 4
    .param p1, "inStack"    # Lcom/android/server/wm/ActivityStack;

    .line 2616
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2618
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    .line 2619
    return-void

    .line 2622
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2623
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2627
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->matchParentBounds()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2628
    return-void

    .line 2630
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_2

    .line 2631
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    goto :goto_0

    .line 2633
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/server/wm/LaunchParamsController;->layoutTask(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;)Z

    goto :goto_0

    .line 2624
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not position non-resizeable task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " in stack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2636
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 2638
    :goto_0
    return-void
.end method

.method updateOverrideConfigurationFromLaunchBounds()Landroid/graphics/Rect;
    .locals 3

    .line 2602
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2603
    .local v0, "rootTask":Lcom/android/server/wm/Task;
    if-eq v0, p0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 2604
    .local v1, "bounds":Landroid/graphics/Rect;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 2605
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2608
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2610
    :cond_1
    return-object v1
.end method

.method updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V
    .locals 5
    .param p1, "transaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 2049
    iget-object v0, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2054
    :cond_0
    const/4 v0, 0x0

    .line 2055
    .local v0, "width":I
    const/4 v1, 0x0

    .line 2056
    .local v1, "height":I
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2057
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 2058
    .local v2, "taskBounds":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 2059
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 2061
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskOutset()I

    move-result v3

    .line 2062
    .local v3, "outset":I
    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v0, v4

    .line 2063
    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v1, v4

    .line 2065
    .end local v2    # "taskBounds":Landroid/graphics/Rect;
    .end local v3    # "outset":I
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/Task;->mLastSurfaceSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/Task;->mLastSurfaceSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-ne v1, v2, :cond_2

    .line 2066
    return-void

    .line 2068
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 2069
    iget-object v2, p0, Lcom/android/server/wm/Task;->mLastSurfaceSize:Landroid/graphics/Point;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 2070
    return-void

    .line 2050
    .end local v0    # "width":I
    .end local v1    # "height":I
    :cond_3
    :goto_0
    return-void
.end method

.method updateTaskDescription()V
    .locals 6

    .line 1777
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getRootActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1778
    .local v0, "root":Lcom/android/server/wm/ActivityRecord;
    if-nez v0, :cond_0

    return-void

    .line 1780
    :cond_0
    new-instance v1, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v1}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    .line 1781
    .local v1, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    sget-object v2, Lcom/android/server/wm/-$$Lambda$Task$TUGPkEKamN60PF6hJQxUwDBjU-M;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$TUGPkEKamN60PF6hJQxUwDBjU-M;

    const-class v3, Lcom/android/server/wm/ActivityRecord;

    .line 1783
    invoke-static {v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v3

    .line 1781
    invoke-static {v2, v3, v0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainFunction(Lcom/android/internal/util/function/TriFunction;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledFunction;

    move-result-object v2

    .line 1784
    .local v2, "f":Lcom/android/internal/util/function/pooled/PooledFunction;
    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Function;)Z

    .line 1785
    invoke-interface {v2}, Lcom/android/internal/util/function/pooled/PooledFunction;->recycle()V

    .line 1786
    iget v3, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager$TaskDescription;->setResizeMode(I)V

    .line 1787
    iget v3, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager$TaskDescription;->setMinWidth(I)V

    .line 1788
    iget v3, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager$TaskDescription;->setMinHeight(I)V

    .line 1789
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    .line 1791
    iget v3, p0, Lcom/android/server/wm/Task;->mTaskId:I

    iget v4, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    if-ne v3, v4, :cond_1

    .line 1792
    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskColor:I

    .line 1794
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v3

    .line 1795
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    .line 1794
    invoke-virtual {v3, v4}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskDescriptionChanged(Landroid/app/TaskInfo;)V

    .line 1797
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    .line 1798
    .local v3, "parent":Lcom/android/server/wm/WindowContainer;
    if-eqz v3, :cond_2

    .line 1799
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 1800
    .local v4, "t":Lcom/android/server/wm/Task;
    if-eqz v4, :cond_2

    .line 1801
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->updateTaskDescription()V

    .line 1805
    .end local v4    # "t":Lcom/android/server/wm/Task;
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1806
    iget-object v4, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    const/4 v5, 0x0

    invoke-virtual {v4, p0, v5}, Lcom/android/server/wm/TaskOrganizerController;->dispatchTaskInfoChanged(Lcom/android/server/wm/Task;Z)V

    .line 1808
    :cond_3
    return-void
.end method

.method updateTaskMovement(Z)V
    .locals 4
    .param p1, "toFront"    # Z

    .line 1259
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->isPersistable:Z

    if-eqz v0, :cond_0

    .line 1260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/Task;->mLastTimeMoved:J

    .line 1264
    if-nez p1, :cond_0

    .line 1265
    const-wide/16 v2, -0x1

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/Task;->mLastTimeMoved:J

    .line 1268
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->invalidateTaskLayers()V

    .line 1269
    return-void
.end method

.method updateTaskOrganizerState(Z)Z
    .locals 3
    .param p1, "forceUpdate"    # Z

    .line 4581
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4582
    return v1

    .line 4585
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    .line 4586
    .local v0, "windowingMode":I
    if-nez p1, :cond_1

    iget v2, p0, Lcom/android/server/wm/Task;->mLastTaskOrganizerWindowingMode:I

    if-ne v0, v2, :cond_1

    .line 4591
    return v1

    .line 4598
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 4599
    invoke-virtual {v1, v0}, Lcom/android/server/wm/TaskOrganizerController;->getTaskOrganizer(I)Landroid/window/ITaskOrganizer;

    move-result-object v1

    .line 4600
    .local v1, "org":Landroid/window/ITaskOrganizer;
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->setTaskOrganizer(Landroid/window/ITaskOrganizer;)Z

    move-result v2

    .line 4601
    .local v2, "result":Z
    iput v0, p0, Lcom/android/server/wm/Task;->mLastTaskOrganizerWindowingMode:I

    .line 4602
    return v2
.end method

.method writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 2125
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 2126
    .local v0, "token":J
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2127
    iget v2, p0, Lcom/android/server/wm/Task;->mUserId:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2128
    iget-object v2, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2129
    iget-object v2, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "Task"

    .line 2128
    :goto_0
    const-wide v3, 0x10900000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2130
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2131
    return-void
.end method
