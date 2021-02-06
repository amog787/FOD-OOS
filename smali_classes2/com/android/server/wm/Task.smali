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

    .line 564
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p26

    move-object/from16 v5, p32

    iget-object v6, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v6}, Lcom/android/server/wm/WindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 217
    const/4 v6, 0x0

    iput v6, v0, Lcom/android/server/wm/Task;->mShadowRadius:F

    .line 277
    const/4 v6, 0x1

    iput v6, v0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    .line 279
    const/4 v7, -0x1

    iput v7, v0, Lcom/android/server/wm/Task;->mLockTaskUid:I

    .line 287
    const/4 v8, 0x0

    iput-boolean v8, v0, Lcom/android/server/wm/Task;->isPersistable:Z

    .line 296
    iput-boolean v6, v0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    .line 300
    iput-boolean v8, v0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 307
    iput v7, v0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    .line 309
    iput v7, v0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    .line 316
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, v0, Lcom/android/server/wm/Task;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 317
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, v0, Lcom/android/server/wm/Task;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    .line 318
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, v0, Lcom/android/server/wm/Task;->mTmpBounds:Landroid/graphics/Rect;

    .line 319
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, v0, Lcom/android/server/wm/Task;->mTmpInsets:Landroid/graphics/Rect;

    .line 320
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    .line 325
    const/4 v9, 0x0

    iput-object v9, v0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 333
    iput v7, v0, Lcom/android/server/wm/Task;->mLayerRank:I

    .line 336
    new-instance v10, Landroid/content/res/Configuration;

    invoke-direct {v10}, Landroid/content/res/Configuration;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mTmpConfig:Landroid/content/res/Configuration;

    .line 339
    new-instance v10, Lcom/android/server/wm/Task$TaskActivitiesReport;

    invoke-direct {v10}, Lcom/android/server/wm/Task$TaskActivitiesReport;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    .line 357
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mPreparedFrozenBounds:Landroid/graphics/Rect;

    .line 358
    new-instance v10, Landroid/content/res/Configuration;

    invoke-direct {v10}, Landroid/content/res/Configuration;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mPreparedFrozenMergedConfig:Landroid/content/res/Configuration;

    .line 361
    iput v7, v0, Lcom/android/server/wm/Task;->mPrevDisplayId:I

    .line 364
    iput v7, v0, Lcom/android/server/wm/Task;->mLastRotationDisplayId:I

    .line 379
    iput v7, v0, Lcom/android/server/wm/Task;->mLastReportedRequestedOrientation:I

    .line 382
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    .line 384
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    .line 406
    iput-boolean v8, v0, Lcom/android/server/wm/Task;->mPreserveNonFloatingState:Z

    .line 408
    new-instance v10, Lcom/android/server/wm/Dimmer;

    invoke-direct {v10, v0}, Lcom/android/server/wm/Dimmer;-><init>(Lcom/android/server/wm/WindowContainer;)V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    .line 409
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    .line 410
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mLastSurfaceSize:Landroid/graphics/Point;

    .line 413
    iput-boolean v6, v0, Lcom/android/server/wm/Task;->mCanAffectSystemUiFlags:Z

    .line 418
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mExitingActivities:Ljava/util/ArrayList;

    .line 424
    iput-object v9, v0, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 431
    iput-object v9, v0, Lcom/android/server/wm/Task;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 438
    iput-object v9, v0, Lcom/android/server/wm/Task;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    .line 444
    iput-object v9, v0, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 456
    iput v8, v0, Lcom/android/server/wm/Task;->mForceHiddenFlags:I

    .line 472
    new-instance v8, Lcom/android/server/wm/Task$FindRootHelper;

    invoke-direct {v8, v0, v9}, Lcom/android/server/wm/Task$FindRootHelper;-><init>(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task$1;)V

    iput-object v8, v0, Lcom/android/server/wm/Task;->mFindRootHelper:Lcom/android/server/wm/Task$FindRootHelper;

    .line 514
    iput v7, v0, Lcom/android/server/wm/Task;->mLastTaskOrganizerWindowingMode:I

    .line 566
    if-eqz p35, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v7

    :cond_0
    invoke-static {v2, v7}, Lcom/android/server/wm/EventLogTags;->writeWmTaskCreated(II)V

    .line 567
    iput-object v1, v0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 568
    iget-object v7, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iput-object v7, v0, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 569
    iget-object v7, v0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iput-object v7, v0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 570
    iput v2, v0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 571
    move/from16 v7, p12

    iput v7, v0, Lcom/android/server/wm/Task;->mUserId:I

    .line 572
    iput v4, v0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 573
    move/from16 v8, p27

    iput-boolean v8, v0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    .line 574
    move-object/from16 v9, p18

    iput-object v9, v0, Lcom/android/server/wm/Task;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 576
    const/4 v10, -0x2

    invoke-virtual {v0, v10}, Lcom/android/server/wm/Task;->setOrientation(I)V

    .line 577
    new-instance v10, Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-direct {v10, v0}, Lcom/android/server/wm/WindowContainer$RemoteToken;-><init>(Lcom/android/server/wm/WindowContainer;)V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    .line 578
    move-object/from16 v10, p4

    iput-object v10, v0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    .line 579
    move-object/from16 v11, p5

    iput-object v11, v0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    .line 580
    move-object/from16 v12, p6

    iput-object v12, v0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    .line 581
    move-object/from16 v13, p33

    iput-object v13, v0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 582
    move-object/from16 v14, p34

    iput-object v14, v0, Lcom/android/server/wm/Task;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 583
    move-object/from16 v15, p7

    iput-object v15, v0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 584
    move/from16 v6, p28

    iput-boolean v6, v0, Lcom/android/server/wm/Task;->realActivitySuspended:Z

    .line 585
    move-object/from16 v1, p8

    iput-object v1, v0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    .line 586
    move/from16 v1, p9

    iput-boolean v1, v0, Lcom/android/server/wm/Task;->rootWasReset:Z

    .line 587
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/Task;->isAvailable:Z

    .line 588
    move/from16 v1, p10

    iput-boolean v1, v0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    .line 589
    move/from16 v1, p11

    iput-boolean v1, v0, Lcom/android/server/wm/Task;->askedCompatMode:Z

    .line 590
    move/from16 v1, p29

    iput-boolean v1, v0, Lcom/android/server/wm/Task;->mUserSetupComplete:Z

    .line 591
    move/from16 v1, p13

    iput v1, v0, Lcom/android/server/wm/Task;->effectiveUid:I

    .line 592
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->touchActiveTime()V

    .line 593
    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/server/wm/Task;->lastDescription:Ljava/lang/CharSequence;

    .line 594
    move-wide/from16 v6, p15

    iput-wide v6, v0, Lcom/android/server/wm/Task;->mLastTimeMoved:J

    .line 595
    move/from16 v1, p17

    iput-boolean v1, v0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    .line 596
    move/from16 v1, p19

    iput v1, v0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    .line 597
    move/from16 v1, p22

    iput v1, v0, Lcom/android/server/wm/Task;->mAffiliatedTaskColor:I

    .line 598
    move/from16 v1, p20

    iput v1, v0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    .line 599
    move/from16 v1, p21

    iput v1, v0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    .line 600
    move/from16 v1, p23

    iput v1, v0, Lcom/android/server/wm/Task;->mCallingUid:I

    .line 601
    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    .line 602
    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    .line 603
    iput v4, v0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 606
    iget-object v1, v0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-static {v4, v1}, Lcom/android/server/wm/OpQuickReplyInjector;->shouldForceResizeTask(ILandroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 607
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 610
    :cond_1
    if-eqz v5, :cond_2

    .line 611
    invoke-direct {v0, v3, v5}, Lcom/android/server/wm/Task;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 612
    invoke-virtual {v0, v5}, Lcom/android/server/wm/Task;->setMinDimensions(Landroid/content/pm/ActivityInfo;)V

    move/from16 v1, p31

    goto :goto_0

    .line 614
    :cond_2
    iput-object v3, v0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 615
    move/from16 v1, p30

    iput v1, v0, Lcom/android/server/wm/Task;->mMinWidth:I

    .line 616
    move/from16 v1, p31

    iput v1, v0, Lcom/android/server/wm/Task;->mMinHeight:I

    .line 618
    :goto_0
    iget-object v1, v0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v1

    iget-object v3, v0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskCreated(ILandroid/content/ComponentName;)V

    .line 619
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

    .line 538
    move-object/from16 v15, p3

    iget-object v0, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 541
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 542
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 544
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

    .line 547
    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v27

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, -0x1

    const/16 v31, -0x1

    .line 538
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

    .line 550
    return-void
.end method

.method private autoRemoveFromRecents()Z
    .locals 1

    .line 1541
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

    .line 2232
    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2233
    invoke-virtual {p2, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2234
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2237
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    .line 2238
    .local v0, "policy":Lcom/android/server/wm/DisplayPolicy;
    if-nez v0, :cond_1

    .line 2239
    return-void

    .line 2241
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpBounds:Landroid/graphics/Rect;

    iget v2, p4, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, p4, Landroid/view/DisplayInfo;->logicalHeight:I

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2243
    iget v2, p4, Landroid/view/DisplayInfo;->rotation:I

    iget v3, p4, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v4, p4, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v5, p4, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iget-object v6, p0, Lcom/android/server/wm/Task;->mTmpInsets:Landroid/graphics/Rect;

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 2245
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpInsets:Landroid/graphics/Rect;

    invoke-static {p1, v1, v2}, Lcom/android/server/wm/Task;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2247
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpInsets:Landroid/graphics/Rect;

    iget v2, p4, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayPolicy;->convertNonDecorInsetsToStableInsets(Landroid/graphics/Rect;I)V

    .line 2248
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpInsets:Landroid/graphics/Rect;

    invoke-static {p2, v1, v2}, Lcom/android/server/wm/Task;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2249
    return-void

    .line 2235
    .end local v0    # "policy":Lcom/android/server/wm/DisplayPolicy;
    :cond_2
    :goto_0
    return-void
.end method

.method private canResizeToBounds(Landroid/graphics/Rect;)Z
    .locals 6
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 1723
    const/4 v0, 0x1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_5

    .line 1727
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

    .line 1728
    .local v1, "landscape":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 1729
    .local v2, "configBounds":Landroid/graphics/Rect;
    iget v4, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_5

    .line 1730
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1731
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

    .line 1730
    :goto_3
    return v0

    .line 1733
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

    .line 1725
    .end local v1    # "landscape":Z
    .end local v2    # "configBounds":Landroid/graphics/Rect;
    :cond_9
    :goto_5
    return v0
.end method

.method private canSpecifyOrientation()Z
    .locals 4

    .line 3446
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    .line 3447
    .local v0, "windowingMode":I
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v1

    .line 3448
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

    .line 639
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    return-void

    .line 643
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 645
    move-object v0, p1

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/Task;->saveLaunchingStateIfNeeded(Lcom/android/server/wm/DisplayContent;)V

    .line 649
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 650
    .local v0, "isVoiceSession":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 652
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v2, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    iget v3, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {v1, v2, v3}, Landroid/service/voice/IVoiceInteractionSession;->taskFinished(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 654
    goto :goto_1

    .line 653
    :catch_0
    move-exception v1

    .line 656
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/server/wm/Task;->autoRemoveFromRecents()Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz v0, :cond_5

    .line 659
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/RecentTasks;->remove(Lcom/android/server/wm/Task;)V

    .line 662
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->removeIfPossible()V

    .line 663
    return-void
.end method

.method private closeRecentsChain()V
    .locals 2

    .line 1267
    iget-object v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_0

    .line 1268
    iget-object v1, p0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    .line 1270
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_1

    .line 1271
    iget-object v1, p0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setPrevAffiliate(Lcom/android/server/wm/Task;)V

    .line 1273
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setPrevAffiliate(Lcom/android/server/wm/Task;)V

    .line 1274
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    .line 1275
    return-void
.end method

.method private computeMaxUserPosition(I)I
    .locals 2
    .param p1, "maxPosition"    # I

    .line 2806
    :goto_0
    if-lez p1, :cond_1

    .line 2807
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    .line 2808
    .local v0, "child":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->showToCurrentUser()Z

    move-result v1

    .line 2809
    .local v1, "canShow":Z
    if-nez v1, :cond_0

    .line 2810
    goto :goto_1

    .line 2812
    :cond_0
    nop

    .end local v0    # "child":Lcom/android/server/wm/WindowContainer;
    .end local v1    # "canShow":Z
    add-int/lit8 p1, p1, -0x1

    .line 2813
    goto :goto_0

    .line 2814
    :cond_1
    :goto_1
    return p1
.end method

.method private computeMinUserPosition(II)I
    .locals 2
    .param p1, "minPosition"    # I
    .param p2, "size"    # I

    .line 2788
    :goto_0
    if-ge p1, p2, :cond_1

    .line 2789
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    .line 2790
    .local v0, "child":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->showToCurrentUser()Z

    move-result v1

    .line 2791
    .local v1, "canShow":Z
    if-eqz v1, :cond_0

    .line 2792
    goto :goto_1

    .line 2794
    :cond_0
    nop

    .end local v0    # "child":Lcom/android/server/wm/WindowContainer;
    .end local v1    # "canShow":Z
    add-int/lit8 p1, p1, 0x1

    .line 2795
    goto :goto_0

    .line 2796
    :cond_1
    :goto_1
    return p1
.end method

.method static computeScreenLayoutOverride(III)I
    .locals 3
    .param p0, "sourceScreenLayout"    # I
    .param p1, "screenWidthDp"    # I
    .param p2, "screenHeightDp"    # I

    .line 2439
    and-int/lit8 p0, p0, 0x3f

    .line 2441
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2442
    .local v0, "longSize":I
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2443
    .local v1, "shortSize":I
    invoke-static {p0, v0, v1}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v2

    return v2
.end method

.method private static finishActivityAbove(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 3
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "boundaryActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 1616
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1621
    :cond_0
    sget-boolean v1, Lcom/android/server/wm/OpAppLockerInjector;->IS_APP_LOCKER_ENABLED:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1622
    const-string v2, "com.oneplus.applocker"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1623
    invoke-static {p1}, Lcom/android/server/wm/OpAppLockerInjector;->isAppLocked(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1624
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppLocker: finishActivityAbove skip for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    return v0

    .line 1629
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 1630
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityRecord;->takeOptionsLocked(Z)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 1631
    .local v0, "opts":Landroid/app/ActivityOptions;
    if-eqz v0, :cond_2

    .line 1633
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 1635
    :cond_2
    const-string v2, "clear-task-stack"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 1638
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

    .line 2164
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2170
    :cond_0
    const/4 v0, 0x0

    .line 2172
    .local v0, "horizontalDiff":I
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2173
    .local v1, "overlapLR":I
    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    if-ge v2, v3, :cond_1

    .line 2174
    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    sub-int v0, v1, v2

    goto :goto_0

    .line 2175
    :cond_1
    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v1

    if-le v2, v3, :cond_2

    .line 2176
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    sub-int v2, v1, v2

    neg-int v0, v2

    .line 2178
    :cond_2
    :goto_0
    const/4 v2, 0x0

    .line 2179
    .local v2, "verticalDiff":I
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2180
    .local v3, "overlapTB":I
    iget v4, p0, Landroid/graphics/Rect;->bottom:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v3

    if-ge v4, v5, :cond_3

    .line 2181
    iget v4, p0, Landroid/graphics/Rect;->bottom:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    goto :goto_1

    .line 2182
    :cond_3
    iget v4, p0, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v3

    if-le v4, v5, :cond_4

    .line 2183
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v4, v3, v4

    neg-int v2, v4

    .line 2185
    :cond_4
    :goto_1
    invoke-virtual {p0, v0, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 2186
    return-void

    .line 2165
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

    .line 2818
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->showToCurrentUser()Z

    move-result v0

    .line 2820
    .local v0, "canShowChild":Z
    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    .line 2823
    .local v1, "size":I
    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/Task;->computeMinUserPosition(II)I

    move-result v2

    .line 2824
    .local v2, "minPosition":I
    :cond_0
    if-eqz v0, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v1, -0x1

    invoke-direct {p0, v3}, Lcom/android/server/wm/Task;->computeMaxUserPosition(I)I

    move-result v3

    .line 2827
    .local v3, "maxPosition":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isAlwaysOnTop()Z

    move-result v4

    if-nez v4, :cond_3

    .line 2830
    :goto_1
    if-le v3, v2, :cond_3

    .line 2831
    iget-object v4, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isAlwaysOnTop()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    .line 2832
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2837
    :cond_3
    :goto_2
    const/high16 v4, -0x80000000

    if-ne p2, v4, :cond_4

    if-nez v2, :cond_4

    .line 2838
    return v4

    .line 2839
    :cond_4
    const v4, 0x7fffffff

    if-ne p2, v4, :cond_5

    add-int/lit8 v5, v1, -0x1

    if-lt v3, v5, :cond_5

    .line 2840
    return v4

    .line 2843
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

    .line 3052
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mIsExiting:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isClientVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 3055
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 3056
    .local v0, "win":Lcom/android/server/wm/WindowState;
    if-nez v0, :cond_1

    .line 3057
    return-void

    .line 3059
    :cond_1
    const/4 v1, 0x0

    aget-boolean v2, p2, v1

    if-nez v2, :cond_2

    .line 3060
    const/4 v2, 0x1

    aput-boolean v2, p2, v1

    .line 3061
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 3064
    :cond_2
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowState;->getMaxVisibleBounds(Landroid/graphics/Rect;)V

    .line 3065
    return-void

    .line 3053
    .end local v0    # "win":Lcom/android/server/wm/WindowState;
    :cond_3
    :goto_0
    return-void
.end method

.method private getNextFocusableTask(Z)Lcom/android/server/wm/Task;
    .locals 3
    .param p1, "allowFocusSelf"    # Z

    .line 2710
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 2711
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    if-nez v0, :cond_0

    .line 2712
    const/4 v1, 0x0

    return-object v1

    .line 2715
    :cond_0
    new-instance v1, Lcom/android/server/wm/-$$Lambda$Task$kW0PT0lvgYRkZBZvY3NzGSDUDQQ;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/-$$Lambda$Task$kW0PT0lvgYRkZBZvY3NzGSDUDQQ;-><init>(Lcom/android/server/wm/Task;Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v1

    .line 2717
    .local v1, "focusableTask":Lcom/android/server/wm/Task;
    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2718
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-direct {v2, p1}, Lcom/android/server/wm/Task;->getNextFocusableTask(Z)Lcom/android/server/wm/Task;

    move-result-object v2

    return-object v2

    .line 2720
    :cond_1
    return-object v1
.end method

.method private getNumRunningActivities(Lcom/android/server/wm/Task$TaskActivitiesReport;)V
    .locals 0
    .param p1, "reportOut"    # Lcom/android/server/wm/Task$TaskActivitiesReport;

    .line 1375
    invoke-virtual {p1}, Lcom/android/server/wm/Task$TaskActivitiesReport;->reset()V

    .line 1376
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 1377
    return-void
.end method

.method private getShadowRadius(Z)F
    .locals 3
    .param p1, "taskIsFocused"    # Z

    .line 4583
    const/4 v0, 0x0

    .line 4586
    .local v0, "elevation":I
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4587
    const/4 v0, 0x5

    goto :goto_1

    .line 4588
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4589
    if-eqz p1, :cond_1

    .line 4590
    const/16 v1, 0x14

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    :goto_0
    move v0, v1

    .line 4597
    :goto_1
    invoke-direct {p0}, Lcom/android/server/wm/Task;->hasVisibleChildren()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4598
    return v2

    .line 4601
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v1

    int-to-float v1, v1

    return v1

    .line 4593
    :cond_3
    return v2
.end method

.method private hasVisibleChildren()Z
    .locals 2

    .line 4572
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isForceHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4576
    :cond_0
    sget-object v0, Lcom/android/server/wm/-$$Lambda$l6AtA6HpQmFuEYd_DP955eyY_WI;->INSTANCE:Lcom/android/server/wm/-$$Lambda$l6AtA6HpQmFuEYd_DP955eyY_WI;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 4573
    :cond_2
    :goto_0
    return v1
.end method

.method private initializeChangeTransition(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "startBounds"    # Landroid/graphics/Rect;

    .line 2006
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZIZ)V

    .line 2008
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2010
    iget-object v0, p0, Lcom/android/server/wm/Task;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/SurfaceFreezer;->freeze(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)V

    .line 2011
    return-void
.end method

.method static intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2
    .param p0, "inOutBounds"    # Landroid/graphics/Rect;
    .param p1, "intersectBounds"    # Landroid/graphics/Rect;
    .param p2, "intersectInsets"    # Landroid/graphics/Rect;

    .line 2202
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_0

    .line 2203
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Rect;->right:I

    .line 2204
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 2206
    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-gt v0, v1, :cond_1

    .line 2207
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    .line 2208
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 2210
    :cond_1
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-lt v0, v1, :cond_2

    .line 2211
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Rect;->left:I

    .line 2212
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 2214
    :cond_2
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-lt v0, v1, :cond_3

    .line 2215
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Rect;->top:I

    .line 2216
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 2218
    :cond_3
    return-void
.end method

.method private static invalidateAppBoundsConfig(Landroid/content/res/Configuration;)V
    .locals 2
    .param p0, "inOutConfig"    # Landroid/content/res/Configuration;

    .line 2257
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2258
    .local v0, "appBounds":Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    .line 2259
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2261
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 2262
    iput v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 2263
    return-void
.end method

.method private isFocused()Z
    .locals 2

    .line 4562
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4565
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-ne v0, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 4563
    :cond_2
    :goto_0
    return v1
.end method

.method private static isOpaqueActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;

    .line 3235
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3238
    return v1

    .line 3241
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-nez v0, :cond_1

    if-eq p0, p1, :cond_1

    .line 3244
    return v1

    .line 3247
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->hasWallpaper:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 3252
    :cond_2
    return v1

    .line 3250
    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private static isTopRunning(Lcom/android/server/wm/ActivityRecord;ILandroid/os/IBinder;)Z
    .locals 1
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "taskId"    # I
    .param p2, "notTop"    # Landroid/os/IBinder;

    .line 3375
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

    .line 3354
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

    .line 3617
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3618
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WindowContainer;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 3617
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3620
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method static synthetic lambda$getDescendantTaskCount$3(Lcom/android/server/wm/Task;[I)V
    .locals 2
    .param p0, "t"    # Lcom/android/server/wm/Task;
    .param p1, "count"    # [I

    .line 2692
    const/4 v0, 0x0

    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    return-void
.end method

.method static synthetic lambda$getTopFullscreenActivity$7(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 3380
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 3381
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

    .line 3388
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

    .line 1556
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_0

    return-void

    .line 1558
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v5, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;Z)I

    .line 1560
    return-void
.end method

.method static synthetic lambda$topActivityWithStartingWindow$0(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1366
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindowState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1367
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->okToShowLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1366
    :goto_0
    return v1
.end method

.method static synthetic lambda$topRunningActivity$6(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 3339
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

    .line 1758
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

    .line 1592
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->findActivityInHistory(Landroid/content/ComponentName;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1593
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1595
    :cond_0
    sget-object v2, Lcom/android/server/wm/-$$Lambda$Task$lqGdYR9ABiPuG3_68w1VS6hrr8c;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$lqGdYR9ABiPuG3_68w1VS6hrr8c;

    const-class v3, Lcom/android/server/wm/ActivityRecord;

    .line 1596
    invoke-static {v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v3

    .line 1595
    invoke-static {v2, v3, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainFunction(Ljava/util/function/BiFunction;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledFunction;

    move-result-object v2

    .line 1597
    .local v2, "f":Lcom/android/internal/util/function/pooled/PooledFunction;
    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Function;)Z

    .line 1598
    invoke-interface {v2}, Lcom/android/internal/util/function/pooled/PooledFunction;->recycle()V

    .line 1602
    iget v3, v0, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    if-nez v3, :cond_1

    const/high16 v3, 0x20000000

    and-int/2addr v3, p2

    if-nez v3, :cond_1

    .line 1604
    invoke-static {p2}, Lcom/android/server/wm/ActivityStarter;->isDocumentLaunchesIntoExisting(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1605
    iget-boolean v3, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v3, :cond_1

    .line 1606
    const/4 v3, 0x0

    const-string v4, "clear-task-top"

    invoke-virtual {v0, v4, v3}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 1607
    return-object v1

    .line 1611
    :cond_1
    return-object v0
.end method

.method private static replaceWindowsOnTaskMove(II)Z
    .locals 1
    .param p0, "sourceWindowingMode"    # I
    .param p1, "targetWindowingMode"    # I

    .line 928
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

    .line 2471
    nop

    .line 2472
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 2473
    .local v0, "windowingMode":I
    if-nez v0, :cond_0

    .line 2474
    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 2476
    :cond_0
    nop

    .line 2477
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 2479
    .local v1, "outOverrideBounds":Landroid/graphics/Rect;
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 2480
    const/4 v2, 0x0

    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 2481
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    .line 2480
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/wm/Task;->computeFullscreenBounds(Landroid/graphics/Rect;Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;I)V

    .line 2485
    return-void

    .line 2488
    :cond_1
    invoke-virtual {p0, v1, p2, p1}, Lcom/android/server/wm/Task;->adjustForMinimalTaskDimensions(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;)V

    .line 2489
    const/4 v2, 0x5

    if-ne v0, v2, :cond_3

    .line 2491
    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v2, v2

    const/high16 v3, 0x43200000    # 160.0f

    div-float/2addr v2, v3

    .line 2493
    .local v2, "density":F
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 2494
    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2495
    .local v3, "parentBounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    .line 2496
    .local v4, "display":Lcom/android/server/wm/DisplayContent;
    if-eqz v4, :cond_2

    .line 2500
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 2501
    .local v5, "stableBounds":Landroid/graphics/Rect;
    invoke-virtual {v4, v5}, Lcom/android/server/wm/DisplayContent;->getStableRect(Landroid/graphics/Rect;)V

    .line 2502
    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 2505
    .end local v5    # "stableBounds":Landroid/graphics/Rect;
    :cond_2
    const/high16 v5, 0x42400000    # 48.0f

    mul-float/2addr v5, v2

    float-to-int v5, v5

    const/high16 v6, 0x42000000    # 32.0f

    mul-float/2addr v6, v2

    float-to-int v6, v6

    invoke-static {v1, v3, v5, v6}, Lcom/android/server/wm/Task;->fitWithinBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 2510
    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    .line 2511
    .local v5, "offsetTop":I
    if-lez v5, :cond_3

    .line 2519
    iget-object v6, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-static {v6, v0}, Lcom/android/server/wm/OpQuickReplyInjector;->skipTopBoundsAdjust(Landroid/content/ComponentName;I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 2520
    const/4 v6, 0x0

    invoke-virtual {v1, v6, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 2525
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

    .line 4181
    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 4182
    .local v0, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 4183
    .local v2, "affinityIntent":Landroid/content/Intent;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4184
    .local v3, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    const/4 v4, 0x0

    .line 4185
    .local v4, "realActivity":Landroid/content/ComponentName;
    const/4 v5, 0x0

    .line 4186
    .local v5, "realActivitySuspended":Z
    const/4 v6, 0x0

    .line 4187
    .local v6, "origActivity":Landroid/content/ComponentName;
    const/4 v7, 0x0

    .line 4188
    .local v7, "affinity":Ljava/lang/String;
    const/4 v8, 0x0

    .line 4189
    .local v8, "rootAffinity":Ljava/lang/String;
    const/4 v9, 0x0

    .line 4190
    .local v9, "hasRootAffinity":Z
    const/4 v10, 0x0

    .line 4191
    .local v10, "windowLayoutAffinity":Ljava/lang/String;
    const/4 v11, 0x0

    .line 4192
    .local v11, "rootHasReset":Z
    const/4 v12, 0x0

    .line 4193
    .local v12, "autoRemoveRecents":Z
    const/4 v13, 0x0

    .line 4194
    .local v13, "askedCompatMode":Z
    const/4 v14, 0x0

    .line 4195
    .local v14, "taskType":I
    const/4 v15, 0x0

    .line 4196
    .local v15, "userId":I
    const/16 v16, 0x1

    .line 4197
    .local v16, "userSetupComplete":Z
    const/16 v17, -0x1

    .line 4198
    .local v17, "effectiveUid":I
    const/16 v18, 0x0

    .line 4199
    .local v18, "lastDescription":Ljava/lang/String;
    const-wide/16 v19, 0x0

    .line 4200
    .local v19, "lastTimeOnTop":J
    const/16 v21, 0x1

    .line 4201
    .local v21, "neverRelinquishIdentity":Z
    const/16 v22, -0x1

    .line 4202
    .local v22, "taskId":I
    move-object/from16 v23, v2

    .end local v2    # "affinityIntent":Landroid/content/Intent;
    .local v23, "affinityIntent":Landroid/content/Intent;
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 4203
    .local v2, "outerDepth":I
    new-instance v24, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct/range {v24 .. v24}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    move-object/from16 v61, v24

    .line 4204
    .local v61, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    const/16 v24, -0x1

    .line 4205
    .local v24, "taskAffiliation":I
    const/16 v25, 0x0

    .line 4206
    .local v25, "taskAffiliationColor":I
    const/16 v26, -0x1

    .line 4207
    .local v26, "prevTaskId":I
    const/16 v27, -0x1

    .line 4208
    .local v27, "nextTaskId":I
    const/16 v28, -0x1

    .line 4209
    .local v28, "callingUid":I
    const-string v29, ""

    .line 4210
    .local v29, "callingPackage":Ljava/lang/String;
    const/16 v30, 0x0

    .line 4211
    .local v30, "callingFeatureId":Ljava/lang/String;
    const/16 v31, 0x4

    .line 4212
    .local v31, "resizeMode":I
    const/16 v32, 0x0

    .line 4213
    .local v32, "supportsPictureInPicture":Z
    const/16 v33, 0x0

    .line 4214
    .local v33, "lastNonFullscreenBounds":Landroid/graphics/Rect;
    const/16 v34, -0x1

    .line 4215
    .local v34, "minWidth":I
    const/16 v35, -0x1

    .line 4216
    .local v35, "minHeight":I
    const/16 v36, 0x0

    .line 4218
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

    .line 4219
    move/from16 v75, v13

    .end local v13    # "autoRemoveRecents":Z
    .local v75, "autoRemoveRecents":Z
    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v13

    .line 4220
    .local v13, "attrName":Ljava/lang/String;
    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v28

    .line 4225
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

    .line 4318
    const-string v12, "task_description_"

    invoke-virtual {v13, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 4319
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

    .line 4315
    .end local v77    # "origActivity":Landroid/content/ComponentName;
    .restart local v7    # "origActivity":Landroid/content/ComponentName;
    :pswitch_0
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 4316
    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    .line 4312
    :pswitch_1
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 4313
    .end local v72    # "minHeight":I
    .local v12, "minHeight":I
    move/from16 v72, v12

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    .line 4309
    .end local v12    # "minHeight":I
    .restart local v72    # "minHeight":I
    :pswitch_2
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 4310
    .end local v71    # "minWidth":I
    .local v12, "minWidth":I
    move/from16 v71, v12

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    .line 4306
    .end local v12    # "minWidth":I
    .restart local v71    # "minWidth":I
    :pswitch_3
    invoke-static/range {v28 .. v28}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v12

    .line 4307
    .end local v70    # "lastNonFullscreenBounds":Landroid/graphics/Rect;
    .local v12, "lastNonFullscreenBounds":Landroid/graphics/Rect;
    move-object/from16 v70, v12

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    .line 4303
    .end local v12    # "lastNonFullscreenBounds":Landroid/graphics/Rect;
    .restart local v70    # "lastNonFullscreenBounds":Landroid/graphics/Rect;
    :pswitch_4
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 4304
    .end local v32    # "supportsPictureInPicture":Z
    .local v12, "supportsPictureInPicture":Z
    move/from16 v32, v12

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    .line 4300
    .end local v12    # "supportsPictureInPicture":Z
    .restart local v32    # "supportsPictureInPicture":Z
    :pswitch_5
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 4301
    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    .line 4297
    :pswitch_6
    move-object/from16 v12, v28

    .line 4298
    .end local v68    # "callingFeatureId":Ljava/lang/String;
    .local v12, "callingFeatureId":Ljava/lang/String;
    move-object/from16 v68, v12

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    .line 4294
    .end local v12    # "callingFeatureId":Ljava/lang/String;
    .restart local v68    # "callingFeatureId":Ljava/lang/String;
    :pswitch_7
    move-object/from16 v12, v28

    .line 4295
    .end local v67    # "callingPackage":Ljava/lang/String;
    .local v12, "callingPackage":Ljava/lang/String;
    move-object/from16 v67, v12

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    .line 4291
    .end local v12    # "callingPackage":Ljava/lang/String;
    .restart local v67    # "callingPackage":Ljava/lang/String;
    :pswitch_8
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 4292
    .end local v66    # "callingUid":I
    .local v12, "callingUid":I
    move/from16 v66, v12

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    .line 4288
    .end local v12    # "callingUid":I
    .restart local v66    # "callingUid":I
    :pswitch_9
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 4289
    .end local v63    # "taskAffiliationColor":I
    .local v12, "taskAffiliationColor":I
    move/from16 v63, v12

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    .line 4285
    .end local v12    # "taskAffiliationColor":I
    .restart local v63    # "taskAffiliationColor":I
    :pswitch_a
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 4286
    .end local v65    # "nextTaskId":I
    .local v12, "nextTaskId":I
    move/from16 v65, v12

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    .line 4282
    .end local v12    # "nextTaskId":I
    .restart local v65    # "nextTaskId":I
    :pswitch_b
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 4283
    .end local v64    # "prevTaskId":I
    .local v12, "prevTaskId":I
    move/from16 v64, v12

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    .line 4279
    .end local v12    # "prevTaskId":I
    .restart local v64    # "prevTaskId":I
    :pswitch_c
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 4280
    .end local v24    # "taskAffiliation":I
    .local v12, "taskAffiliation":I
    move/from16 v24, v12

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    .line 4276
    .end local v12    # "taskAffiliation":I
    .restart local v24    # "taskAffiliation":I
    :pswitch_d
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 4277
    .end local v21    # "neverRelinquishIdentity":Z
    .local v12, "neverRelinquishIdentity":Z
    move/from16 v21, v12

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    .line 4273
    .end local v12    # "neverRelinquishIdentity":Z
    .restart local v21    # "neverRelinquishIdentity":Z
    :pswitch_e
    invoke-static/range {v28 .. v28}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    .line 4274
    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    .line 4270
    :pswitch_f
    move-object/from16 v12, v28

    .line 4271
    .end local v18    # "lastDescription":Ljava/lang/String;
    .local v12, "lastDescription":Ljava/lang/String;
    move-object/from16 v18, v12

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    .line 4267
    .end local v12    # "lastDescription":Ljava/lang/String;
    .restart local v18    # "lastDescription":Ljava/lang/String;
    :pswitch_10
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 4268
    .end local v15    # "taskType":I
    .local v12, "taskType":I
    move v15, v12

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    .line 4264
    .end local v12    # "taskType":I
    .restart local v15    # "taskType":I
    :pswitch_11
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 4265
    .end local v17    # "effectiveUid":I
    .local v12, "effectiveUid":I
    move/from16 v17, v12

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    .line 4261
    .end local v12    # "effectiveUid":I
    .restart local v17    # "effectiveUid":I
    :pswitch_12
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 4262
    .end local v16    # "userSetupComplete":Z
    .local v12, "userSetupComplete":Z
    move/from16 v16, v12

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    .line 4258
    .end local v12    # "userSetupComplete":Z
    .restart local v16    # "userSetupComplete":Z
    :pswitch_13
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 4259
    .end local v62    # "userId":I
    .local v12, "userId":I
    move/from16 v62, v12

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    .line 4255
    .end local v12    # "userId":I
    .restart local v62    # "userId":I
    :pswitch_14
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 4256
    .end local v74    # "askedCompatMode":Z
    .local v12, "askedCompatMode":Z
    move v14, v12

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    .line 4252
    .end local v12    # "askedCompatMode":Z
    .restart local v74    # "askedCompatMode":Z
    :pswitch_15
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 4253
    .end local v75    # "autoRemoveRecents":Z
    .local v12, "autoRemoveRecents":Z
    move v13, v12

    move/from16 v14, v74

    move/from16 v12, v76

    goto/16 :goto_4

    .line 4249
    .end local v12    # "autoRemoveRecents":Z
    .restart local v75    # "autoRemoveRecents":Z
    :pswitch_16
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 4250
    .end local v76    # "rootHasReset":Z
    .local v12, "rootHasReset":Z
    move/from16 v14, v74

    move/from16 v13, v75

    goto/16 :goto_4

    .line 4246
    .end local v12    # "rootHasReset":Z
    .restart local v76    # "rootHasReset":Z
    :pswitch_17
    move-object/from16 v12, v28

    .line 4247
    .end local v69    # "windowLayoutAffinity":Ljava/lang/String;
    .local v12, "windowLayoutAffinity":Ljava/lang/String;
    move-object/from16 v69, v12

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto/16 :goto_4

    .line 4242
    .end local v12    # "windowLayoutAffinity":Ljava/lang/String;
    .restart local v69    # "windowLayoutAffinity":Ljava/lang/String;
    :pswitch_18
    move-object/from16 v9, v28

    .line 4243
    const/4 v10, 0x1

    .line 4244
    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto :goto_4

    .line 4239
    :pswitch_19
    move-object/from16 v8, v28

    .line 4240
    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto :goto_4

    .line 4236
    :pswitch_1a
    invoke-static/range {v28 .. v28}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    .line 4237
    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto :goto_4

    .line 4233
    :pswitch_1b
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 4234
    .end local v73    # "realActivitySuspended":Z
    .local v12, "realActivitySuspended":Z
    move/from16 v73, v12

    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto :goto_4

    .line 4230
    .end local v12    # "realActivitySuspended":Z
    .restart local v73    # "realActivitySuspended":Z
    :pswitch_1c
    invoke-static/range {v28 .. v28}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .line 4231
    move/from16 v14, v74

    move/from16 v13, v75

    move/from16 v12, v76

    goto :goto_4

    .line 4227
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

    .line 4318
    :cond_2
    move-object/from16 v77, v7

    .line 4218
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

    .line 4323
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

    .line 4326
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

    .line 4327
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-lt v0, v2, :cond_4

    goto :goto_6

    :cond_4
    move/from16 v61, v2

    goto/16 :goto_8

    .line 4328
    :cond_5
    :goto_6
    const/4 v1, 0x2

    if-ne v13, v1, :cond_a

    .line 4329
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 4331
    .local v0, "name":Ljava/lang/String;
    const-string v1, "affinity_intent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4332
    invoke-static/range {p0 .. p0}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v1

    move-object/from16 v23, v1

    move/from16 v61, v2

    .end local v23    # "affinityIntent":Landroid/content/Intent;
    .local v1, "affinityIntent":Landroid/content/Intent;
    goto :goto_7

    .line 4333
    .end local v1    # "affinityIntent":Landroid/content/Intent;
    .restart local v23    # "affinityIntent":Landroid/content/Intent;
    :cond_6
    const-string v1, "intent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4334
    invoke-static/range {p0 .. p0}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v1

    move-object v12, v1

    move/from16 v61, v2

    .end local v12    # "intent":Landroid/content/Intent;
    .local v1, "intent":Landroid/content/Intent;
    goto :goto_7

    .line 4335
    .end local v1    # "intent":Landroid/content/Intent;
    .restart local v12    # "intent":Landroid/content/Intent;
    :cond_7
    const-string v1, "activity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 4336
    nop

    .line 4337
    invoke-static/range {p0 .. p1}, Lcom/android/server/wm/ActivityRecord;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wm/ActivityStackSupervisor;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 4341
    .local v1, "activity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_8

    .line 4342
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4344
    .end local v1    # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_8
    move/from16 v61, v2

    goto :goto_7

    .line 4345
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

    .line 4346
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4348
    .end local v0    # "name":Ljava/lang/String;
    :goto_7
    move-object/from16 v1, p0

    move/from16 v2, v61

    goto :goto_5

    .line 4328
    .end local v61    # "outerDepth":I
    .restart local v2    # "outerDepth":I
    :cond_a
    move/from16 v61, v2

    .end local v2    # "outerDepth":I
    .restart local v61    # "outerDepth":I
    move-object/from16 v1, p0

    goto :goto_5

    .line 4326
    .end local v61    # "outerDepth":I
    .restart local v2    # "outerDepth":I
    :cond_b
    move/from16 v61, v2

    .line 4350
    .end local v2    # "outerDepth":I
    .restart local v61    # "outerDepth":I
    :goto_8
    if-nez v10, :cond_c

    .line 4351
    move-object v9, v8

    goto :goto_9

    .line 4352
    :cond_c
    const-string v0, "@"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4353
    const/4 v9, 0x0

    .line 4355
    :cond_d
    :goto_9
    if-gtz v17, :cond_11

    .line 4356
    if-eqz v12, :cond_e

    move-object v0, v12

    goto :goto_a

    :cond_e
    move-object/from16 v0, v23

    :goto_a
    move-object v1, v0

    .line 4357
    .local v1, "checkIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 4358
    .end local v17    # "effectiveUid":I
    .local v2, "effectiveUid":I
    if-eqz v1, :cond_10

    .line 4359
    move/from16 v17, v2

    .end local v2    # "effectiveUid":I
    .restart local v17    # "effectiveUid":I
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 4361
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    nop

    .line 4362
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

    .line 4361
    move/from16 v79, v13

    move/from16 v13, v62

    .end local v62    # "userId":I
    .local v13, "userId":I
    .local v79, "event":I
    :try_start_1
    invoke-interface {v2, v0, v10, v13}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 4365
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_f

    .line 4366
    iget v10, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v17, v10

    .line 4369
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_f
    move/from16 v0, v17

    goto :goto_c

    .line 4368
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

    .line 4358
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

    .line 4371
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

    .line 4355
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

    .line 4375
    .end local v10    # "hasRootAffinity":Z
    .end local v62    # "userId":I
    .local v13, "userId":I
    .restart local v78    # "hasRootAffinity":Z
    .restart local v79    # "event":I
    :goto_d
    const/4 v1, 0x1

    if-ge v6, v1, :cond_12

    .line 4380
    if-ne v15, v1, :cond_13

    const/4 v1, 0x2

    if-ne v11, v1, :cond_13

    .line 4381
    const/4 v11, 0x1

    move/from16 v0, v32

    goto :goto_e

    .line 4388
    :cond_12
    const/4 v1, 0x3

    if-ne v11, v1, :cond_13

    .line 4389
    const/4 v11, 0x2

    .line 4390
    const/16 v32, 0x1

    move/from16 v0, v32

    goto :goto_e

    .line 4394
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

    .line 4402
    .local v1, "task":Lcom/android/server/wm/Task;
    move-object/from16 v10, v70

    .end local v70    # "lastNonFullscreenBounds":Landroid/graphics/Rect;
    .local v10, "lastNonFullscreenBounds":Landroid/graphics/Rect;
    iput-object v10, v1, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 4403
    invoke-virtual {v1, v10}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 4404
    move-object/from16 v2, v69

    .end local v69    # "windowLayoutAffinity":Ljava/lang/String;
    .local v2, "windowLayoutAffinity":Ljava/lang/String;
    iput-object v2, v1, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    .line 4406
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

    .line 4407
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v26, v2

    .end local v2    # "windowLayoutAffinity":Ljava/lang/String;
    .local v26, "windowLayoutAffinity":Ljava/lang/String;
    move-object/from16 v2, v25

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/ActivityRecord;)V

    .line 4406
    add-int/lit8 v0, v0, -0x1

    move-object/from16 v2, v26

    goto :goto_f

    .end local v26    # "windowLayoutAffinity":Ljava/lang/String;
    .restart local v2    # "windowLayoutAffinity":Ljava/lang/String;
    :cond_14
    move-object/from16 v26, v2

    .line 4410
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

    .line 4411
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

    .line 4161
    const-string v0, "activity"

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->persistableMode:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isPersistable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 4162
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v3, 0x80000

    and-int/2addr v1, v3

    or-int/lit16 v1, v1, 0x2000

    if-ne v1, v3, :cond_0

    if-eq p0, p1, :cond_0

    goto :goto_0

    .line 4169
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4170
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityRecord;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 4171
    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4172
    const/4 v0, 0x0

    return v0

    .line 4173
    :catch_0
    move-exception v0

    .line 4174
    .local v0, "e":Ljava/lang/Exception;
    sput-object v0, Lcom/android/server/wm/Task;->sTmpException:Ljava/lang/Exception;

    .line 4175
    return v2

    .line 4166
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return v2
.end method

.method private saveLaunchingStateIfNeeded()V
    .locals 1

    .line 2125
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/Task;->saveLaunchingStateIfNeeded(Lcom/android/server/wm/DisplayContent;)V

    .line 2126
    return-void
.end method

.method private saveLaunchingStateIfNeeded(Lcom/android/server/wm/DisplayContent;)V
    .locals 3
    .param p1, "display"    # Lcom/android/server/wm/DisplayContent;

    .line 2129
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getHasBeenVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2131
    return-void

    .line 2134
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    .line 2135
    .local v0, "windowingMode":I
    const/4 v1, 0x1

    const/4 v2, 0x5

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_1

    .line 2137
    return-void

    .line 2143
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getDisplayWindowingMode()I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 2144
    return-void

    .line 2148
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-virtual {v1, p0, p1}, Lcom/android/server/wm/LaunchParamsPersister;->saveTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/DisplayContent;)V

    .line 2149
    return-void
.end method

.method private sendTaskAppeared()V
    .locals 2

    .line 4477
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-eqz v0, :cond_0

    .line 4478
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    iget-object v1, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/TaskOrganizerController;->onTaskAppeared(Landroid/window/ITaskOrganizer;Lcom/android/server/wm/Task;)V

    .line 4480
    :cond_0
    return-void
.end method

.method private sendTaskVanished(Landroid/window/ITaskOrganizer;)V
    .locals 1
    .param p1, "organizer"    # Landroid/window/ITaskOrganizer;

    .line 4483
    if-eqz p1, :cond_0

    .line 4484
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {v0, p1, p0}, Lcom/android/server/wm/TaskOrganizerController;->onTaskVanished(Landroid/window/ITaskOrganizer;Lcom/android/server/wm/Task;)V

    .line 4486
    :cond_0
    return-void
.end method

.method private setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V
    .locals 9
    .param p1, "_intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;

    .line 981
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    .line 982
    .local v0, "isLeaf":Z
    iget-object v1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 983
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

    .line 985
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 986
    return-void

    .line 989
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

    .line 990
    iget-object v5, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-nez v5, :cond_4

    .line 994
    iput-object v4, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    .line 996
    :cond_4
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v4, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    .line 997
    iput-object v1, p0, Lcom/android/server/wm/Task;->stringName:Ljava/lang/String;

    .line 999
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    const-string v5, "Setting Intent of "

    const-string v6, "ActivityTaskManager"

    if-nez v4, :cond_9

    .line 1000
    if-eqz p1, :cond_6

    .line 1004
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v4

    if-nez v4, :cond_5

    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 1005
    :cond_5
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object p1, v4

    .line 1006
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 1007
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 1010
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

    .line 1011
    :cond_7
    iput-object p1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 1012
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    goto :goto_3

    :cond_8
    move-object v4, v1

    :goto_3
    iput-object v4, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 1013
    iput-object v1, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    goto :goto_4

    .line 1015
    :cond_9
    new-instance v4, Landroid/content/ComponentName;

    iget-object v7, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v4, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    .local v4, "targetComponent":Landroid/content/ComponentName;
    if-eqz p1, :cond_b

    .line 1018
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1019
    .local v7, "targetIntent":Landroid/content/Intent;
    invoke-virtual {v7, v1}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 1020
    invoke-virtual {v7, v1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 1021
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

    .line 1023
    :cond_a
    iput-object v7, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 1024
    iput-object v4, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 1025
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    .line 1026
    .end local v7    # "targetIntent":Landroid/content/Intent;
    goto :goto_4

    .line 1027
    :cond_b
    iput-object v1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 1028
    iput-object v4, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 1029
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    .line 1032
    .end local v4    # "targetComponent":Landroid/content/ComponentName;
    :goto_4
    nop

    .line 1033
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-nez v4, :cond_c

    goto :goto_5

    :cond_c
    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    :goto_5
    iput-object v1, p0, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    .line 1035
    iget-object v1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-nez v1, :cond_d

    move v1, v3

    goto :goto_6

    :cond_d
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    .line 1036
    .local v1, "intentFlags":I
    :goto_6
    const/high16 v4, 0x200000

    and-int/2addr v4, v1

    if-eqz v4, :cond_e

    .line 1039
    iput-boolean v2, p0, Lcom/android/server/wm/Task;->rootWasReset:Z

    .line 1041
    :cond_e
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/wm/Task;->mUserId:I

    .line 1042
    iget-object v4, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 1043
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wm/Task;->mUserId:I

    .line 1042
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

    .line 1044
    iget v4, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_10

    .line 1046
    iput-boolean v2, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    goto :goto_8

    .line 1047
    :cond_10
    const v4, 0x82000

    and-int/2addr v4, v1

    const/high16 v5, 0x80000

    if-ne v4, v5, :cond_12

    .line 1052
    iget v4, p2, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    if-eqz v4, :cond_11

    .line 1053
    iput-boolean v3, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    goto :goto_8

    .line 1055
    :cond_11
    iput-boolean v2, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    goto :goto_8

    .line 1058
    :cond_12
    iput-boolean v3, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    .line 1060
    :goto_8
    iget v2, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    iget v3, p2, Landroid/content/pm/ActivityInfo;->resizeMode:I

    if-eq v2, v3, :cond_13

    .line 1061
    iget v2, p2, Landroid/content/pm/ActivityInfo;->resizeMode:I

    iput v2, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 1062
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateTaskDescription()V

    .line 1066
    :cond_13
    iget v2, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    iget-object v3, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-static {v2, v3}, Lcom/android/server/wm/OpQuickReplyInjector;->shouldForceResizeTask(ILandroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1067
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 1070
    :cond_14
    invoke-virtual {p2}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    .line 1071
    return-void
.end method

.method private setLockTaskAuth(Lcom/android/server/wm/ActivityRecord;)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1657
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 1658
    iput v0, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    .line 1659
    return-void

    .line 1662
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1663
    .local v1, "pkg":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v2

    .line 1664
    .local v2, "lockTaskController":Lcom/android/server/wm/LockTaskController;
    iget v3, p1, Lcom/android/server/wm/ActivityRecord;->lockTaskLaunchMode:I

    const/4 v4, 0x3

    if-eqz v3, :cond_6

    if-eq v3, v0, :cond_5

    const/4 v5, 0x2

    if-eq v3, v5, :cond_4

    if-eq v3, v4, :cond_2

    goto :goto_3

    .line 1679
    :cond_2
    iget v3, p0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/LockTaskController;->isPackageWhitelisted(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1680
    move v0, v5

    goto :goto_1

    :cond_3
    nop

    :goto_1
    iput v0, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    goto :goto_3

    .line 1675
    :cond_4
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    .line 1676
    goto :goto_3

    .line 1671
    :cond_5
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    .line 1672
    goto :goto_3

    .line 1666
    :cond_6
    iget v3, p0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/LockTaskController;->isPackageWhitelisted(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1667
    move v0, v4

    goto :goto_2

    :cond_7
    nop

    :goto_2
    iput v0, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    .line 1668
    nop

    .line 1683
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

    .line 1684
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->lockTaskAuthToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1683
    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    :cond_8
    return-void
.end method

.method private setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/Task;)V
    .locals 3
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "origin"    # Lcom/android/server/wm/Task;

    .line 4644
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 4645
    .local v0, "topActivity":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 4646
    .local v2, "leaf":Lcom/android/server/wm/Task;
    :goto_0
    if-nez v2, :cond_1

    .line 4647
    return-void

    .line 4649
    :cond_1
    if-eq v2, p0, :cond_2

    .line 4650
    invoke-direct {v2, p1, p2}, Lcom/android/server/wm/Task;->setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/Task;)V

    .line 4651
    return-void

    .line 4653
    :cond_2
    iput-object p1, p0, Lcom/android/server/wm/Task;->mMainWindowSizeChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 4654
    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, p2

    :goto_1
    iput-object v1, p0, Lcom/android/server/wm/Task;->mMainWindowSizeChangeTask:Lcom/android/server/wm/Task;

    .line 4655
    return-void
.end method

.method private static setTaskDescriptionFromActivityAboveRoot(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityManager$TaskDescription;)Z
    .locals 2
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "root"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "td"    # Landroid/app/ActivityManager$TaskDescription;

    .line 1798
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v0, :cond_6

    .line 1799
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 1800
    .local v0, "atd":Landroid/app/ActivityManager$TaskDescription;
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1801
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setLabel(Ljava/lang/String;)V

    .line 1803
    :cond_0
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getRawIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1804
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getRawIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setIcon(Landroid/graphics/drawable/Icon;)V

    .line 1806
    :cond_1
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1807
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setIconFilename(Ljava/lang/String;)V

    .line 1809
    :cond_2
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v1

    if-nez v1, :cond_3

    .line 1810
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setPrimaryColor(I)V

    .line 1812
    :cond_3
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v1

    if-nez v1, :cond_4

    .line 1813
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setBackgroundColor(I)V

    .line 1815
    :cond_4
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v1

    if-nez v1, :cond_5

    .line 1816
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setStatusBarColor(I)V

    .line 1817
    nop

    .line 1818
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getEnsureStatusBarContrastWhenTransparent()Z

    move-result v1

    .line 1817
    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setEnsureStatusBarContrastWhenTransparent(Z)V

    .line 1820
    :cond_5
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getNavigationBarColor()I

    move-result v1

    if-nez v1, :cond_6

    .line 1821
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getNavigationBarColor()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setNavigationBarColor(I)V

    .line 1822
    nop

    .line 1823
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getEnsureNavigationBarContrastWhenTransparent()Z

    move-result v1

    .line 1822
    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setEnsureNavigationBarContrastWhenTransparent(Z)V

    .line 1829
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

    .line 2014
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisableTransitionAnimation:Z

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 2015
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2016
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2017
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2018
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 2023
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

    .line 2019
    :cond_4
    :goto_2
    return v1
.end method

.method private supportsSplitScreenWindowingModeInner()Z
    .locals 2

    .line 1697
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

    .line 1700
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->isResizeable(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 1701
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isPreserveOrientationMode(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 1697
    :goto_0
    return v1
.end method

.method private updateShadowsRadius(ZLandroid/view/SurfaceControl$Transaction;)V
    .locals 3
    .param p1, "taskIsFocused"    # Z
    .param p2, "pendingTransaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 4609
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mRenderShadowsInCompositor:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4611
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/Task;->getShadowRadius(Z)F

    move-result v0

    .line 4612
    .local v0, "newShadowRadius":F
    iget v1, p0, Lcom/android/server/wm/Task;->mShadowRadius:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_1

    .line 4613
    iput v0, p0, Lcom/android/server/wm/Task;->mShadowRadius:F

    .line 4614
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/Task;->mShadowRadius:F

    invoke-virtual {p2, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setShadowRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 4616
    :cond_1
    return-void

    .line 4609
    .end local v0    # "newShadowRadius":F
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method addChild(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1453
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 1454
    return-void
.end method

.method addChild(Lcom/android/server/wm/WindowContainer;I)V
    .locals 9
    .param p1, "child"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "index"    # I

    .line 1402
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v0

    .line 1405
    .local v0, "hadChild":Z
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v1

    .line 1407
    .local v1, "activityType":I
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/Task;->getAdjustedChildPosition(Lcom/android/server/wm/WindowContainer;I)I

    move-result p2

    .line 1408
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 1410
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

    .line 1414
    .end local v2    # "protoLogParam0":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1415
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    move-object v4, p1

    check-cast v4, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/TaskDisplayArea;->addStackReferenceIfNeeded(Lcom/android/server/wm/ActivityStack;)V

    .line 1420
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->updateUIDsPresentOnDisplay()V

    .line 1422
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 1423
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v2, :cond_2

    return-void

    .line 1425
    :cond_2
    iput-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->inHistory:Z

    .line 1428
    if-nez v0, :cond_4

    .line 1429
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v4

    if-nez v4, :cond_3

    .line 1434
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityRecord;->setActivityType(I)V

    .line 1436
    :cond_3
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/wm/Task;->setActivityType(I)V

    .line 1437
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->isPersistable()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/wm/Task;->isPersistable:Z

    .line 1438
    iget v4, v2, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    iput v4, p0, Lcom/android/server/wm/Task;->mCallingUid:I

    .line 1439
    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    .line 1440
    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    .line 1442
    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->maxRecents:I

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1443
    invoke-static {}, Landroid/app/ActivityTaskManager;->getMaxAppRecentsLimitStatic()I

    move-result v4

    .line 1442
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/Task;->maxRecents:I

    goto :goto_0

    .line 1446
    :cond_4
    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityRecord;->setActivityType(I)V

    .line 1449
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateEffectiveIntent()V

    .line 1450
    return-void
.end method

.method adjustBoundsForDisplayChangeIfNeeded(Lcom/android/server/wm/DisplayContent;)V
    .locals 6
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 3127
    if-nez p1, :cond_0

    .line 3128
    return-void

    .line 3130
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->matchParentBounds()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3133
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 3134
    return-void

    .line 3136
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    .line 3137
    .local v0, "displayId":I
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    iget v1, v1, Landroid/view/DisplayInfo;->rotation:I

    .line 3138
    .local v1, "newRotation":I
    iget v2, p0, Lcom/android/server/wm/Task;->mLastRotationDisplayId:I

    if-eq v0, v2, :cond_2

    .line 3142
    iput v0, p0, Lcom/android/server/wm/Task;->mLastRotationDisplayId:I

    .line 3143
    iput v1, p0, Lcom/android/server/wm/Task;->mRotation:I

    .line 3144
    return-void

    .line 3147
    :cond_2
    iget v2, p0, Lcom/android/server/wm/Task;->mRotation:I

    if-ne v2, v1, :cond_3

    .line 3150
    return-void

    .line 3158
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3160
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->canResizeTask()Z

    move-result v2

    if-nez v2, :cond_4

    .line 3161
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 3162
    return-void

    .line 3165
    :cond_4
    iget v2, p0, Lcom/android/server/wm/Task;->mRotation:I

    iget-object v3, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v1, v3}, Lcom/android/server/wm/DisplayContent;->rotateBounds(IILandroid/graphics/Rect;)V

    .line 3166
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    move-result v2

    if-eqz v2, :cond_5

    .line 3167
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v3, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->resizeTask(ILandroid/graphics/Rect;I)Z

    .line 3169
    :cond_5
    return-void
.end method

.method adjustFocusToNextFocusableTask(Ljava/lang/String;)Lcom/android/server/wm/ActivityStack;
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 2704
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

    .line 2733
    invoke-direct {p0, p2}, Lcom/android/server/wm/Task;->getNextFocusableTask(Z)Lcom/android/server/wm/Task;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityStack;

    .line 2734
    .local v0, "focusableTask":Lcom/android/server/wm/ActivityStack;
    if-nez v0, :cond_0

    .line 2735
    iget-object v1, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    move-object v2, p0

    check-cast v2, Lcom/android/server/wm/ActivityStack;

    xor-int/lit8 v3, p2, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/RootWindowContainer;->getNextFocusableStack(Lcom/android/server/wm/ActivityStack;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2738
    :cond_0
    if-nez v0, :cond_1

    .line 2739
    const/4 v1, 0x0

    return-object v1

    .line 2742
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    .line 2743
    .local v1, "rootTask":Lcom/android/server/wm/ActivityStack;
    if-nez p3, :cond_4

    .line 2747
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    .line 2748
    .local v2, "parent":Lcom/android/server/wm/WindowContainer;
    move-object v3, v0

    .line 2750
    .local v3, "next":Lcom/android/server/wm/WindowContainer;
    :cond_2
    const v4, 0x7fffffff

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 2751
    move-object v3, v2

    .line 2752
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    .line 2753
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_3

    if-nez v2, :cond_2

    .line 2754
    :cond_3
    return-object v1

    .line 2757
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

    .line 2758
    .local v2, "myReason":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 2759
    .local v3, "top":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz v3, :cond_5

    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v4, :cond_6

    .line 2762
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/wm/TaskDisplayArea;->moveHomeActivityToTop(Ljava/lang/String;)V

    .line 2763
    return-object v1

    .line 2768
    :cond_6
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 2770
    iget-object v4, v1, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_7

    .line 2771
    iget-object v4, p0, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStackSupervisor;->updateTopResumedActivityIfNeeded()V

    .line 2775
    iget-object v4, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v1, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4, v5, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 2777
    :cond_7
    return-object v1
.end method

.method adjustForMinimalTaskDimensions(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "previousBounds"    # Landroid/graphics/Rect;
    .param p3, "parentConfig"    # Landroid/content/res/Configuration;

    .line 1845
    iget v0, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    .line 1846
    .local v0, "minWidth":I
    iget v1, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    .line 1850
    .local v1, "minHeight":I
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1851
    iget-object v2, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v2, v2, Lcom/android/server/wm/RootWindowContainer;->mDefaultMinSizeOfResizeableTaskDp:I

    .line 1852
    .local v2, "defaultMinSizeDp":I
    iget v3, p3, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v3, v3

    const/high16 v4, 0x43200000    # 160.0f

    div-float/2addr v3, v4

    .line 1853
    .local v3, "density":F
    int-to-float v4, v2

    mul-float/2addr v4, v3

    float-to-int v4, v4

    .line 1855
    .local v4, "defaultMinSize":I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_0

    .line 1856
    move v0, v4

    .line 1858
    :cond_0
    if-ne v1, v5, :cond_1

    .line 1859
    move v1, v4

    .line 1862
    .end local v2    # "defaultMinSizeDp":I
    .end local v3    # "density":F
    .end local v4    # "defaultMinSize":I
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1865
    iget-object v2, p3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 1866
    .local v2, "parentBounds":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-lt v3, v0, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-lt v3, v1, :cond_2

    .line 1867
    return-void

    .line 1869
    :cond_2
    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1871
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

    .line 1872
    .local v2, "adjustWidth":Z
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v1, v5, :cond_5

    goto :goto_1

    :cond_5
    move v3, v4

    .line 1873
    .local v3, "adjustHeight":Z
    :goto_1
    if-nez v2, :cond_6

    if-nez v3, :cond_6

    .line 1874
    return-void

    .line 1877
    :cond_6
    if-eqz v2, :cond_8

    .line 1878
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p2, Landroid/graphics/Rect;->right:I

    if-ne v4, v5, :cond_7

    .line 1879
    iget v4, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v0

    iput v4, p1, Landroid/graphics/Rect;->left:I

    goto :goto_2

    .line 1883
    :cond_7
    iget v4, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v0

    iput v4, p1, Landroid/graphics/Rect;->right:I

    .line 1886
    :cond_8
    :goto_2
    if-eqz v3, :cond_a

    .line 1887
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    if-ne v4, v5, :cond_9

    .line 1888
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v1

    iput v4, p1, Landroid/graphics/Rect;->top:I

    goto :goto_3

    .line 1892
    :cond_9
    iget v4, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 1895
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

    .line 3608
    .local p5, "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowContainer;>;"
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    .line 3609
    .local v0, "control":Lcom/android/server/wm/RecentsAnimationController;
    if-eqz v0, :cond_1

    .line 3612
    if-eqz p2, :cond_2

    .line 3613
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

    .line 3616
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    .end local v2    # "protoLogParam1":Ljava/lang/String;
    .end local v3    # "protoLogParam2":Ljava/lang/String;
    :cond_0
    new-instance v1, Lcom/android/server/wm/-$$Lambda$Task$kSFegYxPHp4qdhnWjQbYn0gwVbI;

    invoke-direct {v1, p5}, Lcom/android/server/wm/-$$Lambda$Task$kSFegYxPHp4qdhnWjQbYn0gwVbI;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/RecentsAnimationController;->addTaskToTargets(Lcom/android/server/wm/Task;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    goto :goto_0

    .line 3623
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/android/server/wm/WindowContainer;->applyAnimationUnchecked(Landroid/view/WindowManager$LayoutParams;ZIZLjava/util/ArrayList;)V

    .line 3625
    :cond_2
    :goto_0
    return-void
.end method

.method asTask()Lcom/android/server/wm/Task;
    .locals 0

    .line 3719
    return-object p0
.end method

.method canAffectSystemUiFlags()Z
    .locals 1

    .line 3532
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCanAffectSystemUiFlags:Z

    return v0
.end method

.method canBeLaunchedOnDisplay(I)Z
    .locals 3
    .param p1, "displayId"    # I

    .line 1712
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v1, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->canPlaceEntityOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method canCreateRemoteAnimationTarget()Z
    .locals 1

    .line 3324
    const/4 v0, 0x1

    return v0
.end method

.method cancelTaskWindowTransition()V
    .locals 2

    .line 3173
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 3174
    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    .line 3173
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3176
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method cleanUpActivityReferences(Lcom/android/server/wm/ActivityRecord;)V
    .locals 3
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1219
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 1220
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1221
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/Task;->cleanUpActivityReferences(Lcom/android/server/wm/ActivityRecord;)V

    .line 1222
    return-void

    .line 1224
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->removeTimeouts()V

    .line 1225
    iget-object v1, p0, Lcom/android/server/wm/Task;->mExitingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1227
    iget-object v1, p0, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-ne v1, p1, :cond_1

    .line 1228
    const-string v1, "cleanUpActivityReferences"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/Task;->setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 1230
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_2

    if-ne v1, p1, :cond_2

    .line 1231
    iput-object v2, p0, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1233
    :cond_2
    return-void
.end method

.method clearPreserveNonFloatingState()V
    .locals 1

    .line 3544
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mPreserveNonFloatingState:Z

    .line 3545
    return-void
.end method

.method clearRootProcess()V
    .locals 1

    .line 2639
    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_0

    .line 2640
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowProcessController;->removeRecentTask(Lcom/android/server/wm/Task;)V

    .line 2641
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    .line 2643
    :cond_0
    return-void
.end method

.method computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "inOutConfig"    # Landroid/content/res/Configuration;
    .param p2, "parentConfig"    # Landroid/content/res/Configuration;

    .line 2278
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/server/wm/Task;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/view/DisplayInfo;Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)V

    .line 2280
    return-void
.end method

.method computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/view/DisplayInfo;)V
    .locals 1
    .param p1, "inOutConfig"    # Landroid/content/res/Configuration;
    .param p2, "parentConfig"    # Landroid/content/res/Configuration;
    .param p3, "overrideDisplayInfo"    # Landroid/view/DisplayInfo;

    .line 2267
    if-eqz p3, :cond_0

    .line 2269
    const/4 v0, 0x0

    iput v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 2270
    invoke-static {p1}, Lcom/android/server/wm/Task;->invalidateAppBoundsConfig(Landroid/content/res/Configuration;)V

    .line 2272
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/Task;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/view/DisplayInfo;Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)V

    .line 2274
    return-void
.end method

.method computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/view/DisplayInfo;Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)V
    .locals 16
    .param p1, "inOutConfig"    # Landroid/content/res/Configuration;
    .param p2, "parentConfig"    # Landroid/content/res/Configuration;
    .param p3, "overrideDisplayInfo"    # Landroid/view/DisplayInfo;
    .param p4, "compatInsets"    # Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    .line 2304
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    iget-object v4, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v4

    .line 2305
    .local v4, "windowingMode":I
    if-nez v4, :cond_0

    .line 2306
    iget-object v5, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v4

    .line 2309
    :cond_0
    iget v5, v1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v5, v5

    .line 2310
    .local v5, "density":F
    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-nez v6, :cond_1

    .line 2311
    iget v6, v2, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v5, v6

    .line 2313
    :cond_1
    const v6, 0x3bcccccd    # 0.00625f

    mul-float/2addr v5, v6

    .line 2319
    iget-object v6, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 2320
    .local v6, "parentBounds":Landroid/graphics/Rect;
    iget-object v7, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 2321
    .local v7, "resolvedBounds":Landroid/graphics/Rect;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_0

    .line 2325
    :cond_2
    iget-object v8, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2326
    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v8

    .local v8, "insideParentBounds":Z
    goto :goto_1

    .line 2322
    .end local v8    # "insideParentBounds":Z
    :cond_3
    :goto_0
    iget-object v8, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2323
    const/4 v8, 0x1

    .line 2331
    .restart local v8    # "insideParentBounds":Z
    :goto_1
    const/4 v9, 0x1

    if-eqz v3, :cond_4

    move v10, v9

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    .line 2333
    .local v10, "customContainerPolicy":Z
    :goto_2
    iget-object v11, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v11}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v11

    .line 2334
    .local v11, "outAppBounds":Landroid/graphics/Rect;
    if-eqz v11, :cond_5

    invoke-virtual {v11}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 2336
    :cond_5
    iget-object v12, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 2337
    iget-object v12, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v12}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v11

    .line 2339
    if-nez v10, :cond_8

    const/4 v12, 0x5

    if-eq v4, v12, :cond_8

    .line 2341
    if-eqz v8, :cond_6

    .line 2342
    iget-object v12, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v12}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v12

    .local v12, "containingAppBounds":Landroid/graphics/Rect;
    goto :goto_4

    .line 2347
    .end local v12    # "containingAppBounds":Landroid/graphics/Rect;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v12

    .line 2348
    .local v12, "displayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v12, :cond_7

    .line 2349
    invoke-virtual {v12}, Lcom/android/server/wm/TaskDisplayArea;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v13

    goto :goto_3

    :cond_7
    const/4 v13, 0x0

    :goto_3
    move-object v12, v13

    .line 2351
    .local v12, "containingAppBounds":Landroid/graphics/Rect;
    :goto_4
    if-eqz v12, :cond_8

    invoke-virtual {v12}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_8

    .line 2352
    invoke-virtual {v11, v12}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 2357
    .end local v12    # "containingAppBounds":Landroid/graphics/Rect;
    :cond_8
    iget v12, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v12, :cond_9

    iget v12, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-nez v12, :cond_14

    .line 2359
    :cond_9
    if-nez v10, :cond_a

    invoke-static {v4}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 2360
    iget-object v12, v0, Lcom/android/server/wm/Task;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2361
    iget-object v12, v0, Lcom/android/server/wm/Task;->mTmpStableBounds:Landroid/graphics/Rect;

    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_6

    .line 2362
    :cond_a
    if-nez v10, :cond_d

    if-nez p3, :cond_b

    .line 2363
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v12

    if-eqz v12, :cond_d

    .line 2364
    :cond_b
    if-eqz p3, :cond_c

    .line 2365
    move-object/from16 v12, p3

    goto :goto_5

    .line 2366
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v12

    :goto_5
    nop

    .line 2372
    .local v12, "di":Landroid/view/DisplayInfo;
    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    iget-object v14, v0, Lcom/android/server/wm/Task;->mTmpStableBounds:Landroid/graphics/Rect;

    iget-object v15, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v13, v14, v15, v12}, Lcom/android/server/wm/Task;->calculateInsetFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;)V

    .line 2373
    .end local v12    # "di":Landroid/view/DisplayInfo;
    goto :goto_6

    .line 2376
    :cond_d
    iget-object v12, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v12}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v12

    .line 2377
    .local v12, "rotation":I
    const/4 v13, -0x1

    if-ne v12, v13, :cond_e

    .line 2378
    iget-object v14, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v14}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v12

    .line 2380
    :cond_e
    if-eq v12, v13, :cond_f

    if-eqz v10, :cond_f

    .line 2381
    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    iget-object v14, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2382
    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpStableBounds:Landroid/graphics/Rect;

    iget-object v14, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2383
    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v13, v12}, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->getBoundsByRotation(Landroid/graphics/Rect;I)V

    .line 2384
    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    iget-object v14, v0, Lcom/android/server/wm/Task;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v15, v3, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object v15, v15, v12

    invoke-static {v13, v14, v15}, Lcom/android/server/wm/Task;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2386
    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpStableBounds:Landroid/graphics/Rect;

    iget-object v14, v0, Lcom/android/server/wm/Task;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v15, v3, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    aget-object v15, v15, v12

    invoke-static {v13, v14, v15}, Lcom/android/server/wm/Task;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2388
    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v11, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_6

    .line 2391
    :cond_f
    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v13, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2392
    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v13, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2396
    .end local v12    # "rotation":I
    :goto_6
    iget v12, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-nez v12, :cond_11

    .line 2397
    iget-object v12, v0, Lcom/android/server/wm/Task;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v5

    float-to-int v12, v12

    .line 2398
    .local v12, "overrideScreenWidthDp":I
    if-eqz v8, :cond_10

    if-nez v10, :cond_10

    .line 2399
    iget v13, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    goto :goto_7

    .line 2400
    :cond_10
    move v13, v12

    :goto_7
    iput v13, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 2402
    .end local v12    # "overrideScreenWidthDp":I
    :cond_11
    iget v12, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-nez v12, :cond_13

    .line 2403
    iget-object v12, v0, Lcom/android/server/wm/Task;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v5

    float-to-int v12, v12

    .line 2404
    .local v12, "overrideScreenHeightDp":I
    if-eqz v8, :cond_12

    if-nez v10, :cond_12

    .line 2405
    iget v13, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    goto :goto_8

    .line 2406
    :cond_12
    move v13, v12

    :goto_8
    iput v13, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 2409
    .end local v12    # "overrideScreenHeightDp":I
    :cond_13
    iget v12, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-nez v12, :cond_14

    .line 2411
    invoke-static {v4}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 2413
    iget-object v12, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    .line 2414
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v5

    float-to-int v12, v12

    iput v12, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 2420
    :cond_14
    iget v12, v1, Landroid/content/res/Configuration;->orientation:I

    if-nez v12, :cond_16

    .line 2421
    iget v12, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v13, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-gt v12, v13, :cond_15

    .line 2422
    goto :goto_9

    :cond_15
    const/4 v9, 0x2

    :goto_9
    iput v9, v1, Landroid/content/res/Configuration;->orientation:I

    .line 2424
    :cond_16
    iget v9, v1, Landroid/content/res/Configuration;->screenLayout:I

    if-nez v9, :cond_17

    .line 2428
    iget-object v9, v0, Lcom/android/server/wm/Task;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v5

    float-to-int v9, v9

    .line 2429
    .local v9, "compatScreenWidthDp":I
    iget-object v12, v0, Lcom/android/server/wm/Task;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v5

    float-to-int v12, v12

    .line 2431
    .local v12, "compatScreenHeightDp":I
    iget v13, v2, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v13, v9, v12}, Lcom/android/server/wm/Task;->computeScreenLayoutOverride(III)I

    move-result v13

    iput v13, v1, Landroid/content/res/Configuration;->screenLayout:I

    .line 2434
    .end local v9    # "compatScreenWidthDp":I
    .end local v12    # "compatScreenHeightDp":I
    :cond_17
    return-void
.end method

.method computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)V
    .locals 1
    .param p1, "inOutConfig"    # Landroid/content/res/Configuration;
    .param p2, "parentConfig"    # Landroid/content/res/Configuration;
    .param p3, "compatInsets"    # Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    .line 2285
    if-eqz p3, :cond_0

    .line 2287
    invoke-static {p1}, Lcom/android/server/wm/Task;->invalidateAppBoundsConfig(Landroid/content/res/Configuration;)V

    .line 2289
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/wm/Task;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/view/DisplayInfo;Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)V

    .line 2291
    return-void
.end method

.method computeFullscreenBounds(Landroid/graphics/Rect;Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;I)V
    .locals 10
    .param p1, "outBounds"    # Landroid/graphics/Rect;
    .param p2, "refActivity"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "parentBounds"    # Landroid/graphics/Rect;
    .param p4, "parentOrientation"    # I

    .line 2535
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 2536
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->handlesOrientationChangeFromDescendant()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2537
    return-void

    .line 2539
    :cond_0
    if-nez p2, :cond_1

    .line 2543
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    .line 2548
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 2550
    .local v0, "overrideOrientation":I
    if-nez v0, :cond_3

    if-nez p2, :cond_2

    goto :goto_0

    .line 2551
    :cond_2
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getRequestedConfigurationOrientation()I

    move-result v1

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v0

    .line 2552
    .local v1, "forcedOrientation":I
    :goto_1
    if-eqz v1, :cond_6

    if-ne v1, p4, :cond_4

    goto :goto_3

    .line 2556
    :cond_4
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 2557
    .local v2, "parentWidth":I
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 2558
    .local v3, "parentHeight":I
    int-to-float v4, v3

    int-to-float v5, v2

    div-float/2addr v4, v5

    .line 2559
    .local v4, "aspect":F
    const/4 v5, 0x2

    if-ne v1, v5, :cond_5

    .line 2560
    int-to-float v5, v2

    div-float/2addr v5, v4

    float-to-int v5, v5

    .line 2561
    .local v5, "height":I
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    div-int/lit8 v7, v5, 0x2

    sub-int/2addr v6, v7

    .line 2562
    .local v6, "top":I
    iget v7, p3, Landroid/graphics/Rect;->left:I

    iget v8, p3, Landroid/graphics/Rect;->right:I

    add-int v9, v6, v5

    invoke-virtual {p1, v7, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 2563
    .end local v5    # "height":I
    .end local v6    # "top":I
    goto :goto_2

    .line 2564
    :cond_5
    int-to-float v5, v3

    mul-float/2addr v5, v4

    float-to-int v5, v5

    .line 2565
    .local v5, "width":I
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    div-int/lit8 v7, v5, 0x2

    sub-int/2addr v6, v7

    .line 2566
    .local v6, "left":I
    iget v7, p3, Landroid/graphics/Rect;->top:I

    add-int v8, v6, v5

    iget v9, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 2568
    .end local v5    # "width":I
    .end local v6    # "left":I
    :goto_2
    return-void

    .line 2553
    .end local v2    # "parentWidth":I
    .end local v3    # "parentHeight":I
    .end local v4    # "aspect":F
    :cond_6
    :goto_3
    return-void
.end method

.method createRemoteAnimationTarget(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;)Landroid/view/RemoteAnimationTarget;
    .locals 2
    .param p1, "record"    # Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    .line 3318
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3319
    .local v0, "activity":Lcom/android/server/wm/ActivityRecord;
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

    .line 3005
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeRecents()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3008
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 3010
    .local v0, "rootTask":Lcom/android/server/wm/Task;
    iget-boolean v1, v0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 3011
    .local v1, "topNonOrgTask":Lcom/android/server/wm/Task;
    :goto_0
    if-eq p0, v1, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 3015
    .end local v0    # "rootTask":Lcom/android/server/wm/Task;
    .end local v1    # "topNonOrgTask":Lcom/android/server/wm/Task;
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    return v0

    .line 3012
    .restart local v0    # "rootTask":Lcom/android/server/wm/Task;
    .restart local v1    # "topNonOrgTask":Lcom/android/server/wm/Task;
    :cond_3
    :goto_1
    const/4 v2, 0x0

    return v2
.end method

.method dontAnimateDimExit()V
    .locals 1

    .line 3536
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {v0}, Lcom/android/server/wm/Dimmer;->dontAnimateExit()V

    .line 3537
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 3886
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "userId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3887
    const-string v0, " effectiveUid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 3888
    const-string v0, " mCallingUid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->mCallingUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 3889
    const-string v0, " mUserSetupComplete="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mUserSetupComplete:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3890
    const-string v0, " mCallingPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3891
    const-string v0, " mCallingFeatureId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3892
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 3893
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "affinity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3894
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 3897
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_1

    .line 3895
    :cond_2
    :goto_0
    const-string v0, " root="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3900
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 3901
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "windowLayoutAffinity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3903
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    if-eqz v0, :cond_6

    .line 3904
    :cond_5
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "VOICE: session=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3905
    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3906
    const-string v0, " interactor=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3907
    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3909
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    const/16 v1, 0x7d

    const/16 v2, 0x80

    if-eqz v0, :cond_7

    .line 3910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3911
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "intent={"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3912
    iget-object v3, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 3913
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3914
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3916
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    if-eqz v0, :cond_8

    .line 3917
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3918
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "affinityIntent={"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3919
    iget-object v3, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 3920
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3921
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3923
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_9

    .line 3924
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "origActivity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3925
    iget-object v0, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3927
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_a

    .line 3928
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mActivityComponent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3929
    iget-object v0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3931
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->isPersistable:Z

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeStandard()Z

    move-result v0

    if-nez v0, :cond_c

    .line 3932
    :cond_b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "autoRemoveRecents="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3933
    const-string v0, " isPersistable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->isPersistable:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3934
    const-string v0, " activityType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3936
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

    .line 3938
    :cond_d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "rootWasReset="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->rootWasReset:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3939
    const-string v0, " mNeverRelinquishIdentity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3940
    const-string v0, " mReuseTask="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3941
    const-string v0, " mLockTaskAuth="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->lockTaskAuthToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3943
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

    .line 3946
    :cond_f
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "affiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3947
    const-string v0, " prevAffiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3948
    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3949
    iget-object v1, p0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    const-string v2, "null"

    if-nez v1, :cond_10

    .line 3950
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 3952
    :cond_10
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3954
    :goto_2
    const-string v1, ") nextAffiliation="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 3955
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3956
    iget-object v0, p0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-nez v0, :cond_11

    .line 3957
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    .line 3959
    :cond_11
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3961
    :goto_3
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3963
    :cond_12
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Activities="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3964
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->askedCompatMode:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->inRecents:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->isAvailable:Z

    if-nez v0, :cond_14

    .line 3965
    :cond_13
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "askedCompatMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->askedCompatMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3966
    const-string v0, " inRecents="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->inRecents:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3967
    const-string v0, " isAvailable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->isAvailable:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3969
    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/Task;->lastDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_15

    .line 3970
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "lastDescription="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->lastDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3972
    :cond_15
    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_16

    .line 3973
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRootProcess="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3975
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

    .line 3976
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHasBeenVisible="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getHasBeenVisible()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3977
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mResizeMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3978
    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->resizeModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3979
    const-string v0, " mSupportsPictureInPicture="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3980
    const-string v0, " isResizeable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3981
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "lastActiveTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/wm/Task;->lastActiveTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 3982
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

    .line 3983
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .line 3629
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 3630
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

    .line 3631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3632
    .local v0, "doublePrefix":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 3633
    iget-object v2, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 3634
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

    .line 3637
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-nez v3, :cond_0

    .line 3638
    invoke-virtual {v2, p1, v0, p3}, Lcom/android/server/wm/WindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 3632
    .end local v2    # "child":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3641
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method fillTaskInfo(Landroid/app/TaskInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/app/TaskInfo;

    .line 3649
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;Z)V

    .line 3650
    return-void
.end method

.method fillTaskInfo(Landroid/app/TaskInfo;Z)V
    .locals 6
    .param p1, "info"    # Landroid/app/TaskInfo;
    .param p2, "stripExtras"    # Z

    .line 3656
    iget-object v0, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    invoke-direct {p0, v0}, Lcom/android/server/wm/Task;->getNumRunningActivities(Lcom/android/server/wm/Task$TaskActivitiesReport;)V

    .line 3657
    iget v0, p0, Lcom/android/server/wm/Task;->mUserId:I

    iput v0, p1, Landroid/app/TaskInfo;->userId:I

    .line 3658
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v0

    iput v0, p1, Landroid/app/TaskInfo;->stackId:I

    .line 3659
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    iput v0, p1, Landroid/app/TaskInfo;->taskId:I

    .line 3660
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayId()I

    move-result v0

    iput v0, p1, Landroid/app/TaskInfo;->displayId:I

    .line 3661
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

    .line 3662
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    .line 3665
    .local v0, "baseIntent":Landroid/content/Intent;
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    .line 3666
    .local v1, "baseIntentFlags":I
    :goto_1
    if-nez v0, :cond_2

    .line 3667
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    goto :goto_2

    .line 3668
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

    .line 3669
    iget-object v2, p1, Landroid/app/TaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3670
    iget-object v2, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v2, v2, Lcom/android/server/wm/Task$TaskActivitiesReport;->base:Lcom/android/server/wm/ActivityRecord;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 3671
    iget-object v2, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v2, v2, Lcom/android/server/wm/Task$TaskActivitiesReport;->base:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    goto :goto_3

    .line 3672
    :cond_4
    move-object v2, v3

    :goto_3
    iput-object v2, p1, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 3673
    iget-object v2, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v2, v2, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_5

    .line 3674
    iget-object v2, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v2, v2, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    goto :goto_4

    .line 3675
    :cond_5
    move-object v2, v3

    :goto_4
    iput-object v2, p1, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 3676
    iget-object v2, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    iput-object v2, p1, Landroid/app/TaskInfo;->origActivity:Landroid/content/ComponentName;

    .line 3677
    iget-object v2, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    iput-object v2, p1, Landroid/app/TaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 3678
    iget-object v2, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget v2, v2, Lcom/android/server/wm/Task$TaskActivitiesReport;->numActivities:I

    iput v2, p1, Landroid/app/TaskInfo;->numActivities:I

    .line 3679
    iget-wide v4, p0, Lcom/android/server/wm/Task;->lastActiveTime:J

    iput-wide v4, p1, Landroid/app/TaskInfo;->lastActiveTime:J

    .line 3680
    new-instance v2, Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/app/ActivityManager$TaskDescription;-><init>(Landroid/app/ActivityManager$TaskDescription;)V

    iput-object v2, p1, Landroid/app/TaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 3681
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->supportsSplitScreenWindowingMode()Z

    move-result v2

    iput-boolean v2, p1, Landroid/app/TaskInfo;->supportsSplitScreenMultiWindow:Z

    .line 3682
    iget-object v2, p1, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 3683
    iget-object v2, p0, Lcom/android/server/wm/Task;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v2

    iput-object v2, p1, Landroid/app/TaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 3687
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 3688
    .local v2, "top":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_6

    iget v4, v2, Lcom/android/server/wm/Task;->mResizeMode:I

    goto :goto_5

    :cond_6
    iget v4, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    :goto_5
    iput v4, p1, Landroid/app/TaskInfo;->resizeMode:I

    .line 3689
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v4

    iput v4, p1, Landroid/app/TaskInfo;->topActivityType:I

    .line 3690
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v4

    iput-boolean v4, p1, Landroid/app/TaskInfo;->isResizeable:Z

    .line 3692
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 3693
    .local v4, "rootActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_8

    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v5}, Landroid/app/PictureInPictureParams;->empty()Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_6

    .line 3696
    :cond_7
    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    iput-object v5, p1, Landroid/app/TaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    goto :goto_7

    .line 3694
    :cond_8
    :goto_6
    iput-object v3, p1, Landroid/app/TaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 3698
    :goto_7
    iget-object v5, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v5, v5, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    if-eqz v5, :cond_9

    .line 3699
    iget-object v3, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v3, v3, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    goto :goto_8

    .line 3700
    :cond_9
    nop

    :goto_8
    iput-object v3, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 3701
    return-void
.end method

.method fillsParent()Z
    .locals 1

    .line 3456
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->matchParentBounds()Z

    move-result v0

    return v0
.end method

.method findActivityInHistory(Landroid/content/ComponentName;)Lcom/android/server/wm/ActivityRecord;
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 1749
    sget-object v0, Lcom/android/server/wm/-$$Lambda$Task$BP51Xfr33NBfsJ4rKO04RomX2Tg;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$BP51Xfr33NBfsJ4rKO04RomX2Tg;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 1750
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    .line 1749
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v0

    .line 1751
    .local v0, "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1752
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 1753
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

    .line 3461
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/Task;>;"
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 3462
    .local v0, "count":I
    const/4 v1, 0x1

    .line 3463
    .local v1, "isLeafTask":Z
    if-eqz p2, :cond_2

    .line 3464
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 3465
    iget-object v3, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 3466
    .local v3, "child":Lcom/android/server/wm/Task;
    if-eqz v3, :cond_0

    .line 3467
    const/4 v1, 0x0

    .line 3468
    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 3464
    .end local v3    # "child":Lcom/android/server/wm/Task;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .end local v2    # "i":I
    :cond_1
    goto :goto_2

    .line 3472
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 3473
    iget-object v3, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 3474
    .restart local v3    # "child":Lcom/android/server/wm/Task;
    if-eqz v3, :cond_3

    .line 3475
    const/4 v1, 0x0

    .line 3476
    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 3472
    .end local v3    # "child":Lcom/android/server/wm/Task;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3480
    .end local v2    # "i":I
    :cond_4
    :goto_2
    if-eqz v1, :cond_5

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3481
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

    .line 3497
    .local p1, "callback":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/server/wm/Task;Ljava/lang/Boolean;>;"
    const/4 v0, 0x1

    .line 3498
    .local v0, "isLeafTask":Z
    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 3499
    iget-object v3, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 3500
    .local v3, "child":Lcom/android/server/wm/Task;
    if-eqz v3, :cond_0

    .line 3501
    const/4 v0, 0x0

    .line 3502
    invoke-virtual {v3, p1}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Function;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3503
    return v2

    .line 3498
    .end local v3    # "child":Lcom/android/server/wm/Task;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3507
    .end local v1    # "i":I
    :cond_1
    if-eqz v0, :cond_2

    .line 3508
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 3510
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

    .line 3485
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/Task;>;"
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;Z)V

    .line 3486
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3487
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

    .line 3491
    .local p1, "callback":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/server/wm/Task;Ljava/lang/Boolean;>;"
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Function;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 3492
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

    .line 3417
    const-string v0, "forceWindowsScaleable"

    iget-object v1, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 3419
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 3420
    iget-object v2, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowContainer;->forceWindowsScaleableInTransaction(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3419
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3423
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 3424
    nop

    .line 3425
    return-void

    .line 3423
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 3424
    throw v1
.end method

.method public getActivityType()I
    .locals 2

    .line 1392
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getActivityType()I

    move-result v0

    .line 1393
    .local v0, "applicationType":I
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1396
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getActivityType()I

    move-result v1

    return v1

    .line 1394
    :cond_1
    :goto_0
    return v0
.end method

.method getAnimationBounds(I)Landroid/graphics/Rect;
    .locals 1
    .param p1, "appStackClipMode"    # I

    .line 3274
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3276
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 3278
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

    .line 3030
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 3031
    .local v0, "windowState":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_0

    .line 3032
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowState;->getAnimationFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 3034
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowContainer;->getAnimationFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3036
    :goto_0
    return-void
.end method

.method public getAnimationLeashParent()Landroid/view/SurfaceControl;
    .locals 1

    .line 3262
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->sHierarchicalAnimations:Z

    if-eqz v0, :cond_0

    .line 3263
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0

    .line 3268
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getAppAnimationLayer(I)Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method getBaseIntent()Landroid/content/Intent;
    .locals 2

    .line 1315
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    return-object v0

    .line 1316
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    return-object v0

    .line 1318
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1319
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

    .line 2691
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 2692
    .local v0, "currentCount":[I
    sget-object v2, Lcom/android/server/wm/-$$Lambda$Task$Cht49HFU7XWpGlhw2YJ9bd8TX-Q;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$Cht49HFU7XWpGlhw2YJ9bd8TX-Q;

    const-class v3, Lcom/android/server/wm/Task;

    .line 2693
    invoke-static {v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v3

    .line 2692
    invoke-static {v2, v3, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v2

    .line 2694
    .local v2, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 2695
    invoke-interface {v2}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 2696
    aget v1, v0, v1

    return v1
.end method

.method getDimBounds(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "out"    # Landroid/graphics/Rect;

    .line 3069
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 3072
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 3073
    invoke-virtual {v3}, Lcom/android/server/wm/DockedStackDividerController;->isResizing()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 3074
    .local v3, "dockedResizing":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3075
    new-array v1, v1, [Z

    aput-boolean v2, v1, v2

    .line 3076
    .local v1, "foundTop":[Z
    sget-object v4, Lcom/android/server/wm/-$$Lambda$Task$SAhnD6goWlY1lXYn6fWba8f2JLs;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$SAhnD6goWlY1lXYn6fWba8f2JLs;

    const-class v5, Lcom/android/server/wm/ActivityRecord;

    .line 3077
    invoke-static {v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v5

    .line 3076
    invoke-static {v4, v5, p1, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v4

    .line 3078
    .local v4, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {p0, v4}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 3079
    invoke-interface {v4}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 3080
    aget-boolean v2, v1, v2

    if-eqz v2, :cond_1

    .line 3081
    return-void

    .line 3085
    .end local v1    # "foundTop":[Z
    .end local v4    # "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->matchParentBounds()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3092
    if-eqz v3, :cond_2

    .line 3093
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityStack;->getBounds(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 3095
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStack;->getBounds(Landroid/graphics/Rect;)V

    .line 3096
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 3097
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 3100
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3102
    :goto_1
    return-void
.end method

.method getDimmer()Lcom/android/server/wm/Dimmer;
    .locals 1

    .line 3551
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3552
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    return-object v0

    .line 3560
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3564
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    return-object v0

    .line 3561
    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getDimmer()Lcom/android/server/wm/Dimmer;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic getDisplayArea()Lcom/android/server/wm/DisplayArea;
    .locals 1

    .line 170
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    return-object v0
.end method

.method getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;
    .locals 1

    .line 3203
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskDisplayArea;

    return-object v0
.end method

.method getDisplayContent()Lcom/android/server/wm/DisplayContent;
    .locals 2

    .line 2648
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2649
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 2650
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 2649
    :goto_0
    return-object v1
.end method

.method getDisplayId()I
    .locals 2

    .line 2654
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 2655
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

    .line 3123
    iget v0, p0, Lcom/android/server/wm/Task;->mDragResizeMode:I

    return v0
.end method

.method public getFreezeSnapshotTarget()Landroid/view/SurfaceControl;
    .locals 5

    .line 2092
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v0

    .line 2093
    .local v0, "transit":I
    invoke-static {v0}, Lcom/android/server/wm/AppTransition;->isChangeTransit(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2094
    return-object v2

    .line 2098
    :cond_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 2099
    .local v1, "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2100
    iget-object v3, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mAppTransitionController:Lcom/android/server/wm/AppTransitionController;

    .line 2101
    invoke-virtual {v3, p0, v0, v1}, Lcom/android/server/wm/AppTransitionController;->getRemoteAnimationOverride(Lcom/android/server/wm/WindowContainer;ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;

    move-result-object v3

    .line 2103
    .local v3, "adapter":Landroid/view/RemoteAnimationAdapter;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/RemoteAnimationAdapter;->getChangeNeedsSnapshot()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2104
    return-object v2

    .line 2106
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    return-object v2
.end method

.method getHasBeenVisible()Z
    .locals 1

    .line 4452
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mHasBeenVisible:Z

    return v0
.end method

.method getInactiveDuration()J
    .locals 4

    .line 948
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wm/Task;->lastActiveTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method getLastSurfaceSize()Landroid/graphics/Point;
    .locals 1

    .line 2082
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastSurfaceSize:Landroid/graphics/Point;

    return-object v0
.end method

.method getLaunchBounds()Landroid/graphics/Rect;
    .locals 4

    .line 2613
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2614
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2615
    return-object v1

    .line 2618
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v2

    .line 2619
    .local v2, "windowingMode":I
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeStandardOrUndefined()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 2621
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 2623
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2624
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    return-object v1

    .line 2626
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    return-object v1

    .line 2622
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    :cond_4
    return-object v1
.end method

.method getMainWindowSizeChangeTask()Lcom/android/server/wm/Task;
    .locals 1

    .line 4662
    iget-object v0, p0, Lcom/android/server/wm/Task;->mMainWindowSizeChangeTask:Lcom/android/server/wm/Task;

    return-object v0
.end method

.method getMainWindowSizeChangeTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 1

    .line 4658
    iget-object v0, p0, Lcom/android/server/wm/Task;->mMainWindowSizeChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 2

    .line 3540
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

    .line 3442
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

    .line 4706
    const-wide v0, 0x10b00000005L

    return-wide v0
.end method

.method getResumedActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    .line 1237
    iget-object v0, p0, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    return-object v0
.end method

.method getRootActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 2

    .line 1325
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getRootActivity(Z)Lcom/android/server/wm/ActivityRecord;
    .locals 1
    .param p1, "setToBottomIfNone"    # Z

    .line 1329
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;
    .locals 1
    .param p1, "ignoreRelinquishIdentity"    # Z
    .param p2, "setToBottomIfNone"    # Z

    .line 1333
    iget-object v0, p0, Lcom/android/server/wm/Task;->mFindRootHelper:Lcom/android/server/wm/Task$FindRootHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/Task$FindRootHelper;->findRoot(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getRootTask()Lcom/android/server/wm/Task;
    .locals 3

    .line 2669
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 2670
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    if-nez v0, :cond_0

    return-object p0

    .line 2672
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 2673
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

    .line 2665
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    return v0
.end method

.method getSnapshot(ZZ)Landroid/app/ActivityManager$TaskSnapshot;
    .locals 3
    .param p1, "isLowResolution"    # Z
    .param p2, "restoreFromDisk"    # Z

    .line 939
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

    .line 2660
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

    .line 3515
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/Task;>;"
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 3516
    .local v0, "t":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_0

    return-object v0

    .line 3517
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

    .line 3437
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    return-object v0
.end method

.method getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 1

    .line 3707
    new-instance v0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>()V

    .line 3708
    .local v0, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;)V

    .line 3709
    return-object v0
.end method

.method getTaskOutset()I
    .locals 4

    .line 2064
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mRenderShadowsInCompositor:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2065
    return v1

    .line 2067
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 2068
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 2069
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 2073
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x5

    .line 2074
    invoke-static {v2, v1}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    .line 2073
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    return v2

    .line 2077
    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_1
    return v1
.end method

.method getTopFullscreenActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    .line 3379
    sget-object v0, Lcom/android/server/wm/-$$Lambda$Task$s9wiZSThkGOKye0Zl5MRKv-8Iq0;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$s9wiZSThkGOKye0Zl5MRKv-8Iq0;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    .line 1337
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getTopNonFinishingActivity(Z)Lcom/android/server/wm/ActivityRecord;
    .locals 1
    .param p1, "includeOverlays"    # Z

    .line 1341
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/Task;->getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    .line 3386
    sget-object v0, Lcom/android/server/wm/-$$Lambda$Task$N6swnhdrHvxOfp81yUqye9AbX7A;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$N6swnhdrHvxOfp81yUqye9AbX7A;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;
    .locals 2

    .line 3328
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3329
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
    .locals 20
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;

    .line 3738
    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isForceHidden()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v14, p0

    goto/16 :goto_8

    .line 3742
    :cond_0
    const/4 v1, 0x0

    .line 3743
    .local v1, "gotSplitScreenStack":Z
    const/4 v3, 0x0

    .line 3744
    .local v3, "gotOpaqueSplitScreenPrimary":Z
    const/4 v4, 0x0

    .line 3745
    .local v4, "gotOpaqueSplitScreenSecondary":Z
    const/4 v5, 0x0

    .line 3746
    .local v5, "gotTranslucentFullscreen":Z
    const/4 v6, 0x0

    .line 3747
    .local v6, "gotTranslucentSplitScreenPrimary":Z
    const/4 v7, 0x0

    .line 3748
    .local v7, "gotTranslucentSplitScreenSecondary":Z
    const/4 v8, 0x1

    .line 3752
    .local v8, "shouldBeVisible":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v9

    .line 3753
    .local v9, "parent":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v10

    const/4 v11, 0x1

    if-eqz v10, :cond_2

    .line 3754
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/android/server/wm/Task;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    move-result v10

    .line 3755
    .local v10, "parentVisibility":I
    if-ne v10, v2, :cond_1

    .line 3757
    return v2

    .line 3758
    :cond_1
    if-ne v10, v11, :cond_2

    .line 3761
    const/4 v5, 0x1

    .line 3765
    .end local v10    # "parentVisibility":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v10

    .line 3766
    .local v10, "windowingMode":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isActivityTypeAssistant()Z

    move-result v12

    .line 3767
    .local v12, "isAssistantType":Z
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v13

    sub-int/2addr v13, v11

    .local v13, "i":I
    :goto_0
    if-ltz v13, :cond_f

    .line 3768
    invoke-virtual {v9, v13}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v17

    .line 3769
    .local v17, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v15

    .line 3770
    .local v15, "other":Lcom/android/server/wm/Task;
    if-nez v15, :cond_3

    move-object/from16 v14, p0

    goto/16 :goto_4

    .line 3772
    :cond_3
    invoke-virtual {v15}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v18

    if-eqz v18, :cond_4

    move/from16 v18, v11

    goto :goto_1

    :cond_4
    const/16 v18, 0x0

    .line 3773
    .local v18, "hasRunningActivities":Z
    :goto_1
    move-object/from16 v14, p0

    if-ne v15, v14, :cond_7

    .line 3776
    if-nez v18, :cond_6

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/Task;->isInTask(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v19

    if-nez v19, :cond_6

    .line 3777
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v19

    if-eqz v19, :cond_5

    goto :goto_2

    :cond_5
    const/16 v19, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    move/from16 v19, v11

    :goto_3
    move/from16 v8, v19

    .line 3778
    goto :goto_5

    .line 3781
    :cond_7
    if-nez v18, :cond_8

    .line 3782
    goto :goto_4

    .line 3785
    :cond_8
    invoke-virtual {v15}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v2

    .line 3787
    .local v2, "otherWindowingMode":I
    if-ne v2, v11, :cond_a

    .line 3788
    invoke-virtual {v15, v0}, Lcom/android/server/wm/Task;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 3790
    const/4 v5, 0x1

    .line 3791
    goto :goto_4

    .line 3793
    :cond_9
    const/4 v11, 0x2

    return v11

    .line 3794
    :cond_a
    const/4 v11, 0x3

    if-ne v2, v11, :cond_b

    if-nez v3, :cond_b

    .line 3796
    const/4 v1, 0x1

    .line 3797
    invoke-virtual {v15, v0}, Lcom/android/server/wm/Task;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v6

    .line 3798
    xor-int/lit8 v11, v6, 0x1

    move v3, v11

    .line 3799
    const/4 v11, 0x3

    if-ne v10, v11, :cond_c

    if-eqz v3, :cond_c

    .line 3802
    const/4 v11, 0x2

    return v11

    .line 3804
    :cond_b
    const/4 v11, 0x4

    if-ne v2, v11, :cond_c

    if-nez v4, :cond_c

    .line 3806
    const/4 v1, 0x1

    .line 3807
    invoke-virtual {v15, v0}, Lcom/android/server/wm/Task;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v7

    .line 3808
    xor-int/lit8 v11, v7, 0x1

    move v4, v11

    .line 3809
    const/4 v11, 0x4

    if-ne v10, v11, :cond_c

    if-eqz v4, :cond_c

    .line 3812
    const/4 v11, 0x2

    return v11

    .line 3815
    :cond_c
    if-eqz v3, :cond_d

    if-eqz v4, :cond_d

    .line 3818
    const/4 v11, 0x2

    return v11

    .line 3815
    :cond_d
    const/4 v11, 0x2

    .line 3820
    if-eqz v12, :cond_e

    if-eqz v1, :cond_e

    .line 3824
    return v11

    .line 3767
    .end local v2    # "otherWindowingMode":I
    .end local v15    # "other":Lcom/android/server/wm/Task;
    .end local v17    # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v18    # "hasRunningActivities":Z
    :cond_e
    :goto_4
    add-int/lit8 v13, v13, -0x1

    const/4 v2, 0x2

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_f
    move-object/from16 v14, p0

    .line 3828
    .end local v13    # "i":I
    :goto_5
    if-nez v8, :cond_10

    .line 3829
    const/4 v2, 0x2

    return v2

    .line 3833
    :cond_10
    const/4 v2, 0x1

    if-eq v10, v2, :cond_13

    const/4 v11, 0x3

    if-eq v10, v11, :cond_12

    const/4 v11, 0x4

    if-eq v10, v11, :cond_11

    goto :goto_6

    .line 3863
    :cond_11
    if-eqz v7, :cond_16

    .line 3865
    return v2

    .line 3857
    :cond_12
    if-eqz v6, :cond_16

    .line 3859
    return v2

    .line 3841
    :cond_13
    if-eqz v7, :cond_14

    .line 3844
    return v2

    .line 3848
    :cond_14
    if-eqz v6, :cond_16

    .line 3849
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v2, :cond_15

    .line 3850
    const-string v2, "WindowManager"

    const-string v11, "getVisibility: make stack invisible behind translucent split-screen primary"

    invoke-static {v2, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3852
    :cond_15
    const/4 v2, 0x2

    return v2

    .line 3871
    :cond_16
    :goto_6
    if-eqz v5, :cond_17

    move v11, v2

    goto :goto_7

    .line 3872
    :cond_17
    const/4 v11, 0x0

    .line 3871
    :goto_7
    return v11

    .line 3738
    .end local v1    # "gotSplitScreenStack":Z
    .end local v3    # "gotOpaqueSplitScreenPrimary":Z
    .end local v4    # "gotOpaqueSplitScreenSecondary":Z
    .end local v5    # "gotTranslucentFullscreen":Z
    .end local v6    # "gotTranslucentSplitScreenPrimary":Z
    .end local v7    # "gotTranslucentSplitScreenSecondary":Z
    .end local v8    # "shouldBeVisible":Z
    .end local v9    # "parent":Lcom/android/server/wm/WindowContainer;
    .end local v10    # "windowingMode":I
    .end local v12    # "isAssistantType":Z
    :cond_18
    move-object/from16 v14, p0

    .line 3739
    :goto_8
    const/4 v1, 0x2

    return v1
.end method

.method hasWindowsAlive()Z
    .locals 1

    .line 2864
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

    .line 3196
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 3197
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

    .line 1741
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    return v0
.end method

.method isDragResizing()Z
    .locals 1

    .line 3119
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mDragResizing:Z

    return v0
.end method

.method isFloating()Z
    .locals 1

    .line 3213
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

    .line 3399
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

    .line 4701
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

    .line 2087
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

    .line 3876
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 3877
    return-object v0

    .line 3879
    :cond_0
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityRecord;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3880
    return-object p1

    .line 3882
    :cond_1
    return-object v0
.end method

.method isLeafTask()Z
    .locals 3

    .line 2682
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2683
    iget-object v2, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2684
    const/4 v1, 0x0

    return v1

    .line 2682
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2687
    .end local v0    # "i":I
    :cond_1
    return v1
.end method

.method isOrganized()Z
    .locals 1

    .line 4416
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

    .line 2987
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->isResizeable(Z)Z

    move-result v0

    return v0
.end method

.method isResizeable(Z)Z
    .locals 1
    .param p1, "checkSupportsPip"    # Z

    .line 2982
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

    .line 2678
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

    .line 1089
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1092
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 1093
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1095
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method isTaskAnimating()Z
    .locals 2

    .line 3306
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    .line 3307
    .local v0, "recentsAnim":Lcom/android/server/wm/RecentsAnimationController;
    if-eqz v0, :cond_0

    .line 3308
    invoke-virtual {v0, p0}, Lcom/android/server/wm/RecentsAnimationController;->isAnimatingTask(Lcom/android/server/wm/Task;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3309
    const/4 v1, 0x1

    return v1

    .line 3312
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

    .line 3713
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

    .line 3393
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3394
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result v1

    goto :goto_0

    .line 3395
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

    .line 3394
    :goto_0
    return v1
.end method

.method isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 3
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;

    .line 3224
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isForceHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3227
    :cond_0
    sget-object v0, Lcom/android/server/wm/-$$Lambda$Task$CKQ9RLMNPYajktwO1VrUoQGHF_8;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$CKQ9RLMNPYajktwO1VrUoQGHF_8;

    const-class v2, Lcom/android/server/wm/ActivityRecord;

    .line 3228
    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v2

    .line 3227
    invoke-static {v0, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v0

    .line 3229
    .local v0, "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 3230
    .local v2, "opaque":Lcom/android/server/wm/ActivityRecord;
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 3231
    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 3225
    .end local v0    # "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    .end local v2    # "opaque":Lcom/android/server/wm/ActivityRecord;
    :cond_2
    :goto_1
    return v1
.end method

.method isUidPresent(I)Z
    .locals 3
    .param p1, "uid"    # I

    .line 1355
    sget-object v0, Lcom/android/server/wm/-$$Lambda$QEISWTQzWbgxRMT5rMnIEzpsKpc;->INSTANCE:Lcom/android/server/wm/-$$Lambda$QEISWTQzWbgxRMT5rMnIEzpsKpc;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 1356
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1355
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v0

    .line 1357
    .local v0, "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1358
    .local v1, "isUidPresent":Z
    :goto_0
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 1359
    return v1
.end method

.method public synthetic lambda$getNextFocusableTask$4$Task(ZLjava/lang/Object;)Z
    .locals 1
    .param p1, "allowFocusSelf"    # Z
    .param p2, "task"    # Ljava/lang/Object;

    .line 2715
    if-nez p1, :cond_0

    if-eq p2, p0, :cond_1

    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/android/server/wm/ActivityStack;

    .line 2716
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isFocusableAndVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2715
    :goto_0
    return v0
.end method

.method public synthetic lambda$isTaskAnimating$5$Task(Lcom/android/server/wm/Task;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "t"    # Lcom/android/server/wm/Task;

    .line 3312
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

    .line 1549
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_0

    return-void

    .line 1551
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->takeFromHistory()V

    .line 1552
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 1553
    return-void
.end method

.method lockTaskAuthToString()Ljava/lang/String;
    .locals 2

    .line 1642
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

    .line 1648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1647
    :cond_0
    const-string v0, "LOCK_TASK_AUTH_LAUNCHABLE_PRIV"

    return-object v0

    .line 1646
    :cond_1
    const-string v0, "LOCK_TASK_AUTH_WHITELISTED"

    return-object v0

    .line 1645
    :cond_2
    const-string v0, "LOCK_TASK_AUTH_LAUNCHABLE"

    return-object v0

    .line 1644
    :cond_3
    const-string v0, "LOCK_TASK_AUTH_PINNABLE"

    return-object v0

    .line 1643
    :cond_4
    const-string v0, "LOCK_TASK_AUTH_DONT_LOCK"

    return-object v0
.end method

.method public makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .locals 3

    .line 3257
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

    .line 2028
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->migrateToNewSurfaceControl()V

    .line 2029
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastSurfaceSize:Landroid/graphics/Point;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 2030
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastSurfaceSize:Landroid/graphics/Point;

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 2031
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V

    .line 2032
    return-void
.end method

.method final moveActivityToFrontLocked(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2
    .param p1, "newTop"    # Lcom/android/server/wm/ActivityRecord;

    .line 1383
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

    .line 1384
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1383
    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->positionChildAtTop(Lcom/android/server/wm/ActivityRecord;)V

    .line 1387
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateEffectiveIntent()V

    .line 1388
    return-void
.end method

.method onActivityStateChanged(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V
    .locals 4
    .param p1, "record"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "state"    # Lcom/android/server/wm/ActivityStack$ActivityState;
    .param p3, "reason"    # Ljava/lang/String;

    .line 1918
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

    .line 1920
    .local v0, "parentTask":Lcom/android/server/wm/Task;
    :goto_0
    if-eqz v0, :cond_1

    .line 1921
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/Task;->onActivityStateChanged(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 1925
    iget-boolean v2, v0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-nez v2, :cond_1

    .line 1926
    return-void

    .line 1930
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const-string v3, " - onActivityStateChanged"

    if-ne p1, v2, :cond_2

    sget-object v2, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-eq p2, v2, :cond_2

    .line 1931
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/Task;->setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 1934
    :cond_2
    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne p2, v1, :cond_5

    .line 1935
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v1, :cond_3

    .line 1936
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

    .line 1938
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/Task;->setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 1939
    iget-object v1, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-ne p1, v1, :cond_4

    .line 1940
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 1942
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/Task;)V

    .line 1944
    :cond_5
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 1950
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v0

    .line 1951
    .local v0, "prevPersistTaskBounds":Z
    nop

    .line 1952
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v1

    .line 1953
    .local v1, "nextPersistTaskBounds":Z
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideWindowingMode()I

    move-result v2

    if-nez v2, :cond_0

    .line 1954
    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v1

    .line 1956
    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_1

    .line 1957
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1959
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v3, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 1960
    invoke-virtual {v2, v3}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 1963
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v2

    .line 1964
    .local v2, "prevWinMode":I
    iget-object v3, p0, Lcom/android/server/wm/Task;->mTmpPrevBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1965
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inMultiWindowMode()Z

    move-result v3

    .line 1966
    .local v3, "wasInMultiWindowMode":Z
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v4

    .line 1967
    .local v4, "wasInPictureInPicture":Z
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1970
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/wm/Task;->updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V

    .line 1972
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v5

    if-eq v4, v5, :cond_2

    .line 1973
    iget-object v5, p0, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v6

    invoke-virtual {v5, p0, v6}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityStack;)V

    goto :goto_0

    .line 1974
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inMultiWindowMode()Z

    move-result v5

    if-eq v3, v5, :cond_3

    .line 1975
    iget-object v5, p0, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v5, p0}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleUpdateMultiWindowMode(Lcom/android/server/wm/Task;)V

    .line 1978
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v5

    .line 1979
    .local v5, "newWinMode":I
    if-eq v2, v5, :cond_4

    iget-object v6, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v6, :cond_4

    .line 1980
    invoke-direct {p0, v2, v5}, Lcom/android/server/wm/Task;->shouldStartChangeTransition(II)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1981
    iget-object v6, p0, Lcom/android/server/wm/Task;->mTmpPrevBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v6}, Lcom/android/server/wm/Task;->initializeChangeTransition(Landroid/graphics/Rect;)V

    .line 1986
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1987
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 1988
    .local v6, "currentBounds":Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 1989
    invoke-virtual {p0, v6}, Lcom/android/server/wm/Task;->setLastNonFullscreenBounds(Landroid/graphics/Rect;)V

    .line 1993
    .end local v6    # "currentBounds":Landroid/graphics/Rect;
    :cond_5
    invoke-direct {p0}, Lcom/android/server/wm/Task;->saveLaunchingStateIfNeeded()V

    .line 1994
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/server/wm/Task;->updateTaskOrganizerState(Z)Z

    move-result v7

    .line 1997
    .local v7, "taskOrgChanged":Z
    if-nez v7, :cond_6

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1998
    iget-object v8, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {v8, p0, v6}, Lcom/android/server/wm/TaskOrganizerController;->dispatchTaskInfoChanged(Lcom/android/server/wm/Task;Z)V

    .line 2000
    :cond_6
    return-void
.end method

.method public onDescendantOrientationChanged(Landroid/os/IBinder;Lcom/android/server/wm/ConfigurationContainer;)Z
    .locals 2
    .param p1, "freezeDisplayToken"    # Landroid/os/IBinder;
    .param p2, "requestingContainer"    # Lcom/android/server/wm/ConfigurationContainer;

    .line 2948
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onDescendantOrientationChanged(Landroid/os/IBinder;Lcom/android/server/wm/ConfigurationContainer;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2949
    return v1

    .line 2954
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2955
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2956
    return v1

    .line 2958
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .locals 4
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 2969
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    .line 2970
    .local v0, "isRootTask":Z
    if-nez v0, :cond_0

    .line 2971
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->adjustBoundsForDisplayChangeIfNeeded(Lcom/android/server/wm/DisplayContent;)V

    .line 2973
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 2974
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2975
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    .line 2976
    .local v1, "displayId":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskDisplayChanged(II)V

    .line 2979
    .end local v1    # "displayId":I
    :cond_2
    return-void
.end method

.method onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V
    .locals 7
    .param p1, "newParent"    # Lcom/android/server/wm/ConfigurationContainer;
    .param p2, "oldParent"    # Lcom/android/server/wm/ConfigurationContainer;

    .line 1120
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1121
    move-object v1, p1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 1122
    .local v1, "display":Lcom/android/server/wm/DisplayContent;
    :goto_0
    if-eqz p2, :cond_1

    .line 1123
    move-object v2, p2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v0

    .line 1125
    .local v2, "oldDisplay":Lcom/android/server/wm/DisplayContent;
    :goto_1
    if-eqz v2, :cond_2

    iget v3, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    goto :goto_2

    :cond_2
    const/4 v3, -0x1

    :goto_2
    iput v3, p0, Lcom/android/server/wm/Task;->mPrevDisplayId:I

    .line 1127
    if-eqz p2, :cond_3

    if-nez p1, :cond_3

    .line 1128
    invoke-direct {p0, p2}, Lcom/android/server/wm/Task;->cleanUpResourcesForDestroy(Lcom/android/server/wm/ConfigurationContainer;)V

    .line 1131
    :cond_3
    if-eqz v1, :cond_4

    .line 1140
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1141
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v4

    .line 1140
    invoke-virtual {v3, v4}, Landroid/app/WindowConfiguration;->setRotation(I)V

    .line 1144
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V

    .line 1152
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v3, :cond_5

    .line 1153
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/wm/EventLogTags;->writeWmStackRemoved(I)V

    .line 1154
    iput-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1155
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 1158
    :cond_5
    if-eqz p2, :cond_8

    .line 1159
    move-object v0, p2

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1160
    .local v0, "oldParentTask":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_6

    .line 1161
    sget-object v3, Lcom/android/server/wm/-$$Lambda$ABB1r3i-Ua4IQKhbebsmnEGpWd8;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ABB1r3i-Ua4IQKhbebsmnEGpWd8;

    const-class v4, Lcom/android/server/wm/ActivityRecord;

    .line 1163
    invoke-static {v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v4

    .line 1161
    invoke-static {v3, v0, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v3

    .line 1164
    .local v3, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {p0, v3}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 1165
    invoke-interface {v3}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 1168
    .end local v3    # "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    :cond_6
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz p1, :cond_7

    .line 1169
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v3

    if-nez v3, :cond_8

    .line 1172
    :cond_7
    iget-object v3, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityUnpinned()V

    .line 1176
    .end local v0    # "oldParentTask":Lcom/android/server/wm/Task;
    :cond_8
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    .line 1177
    move-object v3, p1

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 1178
    .local v3, "newParentTask":Lcom/android/server/wm/Task;
    if-eqz v3, :cond_9

    .line 1179
    invoke-virtual {v3, v0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 1181
    .local v4, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_9

    sget-object v5, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1182
    const-string v5, "addedToTask"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/Task;->setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 1188
    .end local v4    # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_9
    iget-object v4, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v4, :cond_a

    .line 1190
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    iget v6, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {v4, v5, v6}, Landroid/service/voice/IVoiceInteractionSession;->taskStarted(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1192
    goto :goto_3

    .line 1191
    :catch_0
    move-exception v4

    .line 1197
    .end local v3    # "newParentTask":Lcom/android/server/wm/Task;
    :cond_a
    :goto_3
    if-nez p2, :cond_b

    if-eqz p1, :cond_b

    .line 1201
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateOverrideConfigurationFromLaunchBounds()Landroid/graphics/Rect;

    .line 1205
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wm/Task;->adjustBoundsForDisplayChangeIfNeeded(Lcom/android/server/wm/DisplayContent;)V

    .line 1207
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->windowsAreScaleable()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1210
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forceWindowsScaleable(Z)V

    goto :goto_4

    .line 1212
    :cond_c
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forceWindowsScaleable(Z)V

    .line 1215
    :goto_4
    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->updateUIDsPresentOnDisplay()V

    .line 1216
    return-void
.end method

.method onPictureInPictureParamsChanged()V
    .locals 2

    .line 4627
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4628
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/TaskOrganizerController;->dispatchTaskInfoChanged(Lcom/android/server/wm/Task;Z)V

    .line 4630
    :cond_0
    return-void
.end method

.method onSnapshotChanged(Landroid/app/ActivityManager$TaskSnapshot;)V
    .locals 2
    .param p1, "snapshot"    # Landroid/app/ActivityManager$TaskSnapshot;

    .line 3432
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskSnapshotChanged(ILandroid/app/ActivityManager$TaskSnapshot;)V

    .line 3434
    return-void
.end method

.method onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .line 4623
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/Task;->updateShadowsRadius(ZLandroid/view/SurfaceControl$Transaction;)V

    .line 4624
    return-void
.end method

.method onlyHasTaskOverlayActivities(Z)Z
    .locals 6
    .param p1, "includeFinishing"    # Z

    .line 1519
    const/4 v0, 0x0

    .line 1520
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x0

    if-ltz v1, :cond_3

    .line 1521
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 1522
    .local v4, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v4, :cond_0

    .line 1524
    return v3

    .line 1526
    :cond_0
    if-nez p1, :cond_1

    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_1

    .line 1527
    goto :goto_1

    .line 1529
    :cond_1
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1530
    return v3

    .line 1532
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 1520
    .end local v4    # "r":Lcom/android/server/wm/ActivityRecord;
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1534
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

    .line 1547
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1548
    new-instance v0, Lcom/android/server/wm/-$$Lambda$Task$iKnNpBBRFRHs1rtFSWGK99Fqn1E;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$Task$iKnNpBBRFRHs1rtFSWGK99Fqn1E;-><init>(Lcom/android/server/wm/Task;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 1555
    :cond_0
    new-instance v0, Lcom/android/server/wm/-$$Lambda$Task$s8aJAJv5Mq4hljFdutdcLenli4o;

    invoke-direct {v0, p1}, Lcom/android/server/wm/-$$Lambda$Task$s8aJAJv5Mq4hljFdutdcLenli4o;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 1562
    :goto_0
    return-void
.end method

.method performClearTaskForReuseLocked(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityRecord;
    .locals 2
    .param p1, "newR"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "launchFlags"    # I

    .line 1574
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 1575
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/Task;->performClearTaskLocked(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1576
    .local v0, "result":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 1577
    return-object v0
.end method

.method performClearTaskLocked()V
    .locals 1

    .line 1568
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 1569
    const-string v0, "clear-task-all"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->performClearTask(Ljava/lang/String;)V

    .line 1570
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 1571
    return-void
.end method

.method positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "child"    # Lcom/android/server/wm/WindowContainer;
    .param p3, "includingParents"    # Z

    .line 2848
    invoke-direct {p0, p2, p1}, Lcom/android/server/wm/Task;->getAdjustedChildPosition(Lcom/android/server/wm/WindowContainer;I)I

    move-result p1

    .line 2849
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 2852
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

    .line 2855
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

    .line 2856
    .local v0, "toTop":I
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 2857
    .local v1, "task":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_2

    .line 2858
    iget v2, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v2, v0, p1}, Lcom/android/server/wm/EventLogTags;->writeWmTaskMoved(III)V

    .line 2860
    :cond_2
    return-void
.end method

.method positionChildAt(Lcom/android/server/wm/ActivityRecord;I)V
    .locals 2
    .param p1, "child"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "position"    # I

    .line 3407
    if-nez p1, :cond_0

    .line 3408
    const-string v0, "WindowManager"

    const-string v1, "Attempted to position of non-existing app"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3410
    return-void

    .line 3413
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/wm/Task;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 3414
    return-void
.end method

.method positionChildAtTop(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p1, "child"    # Lcom/android/server/wm/ActivityRecord;

    .line 3403
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->positionChildAt(Lcom/android/server/wm/ActivityRecord;I)V

    .line 3404
    return-void
.end method

.method prepareFreezingBounds()V
    .locals 2

    .line 3023
    iget-object v0, p0, Lcom/android/server/wm/Task;->mPreparedFrozenBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3024
    iget-object v0, p0, Lcom/android/server/wm/Task;->mPreparedFrozenMergedConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 3025
    return-void
.end method

.method prepareSurfaces()V
    .locals 4

    .line 3569
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {v0}, Lcom/android/server/wm/Dimmer;->resetDimStates()V

    .line 3570
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->prepareSurfaces()V

    .line 3571
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 3574
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3575
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 3576
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

    .line 3579
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 3582
    :goto_0
    invoke-direct {p0}, Lcom/android/server/wm/Task;->isFocused()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/Task;->updateShadowsRadius(ZLandroid/view/SurfaceControl$Transaction;)V

    .line 3586
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 3587
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_2

    .line 3588
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

    .line 3590
    const-string v2, "com.android.settings"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3591
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_1

    .line 3592
    const-string v1, "WindowManager"

    const-string v2, "Task(): skip update dim layers, tansit=TRANSIT_TASK_OPEN"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3594
    :cond_1
    return-void

    .line 3599
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/Dimmer;->updateDims(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3600
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->scheduleAnimation()V

    .line 3602
    :cond_3
    return-void
.end method

.method preserveOrientationOnResize()Z
    .locals 2

    .line 2996
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

    .line 1458
    const-string v0, "removeChild"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->removeChild(Lcom/android/server/wm/WindowContainer;Ljava/lang/String;)V

    .line 1459
    return-void
.end method

.method removeChild(Lcom/android/server/wm/WindowContainer;Ljava/lang/String;)V
    .locals 3
    .param p1, "r"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "reason"    # Ljava/lang/String;

    .line 1464
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1465
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->removeStackReferenceIfNeeded(Lcom/android/server/wm/ActivityStack;)V

    .line 1467
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1468
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

    .line 1469
    return-void

    .line 1472
    :cond_1
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_MOVEMENT:Z

    if-eqz v0, :cond_2

    .line 1473
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

    .line 1475
    :cond_2
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 1477
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1481
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 1484
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1485
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateEffectiveIntent()V

    .line 1490
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->onlyHasTaskOverlayActivities(Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1498
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v1, p2}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;)V

    goto :goto_0

    .line 1501
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-nez v0, :cond_6

    .line 1504
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1505
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/android/server/wm/ActivityStack;->removeChild(Lcom/android/server/wm/WindowContainer;Ljava/lang/String;)V

    .line 1507
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

    .line 1509
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->removeIfPossible()V

    .line 1511
    :cond_6
    :goto_0
    return-void
.end method

.method removeIfPossible()V
    .locals 3

    .line 668
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    .line 669
    .local v0, "isRootTask":Z
    if-nez v0, :cond_0

    .line 670
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/wm/LockTaskController;->clearLockedTask(Lcom/android/server/wm/Task;)V

    .line 672
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->shouldDeferRemoval()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 673
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

    .line 674
    :cond_1
    return-void

    .line 676
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->removeImmediately()V

    .line 677
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 678
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskRemoved(I)V

    .line 680
    :cond_3
    return-void
.end method

.method removeImmediately()V
    .locals 2

    .line 2878
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

    .line 2879
    :cond_0
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    const-string v1, "removeTask"

    invoke-static {v0, v1}, Lcom/android/server/wm/EventLogTags;->writeWmTaskRemoved(ILjava/lang/String;)V

    .line 2882
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/LockTaskController;->clearLockedTask(Lcom/android/server/wm/Task;)V

    .line 2885
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isSingleTaskInstance()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2886
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->notifySingleTaskDisplayEmpty(I)V

    .line 2890
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setTaskOrganizer(Landroid/window/ITaskOrganizer;)Z

    .line 2892
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->removeImmediately()V

    .line 2893
    return-void
.end method

.method removedFromRecents()V
    .locals 3

    .line 1278
    invoke-direct {p0}, Lcom/android/server/wm/Task;->closeRecentsChain()V

    .line 1279
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->inRecents:Z

    if-eqz v0, :cond_0

    .line 1280
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->inRecents:Z

    .line 1281
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    .line 1284
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->clearRootProcess()V

    .line 1286
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    iget v2, p0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskSnapshotController;->notifyTaskRemovedFromRecents(II)V

    .line 1288
    return-void
.end method

.method reparent(Lcom/android/server/wm/ActivityStack;IZLjava/lang/String;)V
    .locals 3
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "position"    # I
    .param p3, "moveParents"    # Z
    .param p4, "reason"    # Ljava/lang/String;

    .line 2897
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

    .line 2898
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2897
    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2899
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

    .line 2901
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    .line 2903
    invoke-virtual {p1, p2, p0, p3}, Lcom/android/server/wm/ActivityStack;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 2908
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mPreserveNonFloatingState:Z

    .line 2909
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

    .line 787
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

    .line 813
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v12, p7

    iget-object v13, v1, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 814
    .local v13, "supervisor":Lcom/android/server/wm/ActivityStackSupervisor;
    iget-object v14, v1, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 815
    .local v14, "root":Lcom/android/server/wm/RootWindowContainer;
    iget-object v0, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v15, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 816
    .local v15, "windowManager":Lcom/android/server/wm/WindowManagerService;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v11

    .line 817
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

    .line 819
    .local v6, "toStack":Lcom/android/server/wm/ActivityStack;
    if-ne v6, v11, :cond_1

    .line 820
    return v7

    .line 822
    :cond_1
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->getDisplayId()I

    move-result v9

    invoke-virtual {v1, v9}, Lcom/android/server/wm/Task;->canBeLaunchedOnDisplay(I)Z

    move-result v9

    if-nez v9, :cond_2

    .line 823
    return v7

    .line 826
    :cond_2
    if-ne v3, v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v7

    :goto_1
    move/from16 v16, v0

    .line 827
    .local v16, "toTopOfStack":Z
    const/4 v0, 0x0

    if-eqz v16, :cond_4

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 828
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 830
    invoke-virtual {v6, v7, v7, v0}, Lcom/android/server/wm/ActivityStack;->startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;)Z

    .line 834
    :cond_4
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v10

    .line 835
    .local v10, "toStackWindowingMode":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    .line 837
    .local v9, "topActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v9, :cond_5

    .line 838
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

    .line 839
    .local v18, "mightReplaceWindow":Z
    if-eqz v18, :cond_6

    .line 848
    iget-object v7, v9, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-virtual {v15, v7, v5}, Lcom/android/server/wm/WindowManagerService;->setWillReplaceWindow(Landroid/os/IBinder;Z)V

    .line 851
    :cond_6
    iget-object v7, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 852
    const/16 v19, 0x1

    .line 854
    .local v19, "kept":Z
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 855
    .local v7, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v7, :cond_7

    :try_start_1
    invoke-virtual {v14, v11}, Lcom/android/server/wm/RootWindowContainer;->isTopDisplayFocusedStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 856
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-ne v0, v7, :cond_7

    const/4 v0, 0x1

    goto :goto_3

    .line 897
    .end local v7    # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_0
    move-exception v0

    move-object v8, v9

    move-object/from16 v25, v11

    move-object v9, v6

    move-object v6, v14

    move v14, v10

    goto/16 :goto_d

    .line 856
    .restart local v7    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_7
    const/4 v0, 0x0

    .line 857
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

    .line 858
    .local v9, "wasResumed":Z
    if-eqz v7, :cond_9

    :try_start_2
    iget-object v8, v11, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v8, v7, :cond_9

    const/4 v8, 0x1

    goto :goto_5

    .line 897
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

    .line 858
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

    .line 863
    .local v10, "wasPaused":Z
    if-eqz v7, :cond_a

    :try_start_3
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityStack;->isTopStackInDisplayArea()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 864
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne v8, v7, :cond_a

    const/4 v8, 0x1

    goto :goto_6

    .line 897
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

    .line 864
    .restart local v0    # "wasFocused":Z
    .restart local v7    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v9    # "wasResumed":Z
    .restart local v10    # "wasPaused":Z
    :cond_a
    const/4 v8, 0x0

    :goto_6
    move/from16 v23, v8

    .line 866
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

    .line 869
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

    .line 871
    if-eqz p6, :cond_e

    .line 873
    :try_start_5
    invoke-virtual {v13, v1, v11}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityStack;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 878
    :cond_e
    if-eqz v7, :cond_f

    .line 879
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

    .line 897
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

    .line 878
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

    .line 882
    .end local v6    # "toStack":Lcom/android/server/wm/ActivityStack;
    .end local v7    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v11    # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .restart local v17    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v24    # "toStack":Lcom/android/server/wm/ActivityStack;
    .restart local v25    # "sourceStack":Lcom/android/server/wm/ActivityStack;
    :goto_9
    if-nez v5, :cond_10

    .line 883
    iget-object v6, v1, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v6, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 888
    :cond_10
    :try_start_7
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/ActivityStack;->prepareFreezingTaskBounds()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 890
    const/4 v6, 0x3

    if-ne v14, v6, :cond_11

    if-ne v4, v3, :cond_11

    .line 894
    :try_start_8
    iget-object v6, v1, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v6, v12}, Lcom/android/server/wm/ActivityStackSupervisor;->moveRecentsStackToFront(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 897
    .end local v0    # "moveStackToFront":Z
    .end local v9    # "wasResumed":Z
    .end local v10    # "wasPaused":Z
    .end local v17    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v21    # "wasFocused":Z
    .end local v23    # "wasFront":Z
    :cond_11
    iget-object v0, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 898
    nop

    .line 900
    if-eqz v18, :cond_12

    .line 904
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    xor-int/lit8 v6, v19, 0x1

    invoke-virtual {v15, v0, v6}, Lcom/android/server/wm/WindowManagerService;->scheduleClearWillReplaceWindows(Landroid/os/IBinder;Z)V

    .line 907
    :cond_12
    if-nez p5, :cond_14

    .line 910
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

    .line 911
    invoke-virtual {v6}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    goto :goto_b

    .line 907
    .end local v6    # "root":Lcom/android/server/wm/RootWindowContainer;
    .restart local v22    # "root":Lcom/android/server/wm/RootWindowContainer;
    :cond_14
    move-object/from16 v6, v22

    const/4 v7, 0x0

    .line 915
    .end local v22    # "root":Lcom/android/server/wm/RootWindowContainer;
    .restart local v6    # "root":Lcom/android/server/wm/RootWindowContainer;
    :goto_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    iget-object v8, v1, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 916
    invoke-virtual {v8}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v8

    .line 915
    move-object/from16 v9, v24

    .end local v24    # "toStack":Lcom/android/server/wm/ActivityStack;
    .local v9, "toStack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v13, v1, v0, v8, v9}, Lcom/android/server/wm/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;ILcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityStack;)V

    .line 918
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

    .line 897
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

    .line 898
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

    .line 768
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

    .line 779
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

    .line 4425
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4426
    return-void

    .line 4428
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->reparentSurfaceControl(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 4429
    return-void
.end method

.method resize(ZZ)V
    .locals 1
    .param p1, "relayout"    # Z
    .param p2, "forced"    # Z

    .line 2962
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;Z)I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2963
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 2965
    :cond_0
    return-void
.end method

.method resize(Landroid/graphics/Rect;IZ)Z
    .locals 8
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "resizeMode"    # I
    .param p3, "preserveWindow"    # Z

    .line 699
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 702
    and-int/lit8 v0, p2, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 704
    .local v0, "forced":Z
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-nez v3, :cond_2

    .line 708
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 709
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 711
    iget-object v3, p0, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->restoreRecentTaskLocked(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 713
    :cond_1
    nop

    .line 760
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 713
    return v1

    .line 716
    :cond_2
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/wm/Task;->canResizeToBounds(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 725
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

    .line 727
    const/4 v3, 0x0

    .line 728
    .local v3, "updatedConfig":Z
    iget-object v6, p0, Lcom/android/server/wm/Task;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 729
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    move-result v6

    if-eqz v6, :cond_3

    .line 730
    iget-object v6, p0, Lcom/android/server/wm/Task;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v6

    xor-int/2addr v1, v6

    move v3, v1

    .line 735
    :cond_3
    const/4 v1, 0x1

    .line 736
    .local v1, "kept":Z
    if-eqz v3, :cond_4

    .line 737
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    .line 738
    .local v6, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v6, :cond_4

    .line 739
    invoke-virtual {v6, v2, p3}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZ)Z

    move-result v7

    move v1, v7

    .line 747
    iget-object v7, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v7, v6, v2, p3}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 748
    if-nez v1, :cond_4

    .line 749
    iget-object v2, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    .line 753
    .end local v6    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_4
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/Task;->resize(ZZ)V

    .line 755
    invoke-direct {p0}, Lcom/android/server/wm/Task;->saveLaunchingStateIfNeeded()V

    .line 757
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 758
    nop

    .line 760
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 758
    return v1

    .line 717
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

    .line 760
    .end local v0    # "forced":Z
    .restart local p0    # "this":Lcom/android/server/wm/Task;
    .restart local p1    # "bounds":Landroid/graphics/Rect;
    .restart local p2    # "resizeMode":I
    .restart local p3    # "preserveWindow":Z
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 761
    throw v0
.end method

.method resolveOverrideConfiguration(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 2448
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2449
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->resolveOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 2451
    nop

    .line 2452
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 2456
    .local v0, "windowingMode":I
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_1

    .line 2457
    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v1

    .line 2458
    .local v1, "parentWindowingMode":I
    invoke-static {v1}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2459
    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .line 2460
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2, v0}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 2463
    .end local v1    # "parentWindowingMode":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2464
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/Task;->resolveLeafOnlyOverrideConfigs(Landroid/content/res/Configuration;Landroid/graphics/Rect;)V

    .line 2466
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/Task;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 2467
    return-void
.end method

.method returnsToHomeStack()Z
    .locals 5

    .line 1099
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inMultiWindowMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1100
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 1101
    const v3, 0x10004000

    .line 1102
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

    .line 1104
    .end local v3    # "returnHomeFlags":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBottomMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1105
    .local v0, "bottomTask":Lcom/android/server/wm/Task;
    if-eq v0, p0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->returnsToHomeStack()Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    :cond_3
    return v1

    .line 1099
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

    .line 623
    iput-object p1, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 624
    iput-object p2, p0, Lcom/android/server/wm/Task;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 625
    invoke-virtual {p0, p5, p3, p4}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 626
    invoke-virtual {p0, p4}, Lcom/android/server/wm/Task;->setMinDimensions(Landroid/content/pm/ActivityInfo;)V

    .line 634
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v2, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskCreated(ILandroid/content/ComponentName;)V

    .line 635
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

    .line 4079
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

    .line 4081
    :cond_0
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "task_id"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4082
    iget-object v0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 4083
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "real_activity"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4085
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->realActivitySuspended:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "real_activity_suspended"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4086
    iget-object v0, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_2

    .line 4087
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "orig_activity"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4093
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    const-string v2, "@"

    const-string v3, "root_affinity"

    if-eqz v0, :cond_4

    .line 4094
    const-string v4, "affinity"

    invoke-interface {p1, v1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4095
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 4096
    iget-object v0, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    if-eqz v0, :cond_3

    move-object v2, v0

    :cond_3
    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 4098
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 4099
    if-eqz v0, :cond_5

    move-object v2, v0

    :cond_5
    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4101
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 4102
    const-string v2, "window_layout_affinity"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4104
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->rootWasReset:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "root_has_reset"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4105
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "auto_remove_recents"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4106
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->askedCompatMode:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "asked_compat_mode"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4107
    iget v0, p0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "user_id"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4108
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mUserSetupComplete:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "user_setup_complete"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4109
    iget v0, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "effective_uid"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4110
    iget-wide v2, p0, Lcom/android/server/wm/Task;->mLastTimeMoved:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "last_time_moved"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4111
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "never_relinquish_identity"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4112
    iget-object v0, p0, Lcom/android/server/wm/Task;->lastDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    .line 4113
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "last_description"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4115
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 4116
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager$TaskDescription;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 4118
    :cond_9
    iget v0, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskColor:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "task_affiliation_color"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4119
    iget v0, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "task_affiliation"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4120
    iget v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "prev_affiliation"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4121
    iget v0, p0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "next_affiliation"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4122
    iget v0, p0, Lcom/android/server/wm/Task;->mCallingUid:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "calling_uid"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4123
    iget-object v0, p0, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    const-string v2, ""

    if-nez v0, :cond_a

    move-object v0, v2

    :cond_a
    const-string v3, "calling_package"

    invoke-interface {p1, v1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4124
    nop

    .line 4125
    iget-object v0, p0, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    if-nez v0, :cond_b

    goto :goto_1

    :cond_b
    move-object v2, v0

    .line 4124
    :goto_1
    const-string v0, "calling_feature_id"

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4126
    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "resize_mode"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4127
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    .line 4128
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    .line 4127
    const-string v2, "supports_picture_in_picture"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4129
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_c

    .line 4130
    nop

    .line 4131
    invoke-virtual {v0}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 4130
    const-string v2, "non_fullscreen_bounds"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4133
    :cond_c
    iget v0, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "min_width"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4134
    iget v0, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "min_height"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4135
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "persist_task_version"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4137
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    if-eqz v0, :cond_d

    .line 4138
    const-string v0, "affinity_intent"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4139
    iget-object v2, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v2, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 4140
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4143
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_e

    .line 4144
    const-string v0, "intent"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4145
    iget-object v2, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v2, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 4146
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4149
    :cond_e
    sput-object v1, Lcom/android/server/wm/Task;->sTmpException:Ljava/lang/Exception;

    .line 4150
    sget-object v0, Lcom/android/server/wm/-$$Lambda$Task$OQmaRDKXdgA0v6VfNwTX7wOkwBs;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$OQmaRDKXdgA0v6VfNwTX7wOkwBs;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 4151
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBottomMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 4150
    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainFunction(Lcom/android/internal/util/function/TriFunction;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledFunction;

    move-result-object v0

    .line 4152
    .local v0, "f":Lcom/android/internal/util/function/pooled/PooledFunction;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Function;)Z

    .line 4153
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledFunction;->recycle()V

    .line 4154
    sget-object v1, Lcom/android/server/wm/Task;->sTmpException:Ljava/lang/Exception;

    if-nez v1, :cond_f

    .line 4157
    return-void

    .line 4155
    :cond_f
    throw v1
.end method

.method setActivityWindowingMode(I)V
    .locals 3
    .param p1, "windowingMode"    # I

    .line 4666
    sget-object v0, Lcom/android/server/wm/-$$Lambda$eT9SjQHKmQJBvlyYh6oQCJNBjSE;->INSTANCE:Lcom/android/server/wm/-$$Lambda$eT9SjQHKmQJBvlyYh6oQCJNBjSE;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 4667
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4666
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0

    .line 4668
    .local v0, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 4669
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 4670
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)I
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 2928
    invoke-static {p0, p1}, Lcom/android/server/wm/OpQuickReplyInjector;->resetBoundsIfNeeded(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2929
    const/4 v0, 0x0

    return v0

    .line 2932
    :cond_0
    const/4 v0, 0x0

    .line 2933
    .local v0, "rotation":I
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2934
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 2935
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    :goto_0
    if-eqz v1, :cond_2

    .line 2936
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    iget v0, v2, Landroid/view/DisplayInfo;->rotation:I

    .line 2939
    :cond_2
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->setBounds(Landroid/graphics/Rect;)I

    move-result v2

    .line 2940
    .local v2, "boundsChange":I
    iput v0, p0, Lcom/android/server/wm/Task;->mRotation:I

    .line 2941
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateSurfacePosition()V

    .line 2942
    return v2
.end method

.method public setBounds(Landroid/graphics/Rect;Z)I
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "forceResize"    # Z

    .line 2912
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    move-result v0

    .line 2914
    .local v0, "boundsChanged":I
    if-eqz p2, :cond_0

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 2915
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->onResize()V

    .line 2916
    or-int/lit8 v1, v0, 0x2

    return v1

    .line 2919
    :cond_0
    return v0
.end method

.method setCanAffectSystemUiFlags(Z)V
    .locals 0
    .param p1, "canAffectSystemUiFlags"    # Z

    .line 3525
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mCanAffectSystemUiFlags:Z

    .line 3526
    return-void
.end method

.method setDragResizing(ZI)V
    .locals 3
    .param p1, "dragResizing"    # Z
    .param p2, "dragResizeMode"    # I

    .line 3106
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mDragResizing:Z

    if-eq v0, p1, :cond_2

    .line 3108
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/wm/DragResizeMode;->isModeAllowedForStack(Lcom/android/server/wm/ActivityStack;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3109
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Drag resize mode not allow for stack stackId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3110
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

    .line 3112
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mDragResizing:Z

    .line 3113
    iput p2, p0, Lcom/android/server/wm/Task;->mDragResizeMode:I

    .line 3114
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->resetDragResizingChangeReported()V

    .line 3116
    :cond_2
    return-void
.end method

.method setForceHidden(IZ)Z
    .locals 3
    .param p1, "flags"    # I
    .param p2, "set"    # Z

    .line 4677
    iget v0, p0, Lcom/android/server/wm/Task;->mForceHiddenFlags:I

    .line 4678
    .local v0, "newFlags":I
    if-eqz p2, :cond_0

    .line 4679
    or-int/2addr v0, p1

    goto :goto_0

    .line 4681
    :cond_0
    not-int v1, p1

    and-int/2addr v0, v1

    .line 4683
    :goto_0
    iget v1, p0, Lcom/android/server/wm/Task;->mForceHiddenFlags:I

    if-ne v1, v0, :cond_1

    .line 4684
    const/4 v1, 0x0

    return v1

    .line 4686
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isForceHidden()Z

    move-result v1

    .line 4687
    .local v1, "wasHidden":Z
    iput v0, p0, Lcom/android/server/wm/Task;->mForceHiddenFlags:I

    .line 4688
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFocusableAndVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4692
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/server/wm/TaskDisplayArea;->resetPreferredTopFocusableStackIfBelow(Lcom/android/server/wm/Task;)V

    .line 4694
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method setForceShowForAllUsers(Z)V
    .locals 0
    .param p1, "forceShowForAllUsers"    # Z

    .line 3191
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mForceShowForAllUsers:Z

    .line 3192
    return-void
.end method

.method setHasBeenVisible(Z)V
    .locals 3
    .param p1, "hasBeenVisible"    # Z

    .line 4432
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mHasBeenVisible:Z

    .line 4433
    .local v0, "prevHasBeenVisible":Z
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mHasBeenVisible:Z

    .line 4434
    if-eqz p1, :cond_1

    .line 4439
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 4440
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 4441
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->commitPendingTransaction()V

    .line 4444
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/Task;->sendTaskAppeared()V

    .line 4445
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4446
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->setHasBeenVisible(Z)V

    .line 4449
    :cond_1
    return-void
.end method

.method setInitialSurfaceControlProperties(Landroid/view/SurfaceControl$Builder;)V
    .locals 3
    .param p1, "b"    # Landroid/view/SurfaceControl$Builder;

    .line 3301
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->setEffectLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    .line 3302
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->setInitialSurfaceControlProperties(Landroid/view/SurfaceControl$Builder;)V

    .line 3303
    return-void
.end method

.method setIntent(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 953
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 954
    return-void
.end method

.method setIntent(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "info"    # Landroid/content/pm/ActivityInfo;

    .line 964
    iget v0, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    iput v0, p0, Lcom/android/server/wm/Task;->mCallingUid:I

    .line 965
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    .line 966
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    .line 967
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

    .line 968
    invoke-direct {p0, p1}, Lcom/android/server/wm/Task;->setLockTaskAuth(Lcom/android/server/wm/ActivityRecord;)V

    .line 970
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 971
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    if-eqz v0, :cond_2

    .line 972
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 973
    .local v1, "t":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_2

    .line 974
    invoke-virtual {v1, p1}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 977
    .end local v1    # "t":Lcom/android/server/wm/Task;
    :cond_2
    return-void
.end method

.method setLastNonFullscreenBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 1898
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 1899
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    goto :goto_0

    .line 1901
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1903
    :goto_0
    return-void
.end method

.method setLockTaskAuth()V
    .locals 1

    .line 1653
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/Task;->setLockTaskAuth(Lcom/android/server/wm/ActivityRecord;)V

    .line 1654
    return-void
.end method

.method setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 4638
    invoke-direct {p0, p1, p0}, Lcom/android/server/wm/Task;->setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/Task;)V

    .line 4639
    sget-object v0, Lcom/android/server/wm/-$$Lambda$6CGpg-bvz7DUll5JEZwd1mT8fPQ;->INSTANCE:Lcom/android/server/wm/-$$Lambda$6CGpg-bvz7DUll5JEZwd1mT8fPQ;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/Task;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 4640
    return-void
.end method

.method setMinDimensions(Landroid/content/pm/ActivityInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .line 1075
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz v0, :cond_0

    .line 1076
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    iput v0, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    .line 1077
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    iput v0, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    goto :goto_0

    .line 1079
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    .line 1080
    iput v0, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    .line 1082
    :goto_0
    return-void
.end method

.method setNextAffiliate(Lcom/android/server/wm/Task;)V
    .locals 1
    .param p1, "nextAffiliate"    # Lcom/android/server/wm/Task;

    .line 1114
    iput-object p1, p0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    .line 1115
    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    :goto_0
    iput v0, p0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    .line 1116
    return-void
.end method

.method setPrevAffiliate(Lcom/android/server/wm/Task;)V
    .locals 1
    .param p1, "prevAffiliate"    # Lcom/android/server/wm/Task;

    .line 1109
    iput-object p1, p0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    .line 1110
    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    :goto_0
    iput v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    .line 1111
    return-void
.end method

.method setResizeMode(I)V
    .locals 3
    .param p1, "resizeMode"    # I

    .line 683
    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    if-ne v0, p1, :cond_0

    .line 684
    return-void

    .line 686
    :cond_0
    iput p1, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 689
    iget-object v0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-static {p1, v0}, Lcom/android/server/wm/OpQuickReplyInjector;->shouldForceResizeTask(ILandroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 690
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 693
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 694
    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    .line 695
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateTaskDescription()V

    .line 696
    return-void
.end method

.method setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 1241
    iget-object v0, p0, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, p1, :cond_0

    .line 1242
    return-void

    .line 1245
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

    .line 1248
    :cond_1
    iput-object p1, p0, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1249
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->updateTopResumedActivityIfNeeded()V

    .line 1250
    return-void
.end method

.method setRootProcess(Lcom/android/server/wm/WindowProcessController;)V
    .locals 2
    .param p1, "proc"    # Lcom/android/server/wm/WindowProcessController;

    .line 2630
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->clearRootProcess()V

    .line 2631
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 2632
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 2633
    iput-object p1, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    .line 2634
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowProcessController;->addRecentTask(Lcom/android/server/wm/Task;)V

    .line 2636
    :cond_0
    return-void
.end method

.method setSurfaceControl(Landroid/view/SurfaceControl;)V
    .locals 0
    .param p1, "sc"    # Landroid/view/SurfaceControl;

    .line 4552
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->setSurfaceControl(Landroid/view/SurfaceControl;)V

    .line 4555
    invoke-direct {p0}, Lcom/android/server/wm/Task;->sendTaskAppeared()V

    .line 4556
    return-void
.end method

.method setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .locals 0
    .param p1, "taskDescription"    # Landroid/app/ActivityManager$TaskDescription;

    .line 3428
    iput-object p1, p0, Lcom/android/server/wm/Task;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 3429
    return-void
.end method

.method setTaskOrganizer(Landroid/window/ITaskOrganizer;)Z
    .locals 3
    .param p1, "organizer"    # Landroid/window/ITaskOrganizer;

    .line 4490
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    .line 4491
    return v1

    .line 4494
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 4497
    .local v0, "previousOrganizer":Landroid/window/ITaskOrganizer;
    iput-object p1, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 4499
    invoke-direct {p0, v0}, Lcom/android/server/wm/Task;->sendTaskVanished(Landroid/window/ITaskOrganizer;)V

    .line 4501
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-eqz v2, :cond_1

    .line 4502
    invoke-direct {p0}, Lcom/android/server/wm/Task;->sendTaskAppeared()V

    goto :goto_0

    .line 4505
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/wm/Task;->mTaskAppearedSent:Z

    .line 4506
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/wm/Task;->mLastTaskOrganizerWindowingMode:I

    .line 4507
    const/4 v2, 0x2

    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/Task;->setForceHidden(IZ)Z

    .line 4508
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v1, :cond_2

    .line 4509
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->removeImmediately()V

    .line 4513
    :cond_2
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method setTaskToAffiliateWith(Lcom/android/server/wm/Task;)V
    .locals 4
    .param p1, "taskToAffiliateWith"    # Lcom/android/server/wm/Task;

    .line 1291
    invoke-direct {p0}, Lcom/android/server/wm/Task;->closeRecentsChain()V

    .line 1292
    iget v0, p1, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    iput v0, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    .line 1293
    iget v0, p1, Lcom/android/server/wm/Task;->mAffiliatedTaskColor:I

    iput v0, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskColor:I

    .line 1295
    :goto_0
    iget-object v0, p1, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1296
    iget-object v0, p1, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    .line 1297
    .local v0, "nextRecents":Lcom/android/server/wm/Task;
    iget v2, v0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    iget v3, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    if-eq v2, v3, :cond_1

    .line 1298
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

    .line 1300
    iget-object v2, v0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    if-ne v2, p1, :cond_0

    .line 1301
    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setPrevAffiliate(Lcom/android/server/wm/Task;)V

    .line 1303
    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    .line 1304
    goto :goto_1

    .line 1306
    :cond_1
    move-object p1, v0

    .line 1307
    .end local v0    # "nextRecents":Lcom/android/server/wm/Task;
    goto :goto_0

    .line 1308
    :cond_2
    :goto_1
    invoke-virtual {p1, p0}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    .line 1309
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setPrevAffiliate(Lcom/android/server/wm/Task;)V

    .line 1310
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    .line 1311
    return-void
.end method

.method shouldAnimate()Z
    .locals 3

    .line 3285
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3286
    return v1

    .line 3291
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    .line 3292
    .local v0, "controller":Lcom/android/server/wm/RecentsAnimationController;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/android/server/wm/RecentsAnimationController;->isAnimatingTask(Lcom/android/server/wm/Task;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3293
    invoke-virtual {v0}, Lcom/android/server/wm/RecentsAnimationController;->shouldDeferCancelUntilNextTransition()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3294
    return v1

    .line 3296
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;

    .line 3728
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

    .line 2869
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2871
    return v1

    .line 2873
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

    .line 3179
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 3180
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3181
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

    .line 3186
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mForceShowForAllUsers:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 3187
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

    .line 3186
    :goto_1
    return v0
.end method

.method public supportsSplitScreenWindowingMode()Z
    .locals 2

    .line 1689
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1690
    .local v0, "topTask":Lcom/android/server/wm/Task;
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->supportsSplitScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 1691
    invoke-direct {v0}, Lcom/android/server/wm/Task;->supportsSplitScreenWindowingModeInner()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1690
    :goto_0
    return v1
.end method

.method taskAppearedReady()Z
    .locals 3

    .line 4465
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4466
    return v1

    .line 4469
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 4470
    return v2

    .line 4473
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

    .line 3987
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3988
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/wm/Task;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3989
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3990
    const-string v1, " U="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3991
    iget v1, p0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3992
    const-string v1, " StackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3993
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3994
    const-string v1, " sz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3995
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3996
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3997
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3999
    :cond_0
    const-string v1, "Task{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4000
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4001
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4002
    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4003
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

    .line 4004
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

    .line 4005
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

    .line 4006
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

    .line 4007
    iget-object v1, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 4008
    const-string v1, " A="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4009
    iget-object v1, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4010
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4011
    const-string v1, " I="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4012
    iget-object v1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4013
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 4014
    const-string v1, " aI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4015
    iget-object v1, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4017
    :cond_3
    const-string v1, " ??"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4019
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/Task;->stringName:Ljava/lang/String;

    .line 4020
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method topActivityWithStartingWindow()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    .line 1363
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1364
    const/4 v0, 0x0

    return-object v0

    .line 1366
    :cond_0
    sget-object v0, Lcom/android/server/wm/-$$Lambda$Task$NjqppbKxK56id-VgjMiQP_fUgAA;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$NjqppbKxK56id-VgjMiQP_fUgAA;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method topRunningActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    .line 3333
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method topRunningActivity(Landroid/os/IBinder;I)Lcom/android/server/wm/ActivityRecord;
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "taskId"    # I

    .line 3367
    sget-object v0, Lcom/android/server/wm/-$$Lambda$Task$wc9vA2EWxCoWO_MzNTKvEB8eLgw;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$wc9vA2EWxCoWO_MzNTKvEB8eLgw;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 3368
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3367
    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Lcom/android/internal/util/function/TriPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v0

    .line 3369
    .local v0, "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 3370
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 3371
    return-object v1
.end method

.method topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;
    .locals 1
    .param p1, "focusableOnly"    # Z

    .line 3338
    if-eqz p1, :cond_0

    .line 3339
    sget-object v0, Lcom/android/server/wm/-$$Lambda$Task$9j7BnRlFAodU0lX24yspPfgQBcI;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$9j7BnRlFAodU0lX24yspPfgQBcI;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0

    .line 3341
    :cond_0
    sget-object v0, Lcom/android/server/wm/-$$Lambda$DaFwIyqZTBVKE2y-TN2iE7CD-r8;->INSTANCE:Lcom/android/server/wm/-$$Lambda$DaFwIyqZTBVKE2y-TN2iE7CD-r8;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    .line 1345
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1346
    const/4 v0, 0x0

    return-object v0

    .line 1348
    :cond_0
    sget-object v0, Lcom/android/server/wm/-$$Lambda$DaFwIyqZTBVKE2y-TN2iE7CD-r8;->INSTANCE:Lcom/android/server/wm/-$$Lambda$DaFwIyqZTBVKE2y-TN2iE7CD-r8;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .locals 2
    .param p1, "notTop"    # Lcom/android/server/wm/ActivityRecord;

    .line 3346
    sget-object v0, Lcom/android/server/wm/-$$Lambda$Task$vJaPYJ0TW6MLVfOETMoxr75oHkk;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$vJaPYJ0TW6MLVfOETMoxr75oHkk;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 3347
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    .line 3346
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v0

    .line 3348
    .local v0, "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 3349
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 3350
    return-object v1
.end method

.method touchActiveTime()V
    .locals 2

    .line 944
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/Task;->lastActiveTime:J

    .line 945
    return-void
.end method

.method updateEffectiveIntent()V
    .locals 1

    .line 1835
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getRootActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1836
    .local v0, "root":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_0

    .line 1837
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 1839
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateTaskDescription()V

    .line 1841
    :cond_0
    return-void
.end method

.method updateOverrideConfigurationForStack(Lcom/android/server/wm/ActivityStack;)V
    .locals 4
    .param p1, "inStack"    # Lcom/android/server/wm/ActivityStack;

    .line 2587
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2589
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    .line 2590
    return-void

    .line 2593
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2594
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2598
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->matchParentBounds()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2599
    return-void

    .line 2601
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_2

    .line 2602
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    goto :goto_0

    .line 2604
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/server/wm/LaunchParamsController;->layoutTask(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;)Z

    goto :goto_0

    .line 2595
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

    .line 2607
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 2609
    :goto_0
    return-void
.end method

.method updateOverrideConfigurationFromLaunchBounds()Landroid/graphics/Rect;
    .locals 3

    .line 2573
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2574
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

    .line 2575
    .local v1, "bounds":Landroid/graphics/Rect;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 2576
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2579
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2581
    :cond_1
    return-object v1
.end method

.method updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V
    .locals 5
    .param p1, "transaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 2035
    iget-object v0, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2040
    :cond_0
    const/4 v0, 0x0

    .line 2041
    .local v0, "width":I
    const/4 v1, 0x0

    .line 2042
    .local v1, "height":I
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2043
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 2044
    .local v2, "taskBounds":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 2045
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 2047
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskOutset()I

    move-result v3

    .line 2048
    .local v3, "outset":I
    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v0, v4

    .line 2049
    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v1, v4

    .line 2051
    .end local v2    # "taskBounds":Landroid/graphics/Rect;
    .end local v3    # "outset":I
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/Task;->mLastSurfaceSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/Task;->mLastSurfaceSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-ne v1, v2, :cond_2

    .line 2052
    return-void

    .line 2054
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 2055
    iget-object v2, p0, Lcom/android/server/wm/Task;->mLastSurfaceSize:Landroid/graphics/Point;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 2056
    return-void

    .line 2036
    .end local v0    # "width":I
    .end local v1    # "height":I
    :cond_3
    :goto_0
    return-void
.end method

.method updateTaskDescription()V
    .locals 6

    .line 1763
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getRootActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1764
    .local v0, "root":Lcom/android/server/wm/ActivityRecord;
    if-nez v0, :cond_0

    return-void

    .line 1766
    :cond_0
    new-instance v1, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v1}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    .line 1767
    .local v1, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    sget-object v2, Lcom/android/server/wm/-$$Lambda$Task$TUGPkEKamN60PF6hJQxUwDBjU-M;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$TUGPkEKamN60PF6hJQxUwDBjU-M;

    const-class v3, Lcom/android/server/wm/ActivityRecord;

    .line 1769
    invoke-static {v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v3

    .line 1767
    invoke-static {v2, v3, v0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainFunction(Lcom/android/internal/util/function/TriFunction;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledFunction;

    move-result-object v2

    .line 1770
    .local v2, "f":Lcom/android/internal/util/function/pooled/PooledFunction;
    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Function;)Z

    .line 1771
    invoke-interface {v2}, Lcom/android/internal/util/function/pooled/PooledFunction;->recycle()V

    .line 1772
    iget v3, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager$TaskDescription;->setResizeMode(I)V

    .line 1773
    iget v3, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager$TaskDescription;->setMinWidth(I)V

    .line 1774
    iget v3, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager$TaskDescription;->setMinHeight(I)V

    .line 1775
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    .line 1777
    iget v3, p0, Lcom/android/server/wm/Task;->mTaskId:I

    iget v4, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    if-ne v3, v4, :cond_1

    .line 1778
    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskColor:I

    .line 1780
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v3

    .line 1781
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    .line 1780
    invoke-virtual {v3, v4}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskDescriptionChanged(Landroid/app/TaskInfo;)V

    .line 1783
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    .line 1784
    .local v3, "parent":Lcom/android/server/wm/WindowContainer;
    if-eqz v3, :cond_2

    .line 1785
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 1786
    .local v4, "t":Lcom/android/server/wm/Task;
    if-eqz v4, :cond_2

    .line 1787
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->updateTaskDescription()V

    .line 1791
    .end local v4    # "t":Lcom/android/server/wm/Task;
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1792
    iget-object v4, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    const/4 v5, 0x0

    invoke-virtual {v4, p0, v5}, Lcom/android/server/wm/TaskOrganizerController;->dispatchTaskInfoChanged(Lcom/android/server/wm/Task;Z)V

    .line 1794
    :cond_3
    return-void
.end method

.method updateTaskMovement(Z)V
    .locals 4
    .param p1, "toFront"    # Z

    .line 1253
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->isPersistable:Z

    if-eqz v0, :cond_0

    .line 1254
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/Task;->mLastTimeMoved:J

    .line 1258
    if-nez p1, :cond_0

    .line 1259
    const-wide/16 v2, -0x1

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/Task;->mLastTimeMoved:J

    .line 1262
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->invalidateTaskLayers()V

    .line 1263
    return-void
.end method

.method updateTaskOrganizerState(Z)Z
    .locals 3
    .param p1, "forceUpdate"    # Z

    .line 4526
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4527
    return v1

    .line 4530
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    .line 4531
    .local v0, "windowingMode":I
    if-nez p1, :cond_1

    iget v2, p0, Lcom/android/server/wm/Task;->mLastTaskOrganizerWindowingMode:I

    if-ne v0, v2, :cond_1

    .line 4536
    return v1

    .line 4543
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 4544
    invoke-virtual {v1, v0}, Lcom/android/server/wm/TaskOrganizerController;->getTaskOrganizer(I)Landroid/window/ITaskOrganizer;

    move-result-object v1

    .line 4545
    .local v1, "org":Landroid/window/ITaskOrganizer;
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->setTaskOrganizer(Landroid/window/ITaskOrganizer;)Z

    move-result v2

    .line 4546
    .local v2, "result":Z
    iput v0, p0, Lcom/android/server/wm/Task;->mLastTaskOrganizerWindowingMode:I

    .line 4547
    return v2
.end method

.method writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 2111
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 2112
    .local v0, "token":J
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2113
    iget v2, p0, Lcom/android/server/wm/Task;->mUserId:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2114
    iget-object v2, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2115
    iget-object v2, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "Task"

    .line 2114
    :goto_0
    const-wide v3, 0x10900000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2116
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2117
    return-void
.end method
