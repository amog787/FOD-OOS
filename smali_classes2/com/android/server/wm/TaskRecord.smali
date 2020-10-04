.class Lcom/android/server/wm/TaskRecord;
.super Lcom/android/server/wm/ConfigurationContainer;
.source "TaskRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskRecord$TaskRecordFactory;,
        Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;,
        Lcom/android/server/wm/TaskRecord$ReparentMoveStackMode;
    }
.end annotation


# static fields
.field private static final ATTR_AFFINITY:Ljava/lang/String; = "affinity"

.field private static final ATTR_ASKEDCOMPATMODE:Ljava/lang/String; = "asked_compat_mode"

.field private static final ATTR_AUTOREMOVERECENTS:Ljava/lang/String; = "auto_remove_recents"

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

.field private static final INVALID_MIN_SIZE:I = -0x1

.field static final LOCK_TASK_AUTH_DONT_LOCK:I = 0x0

.field static final LOCK_TASK_AUTH_LAUNCHABLE:I = 0x2

.field static final LOCK_TASK_AUTH_LAUNCHABLE_PRIV:I = 0x4

.field static final LOCK_TASK_AUTH_PINNABLE:I = 0x1

.field static final LOCK_TASK_AUTH_WHITELISTED:I = 0x3

.field private static final PERSIST_TASK_VERSION:I = 0x1

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

.field private static sTaskRecordFactory:Lcom/android/server/wm/TaskRecord$TaskRecordFactory;


# instance fields
.field affinity:Ljava/lang/String;

.field affinityIntent:Landroid/content/Intent;

.field askedCompatMode:Z

.field autoRemoveRecents:Z

.field effectiveUid:I

.field hasBeenVisible:Z

.field inRecents:Z

.field intent:Landroid/content/Intent;

.field isAvailable:Z

.field isPersistable:Z

.field lastActiveTime:J

.field lastDescription:Ljava/lang/CharSequence;

.field lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

.field final mActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mAffiliatedTaskColor:I

.field mAffiliatedTaskId:I

.field public mAppSceneMode:I

.field mCallingPackage:Ljava/lang/String;

.field mCallingUid:I

.field final mDisplayedBounds:Landroid/graphics/Rect;

.field mLastNonFullscreenBounds:Landroid/graphics/Rect;

.field mLastTimeMoved:J

.field mLayerRank:I

.field mLockTaskAuth:I

.field mLockTaskUid:I

.field mMinHeight:I

.field mMinWidth:I

.field private mNeverRelinquishIdentity:Z

.field mNextAffiliate:Lcom/android/server/wm/TaskRecord;

.field mNextAffiliateTaskId:I

.field mPrevAffiliate:Lcom/android/server/wm/TaskRecord;

.field mPrevAffiliateTaskId:I

.field mResizeMode:I

.field final mReuseActivitiesReport:Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;

.field private mReuseTask:Z

.field private mRootProcess:Lcom/android/server/wm/WindowProcessController;

.field final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private mStack:Lcom/android/server/wm/ActivityStack;

.field private mSupportsPictureInPicture:Z

.field mTask:Lcom/android/server/wm/Task;

.field private final mTmpBounds:Landroid/graphics/Rect;

.field private mTmpConfig:Landroid/content/res/Configuration;

.field private final mTmpInsets:Landroid/graphics/Rect;

.field private final mTmpNonDecorBounds:Landroid/graphics/Rect;

.field private final mTmpStableBounds:Landroid/graphics/Rect;

.field mUserSetupComplete:Z

.field maxRecents:I

.field numFullscreen:I

.field origActivity:Landroid/content/ComponentName;

.field realActivity:Landroid/content/ComponentName;

.field realActivitySuspended:Z

.field rootAffinity:Ljava/lang/String;

.field rootWasReset:Z

.field stringName:Ljava/lang/String;

.field final taskId:I

.field userId:I

.field final voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field final voiceSession:Landroid/service/voice/IVoiceInteractionSession;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;Ljava/util/ArrayList;JZLandroid/app/ActivityManager$TaskDescription;IIIIILjava/lang/String;IZZZII)V
    .locals 16
    .param p1, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;
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
    .param p16, "lastTimeMoved"    # J
    .param p18, "neverRelinquishIdentity"    # Z
    .param p19, "_lastTaskDescription"    # Landroid/app/ActivityManager$TaskDescription;
    .param p20, "taskAffiliation"    # I
    .param p21, "prevTaskId"    # I
    .param p22, "nextTaskId"    # I
    .param p23, "taskAffiliationColor"    # I
    .param p24, "callingUid"    # I
    .param p25, "callingPackage"    # Ljava/lang/String;
    .param p26, "resizeMode"    # I
    .param p27, "supportsPictureInPicture"    # Z
    .param p28, "_realActivitySuspended"    # Z
    .param p29, "userSetupComplete"    # Z
    .param p30, "minWidth"    # I
    .param p31, "minHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/ActivityTaskManagerService;",
            "I",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            "ZZZII",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;JZ",
            "Landroid/app/ActivityManager$TaskDescription;",
            "IIIII",
            "Ljava/lang/String;",
            "IZZZII)V"
        }
    .end annotation

    .line 412
    .local p15, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;-><init>()V

    .line 259
    const/4 v2, 0x1

    iput v2, v0, Lcom/android/server/wm/TaskRecord;->mLockTaskAuth:I

    .line 261
    const/4 v3, -0x1

    iput v3, v0, Lcom/android/server/wm/TaskRecord;->mLockTaskUid:I

    .line 265
    new-instance v4, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v4}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    iput-object v4, v0, Lcom/android/server/wm/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 279
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/server/wm/TaskRecord;->isPersistable:Z

    .line 285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/server/wm/TaskRecord;->mLastTimeMoved:J

    .line 288
    iput-boolean v2, v0, Lcom/android/server/wm/TaskRecord;->mNeverRelinquishIdentity:Z

    .line 292
    iput-boolean v4, v0, Lcom/android/server/wm/TaskRecord;->mReuseTask:Z

    .line 299
    iput v3, v0, Lcom/android/server/wm/TaskRecord;->mPrevAffiliateTaskId:I

    .line 301
    iput v3, v0, Lcom/android/server/wm/TaskRecord;->mNextAffiliateTaskId:I

    .line 309
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Lcom/android/server/wm/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 310
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Lcom/android/server/wm/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    .line 311
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Lcom/android/server/wm/TaskRecord;->mTmpBounds:Landroid/graphics/Rect;

    .line 312
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Lcom/android/server/wm/TaskRecord;->mTmpInsets:Landroid/graphics/Rect;

    .line 317
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/server/wm/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 325
    iput v3, v0, Lcom/android/server/wm/TaskRecord;->mLayerRank:I

    .line 330
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v0, Lcom/android/server/wm/TaskRecord;->mDisplayedBounds:Landroid/graphics/Rect;

    .line 333
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    iput-object v3, v0, Lcom/android/server/wm/TaskRecord;->mTmpConfig:Landroid/content/res/Configuration;

    .line 339
    new-instance v3, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;

    invoke-direct {v3}, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;-><init>()V

    iput-object v3, v0, Lcom/android/server/wm/TaskRecord;->mReuseActivitiesReport:Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;

    .line 413
    move-object/from16 v3, p1

    iput-object v3, v0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 414
    iput v1, v0, Lcom/android/server/wm/TaskRecord;->taskId:I

    .line 415
    move-object/from16 v5, p3

    iput-object v5, v0, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    .line 416
    move-object/from16 v6, p4

    iput-object v6, v0, Lcom/android/server/wm/TaskRecord;->affinityIntent:Landroid/content/Intent;

    .line 417
    move-object/from16 v7, p5

    iput-object v7, v0, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    .line 418
    move-object/from16 v8, p6

    iput-object v8, v0, Lcom/android/server/wm/TaskRecord;->rootAffinity:Ljava/lang/String;

    .line 419
    iput-object v4, v0, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 420
    iput-object v4, v0, Lcom/android/server/wm/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 421
    move-object/from16 v4, p7

    iput-object v4, v0, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 422
    move/from16 v9, p28

    iput-boolean v9, v0, Lcom/android/server/wm/TaskRecord;->realActivitySuspended:Z

    .line 423
    move-object/from16 v10, p8

    iput-object v10, v0, Lcom/android/server/wm/TaskRecord;->origActivity:Landroid/content/ComponentName;

    .line 424
    move/from16 v11, p9

    iput-boolean v11, v0, Lcom/android/server/wm/TaskRecord;->rootWasReset:Z

    .line 425
    iput-boolean v2, v0, Lcom/android/server/wm/TaskRecord;->isAvailable:Z

    .line 426
    move/from16 v2, p10

    iput-boolean v2, v0, Lcom/android/server/wm/TaskRecord;->autoRemoveRecents:Z

    .line 427
    move/from16 v12, p11

    iput-boolean v12, v0, Lcom/android/server/wm/TaskRecord;->askedCompatMode:Z

    .line 428
    move/from16 v13, p12

    iput v13, v0, Lcom/android/server/wm/TaskRecord;->userId:I

    .line 429
    move/from16 v14, p29

    iput-boolean v14, v0, Lcom/android/server/wm/TaskRecord;->mUserSetupComplete:Z

    .line 430
    move/from16 v15, p13

    iput v15, v0, Lcom/android/server/wm/TaskRecord;->effectiveUid:I

    .line 431
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/wm/TaskRecord;->lastActiveTime:J

    .line 432
    move-object/from16 v2, p14

    iput-object v2, v0, Lcom/android/server/wm/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    .line 433
    move-object/from16 v3, p15

    iput-object v3, v0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 434
    move-wide/from16 v2, p16

    iput-wide v2, v0, Lcom/android/server/wm/TaskRecord;->mLastTimeMoved:J

    .line 435
    move/from16 v2, p18

    iput-boolean v2, v0, Lcom/android/server/wm/TaskRecord;->mNeverRelinquishIdentity:Z

    .line 436
    move-object/from16 v3, p19

    iput-object v3, v0, Lcom/android/server/wm/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 437
    move/from16 v2, p20

    iput v2, v0, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    .line 438
    move/from16 v2, p23

    iput v2, v0, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskColor:I

    .line 439
    move/from16 v2, p21

    iput v2, v0, Lcom/android/server/wm/TaskRecord;->mPrevAffiliateTaskId:I

    .line 440
    move/from16 v2, p22

    iput v2, v0, Lcom/android/server/wm/TaskRecord;->mNextAffiliateTaskId:I

    .line 441
    move/from16 v2, p24

    iput v2, v0, Lcom/android/server/wm/TaskRecord;->mCallingUid:I

    .line 442
    move-object/from16 v2, p25

    iput-object v2, v0, Lcom/android/server/wm/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 443
    move/from16 v2, p26

    iput v2, v0, Lcom/android/server/wm/TaskRecord;->mResizeMode:I

    .line 446
    iget v2, v0, Lcom/android/server/wm/TaskRecord;->mResizeMode:I

    iget-object v3, v0, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-static {v2, v3}, Lcom/android/server/wm/OpQuickReplyInjector;->shouldForceResizeTask(ILandroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 447
    const/4 v2, 0x2

    iput v2, v0, Lcom/android/server/wm/TaskRecord;->mResizeMode:I

    .line 450
    :cond_0
    move/from16 v2, p27

    iput-boolean v2, v0, Lcom/android/server/wm/TaskRecord;->mSupportsPictureInPicture:Z

    .line 451
    move/from16 v3, p30

    iput v3, v0, Lcom/android/server/wm/TaskRecord;->mMinWidth:I

    .line 452
    move/from16 v2, p31

    iput v2, v0, Lcom/android/server/wm/TaskRecord;->mMinHeight:I

    .line 453
    iget-object v2, v0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskCreated(ILandroid/content/ComponentName;)V

    .line 454
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;)V
    .locals 5
    .param p1, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "_taskId"    # I
    .param p3, "info"    # Landroid/content/pm/ActivityInfo;
    .param p4, "_intent"    # Landroid/content/Intent;
    .param p5, "_taskDescription"    # Landroid/app/ActivityManager$TaskDescription;

    .line 375
    invoke-direct {p0}, Lcom/android/server/wm/ConfigurationContainer;-><init>()V

    .line 259
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/TaskRecord;->mLockTaskAuth:I

    .line 261
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/TaskRecord;->mLockTaskUid:I

    .line 265
    new-instance v2, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v2}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 279
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/TaskRecord;->isPersistable:Z

    .line 285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/wm/TaskRecord;->mLastTimeMoved:J

    .line 288
    iput-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->mNeverRelinquishIdentity:Z

    .line 292
    iput-boolean v2, p0, Lcom/android/server/wm/TaskRecord;->mReuseTask:Z

    .line 299
    iput v1, p0, Lcom/android/server/wm/TaskRecord;->mPrevAffiliateTaskId:I

    .line 301
    iput v1, p0, Lcom/android/server/wm/TaskRecord;->mNextAffiliateTaskId:I

    .line 309
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 310
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    .line 311
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/TaskRecord;->mTmpBounds:Landroid/graphics/Rect;

    .line 312
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/TaskRecord;->mTmpInsets:Landroid/graphics/Rect;

    .line 317
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 325
    iput v1, p0, Lcom/android/server/wm/TaskRecord;->mLayerRank:I

    .line 330
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskRecord;->mDisplayedBounds:Landroid/graphics/Rect;

    .line 333
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskRecord;->mTmpConfig:Landroid/content/res/Configuration;

    .line 339
    new-instance v1, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;

    invoke-direct {v1}, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskRecord;->mReuseActivitiesReport:Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;

    .line 376
    iput-object p1, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 377
    iget-object v1, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/TaskRecord;->userId:I

    .line 378
    iput p2, p0, Lcom/android/server/wm/TaskRecord;->taskId:I

    .line 379
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/wm/TaskRecord;->lastActiveTime:J

    .line 380
    iput p2, p0, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    .line 381
    iput-object v2, p0, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 382
    iput-object v2, p0, Lcom/android/server/wm/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 383
    iput-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->isAvailable:Z

    .line 384
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 385
    iget-object v1, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, p0, Lcom/android/server/wm/TaskRecord;->mCallingUid:I

    .line 386
    iget-object v1, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/wm/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 387
    invoke-direct {p0, p4, p3}, Lcom/android/server/wm/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 388
    invoke-direct {p0, p3}, Lcom/android/server/wm/TaskRecord;->setMinDimensions(Landroid/content/pm/ActivityInfo;)V

    .line 390
    iput-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->isPersistable:Z

    .line 392
    iget v1, p3, Landroid/content/pm/ActivityInfo;->maxRecents:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 393
    invoke-static {}, Landroid/app/ActivityTaskManager;->getMaxAppRecentsLimitStatic()I

    move-result v1

    .line 392
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/TaskRecord;->maxRecents:I

    .line 395
    iput-object p5, p0, Lcom/android/server/wm/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 396
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->touchActiveTime()V

    .line 397
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, p2, v1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskCreated(ILandroid/content/ComponentName;)V

    .line 398
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V
    .locals 5
    .param p1, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "_taskId"    # I
    .param p3, "info"    # Landroid/content/pm/ActivityInfo;
    .param p4, "_intent"    # Landroid/content/Intent;
    .param p5, "_voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p6, "_voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;

    .line 351
    invoke-direct {p0}, Lcom/android/server/wm/ConfigurationContainer;-><init>()V

    .line 259
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/TaskRecord;->mLockTaskAuth:I

    .line 261
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/TaskRecord;->mLockTaskUid:I

    .line 265
    new-instance v2, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v2}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 279
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/TaskRecord;->isPersistable:Z

    .line 285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/wm/TaskRecord;->mLastTimeMoved:J

    .line 288
    iput-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->mNeverRelinquishIdentity:Z

    .line 292
    iput-boolean v2, p0, Lcom/android/server/wm/TaskRecord;->mReuseTask:Z

    .line 299
    iput v1, p0, Lcom/android/server/wm/TaskRecord;->mPrevAffiliateTaskId:I

    .line 301
    iput v1, p0, Lcom/android/server/wm/TaskRecord;->mNextAffiliateTaskId:I

    .line 309
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 310
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    .line 311
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/TaskRecord;->mTmpBounds:Landroid/graphics/Rect;

    .line 312
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/TaskRecord;->mTmpInsets:Landroid/graphics/Rect;

    .line 317
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 325
    iput v1, p0, Lcom/android/server/wm/TaskRecord;->mLayerRank:I

    .line 330
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskRecord;->mDisplayedBounds:Landroid/graphics/Rect;

    .line 333
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskRecord;->mTmpConfig:Landroid/content/res/Configuration;

    .line 339
    new-instance v1, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;

    invoke-direct {v1}, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskRecord;->mReuseActivitiesReport:Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;

    .line 352
    iput-object p1, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 353
    iget-object v1, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/TaskRecord;->userId:I

    .line 354
    iput p2, p0, Lcom/android/server/wm/TaskRecord;->taskId:I

    .line 355
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wm/TaskRecord;->lastActiveTime:J

    .line 356
    iput p2, p0, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    .line 357
    iput-object p5, p0, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 358
    iput-object p6, p0, Lcom/android/server/wm/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 359
    iput-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->isAvailable:Z

    .line 360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 361
    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/android/server/wm/TaskRecord;->mCallingUid:I

    .line 362
    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 363
    invoke-direct {p0, p4, p3}, Lcom/android/server/wm/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 364
    invoke-direct {p0, p3}, Lcom/android/server/wm/TaskRecord;->setMinDimensions(Landroid/content/pm/ActivityInfo;)V

    .line 365
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->touchActiveTime()V

    .line 366
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, p2, v1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskCreated(ILandroid/content/ComponentName;)V

    .line 367
    return-void
.end method

.method private calculateInsetFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;)V
    .locals 7
    .param p1, "outNonDecorBounds"    # Landroid/graphics/Rect;
    .param p2, "outStableBounds"    # Landroid/graphics/Rect;
    .param p3, "bounds"    # Landroid/graphics/Rect;
    .param p4, "displayInfo"    # Landroid/view/DisplayInfo;

    .line 2088
    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2089
    invoke-virtual {p2, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2090
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2093
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    .line 2094
    .local v0, "policy":Lcom/android/server/wm/DisplayPolicy;
    if-nez v0, :cond_1

    .line 2095
    return-void

    .line 2097
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mTmpBounds:Landroid/graphics/Rect;

    iget v2, p4, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, p4, Landroid/view/DisplayInfo;->logicalHeight:I

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2099
    iget v2, p4, Landroid/view/DisplayInfo;->rotation:I

    iget v3, p4, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v4, p4, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v5, p4, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iget-object v6, p0, Lcom/android/server/wm/TaskRecord;->mTmpInsets:Landroid/graphics/Rect;

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 2101
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mTmpInsets:Landroid/graphics/Rect;

    invoke-static {p1, v1, v2}, Lcom/android/server/wm/TaskRecord;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2103
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mTmpInsets:Landroid/graphics/Rect;

    iget v2, p4, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayPolicy;->convertNonDecorInsetsToStableInsets(Landroid/graphics/Rect;I)V

    .line 2104
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mTmpInsets:Landroid/graphics/Rect;

    invoke-static {p2, v1, v2}, Lcom/android/server/wm/TaskRecord;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2105
    return-void

    .line 2091
    .end local v0    # "policy":Lcom/android/server/wm/DisplayPolicy;
    :cond_2
    :goto_0
    return-void
.end method

.method private canResizeToBounds(Landroid/graphics/Rect;)Z
    .locals 6
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 1666
    const/4 v0, 0x1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->inFreeformWindowingMode()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_5

    .line 1670
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

    .line 1671
    .local v1, "landscape":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 1672
    .local v2, "configBounds":Landroid/graphics/Rect;
    iget v4, p0, Lcom/android/server/wm/TaskRecord;->mResizeMode:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_5

    .line 1673
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1674
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

    .line 1673
    :goto_3
    return v0

    .line 1676
    :cond_5
    const/4 v5, 0x6

    if-ne v4, v5, :cond_6

    if-nez v1, :cond_7

    :cond_6
    iget v4, p0, Lcom/android/server/wm/TaskRecord;->mResizeMode:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_8

    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    move v0, v3

    :cond_8
    :goto_4
    return v0

    .line 1668
    .end local v1    # "landscape":Z
    .end local v2    # "configBounds":Landroid/graphics/Rect;
    :cond_9
    :goto_5
    return v0
.end method

.method private closeRecentsChain()V
    .locals 2

    .line 1104
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mPrevAffiliate:Lcom/android/server/wm/TaskRecord;

    if-eqz v0, :cond_0

    .line 1105
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mNextAffiliate:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskRecord;->setNextAffiliate(Lcom/android/server/wm/TaskRecord;)V

    .line 1107
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mNextAffiliate:Lcom/android/server/wm/TaskRecord;

    if-eqz v0, :cond_1

    .line 1108
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mPrevAffiliate:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskRecord;->setPrevAffiliate(Lcom/android/server/wm/TaskRecord;)V

    .line 1110
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskRecord;->setPrevAffiliate(Lcom/android/server/wm/TaskRecord;)V

    .line 1111
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskRecord;->setNextAffiliate(Lcom/android/server/wm/TaskRecord;)V

    .line 1112
    return-void
.end method

.method static create(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;)Lcom/android/server/wm/TaskRecord;
    .locals 6
    .param p0, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p1, "taskId"    # I
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "taskDescription"    # Landroid/app/ActivityManager$TaskDescription;

    .line 2776
    invoke-static {}, Lcom/android/server/wm/TaskRecord;->getTaskRecordFactory()Lcom/android/server/wm/TaskRecord$TaskRecordFactory;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/TaskRecord$TaskRecordFactory;->create(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;)Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    return-object v0
.end method

.method static create(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/wm/TaskRecord;
    .locals 7
    .param p0, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p1, "taskId"    # I
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p5, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;

    .line 2770
    invoke-static {}, Lcom/android/server/wm/TaskRecord;->getTaskRecordFactory()Lcom/android/server/wm/TaskRecord$TaskRecordFactory;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/TaskRecord$TaskRecordFactory;->create(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    return-object v0
.end method

.method private static fitWithinBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .locals 6
    .param p0, "bounds"    # Landroid/graphics/Rect;
    .param p1, "stackBounds"    # Landroid/graphics/Rect;
    .param p2, "overlapPxX"    # I
    .param p3, "overlapPxY"    # I

    .line 1988
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 1994
    :cond_0
    const/4 v0, 0x0

    .line 1996
    .local v0, "horizontalDiff":I
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1997
    .local v1, "overlapLR":I
    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    if-ge v2, v3, :cond_1

    .line 1998
    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    sub-int v0, v1, v2

    goto :goto_0

    .line 1999
    :cond_1
    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v1

    if-le v2, v3, :cond_2

    .line 2000
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    sub-int v2, v1, v2

    neg-int v0, v2

    .line 2002
    :cond_2
    :goto_0
    const/4 v2, 0x0

    .line 2003
    .local v2, "verticalDiff":I
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2004
    .local v3, "overlapTB":I
    iget v4, p0, Landroid/graphics/Rect;->bottom:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v3

    if-ge v4, v5, :cond_3

    .line 2005
    iget v4, p0, Landroid/graphics/Rect;->bottom:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    goto :goto_1

    .line 2006
    :cond_3
    iget v4, p0, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v3

    if-le v4, v5, :cond_4

    .line 2007
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v4, v3, v4

    neg-int v2, v4

    .line 2009
    :cond_4
    :goto_1
    invoke-virtual {p0, v0, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 2010
    return-void

    .line 1989
    .end local v0    # "horizontalDiff":I
    .end local v1    # "overlapLR":I
    .end local v2    # "verticalDiff":I
    .end local v3    # "overlapTB":I
    :cond_5
    :goto_2
    return-void
.end method

.method private getSmallestScreenWidthDpForDockedBounds(Landroid/graphics/Rect;)I
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 2112
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2113
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_0

    .line 2114
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DockedStackDividerController;->getSmallestWidthDpForBounds(Landroid/graphics/Rect;)I

    move-result v1

    return v1

    .line 2116
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method static getTaskRecordFactory()Lcom/android/server/wm/TaskRecord$TaskRecordFactory;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2757
    sget-object v0, Lcom/android/server/wm/TaskRecord;->sTaskRecordFactory:Lcom/android/server/wm/TaskRecord$TaskRecordFactory;

    if-nez v0, :cond_0

    .line 2758
    new-instance v0, Lcom/android/server/wm/TaskRecord$TaskRecordFactory;

    invoke-direct {v0}, Lcom/android/server/wm/TaskRecord$TaskRecordFactory;-><init>()V

    invoke-static {v0}, Lcom/android/server/wm/TaskRecord;->setTaskRecordFactory(Lcom/android/server/wm/TaskRecord$TaskRecordFactory;)V

    .line 2760
    :cond_0
    sget-object v0, Lcom/android/server/wm/TaskRecord;->sTaskRecordFactory:Lcom/android/server/wm/TaskRecord$TaskRecordFactory;

    return-object v0
.end method

.method static intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2
    .param p0, "inOutBounds"    # Landroid/graphics/Rect;
    .param p1, "intersectBounds"    # Landroid/graphics/Rect;
    .param p2, "intersectInsets"    # Landroid/graphics/Rect;

    .line 2058
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_0

    .line 2059
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Rect;->right:I

    .line 2060
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 2062
    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-gt v0, v1, :cond_1

    .line 2063
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    .line 2064
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 2066
    :cond_1
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-lt v0, v1, :cond_2

    .line 2067
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Rect;->left:I

    .line 2068
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 2070
    :cond_2
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-lt v0, v1, :cond_3

    .line 2071
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Rect;->top:I

    .line 2072
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 2074
    :cond_3
    return-void
.end method

.method private isResizeable(Z)Z
    .locals 1
    .param p1, "checkSupportsPip"    # Z

    .line 1628
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mResizeMode:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->mSupportsPictureInPicture:Z

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

.method private static replaceWindowsOnTaskMove(II)Z
    .locals 1
    .param p0, "sourceWindowingMode"    # I
    .param p1, "targetWindowingMode"    # I

    .line 872
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

.method static restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wm/ActivityStackSupervisor;)Lcom/android/server/wm/TaskRecord;
    .locals 1
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "stackSupervisor"    # Lcom/android/server/wm/ActivityStackSupervisor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2781
    invoke-static {}, Lcom/android/server/wm/TaskRecord;->getTaskRecordFactory()Lcom/android/server/wm/TaskRecord$TaskRecordFactory;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/TaskRecord$TaskRecordFactory;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wm/ActivityStackSupervisor;)Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    return-object v0
.end method

.method private setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V
    .locals 8
    .param p1, "_intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;

    .line 913
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 914
    iget v0, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->mNeverRelinquishIdentity:Z

    goto :goto_1

    .line 916
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->mNeverRelinquishIdentity:Z

    if-eqz v0, :cond_2

    .line 917
    return-void

    .line 920
    :cond_2
    :goto_1
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    .line 921
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v0, :cond_3

    .line 925
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/TaskRecord;->rootAffinity:Ljava/lang/String;

    .line 927
    :cond_3
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/android/server/wm/TaskRecord;->effectiveUid:I

    .line 928
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskRecord;->stringName:Ljava/lang/String;

    .line 930
    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    const-string v4, "Setting Intent of "

    const-string v5, "ActivityTaskManager"

    if-nez v3, :cond_8

    .line 931
    if-eqz p1, :cond_5

    .line 935
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 936
    :cond_4
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object p1, v3

    .line 937
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 938
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 941
    :cond_5
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    :cond_6
    iput-object p1, p0, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    .line 943
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    goto :goto_2

    :cond_7
    move-object v3, v0

    :goto_2
    iput-object v3, p0, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 944
    iput-object v0, p0, Lcom/android/server/wm/TaskRecord;->origActivity:Landroid/content/ComponentName;

    goto :goto_3

    .line 946
    :cond_8
    new-instance v3, Landroid/content/ComponentName;

    iget-object v6, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v3, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    .local v3, "targetComponent":Landroid/content/ComponentName;
    if-eqz p1, :cond_a

    .line 949
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 950
    .local v6, "targetIntent":Landroid/content/Intent;
    invoke-virtual {v6, v0}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 951
    invoke-virtual {v6, v0}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 952
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to target "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    :cond_9
    iput-object v6, p0, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    .line 955
    iput-object v3, p0, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 956
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/TaskRecord;->origActivity:Landroid/content/ComponentName;

    .line 957
    .end local v6    # "targetIntent":Landroid/content/Intent;
    goto :goto_3

    .line 958
    :cond_a
    iput-object v0, p0, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    .line 959
    iput-object v3, p0, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 960
    new-instance v0, Landroid/content/ComponentName;

    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskRecord;->origActivity:Landroid/content/ComponentName;

    .line 964
    .end local v3    # "targetComponent":Landroid/content/ComponentName;
    :goto_3
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v0, :cond_b

    move v0, v2

    goto :goto_4

    :cond_b
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    .line 965
    .local v0, "intentFlags":I
    :goto_4
    const/high16 v3, 0x200000

    and-int/2addr v3, v0

    if-eqz v3, :cond_c

    .line 968
    iput-boolean v1, p0, Lcom/android/server/wm/TaskRecord;->rootWasReset:Z

    .line 970
    :cond_c
    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/TaskRecord;->userId:I

    .line 971
    iget-object v3, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/TaskRecord;->userId:I

    const-string v5, "user_setup_complete"

    invoke-static {v3, v5, v2, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_d

    move v3, v1

    goto :goto_5

    :cond_d
    move v3, v2

    :goto_5
    iput-boolean v3, p0, Lcom/android/server/wm/TaskRecord;->mUserSetupComplete:Z

    .line 973
    iget v3, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v3, v3, 0x2000

    if-eqz v3, :cond_e

    .line 975
    iput-boolean v1, p0, Lcom/android/server/wm/TaskRecord;->autoRemoveRecents:Z

    goto :goto_6

    .line 976
    :cond_e
    const v3, 0x82000

    and-int/2addr v3, v0

    const/high16 v4, 0x80000

    if-ne v3, v4, :cond_10

    .line 981
    iget v3, p2, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    if-eqz v3, :cond_f

    .line 982
    iput-boolean v2, p0, Lcom/android/server/wm/TaskRecord;->autoRemoveRecents:Z

    goto :goto_6

    .line 984
    :cond_f
    iput-boolean v1, p0, Lcom/android/server/wm/TaskRecord;->autoRemoveRecents:Z

    goto :goto_6

    .line 987
    :cond_10
    iput-boolean v2, p0, Lcom/android/server/wm/TaskRecord;->autoRemoveRecents:Z

    .line 989
    :goto_6
    iget v1, p2, Landroid/content/pm/ActivityInfo;->resizeMode:I

    iput v1, p0, Lcom/android/server/wm/TaskRecord;->mResizeMode:I

    .line 992
    iget v1, p0, Lcom/android/server/wm/TaskRecord;->mResizeMode:I

    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-static {v1, v2}, Lcom/android/server/wm/OpQuickReplyInjector;->shouldForceResizeTask(ILandroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 993
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/wm/TaskRecord;->mResizeMode:I

    .line 996
    :cond_11
    invoke-virtual {p2}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/TaskRecord;->mSupportsPictureInPicture:Z

    .line 997
    return-void
.end method

.method private setLockTaskAuth(Lcom/android/server/wm/ActivityRecord;)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1597
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 1598
    iput v0, p0, Lcom/android/server/wm/TaskRecord;->mLockTaskAuth:I

    .line 1599
    return-void

    .line 1602
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1603
    .local v1, "pkg":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v2

    .line 1604
    .local v2, "lockTaskController":Lcom/android/server/wm/LockTaskController;
    iget v3, p1, Lcom/android/server/wm/ActivityRecord;->lockTaskLaunchMode:I

    const/4 v4, 0x3

    if-eqz v3, :cond_6

    if-eq v3, v0, :cond_5

    const/4 v5, 0x2

    if-eq v3, v5, :cond_4

    if-eq v3, v4, :cond_2

    goto :goto_3

    .line 1619
    :cond_2
    iget v3, p0, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/LockTaskController;->isPackageWhitelisted(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1620
    move v0, v5

    goto :goto_1

    :cond_3
    nop

    :goto_1
    iput v0, p0, Lcom/android/server/wm/TaskRecord;->mLockTaskAuth:I

    goto :goto_3

    .line 1615
    :cond_4
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/wm/TaskRecord;->mLockTaskAuth:I

    .line 1616
    goto :goto_3

    .line 1611
    :cond_5
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/TaskRecord;->mLockTaskAuth:I

    .line 1612
    goto :goto_3

    .line 1606
    :cond_6
    iget v3, p0, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/LockTaskController;->isPackageWhitelisted(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1607
    move v0, v4

    goto :goto_2

    :cond_7
    nop

    :goto_2
    iput v0, p0, Lcom/android/server/wm/TaskRecord;->mLockTaskAuth:I

    .line 1608
    nop

    .line 1623
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

    .line 1624
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->lockTaskAuthToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1623
    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    :cond_8
    return-void
.end method

.method private setMinDimensions(Landroid/content/pm/ActivityInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .line 1001
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz v0, :cond_0

    .line 1002
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    iput v0, p0, Lcom/android/server/wm/TaskRecord;->mMinWidth:I

    .line 1003
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    iput v0, p0, Lcom/android/server/wm/TaskRecord;->mMinHeight:I

    goto :goto_0

    .line 1005
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/TaskRecord;->mMinWidth:I

    .line 1006
    iput v0, p0, Lcom/android/server/wm/TaskRecord;->mMinHeight:I

    .line 1008
    :goto_0
    return-void
.end method

.method static setTaskRecordFactory(Lcom/android/server/wm/TaskRecord$TaskRecordFactory;)V
    .locals 0
    .param p0, "factory"    # Lcom/android/server/wm/TaskRecord$TaskRecordFactory;

    .line 2764
    sput-object p0, Lcom/android/server/wm/TaskRecord;->sTaskRecordFactory:Lcom/android/server/wm/TaskRecord$TaskRecordFactory;

    .line 2765
    return-void
.end method


# virtual methods
.method addActivityAtIndex(ILcom/android/server/wm/ActivityRecord;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1344
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 1345
    .local v0, "task":Lcom/android/server/wm/TaskRecord;
    if-eqz v0, :cond_1

    if-ne v0, p0, :cond_0

    goto :goto_0

    .line 1346
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not add r= to task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " current parent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1350
    :cond_1
    :goto_0
    invoke-virtual {p2, p0}, Lcom/android/server/wm/ActivityRecord;->setTask(Lcom/android/server/wm/TaskRecord;)V

    .line 1353
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    iget-boolean v1, p2, Lcom/android/server/wm/ActivityRecord;->fullscreen:Z

    if-eqz v1, :cond_2

    .line 1355
    iget v1, p0, Lcom/android/server/wm/TaskRecord;->numFullscreen:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/wm/TaskRecord;->numFullscreen:I

    .line 1358
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1359
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v1

    if-nez v1, :cond_3

    .line 1364
    invoke-virtual {p2, v2}, Lcom/android/server/wm/ActivityRecord;->setActivityType(I)V

    .line 1366
    :cond_3
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskRecord;->setActivityType(I)V

    .line 1367
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isPersistable()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/TaskRecord;->isPersistable:Z

    .line 1368
    iget v1, p2, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    iput v1, p0, Lcom/android/server/wm/TaskRecord;->mCallingUid:I

    .line 1369
    iget-object v1, p2, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/wm/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 1371
    iget-object v1, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->maxRecents:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1372
    invoke-static {}, Landroid/app/ActivityTaskManager;->getMaxAppRecentsLimitStatic()I

    move-result v2

    .line 1371
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/TaskRecord;->maxRecents:I

    goto :goto_1

    .line 1375
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getActivityType()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/server/wm/ActivityRecord;->setActivityType(I)V

    .line 1378
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1380
    .local v1, "size":I
    if-ne p1, v1, :cond_5

    if-lez v1, :cond_5

    .line 1381
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 1382
    .local v2, "top":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    if-eqz v3, :cond_5

    .line 1385
    add-int/lit8 p1, p1, -0x1

    .line 1389
    .end local v2    # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_5
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1390
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1392
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->updateEffectiveIntent()V

    .line 1393
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isPersistable()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1394
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyTaskPersisterLocked(Lcom/android/server/wm/TaskRecord;Z)V

    .line 1397
    :cond_6
    iget-object v2, p2, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_7

    .line 1400
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    iget-object v3, p2, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2, v3, p1}, Lcom/android/server/wm/Task;->positionChildAt(Lcom/android/server/wm/AppWindowToken;I)V

    .line 1405
    :cond_7
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootActivityContainer;->updateUIDsPresentOnDisplay()V

    .line 1406
    return-void
.end method

.method addActivityToTop(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1326
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/TaskRecord;->addActivityAtIndex(ILcom/android/server/wm/ActivityRecord;)V

    .line 1327
    return-void
.end method

.method addStartingWindowsForVisibleActivities(Z)V
    .locals 4
    .param p1, "taskSwitch"    # Z

    .line 2410
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "activityNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2411
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 2412
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-eqz v2, :cond_0

    .line 2413
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 2410
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2416
    .end local v0    # "activityNdx":I
    :cond_1
    return-void
.end method

.method adjustForMinimalTaskDimensions(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "previousBounds"    # Landroid/graphics/Rect;

    .line 1811
    if-nez p1, :cond_0

    .line 1812
    return-void

    .line 1814
    :cond_0
    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mMinWidth:I

    .line 1815
    .local v0, "minWidth":I
    iget v1, p0, Lcom/android/server/wm/TaskRecord;->mMinHeight:I

    .line 1819
    .local v1, "minHeight":I
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->inPinnedWindowingMode()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v2, :cond_2

    .line 1820
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget v2, v2, Lcom/android/server/wm/RootActivityContainer;->mDefaultMinSizeOfResizeableTaskDp:I

    .line 1822
    .local v2, "defaultMinSizeDp":I
    iget-object v3, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v4, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    iget v4, v4, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    .line 1823
    invoke-virtual {v3, v4}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v3

    .line 1824
    .local v3, "display":Lcom/android/server/wm/ActivityDisplay;
    nop

    .line 1825
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityDisplay;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v4, v4

    const/high16 v5, 0x43200000    # 160.0f

    div-float/2addr v4, v5

    .line 1826
    .local v4, "density":F
    int-to-float v5, v2

    mul-float/2addr v5, v4

    float-to-int v5, v5

    .line 1828
    .local v5, "defaultMinSize":I
    const/4 v6, -0x1

    if-ne v0, v6, :cond_1

    .line 1829
    move v0, v5

    .line 1831
    :cond_1
    if-ne v1, v6, :cond_2

    .line 1832
    move v1, v5

    .line 1835
    .end local v2    # "defaultMinSizeDp":I
    .end local v3    # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v4    # "density":F
    .end local v5    # "defaultMinSize":I
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v0, v2, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    move v2, v4

    .line 1836
    .local v2, "adjustWidth":Z
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v1, v5, :cond_4

    goto :goto_1

    :cond_4
    move v3, v4

    .line 1837
    .local v3, "adjustHeight":Z
    :goto_1
    if-nez v2, :cond_5

    if-nez v3, :cond_5

    .line 1838
    return-void

    .line 1841
    :cond_5
    if-eqz v2, :cond_7

    .line 1842
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p2, Landroid/graphics/Rect;->right:I

    if-ne v4, v5, :cond_6

    .line 1843
    iget v4, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v0

    iput v4, p1, Landroid/graphics/Rect;->left:I

    goto :goto_2

    .line 1847
    :cond_6
    iget v4, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v0

    iput v4, p1, Landroid/graphics/Rect;->right:I

    .line 1850
    :cond_7
    :goto_2
    if-eqz v3, :cond_9

    .line 1851
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    if-ne v4, v5, :cond_8

    .line 1852
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v1

    iput v4, p1, Landroid/graphics/Rect;->top:I

    goto :goto_3

    .line 1856
    :cond_8
    iget v4, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 1859
    :cond_9
    :goto_3
    return-void
.end method

.method autoRemoveFromRecents()Z
    .locals 1

    .line 1471
    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->autoRemoveRecents:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->hasBeenVisible:Z

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

.method canBeLaunchedOnDisplay(I)Z
    .locals 3
    .param p1, "displayId"    # I

    .line 1655
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v1, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->canPlaceEntityOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method cancelWindowTransition()V
    .locals 2

    .line 877
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    if-nez v0, :cond_0

    .line 878
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelWindowTransition: taskId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " not found."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    return-void

    .line 881
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->cancelTaskWindowTransition()V

    .line 882
    return-void
.end method

.method cleanUpResourcesForDestroy()V
    .locals 4

    .line 490
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 491
    return-void

    .line 495
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->saveLaunchingStateIfNeeded()V

    .line 498
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 499
    .local v0, "isVoiceSession":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 501
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    iget v3, p0, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-interface {v1, v2, v3}, Landroid/service/voice/IVoiceInteractionSession;->taskFinished(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    goto :goto_1

    .line 502
    :catch_0
    move-exception v1

    .line 505
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->autoRemoveFromRecents()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_4

    .line 508
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/RecentTasks;->remove(Lcom/android/server/wm/TaskRecord;)V

    .line 511
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->removeWindowContainer()V

    .line 512
    return-void
.end method

.method clearAllPendingOptions()V
    .locals 3

    .line 2435
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2436
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskRecord;->getChildAt(I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityRecord;->clearOptionsLocked(Z)V

    .line 2435
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2438
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method clearRootProcess()V
    .locals 1

    .line 2428
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_0

    .line 2429
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowProcessController;->removeRecentTask(Lcom/android/server/wm/TaskRecord;)V

    .line 2430
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskRecord;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    .line 2432
    :cond_0
    return-void
.end method

.method computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "inOutConfig"    # Landroid/content/res/Configuration;
    .param p2, "parentConfig"    # Landroid/content/res/Configuration;

    .line 2121
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/TaskRecord;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)V

    .line 2122
    return-void
.end method

.method computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)V
    .locals 11
    .param p1, "inOutConfig"    # Landroid/content/res/Configuration;
    .param p2, "parentConfig"    # Landroid/content/res/Configuration;
    .param p3, "compatInsets"    # Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    .line 2135
    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 2136
    .local v0, "windowingMode":I
    if-nez v0, :cond_0

    .line 2137
    iget-object v1, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 2140
    :cond_0
    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v1, v1

    .line 2141
    .local v1, "density":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    .line 2142
    iget v2, p2, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v1, v2

    .line 2144
    :cond_1
    const v2, 0x3bcccccd    # 0.00625f

    mul-float/2addr v1, v2

    .line 2146
    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 2147
    .local v2, "bounds":Landroid/graphics/Rect;
    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 2148
    .local v3, "outAppBounds":Landroid/graphics/Rect;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2149
    :cond_2
    iget-object v4, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4, v2}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 2150
    iget-object v4, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 2154
    :cond_3
    const/4 v4, 0x1

    if-nez p3, :cond_4

    move v5, v4

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    .line 2155
    .local v5, "insideParentBounds":Z
    :goto_0
    if-eqz v5, :cond_5

    const/4 v6, 0x5

    if-eq v0, v6, :cond_5

    .line 2156
    iget-object v6, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 2157
    .local v6, "parentAppBounds":Landroid/graphics/Rect;
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 2158
    invoke-virtual {v3, v6}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 2162
    .end local v6    # "parentAppBounds":Landroid/graphics/Rect;
    :cond_5
    iget v6, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v6, :cond_6

    iget v6, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-nez v6, :cond_e

    .line 2164
    :cond_6
    if-eqz v5, :cond_7

    iget-object v6, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v6, :cond_7

    .line 2165
    new-instance v6, Landroid/view/DisplayInfo;

    invoke-direct {v6}, Landroid/view/DisplayInfo;-><init>()V

    .line 2166
    .local v6, "di":Landroid/view/DisplayInfo;
    iget-object v7, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/wm/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7, v6}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 2172
    iget-object v7, p0, Lcom/android/server/wm/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/server/wm/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v7, v8, v2, v6}, Lcom/android/server/wm/TaskRecord;->calculateInsetFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;)V

    .line 2173
    .end local v6    # "di":Landroid/view/DisplayInfo;
    goto :goto_1

    .line 2176
    :cond_7
    iget-object v6, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v6

    .line 2177
    .local v6, "rotation":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_8

    if-eqz p3, :cond_8

    .line 2178
    iget-object v7, p0, Lcom/android/server/wm/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2179
    iget-object v7, p0, Lcom/android/server/wm/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2180
    iget-object v7, p0, Lcom/android/server/wm/TaskRecord;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p3, v7, v6}, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->getDisplayBoundsByRotation(Landroid/graphics/Rect;I)V

    .line 2181
    iget-object v7, p0, Lcom/android/server/wm/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/server/wm/TaskRecord;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v9, p3, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object v9, v9, v6

    invoke-static {v7, v8, v9}, Lcom/android/server/wm/TaskRecord;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2183
    iget-object v7, p0, Lcom/android/server/wm/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/server/wm/TaskRecord;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v9, p3, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    aget-object v9, v9, v6

    invoke-static {v7, v8, v9}, Lcom/android/server/wm/TaskRecord;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2185
    iget-object v7, p0, Lcom/android/server/wm/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 2188
    :cond_8
    iget-object v7, p0, Lcom/android/server/wm/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2189
    iget-object v7, p0, Lcom/android/server/wm/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2193
    .end local v6    # "rotation":I
    :goto_1
    iget v6, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-nez v6, :cond_a

    .line 2194
    iget-object v6, p0, Lcom/android/server/wm/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v1

    float-to-int v6, v6

    .line 2195
    .local v6, "overrideScreenWidthDp":I
    if-eqz v5, :cond_9

    .line 2196
    iget v7, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto :goto_2

    .line 2197
    :cond_9
    move v7, v6

    :goto_2
    iput v7, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 2199
    .end local v6    # "overrideScreenWidthDp":I
    :cond_a
    iget v6, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-nez v6, :cond_c

    .line 2200
    iget-object v6, p0, Lcom/android/server/wm/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v1

    float-to-int v6, v6

    .line 2201
    .local v6, "overrideScreenHeightDp":I
    if-eqz v5, :cond_b

    .line 2202
    iget v7, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto :goto_3

    .line 2203
    :cond_b
    move v7, v6

    :goto_3
    iput v7, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 2206
    .end local v6    # "overrideScreenHeightDp":I
    :cond_c
    iget v6, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-nez v6, :cond_e

    .line 2208
    invoke-static {v0}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 2210
    nop

    .line 2211
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v1

    float-to-int v6, v6

    iput v6, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    goto :goto_4

    .line 2212
    :cond_d
    invoke-static {v0}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(I)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 2216
    nop

    .line 2217
    invoke-direct {p0, v2}, Lcom/android/server/wm/TaskRecord;->getSmallestScreenWidthDpForDockedBounds(Landroid/graphics/Rect;)I

    move-result v6

    iput v6, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 2223
    :cond_e
    :goto_4
    iget v6, p1, Landroid/content/res/Configuration;->orientation:I

    if-nez v6, :cond_10

    .line 2224
    iget v6, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v7, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-gt v6, v7, :cond_f

    .line 2225
    goto :goto_5

    :cond_f
    const/4 v4, 0x2

    :goto_5
    iput v4, p1, Landroid/content/res/Configuration;->orientation:I

    .line 2227
    :cond_10
    iget v4, p1, Landroid/content/res/Configuration;->screenLayout:I

    if-nez v4, :cond_11

    .line 2231
    iget-object v4, p0, Lcom/android/server/wm/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    float-to-int v4, v4

    .line 2232
    .local v4, "compatScreenWidthDp":I
    iget-object v6, p0, Lcom/android/server/wm/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v1

    float-to-int v6, v6

    .line 2236
    .local v6, "compatScreenHeightDp":I
    iget v7, p2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v7, v7, 0x3f

    .line 2238
    .local v7, "sl":I
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 2239
    .local v8, "longSize":I
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 2240
    .local v9, "shortSize":I
    invoke-static {v7, v8, v9}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v10

    iput v10, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 2242
    .end local v4    # "compatScreenWidthDp":I
    .end local v6    # "compatScreenHeightDp":I
    .end local v7    # "sl":I
    .end local v8    # "longSize":I
    .end local v9    # "shortSize":I
    :cond_11
    return-void
.end method

.method computeFullscreenBounds(Landroid/graphics/Rect;Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;I)V
    .locals 10
    .param p1, "outBounds"    # Landroid/graphics/Rect;
    .param p2, "refActivity"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "parentBounds"    # Landroid/graphics/Rect;
    .param p4, "parentOrientation"    # I

    .line 2321
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 2322
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->handlesOrientationChangeFromDescendant()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2323
    return-void

    .line 2325
    :cond_0
    if-nez p2, :cond_1

    .line 2329
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskRecord;->getTopActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    .line 2334
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 2336
    .local v0, "overrideOrientation":I
    if-nez v0, :cond_3

    if-nez p2, :cond_2

    goto :goto_0

    .line 2337
    :cond_2
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getRequestedConfigurationOrientation()I

    move-result v1

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v0

    .line 2338
    .local v1, "forcedOrientation":I
    :goto_1
    if-eqz v1, :cond_6

    if-ne v1, p4, :cond_4

    goto :goto_3

    .line 2342
    :cond_4
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 2343
    .local v2, "parentWidth":I
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 2344
    .local v3, "parentHeight":I
    int-to-float v4, v3

    int-to-float v5, v2

    div-float/2addr v4, v5

    .line 2345
    .local v4, "aspect":F
    const/4 v5, 0x2

    if-ne v1, v5, :cond_5

    .line 2346
    int-to-float v5, v2

    div-float/2addr v5, v4

    float-to-int v5, v5

    .line 2347
    .local v5, "height":I
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    div-int/lit8 v7, v5, 0x2

    sub-int/2addr v6, v7

    .line 2348
    .local v6, "top":I
    iget v7, p3, Landroid/graphics/Rect;->left:I

    iget v8, p3, Landroid/graphics/Rect;->right:I

    add-int v9, v6, v5

    invoke-virtual {p1, v7, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 2349
    .end local v5    # "height":I
    .end local v6    # "top":I
    goto :goto_2

    .line 2350
    :cond_5
    int-to-float v5, v3

    mul-float/2addr v5, v4

    float-to-int v5, v5

    .line 2351
    .local v5, "width":I
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    div-int/lit8 v7, v5, 0x2

    sub-int/2addr v6, v7

    .line 2352
    .local v6, "left":I
    iget v7, p3, Landroid/graphics/Rect;->top:I

    add-int v8, v6, v5

    iget v9, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 2354
    .end local v5    # "width":I
    .end local v6    # "left":I
    :goto_2
    return-void

    .line 2339
    .end local v2    # "parentWidth":I
    .end local v3    # "parentHeight":I
    .end local v4    # "aspect":F
    :cond_6
    :goto_3
    return-void
.end method

.method containsAppUid(I)Z
    .locals 4
    .param p1, "uid"    # I

    .line 1208
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1209
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 1210
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 1211
    return v1

    .line 1208
    .end local v2    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1214
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method createTask(ZZ)V
    .locals 12
    .param p1, "onTop"    # Z
    .param p2, "showForAllUsers"    # Z

    .line 461
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    if-nez v0, :cond_3

    .line 466
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->updateOverrideConfigurationFromLaunchBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 467
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 469
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v1, :cond_2

    .line 472
    const/16 v2, 0x7919

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 473
    new-instance v11, Lcom/android/server/wm/Task;

    iget v3, p0, Lcom/android/server/wm/TaskRecord;->taskId:I

    iget v5, p0, Lcom/android/server/wm/TaskRecord;->userId:I

    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v7, p0, Lcom/android/server/wm/TaskRecord;->mResizeMode:I

    iget-boolean v8, p0, Lcom/android/server/wm/TaskRecord;->mSupportsPictureInPicture:Z

    iget-object v9, p0, Lcom/android/server/wm/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object v2, v11

    move-object v4, v1

    move-object v10, p0

    invoke-direct/range {v2 .. v10}, Lcom/android/server/wm/Task;-><init>(ILcom/android/server/wm/TaskStack;ILcom/android/server/wm/WindowManagerService;IZLandroid/app/ActivityManager$TaskDescription;Lcom/android/server/wm/TaskRecord;)V

    iput-object v11, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    .line 475
    if-eqz p1, :cond_0

    const v2, 0x7fffffff

    goto :goto_0

    :cond_0
    const/high16 v2, -0x80000000

    .line 477
    .local v2, "position":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/TaskRecord;->mDisplayedBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 478
    iget-object v3, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    iget-object v4, p0, Lcom/android/server/wm/TaskRecord;->mDisplayedBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/Task;->setOverrideDisplayedBounds(Landroid/graphics/Rect;)V

    .line 482
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1, v3, v2, p2, p1}, Lcom/android/server/wm/TaskStack;->addTask(Lcom/android/server/wm/Task;IZZ)V

    .line 483
    return-void

    .line 470
    .end local v2    # "position":I
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TaskRecord: invalid stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 462
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " already created for task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 2478
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "userId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2479
    const-string v0, " effectiveUid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/TaskRecord;->effectiveUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 2480
    const-string v0, " mCallingUid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mCallingUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 2481
    const-string v0, " mUserSetupComplete="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->mUserSetupComplete:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2482
    const-string v0, " mCallingPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2483
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 2484
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "affinity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2485
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->rootAffinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 2488
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_1

    .line 2486
    :cond_2
    :goto_0
    const-string v0, " root="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->rootAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2491
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    if-eqz v0, :cond_5

    .line 2492
    :cond_4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "VOICE: session=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2493
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2494
    const-string v0, " interactor=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2495
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2497
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    const/16 v1, 0x7d

    const/16 v2, 0x80

    if-eqz v0, :cond_6

    .line 2498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2499
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "intent={"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2500
    iget-object v3, p0, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 2501
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2502
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2504
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v0, :cond_7

    .line 2505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2506
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "affinityIntent={"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2507
    iget-object v3, p0, Lcom/android/server/wm/TaskRecord;->affinityIntent:Landroid/content/Intent;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 2508
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2509
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2511
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->origActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_8

    .line 2512
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "origActivity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2513
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2515
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_9

    .line 2516
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mActivityComponent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2517
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2519
    :cond_9
    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->autoRemoveRecents:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->isPersistable:Z

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->isActivityTypeStandard()Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/android/server/wm/TaskRecord;->numFullscreen:I

    if-eqz v0, :cond_b

    .line 2520
    :cond_a
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "autoRemoveRecents="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->autoRemoveRecents:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2521
    const-string v0, " isPersistable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->isPersistable:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2522
    const-string v0, " numFullscreen="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/TaskRecord;->numFullscreen:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2523
    const-string v0, " activityType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getActivityType()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2525
    :cond_b
    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->rootWasReset:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->mNeverRelinquishIdentity:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->mReuseTask:Z

    if-nez v0, :cond_c

    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mLockTaskAuth:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    .line 2527
    :cond_c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "rootWasReset="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->rootWasReset:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2528
    const-string v0, " mNeverRelinquishIdentity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->mNeverRelinquishIdentity:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2529
    const-string v0, " mReuseTask="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->mReuseTask:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2530
    const-string v0, " mLockTaskAuth="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->lockTaskAuthToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2532
    :cond_d
    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    iget v1, p0, Lcom/android/server/wm/TaskRecord;->taskId:I

    if-ne v0, v1, :cond_e

    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mPrevAffiliateTaskId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mPrevAffiliate:Lcom/android/server/wm/TaskRecord;

    if-nez v0, :cond_e

    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mNextAffiliateTaskId:I

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mNextAffiliate:Lcom/android/server/wm/TaskRecord;

    if-eqz v0, :cond_11

    .line 2535
    :cond_e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "affiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2536
    const-string v0, " prevAffiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mPrevAffiliateTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2537
    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2538
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mPrevAffiliate:Lcom/android/server/wm/TaskRecord;

    const-string v2, "null"

    if-nez v1, :cond_f

    .line 2539
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 2541
    :cond_f
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2543
    :goto_2
    const-string v1, ") nextAffiliation="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/TaskRecord;->mNextAffiliateTaskId:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2544
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2545
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mNextAffiliate:Lcom/android/server/wm/TaskRecord;

    if-nez v0, :cond_10

    .line 2546
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    .line 2548
    :cond_10
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2550
    :goto_3
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2552
    :cond_11
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Activities="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2553
    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->askedCompatMode:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->inRecents:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->isAvailable:Z

    if-nez v0, :cond_13

    .line 2554
    :cond_12
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "askedCompatMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->askedCompatMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2555
    const-string v0, " inRecents="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->inRecents:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2556
    const-string v0, " isAvailable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->isAvailable:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2558
    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_14

    .line 2559
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "lastDescription="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2561
    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_15

    .line 2562
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRootProcess="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2564
    :cond_15
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "stackId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getStackId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "hasBeenVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/TaskRecord;->hasBeenVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mResizeMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TaskRecord;->mResizeMode:I

    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->resizeModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSupportsPictureInPicture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/TaskRecord;->mSupportsPictureInPicture:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " isResizeable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->isResizeable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " lastActiveTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/TaskRecord;->lastActiveTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " (inactive for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getInactiveDuration()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "s)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mAppSceneMode == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TaskRecord;->mAppSceneMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2573
    return-void
.end method

.method fillTaskInfo(Landroid/app/TaskInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/app/TaskInfo;

    .line 2445
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mReuseActivitiesReport:Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskRecord;->getNumRunningActivities(Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;)V

    .line 2446
    iget v0, p0, Lcom/android/server/wm/TaskRecord;->userId:I

    iput v0, p1, Landroid/app/TaskInfo;->userId:I

    .line 2447
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getStackId()I

    move-result v0

    iput v0, p1, Landroid/app/TaskInfo;->stackId:I

    .line 2448
    iget v0, p0, Lcom/android/server/wm/TaskRecord;->taskId:I

    iput v0, p1, Landroid/app/TaskInfo;->taskId:I

    .line 2449
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    :goto_0
    iput v0, p1, Landroid/app/TaskInfo;->displayId:I

    .line 2450
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p1, Landroid/app/TaskInfo;->isRunning:Z

    .line 2451
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p1, Landroid/app/TaskInfo;->baseIntent:Landroid/content/Intent;

    .line 2452
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mReuseActivitiesReport:Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;

    iget-object v0, v0, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;->base:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2453
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mReuseActivitiesReport:Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;

    iget-object v0, v0, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;->base:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_2

    .line 2454
    :cond_2
    move-object v0, v1

    :goto_2
    iput-object v0, p1, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 2455
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mReuseActivitiesReport:Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;

    iget-object v0, v0, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_3

    .line 2456
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mReuseActivitiesReport:Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;

    iget-object v0, v0, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    goto :goto_3

    .line 2457
    :cond_3
    nop

    :goto_3
    iput-object v1, p1, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 2458
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->origActivity:Landroid/content/ComponentName;

    iput-object v0, p1, Landroid/app/TaskInfo;->origActivity:Landroid/content/ComponentName;

    .line 2459
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    iput-object v0, p1, Landroid/app/TaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 2460
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mReuseActivitiesReport:Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;

    iget v0, v0, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;->numActivities:I

    iput v0, p1, Landroid/app/TaskInfo;->numActivities:I

    .line 2461
    iget-wide v0, p0, Lcom/android/server/wm/TaskRecord;->lastActiveTime:J

    iput-wide v0, p1, Landroid/app/TaskInfo;->lastActiveTime:J

    .line 2462
    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v0, v1}, Landroid/app/ActivityManager$TaskDescription;-><init>(Landroid/app/ActivityManager$TaskDescription;)V

    iput-object v0, p1, Landroid/app/TaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 2463
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->supportsSplitScreenWindowingMode()Z

    move-result v0

    iput-boolean v0, p1, Landroid/app/TaskInfo;->supportsSplitScreenMultiWindow:Z

    .line 2464
    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mResizeMode:I

    iput v0, p1, Landroid/app/TaskInfo;->resizeMode:I

    .line 2465
    iget-object v0, p1, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 2466
    return-void
.end method

.method final findActivityInHistoryLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .locals 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1692
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 1693
    .local v0, "realActivity":Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "activityNdx":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1694
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 1695
    .local v2, "candidate":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_0

    .line 1696
    goto :goto_1

    .line 1698
    :cond_0
    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v3, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1699
    return-object v2

    .line 1693
    .end local v2    # "candidate":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1702
    .end local v1    # "activityNdx":I
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method findEffectiveRootIndex()I
    .locals 5

    .line 1786
    const/4 v0, 0x0

    .line 1787
    .local v0, "effectiveNdx":I
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 1788
    .local v1, "topActivityNdx":I
    const/4 v2, 0x0

    .local v2, "activityNdx":I
    :goto_0
    if-gt v2, v1, :cond_2

    .line 1789
    iget-object v3, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 1790
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_0

    .line 1791
    goto :goto_1

    .line 1793
    :cond_0
    move v0, v2

    .line 1794
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, 0x1000

    if-nez v4, :cond_1

    .line 1795
    goto :goto_2

    .line 1788
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1798
    .end local v2    # "activityNdx":I
    :cond_2
    :goto_2
    return v0
.end method

.method public getActivityType()I
    .locals 3

    .line 1332
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v0

    .line 1333
    .local v0, "applicationType":I
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1336
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v1

    return v1

    .line 1334
    :cond_1
    :goto_0
    return v0
.end method

.method getAllRunningVisibleActivitiesLocked(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    .line 1218
    .local p1, "outActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_1

    .line 1219
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "activityNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1220
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 1221
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->okToShowLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-eqz v2, :cond_0

    .line 1222
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1219
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1226
    .end local v0    # "activityNdx":I
    :cond_1
    return-void
.end method

.method getBaseIntent()Landroid/content/Intent;
    .locals 1

    .line 1152
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->affinityIntent:Landroid/content/Intent;

    :goto_0
    return-object v0
.end method

.method protected getChildAt(I)Lcom/android/server/wm/ActivityRecord;
    .locals 1
    .param p1, "index"    # I

    .line 1088
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    return-object v0
.end method

.method protected bridge synthetic getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;
    .locals 0

    .line 142
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskRecord;->getChildAt(I)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    return-object p1
.end method

.method protected getChildCount()I
    .locals 1

    .line 1083
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getDisplayedBounds()Landroid/graphics/Rect;
    .locals 1

    .line 2034
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mDisplayedBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method getInactiveDuration()J
    .locals 4

    .line 900
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wm/TaskRecord;->lastActiveTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method getLaunchBounds()Landroid/graphics/Rect;
    .locals 3

    .line 2394
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2395
    return-object v1

    .line 2398
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getWindowingMode()I

    move-result v0

    .line 2399
    .local v0, "windowingMode":I
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->isActivityTypeStandardOrUndefined()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 2401
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->isResizeable()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 2403
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2404
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    return-object v1

    .line 2406
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    return-object v1

    .line 2402
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->isResizeable()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    :cond_4
    return-object v1
.end method

.method getNumRunningActivities(Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;)V
    .locals 4
    .param p1, "reportOut"    # Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;

    .line 1247
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;->reset()V

    .line 1248
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_5

    .line 1249
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 1250
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_0

    .line 1251
    goto :goto_1

    .line 1254
    :cond_0
    iput-object v1, p1, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;->base:Lcom/android/server/wm/ActivityRecord;

    .line 1257
    sget-boolean v2, Lcom/android/server/wm/OpAppLockerInjector;->IS_APP_LOCKER_ENABLED:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;->topFullscreen:Lcom/android/server/wm/ActivityRecord;

    if-nez v2, :cond_1

    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->fullscreen:Z

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1259
    const-string v3, "com.oneplus.applocker"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1260
    iput-object v1, p1, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;->topFullscreen:Lcom/android/server/wm/ActivityRecord;

    .line 1264
    :cond_1
    iget v2, p1, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;->numActivities:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;->numActivities:I

    .line 1266
    iget-object v2, p1, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    sget-object v3, Lcom/android/server/wm/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1267
    :cond_2
    iput-object v1, p1, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    .line 1270
    const/4 v2, 0x0

    iput v2, p1, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;->numRunning:I

    .line 1272
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1274
    iget v2, p1, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;->numRunning:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;->numRunning:I

    .line 1248
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_4
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1277
    .end local v0    # "i":I
    :cond_5
    return-void
.end method

.method protected getParent()Lcom/android/server/wm/ConfigurationContainer;
    .locals 1

    .line 1093
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    return-object v0
.end method

.method getRootActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 3

    .line 1157
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1158
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 1159
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_0

    .line 1160
    nop

    .line 1157
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1162
    .restart local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    return-object v1

    .line 1164
    .end local v0    # "i":I
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getSnapshot(ZZ)Landroid/app/ActivityManager$TaskSnapshot;
    .locals 3
    .param p1, "reducedResolution"    # Z
    .param p2, "restoreFromDisk"    # Z

    .line 891
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v1, p0, Lcom/android/server/wm/TaskRecord;->taskId:I

    iget v2, p0, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/server/wm/WindowManagerService;->getTaskSnapshot(IIZZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v0

    return-object v0
.end method

.method getStack()Lcom/android/server/wm/ActivityStack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/wm/ActivityStack;",
            ">()TT;"
        }
    .end annotation

    .line 1040
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    return-object v0
.end method

.method getStackId()I
    .locals 1

    .line 1078
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/android/server/wm/ActivityStack;->mStackId:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method getTask()Lcom/android/server/wm/Task;
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    return-object v0
.end method

.method getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 1

    .line 2472
    new-instance v0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>()V

    .line 2473
    .local v0, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskRecord;->fillTaskInfo(Landroid/app/TaskInfo;)V

    .line 2474
    return-object v0
.end method

.method getTopActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    .line 1168
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskRecord;->getTopActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getTopActivity(Z)Lcom/android/server/wm/ActivityRecord;
    .locals 3
    .param p1, "includeOverlays"    # Z

    .line 1172
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1173
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 1174
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v2, :cond_1

    if-nez p1, :cond_0

    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    if-eqz v2, :cond_0

    .line 1175
    goto :goto_1

    .line 1177
    :cond_0
    return-object v1

    .line 1172
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1179
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method getWindowContainerBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 645
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_0

    .line 646
    invoke-virtual {v0, p1}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 648
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 650
    :goto_0
    return-void
.end method

.method handlesOrientationChangeFromDescendant()Z
    .locals 1

    .line 2309
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    .line 2310
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->handlesOrientationChangeFromDescendant()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2309
    :goto_0
    return v0
.end method

.method hasDisplayedBounds()Z
    .locals 1

    .line 2041
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mDisplayedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method isClearingToReuseTask()Z
    .locals 1

    .line 1684
    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->mReuseTask:Z

    return v0
.end method

.method isResizeable()Z
    .locals 1

    .line 1633
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskRecord;->isResizeable(Z)Z

    move-result v0

    return v0
.end method

.method isSameIntentFilter(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 3
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1015
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1018
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 1019
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1021
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method isVisible()Z
    .locals 4

    .line 1195
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1196
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 1197
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-eqz v3, :cond_0

    .line 1198
    return v1

    .line 1195
    .end local v2    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1201
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method lockTaskAuthToString()Ljava/lang/String;
    .locals 2

    .line 1582
    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mLockTaskAuth:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TaskRecord;->mLockTaskAuth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1587
    :cond_0
    const-string v0, "LOCK_TASK_AUTH_LAUNCHABLE_PRIV"

    return-object v0

    .line 1586
    :cond_1
    const-string v0, "LOCK_TASK_AUTH_WHITELISTED"

    return-object v0

    .line 1585
    :cond_2
    const-string v0, "LOCK_TASK_AUTH_LAUNCHABLE"

    return-object v0

    .line 1584
    :cond_3
    const-string v0, "LOCK_TASK_AUTH_PINNABLE"

    return-object v0

    .line 1583
    :cond_4
    const-string v0, "LOCK_TASK_AUTH_DONT_LOCK"

    return-object v0
.end method

.method final moveActivityToFrontLocked(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2
    .param p1, "newTop"    # Lcom/android/server/wm/ActivityRecord;

    .line 1311
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

    .line 1313
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1311
    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1316
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1319
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->positionChildAtTop(Lcom/android/server/wm/AppWindowToken;)V

    .line 1320
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->updateEffectiveIntent()V

    .line 1322
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->setFrontOfTask()V

    .line 1323
    return-void
.end method

.method okToShowLocked()Z
    .locals 2

    .line 1282
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget v1, p0, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1283
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1282
    :goto_1
    return v0
.end method

.method onActivityStateChanged(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V
    .locals 1
    .param p1, "record"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "state"    # Lcom/android/server/wm/ActivityStack$ActivityState;
    .param p3, "reason"    # Ljava/lang/String;

    .line 1913
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1915
    .local v0, "parent":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_0

    .line 1916
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/ActivityStack;->onActivityStateChanged(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 1918
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 1924
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v0

    .line 1925
    .local v0, "prevPersistTaskBounds":Z
    nop

    .line 1926
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1927
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 1928
    .local v1, "nextPersistTaskBounds":Z
    :goto_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_2

    .line 1929
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1931
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v3, p0, Lcom/android/server/wm/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 1932
    invoke-virtual {v2, v3}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 1935
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->inMultiWindowMode()Z

    move-result v2

    .line 1936
    .local v2, "wasInMultiWindowMode":Z
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1937
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->inMultiWindowMode()Z

    move-result v3

    if-eq v2, v3, :cond_3

    .line 1938
    iget-object v3, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v3, p0}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleUpdateMultiWindowMode(Lcom/android/server/wm/TaskRecord;)V

    .line 1943
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1944
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 1945
    .local v3, "currentBounds":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1946
    invoke-virtual {p0, v3}, Lcom/android/server/wm/TaskRecord;->setLastNonFullscreenBounds(Landroid/graphics/Rect;)V

    .line 1951
    .end local v3    # "currentBounds":Landroid/graphics/Rect;
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->saveLaunchingStateIfNeeded()V

    .line 1952
    return-void
.end method

.method protected onParentChanged()V
    .locals 1

    .line 1098
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->onParentChanged()V

    .line 1099
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->updateUIDsPresentOnDisplay()V

    .line 1100
    return-void
.end method

.method public onSnapshotChanged(Landroid/app/ActivityManager$TaskSnapshot;)V
    .locals 2
    .param p1, "snapshot"    # Landroid/app/ActivityManager$TaskSnapshot;

    .line 532
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskSnapshotChanged(ILandroid/app/ActivityManager$TaskSnapshot;)V

    .line 533
    return-void
.end method

.method onlyHasTaskOverlayActivities(Z)Z
    .locals 6
    .param p1, "excludeFinishing"    # Z

    .line 1453
    const/4 v0, 0x0

    .line 1454
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x0

    if-ltz v1, :cond_2

    .line 1455
    iget-object v4, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 1456
    .local v4, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz p1, :cond_0

    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_0

    .line 1457
    goto :goto_1

    .line 1459
    :cond_0
    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    if-nez v5, :cond_1

    .line 1460
    return v3

    .line 1462
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 1454
    .end local v4    # "r":Lcom/android/server/wm/ActivityRecord;
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1464
    .end local v1    # "i":I
    :cond_2
    if-lez v0, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    return v2
.end method

.method final performClearTaskAtIndexLocked(IZLjava/lang/String;)V
    .locals 9
    .param p1, "activityNdx"    # I
    .param p2, "pauseImmediately"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .line 1480
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1481
    .local v0, "numActivities":I
    :goto_0
    if-ge p1, v0, :cond_3

    .line 1482
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 1483
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_0

    .line 1484
    goto :goto_1

    .line 1486
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    if-nez v2, :cond_1

    .line 1488
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->takeFromHistory()V

    .line 1489
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1490
    add-int/lit8 p1, p1, -0x1

    .line 1491
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1492
    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v3, v1

    move-object v6, p3

    move v8, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/ActivityStack;->finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;ZZ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1494
    add-int/lit8 p1, p1, -0x1

    .line 1495
    add-int/lit8 v0, v0, -0x1

    .line 1481
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_2
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1498
    :cond_3
    return-void
.end method

.method performClearTaskForReuseLocked(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityRecord;
    .locals 2
    .param p1, "newR"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "launchFlags"    # I

    .line 1510
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->mReuseTask:Z

    .line 1511
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskRecord;->performClearTaskLocked(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1512
    .local v0, "result":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/TaskRecord;->mReuseTask:Z

    .line 1513
    return-object v0
.end method

.method final performClearTaskLocked(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityRecord;
    .locals 12
    .param p1, "newR"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "launchFlags"    # I

    .line 1528
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1529
    .local v0, "numActivities":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "activityNdx":I
    :goto_0
    const/4 v2, 0x0

    if-ltz v1, :cond_8

    .line 1530
    iget-object v3, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 1531
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_0

    .line 1532
    goto :goto_3

    .line 1534
    :cond_0
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1536
    move-object v4, v3

    .line 1538
    .local v4, "ret":Lcom/android/server/wm/ActivityRecord;
    nop

    :goto_1
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_4

    .line 1539
    iget-object v5, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 1540
    iget-boolean v5, v3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_1

    .line 1541
    goto :goto_2

    .line 1543
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/wm/ActivityRecord;->takeOptionsLocked(Z)Landroid/app/ActivityOptions;

    move-result-object v5

    .line 1544
    .local v5, "opts":Landroid/app/ActivityOptions;
    if-eqz v5, :cond_2

    .line 1545
    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 1547
    :cond_2
    iget-object v6, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v6, :cond_3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const-string v10, "clear-task-stack"

    move-object v7, v3

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/wm/ActivityStack;->finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1549
    add-int/lit8 v1, v1, -0x1

    .line 1550
    add-int/lit8 v0, v0, -0x1

    .line 1538
    .end local v5    # "opts":Landroid/app/ActivityOptions;
    :cond_3
    :goto_2
    goto :goto_1

    .line 1557
    :cond_4
    iget v5, v4, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    if-nez v5, :cond_6

    const/high16 v5, 0x20000000

    and-int/2addr v5, p2

    if-nez v5, :cond_6

    .line 1559
    invoke-static {p2}, Lcom/android/server/wm/ActivityStarter;->isDocumentLaunchesIntoExisting(I)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1560
    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v5, :cond_6

    .line 1561
    iget-object v5, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v5, :cond_5

    .line 1562
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const-string v9, "clear-task-top"

    move-object v6, v4

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/ActivityStack;->finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 1565
    :cond_5
    return-object v2

    .line 1569
    :cond_6
    return-object v4

    .line 1529
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v4    # "ret":Lcom/android/server/wm/ActivityRecord;
    :cond_7
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1573
    .end local v1    # "activityNdx":I
    :cond_8
    return-object v2
.end method

.method performClearTaskLocked()V
    .locals 2

    .line 1504
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->mReuseTask:Z

    .line 1505
    const/4 v0, 0x0

    const-string v1, "clear-task-all"

    invoke-virtual {p0, v0, v0, v1}, Lcom/android/server/wm/TaskRecord;->performClearTaskAtIndexLocked(IZLjava/lang/String;)V

    .line 1506
    iput-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->mReuseTask:Z

    .line 1507
    return-void
.end method

.method removeActivity(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1414
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskRecord;->removeActivity(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result v0

    return v0
.end method

.method removeActivity(Lcom/android/server/wm/ActivityRecord;Z)Z
    .locals 3
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "reparenting"    # Z

    .line 1418
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    if-ne v0, p0, :cond_4

    .line 1423
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/android/server/wm/ActivityRecord;->setTask(Lcom/android/server/wm/TaskRecord;Z)V

    .line 1425
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->fullscreen:Z

    if-eqz v0, :cond_0

    .line 1427
    iget v0, p0, Lcom/android/server/wm/TaskRecord;->numFullscreen:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/TaskRecord;->numFullscreen:I

    .line 1429
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isPersistable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1430
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyTaskPersisterLocked(Lcom/android/server/wm/TaskRecord;Z)V

    .line 1433
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1437
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 1440
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1441
    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->mReuseTask:Z

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 1443
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->updateEffectiveIntent()V

    .line 1444
    return v1

    .line 1419
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not belong to task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method removeTaskActivitiesLocked(ZLjava/lang/String;)V
    .locals 1
    .param p1, "pauseImmediately"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 1578
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wm/TaskRecord;->performClearTaskAtIndexLocked(IZLjava/lang/String;)V

    .line 1579
    return-void
.end method

.method removeWindowContainer()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 516
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/LockTaskController;->clearLockedTask(Lcom/android/server/wm/TaskRecord;)V

    .line 517
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    if-nez v0, :cond_1

    .line 518
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeTask: could not find taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_0
    return-void

    .line 521
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->removeIfPossible()V

    .line 522
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    .line 523
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v1

    if-nez v1, :cond_2

    .line 526
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    .line 528
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskRemoved(I)V

    .line 529
    return-void
.end method

.method removedFromRecents()V
    .locals 3

    .line 1115
    invoke-direct {p0}, Lcom/android/server/wm/TaskRecord;->closeRecentsChain()V

    .line 1116
    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->inRecents:Z

    if-eqz v0, :cond_0

    .line 1117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->inRecents:Z

    .line 1118
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyTaskPersisterLocked(Lcom/android/server/wm/TaskRecord;Z)V

    .line 1121
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->clearRootProcess()V

    .line 1124
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v1, p0, Lcom/android/server/wm/TaskRecord;->taskId:I

    iget v2, p0, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->notifyTaskRemovedFromRecents(II)V

    .line 1125
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

    .line 677
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/TaskRecord;->reparent(Lcom/android/server/wm/ActivityStack;IIZZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method reparent(Lcom/android/server/wm/ActivityStack;IIZZZLjava/lang/String;)Z
    .locals 29
    .param p1, "preferredStack"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "position"    # I
    .param p3, "moveStackMode"    # I
    .param p4, "animate"    # Z
    .param p5, "deferResume"    # Z
    .param p6, "schedulePictureInPictureModeChange"    # Z
    .param p7, "reason"    # Ljava/lang/String;

    .line 703
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v13, p7

    iget-object v0, v1, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v14, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 704
    .local v14, "supervisor":Lcom/android/server/wm/ActivityStackSupervisor;
    iget-object v0, v1, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v15, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 705
    .local v15, "root":Lcom/android/server/wm/RootActivityContainer;
    iget-object v0, v1, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v12, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 706
    .local v12, "windowManager":Lcom/android/server/wm/WindowManagerService;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v9

    .line 707
    .local v9, "sourceStack":Lcom/android/server/wm/ActivityStack;
    const v0, 0x7fffffff

    const/4 v7, 0x0

    if-ne v3, v0, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    move v10, v7

    :goto_0
    invoke-virtual {v14, v1, v2, v10}, Lcom/android/server/wm/ActivityStackSupervisor;->getReparentTargetStack(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityStack;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v11

    .line 709
    .local v11, "toStack":Lcom/android/server/wm/ActivityStack;
    if-ne v11, v9, :cond_1

    .line 710
    return v7

    .line 712
    :cond_1
    iget v10, v11, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    invoke-virtual {v1, v10}, Lcom/android/server/wm/TaskRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v10

    if-nez v10, :cond_2

    .line 713
    return v7

    .line 716
    :cond_2
    if-ne v3, v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v7

    :goto_1
    move/from16 v16, v0

    .line 717
    .local v16, "toTopOfStack":Z
    const/4 v10, 0x0

    if-eqz v16, :cond_4

    invoke-virtual {v11}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 718
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 720
    invoke-virtual {v11, v7, v7, v10, v7}, Lcom/android/server/wm/ActivityStack;->startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;Z)Z

    .line 724
    :cond_4
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v7

    .line 725
    .local v7, "toStackWindowingMode":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    .line 727
    .local v8, "topActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v8, :cond_5

    .line 728
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskRecord;->getWindowingMode()I

    move-result v0

    invoke-static {v0, v7}, Lcom/android/server/wm/TaskRecord;->replaceWindowsOnTaskMove(II)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    move/from16 v18, v0

    .line 729
    .local v18, "mightReplaceWindow":Z
    if-eqz v18, :cond_7

    .line 744
    if-nez v8, :cond_6

    .line 745
    move-object v0, v10

    goto :goto_3

    :cond_6
    iget-object v0, v8, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 744
    :goto_3
    invoke-virtual {v12, v0, v5}, Lcom/android/server/wm/WindowManagerService;->scheduleClearWillReplaceWindows(Landroid/os/IBinder;Z)V

    .line 749
    :cond_7
    invoke-virtual {v12}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 750
    const/16 v19, 0x1

    .line 752
    .local v19, "kept":Z
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskRecord;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_c

    move-object/from16 v20, v0

    .line 753
    .local v20, "r":Lcom/android/server/wm/ActivityRecord;
    move-object/from16 v2, v20

    .end local v20    # "r":Lcom/android/server/wm/ActivityRecord;
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_8

    :try_start_1
    invoke-virtual {v15, v9}, Lcom/android/server/wm/RootActivityContainer;->isTopDisplayFocusedStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 754
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskRecord;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-ne v0, v2, :cond_8

    const/4 v0, 0x1

    goto :goto_4

    .line 833
    .end local v2    # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_0
    move-exception v0

    move-object/from16 v10, p1

    move-object/from16 v25, v9

    move-object v2, v12

    move-object v9, v13

    move-object/from16 v27, v11

    move v11, v3

    move v3, v7

    move-object v7, v15

    move-object/from16 v15, v27

    move-object/from16 v28, v14

    move-object v14, v8

    move-object/from16 v8, v28

    goto/16 :goto_1f

    .line 754
    .restart local v2    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_8
    const/4 v0, 0x0

    :goto_4
    move/from16 v20, v0

    .line 755
    .local v20, "wasFocused":Z
    if-eqz v2, :cond_9

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, v2, :cond_9

    const/4 v0, 0x1

    goto :goto_5

    :cond_9
    const/4 v0, 0x0

    :goto_5
    move-object/from16 v21, v15

    move-object v15, v10

    .end local v15    # "root":Lcom/android/server/wm/RootActivityContainer;
    .local v21, "root":Lcom/android/server/wm/RootActivityContainer;
    move v10, v0

    .line 756
    .local v10, "wasResumed":Z
    if-eqz v2, :cond_a

    :try_start_2
    iget-object v0, v9, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v0, v2, :cond_a

    const/4 v0, 0x1

    goto :goto_6

    .line 833
    .end local v2    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v10    # "wasResumed":Z
    .end local v20    # "wasFocused":Z
    :catchall_1
    move-exception v0

    move-object/from16 v10, p1

    move-object/from16 v25, v9

    move-object v15, v11

    move-object v2, v12

    move-object v9, v13

    move v11, v3

    move v3, v7

    move-object/from16 v7, v21

    move-object/from16 v27, v14

    move-object v14, v8

    move-object/from16 v8, v27

    goto/16 :goto_1f

    .line 756
    .restart local v2    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v10    # "wasResumed":Z
    .restart local v20    # "wasFocused":Z
    :cond_a
    const/4 v0, 0x0

    :goto_6
    move-object v15, v11

    .end local v11    # "toStack":Lcom/android/server/wm/ActivityStack;
    .local v15, "toStack":Lcom/android/server/wm/ActivityStack;
    move v11, v0

    .line 761
    .local v11, "wasPaused":Z
    if-eqz v2, :cond_b

    :try_start_3
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityStack;->isTopStackOnDisplay()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 762
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne v0, v2, :cond_b

    const/4 v0, 0x1

    goto :goto_7

    .line 833
    .end local v2    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v10    # "wasResumed":Z
    .end local v11    # "wasPaused":Z
    .end local v20    # "wasFocused":Z
    :catchall_2
    move-exception v0

    move-object/from16 v10, p1

    move v11, v3

    move v3, v7

    move-object/from16 v25, v9

    move-object v2, v12

    move-object v9, v13

    move-object/from16 v7, v21

    move-object/from16 v27, v14

    move-object v14, v8

    move-object/from16 v8, v27

    goto/16 :goto_1f

    .line 762
    .restart local v2    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v10    # "wasResumed":Z
    .restart local v11    # "wasPaused":Z
    .restart local v20    # "wasFocused":Z
    :cond_b
    const/4 v0, 0x0

    :goto_7
    move/from16 v22, v0

    .line 765
    .local v22, "wasFront":Z
    move/from16 v23, v7

    const/4 v7, 0x0

    .end local v7    # "toStackWindowingMode":I
    .local v23, "toStackWindowingMode":I
    :try_start_4
    invoke-virtual {v15, v1, v3, v7}, Lcom/android/server/wm/ActivityStack;->getAdjustedPositionForTask(Lcom/android/server/wm/TaskRecord;ILcom/android/server/wm/ActivityRecord;)I

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_b

    move v3, v0

    .line 769
    .end local p2    # "position":I
    .local v3, "position":I
    :try_start_5
    iget-object v0, v1, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v15}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_a

    if-nez v4, :cond_c

    move-object/from16 v24, v8

    const/4 v8, 0x1

    goto :goto_8

    :cond_c
    move-object/from16 v24, v8

    const/4 v8, 0x0

    .end local v8    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .local v24, "topActivity":Lcom/android/server/wm/ActivityRecord;
    :goto_8
    :try_start_6
    invoke-virtual {v0, v7, v3, v8}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/TaskStack;IZ)V

    .line 772
    if-eqz v4, :cond_e

    const/4 v8, 0x1

    if-ne v4, v8, :cond_d

    if-nez v20, :cond_f

    if-eqz v22, :cond_d

    goto :goto_9

    :cond_d
    const/4 v0, 0x0

    goto :goto_a

    :cond_e
    const/4 v8, 0x1

    :cond_f
    :goto_9
    move v0, v8

    :goto_a
    move/from16 v17, v0

    .line 775
    .local v17, "moveStackToFront":Z
    if-eqz v17, :cond_10

    .line 776
    const/4 v0, 0x2

    goto :goto_b

    :cond_10
    move v0, v8

    .line 775
    :goto_b
    invoke-virtual {v9, v1, v13, v0}, Lcom/android/server/wm/ActivityStack;->removeTask(Lcom/android/server/wm/TaskRecord;Ljava/lang/String;I)V

    .line 777
    const/4 v7, 0x0

    invoke-virtual {v15, v1, v3, v7, v13}, Lcom/android/server/wm/ActivityStack;->addTask(Lcom/android/server/wm/TaskRecord;IZLjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    .line 779
    if-eqz p6, :cond_11

    .line 781
    :try_start_7
    invoke-virtual {v14, v1, v9}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityStack;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_c

    .line 833
    .end local v2    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v10    # "wasResumed":Z
    .end local v11    # "wasPaused":Z
    .end local v17    # "moveStackToFront":Z
    .end local v20    # "wasFocused":Z
    .end local v22    # "wasFront":Z
    :catchall_3
    move-exception v0

    move-object/from16 v10, p1

    move v11, v3

    move-object/from16 v25, v9

    move-object v2, v12

    move-object v9, v13

    move-object v8, v14

    move-object/from16 v7, v21

    move/from16 v3, v23

    move-object/from16 v14, v24

    goto/16 :goto_1f

    .line 786
    .restart local v2    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v10    # "wasResumed":Z
    .restart local v11    # "wasPaused":Z
    .restart local v17    # "moveStackToFront":Z
    .restart local v20    # "wasFocused":Z
    .restart local v22    # "wasFront":Z
    :cond_11
    :goto_c
    :try_start_8
    iget-object v0, v1, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    if-eqz v0, :cond_12

    .line 788
    :try_start_9
    iget-object v0, v1, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v7, v1, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    iget v8, v1, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-interface {v0, v7, v8}, Landroid/service/voice/IVoiceInteractionSession;->taskStarted(Landroid/content/Intent;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 790
    goto :goto_d

    .line 789
    :catch_0
    move-exception v0

    .line 795
    :cond_12
    :goto_d
    if-eqz v2, :cond_13

    .line 796
    move/from16 p2, v3

    move/from16 v8, v23

    const/4 v3, 0x0

    .end local v3    # "position":I
    .end local v23    # "toStackWindowingMode":I
    .local v8, "toStackWindowingMode":I
    .restart local p2    # "position":I
    move-object v7, v15

    move v3, v8

    const/4 v13, 0x1

    move-object/from16 v27, v24

    move-object/from16 v24, v14

    move-object/from16 v14, v27

    .end local v8    # "toStackWindowingMode":I
    .local v3, "toStackWindowingMode":I
    .local v14, "topActivity":Lcom/android/server/wm/ActivityRecord;
    .local v24, "supervisor":Lcom/android/server/wm/ActivityStackSupervisor;
    move-object v8, v2

    move-object/from16 v25, v9

    .end local v9    # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .local v25, "sourceStack":Lcom/android/server/wm/ActivityStack;
    move/from16 v9, v17

    move-object/from16 v26, v12

    .end local v12    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .local v26, "windowManager":Lcom/android/server/wm/WindowManagerService;
    move-object/from16 v12, p7

    :try_start_a
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/wm/ActivityStack;->moveToFrontAndResumeStateIfNeeded(Lcom/android/server/wm/ActivityRecord;ZZZLjava/lang/String;)V

    goto :goto_f

    .line 833
    .end local v2    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v10    # "wasResumed":Z
    .end local v11    # "wasPaused":Z
    .end local v17    # "moveStackToFront":Z
    .end local v20    # "wasFocused":Z
    .end local v22    # "wasFront":Z
    :catchall_4
    move-exception v0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v9, p7

    :goto_e
    move-object/from16 v7, v21

    move-object/from16 v8, v24

    move-object/from16 v2, v26

    goto/16 :goto_1f

    .line 795
    .end local v25    # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .end local v26    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .end local p2    # "position":I
    .restart local v2    # "r":Lcom/android/server/wm/ActivityRecord;
    .local v3, "position":I
    .restart local v9    # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .restart local v10    # "wasResumed":Z
    .restart local v11    # "wasPaused":Z
    .restart local v12    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .local v14, "supervisor":Lcom/android/server/wm/ActivityStackSupervisor;
    .restart local v17    # "moveStackToFront":Z
    .restart local v20    # "wasFocused":Z
    .restart local v22    # "wasFront":Z
    .restart local v23    # "toStackWindowingMode":I
    .local v24, "topActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_13
    move/from16 p2, v3

    move-object/from16 v25, v9

    move-object/from16 v26, v12

    move/from16 v3, v23

    const/4 v13, 0x1

    move-object/from16 v27, v24

    move-object/from16 v24, v14

    move-object/from16 v14, v27

    .line 799
    .end local v9    # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .end local v12    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .end local v23    # "toStackWindowingMode":I
    .local v3, "toStackWindowingMode":I
    .local v14, "topActivity":Lcom/android/server/wm/ActivityRecord;
    .local v24, "supervisor":Lcom/android/server/wm/ActivityStackSupervisor;
    .restart local v25    # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .restart local v26    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .restart local p2    # "position":I
    :goto_f
    if-nez v5, :cond_14

    .line 800
    iget-object v0, v1, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 805
    :cond_14
    :try_start_b
    invoke-virtual {v15}, Lcom/android/server/wm/ActivityStack;->prepareFreezingTaskBounds()V

    .line 808
    const/4 v0, 0x3

    if-ne v3, v0, :cond_15

    move v0, v13

    goto :goto_10

    :cond_15
    const/4 v0, 0x0

    .line 810
    .local v0, "toStackSplitScreenPrimary":Z
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskRecord;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 811
    .local v7, "configBounds":Landroid/graphics/Rect;
    if-eq v3, v13, :cond_16

    const/4 v8, 0x4

    if-ne v3, v8, :cond_18

    .line 813
    :cond_16
    invoke-virtual {v15}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    if-nez v8, :cond_18

    .line 814
    :try_start_c
    invoke-virtual {v15}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v8

    if-nez v18, :cond_17

    move v9, v13

    goto :goto_11

    :cond_17
    const/4 v9, 0x0

    :goto_11
    const/4 v12, 0x0

    invoke-virtual {v1, v8, v12, v9, v6}, Lcom/android/server/wm/TaskRecord;->resize(Landroid/graphics/Rect;IZZ)Z

    move-result v8

    move/from16 v19, v8

    move-object/from16 v9, p7

    goto :goto_18

    .line 816
    :cond_18
    const/4 v8, 0x5

    if-ne v3, v8, :cond_1b

    .line 817
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskRecord;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v8

    .line 818
    .local v8, "bounds":Landroid/graphics/Rect;
    if-nez v8, :cond_19

    .line 819
    iget-object v9, v1, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityStackSupervisor;->getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;

    move-result-object v9

    const/4 v12, 0x0

    invoke-virtual {v9, v1, v12}, Lcom/android/server/wm/LaunchParamsController;->layoutTask(Lcom/android/server/wm/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;)Z

    .line 820
    move-object v8, v7

    .line 822
    :cond_19
    if-nez v18, :cond_1a

    move v9, v13

    goto :goto_12

    :cond_1a
    const/4 v9, 0x0

    :goto_12
    const/4 v12, 0x2

    invoke-virtual {v1, v8, v12, v9, v6}, Lcom/android/server/wm/TaskRecord;->resize(Landroid/graphics/Rect;IZZ)Z

    move-result v9
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    move/from16 v19, v9

    .end local v8    # "bounds":Landroid/graphics/Rect;
    goto :goto_13

    .line 823
    :cond_1b
    if-nez v0, :cond_1d

    const/4 v8, 0x2

    if-ne v3, v8, :cond_1c

    goto :goto_14

    :cond_1c
    :goto_13
    move-object/from16 v9, p7

    goto :goto_18

    .line 824
    :cond_1d
    :goto_14
    if-eqz v0, :cond_1e

    if-ne v4, v13, :cond_1e

    .line 827
    :try_start_d
    iget-object v8, v1, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    move-object/from16 v9, p7

    :try_start_e
    invoke-virtual {v8, v9}, Lcom/android/server/wm/ActivityStackSupervisor;->moveRecentsStackToFront(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto :goto_16

    .line 833
    .end local v0    # "toStackSplitScreenPrimary":Z
    .end local v2    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v7    # "configBounds":Landroid/graphics/Rect;
    .end local v10    # "wasResumed":Z
    .end local v11    # "wasPaused":Z
    .end local v17    # "moveStackToFront":Z
    .end local v20    # "wasFocused":Z
    .end local v22    # "wasFront":Z
    :catchall_5
    move-exception v0

    goto :goto_15

    :catchall_6
    move-exception v0

    move-object/from16 v9, p7

    :goto_15
    move-object/from16 v10, p1

    move/from16 v11, p2

    goto/16 :goto_e

    .line 824
    .restart local v0    # "toStackSplitScreenPrimary":Z
    .restart local v2    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v7    # "configBounds":Landroid/graphics/Rect;
    .restart local v10    # "wasResumed":Z
    .restart local v11    # "wasPaused":Z
    .restart local v17    # "moveStackToFront":Z
    .restart local v20    # "wasFocused":Z
    .restart local v22    # "wasFront":Z
    :cond_1e
    move-object/from16 v9, p7

    .line 829
    :goto_16
    :try_start_f
    invoke-virtual {v15}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v8

    if-nez v18, :cond_1f

    move v12, v13

    goto :goto_17

    :cond_1f
    const/4 v12, 0x0

    :goto_17
    const/4 v13, 0x0

    invoke-virtual {v1, v8, v13, v12, v6}, Lcom/android/server/wm/TaskRecord;->resize(Landroid/graphics/Rect;IZZ)Z

    move-result v8
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    move/from16 v19, v8

    .line 833
    .end local v0    # "toStackSplitScreenPrimary":Z
    .end local v2    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v7    # "configBounds":Landroid/graphics/Rect;
    .end local v10    # "wasResumed":Z
    .end local v11    # "wasPaused":Z
    .end local v17    # "moveStackToFront":Z
    .end local v20    # "wasFocused":Z
    .end local v22    # "wasFront":Z
    :goto_18
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 834
    nop

    .line 836
    if-eqz v18, :cond_22

    .line 846
    if-nez v14, :cond_20

    .line 847
    const/4 v10, 0x0

    goto :goto_19

    :cond_20
    iget-object v10, v14, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :goto_19
    if-nez v19, :cond_21

    const/4 v0, 0x1

    goto :goto_1a

    :cond_21
    const/4 v0, 0x0

    .line 846
    :goto_1a
    move-object/from16 v2, v26

    .end local v26    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .local v2, "windowManager":Lcom/android/server/wm/WindowManagerService;
    invoke-virtual {v2, v10, v0}, Lcom/android/server/wm/WindowManagerService;->scheduleClearWillReplaceWindows(Landroid/os/IBinder;Z)V

    goto :goto_1b

    .line 836
    .end local v2    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .restart local v26    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    :cond_22
    move-object/from16 v2, v26

    .line 851
    .end local v26    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .restart local v2    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    :goto_1b
    if-nez v6, :cond_24

    .line 854
    if-nez v18, :cond_23

    const/4 v0, 0x1

    goto :goto_1c

    :cond_23
    const/4 v0, 0x0

    :goto_1c
    move-object/from16 v7, v21

    const/4 v8, 0x0

    const/4 v13, 0x0

    .end local v21    # "root":Lcom/android/server/wm/RootActivityContainer;
    .local v7, "root":Lcom/android/server/wm/RootActivityContainer;
    invoke-virtual {v7, v8, v13, v0}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 855
    invoke-virtual {v7}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    goto :goto_1d

    .line 851
    .end local v7    # "root":Lcom/android/server/wm/RootActivityContainer;
    .restart local v21    # "root":Lcom/android/server/wm/RootActivityContainer;
    :cond_24
    move-object/from16 v7, v21

    const/4 v13, 0x0

    .line 859
    .end local v21    # "root":Lcom/android/server/wm/RootActivityContainer;
    .restart local v7    # "root":Lcom/android/server/wm/RootActivityContainer;
    :goto_1d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    move-object/from16 v8, v24

    .end local v24    # "supervisor":Lcom/android/server/wm/ActivityStackSupervisor;
    .local v8, "supervisor":Lcom/android/server/wm/ActivityStackSupervisor;
    invoke-virtual {v8, v1, v0, v13, v15}, Lcom/android/server/wm/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/TaskRecord;IILcom/android/server/wm/ActivityStack;)V

    .line 862
    move-object/from16 v10, p1

    if-ne v10, v15, :cond_25

    const/4 v13, 0x1

    :cond_25
    return v13

    .line 833
    .end local v2    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .end local v7    # "root":Lcom/android/server/wm/RootActivityContainer;
    .end local v8    # "supervisor":Lcom/android/server/wm/ActivityStackSupervisor;
    .restart local v21    # "root":Lcom/android/server/wm/RootActivityContainer;
    .restart local v24    # "supervisor":Lcom/android/server/wm/ActivityStackSupervisor;
    .restart local v26    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    :catchall_7
    move-exception v0

    move-object/from16 v10, p1

    goto :goto_1e

    :catchall_8
    move-exception v0

    move-object/from16 v10, p1

    move-object/from16 v9, p7

    :goto_1e
    move-object/from16 v7, v21

    move-object/from16 v8, v24

    move-object/from16 v2, v26

    move/from16 v11, p2

    .end local v21    # "root":Lcom/android/server/wm/RootActivityContainer;
    .end local v24    # "supervisor":Lcom/android/server/wm/ActivityStackSupervisor;
    .end local v26    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .restart local v2    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .restart local v7    # "root":Lcom/android/server/wm/RootActivityContainer;
    .restart local v8    # "supervisor":Lcom/android/server/wm/ActivityStackSupervisor;
    goto/16 :goto_1f

    .end local v2    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .end local v7    # "root":Lcom/android/server/wm/RootActivityContainer;
    .end local v8    # "supervisor":Lcom/android/server/wm/ActivityStackSupervisor;
    .end local v25    # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .end local p2    # "position":I
    .local v3, "position":I
    .restart local v9    # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .restart local v12    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .local v14, "supervisor":Lcom/android/server/wm/ActivityStackSupervisor;
    .restart local v21    # "root":Lcom/android/server/wm/RootActivityContainer;
    .restart local v23    # "toStackWindowingMode":I
    .local v24, "topActivity":Lcom/android/server/wm/ActivityRecord;
    :catchall_9
    move-exception v0

    move-object/from16 v10, p1

    move/from16 p2, v3

    move-object/from16 v25, v9

    move-object v2, v12

    move-object v9, v13

    move-object v8, v14

    move-object/from16 v7, v21

    move/from16 v3, v23

    move-object/from16 v14, v24

    move/from16 v11, p2

    .end local v9    # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .end local v12    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .end local v21    # "root":Lcom/android/server/wm/RootActivityContainer;
    .end local v23    # "toStackWindowingMode":I
    .end local v24    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v2    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .local v3, "toStackWindowingMode":I
    .restart local v7    # "root":Lcom/android/server/wm/RootActivityContainer;
    .restart local v8    # "supervisor":Lcom/android/server/wm/ActivityStackSupervisor;
    .local v14, "topActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v25    # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .restart local p2    # "position":I
    goto :goto_1f

    .end local v2    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .end local v7    # "root":Lcom/android/server/wm/RootActivityContainer;
    .end local v25    # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .end local p2    # "position":I
    .local v3, "position":I
    .local v8, "topActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v9    # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .restart local v12    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .local v14, "supervisor":Lcom/android/server/wm/ActivityStackSupervisor;
    .restart local v21    # "root":Lcom/android/server/wm/RootActivityContainer;
    .restart local v23    # "toStackWindowingMode":I
    :catchall_a
    move-exception v0

    move-object/from16 v10, p1

    move/from16 p2, v3

    move-object/from16 v25, v9

    move-object v2, v12

    move-object v9, v13

    move-object/from16 v7, v21

    move/from16 v3, v23

    move-object/from16 v27, v14

    move-object v14, v8

    move-object/from16 v8, v27

    move/from16 v11, p2

    .end local v9    # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .end local v12    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .end local v21    # "root":Lcom/android/server/wm/RootActivityContainer;
    .end local v23    # "toStackWindowingMode":I
    .restart local v2    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .local v3, "toStackWindowingMode":I
    .restart local v7    # "root":Lcom/android/server/wm/RootActivityContainer;
    .local v8, "supervisor":Lcom/android/server/wm/ActivityStackSupervisor;
    .local v14, "topActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v25    # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .restart local p2    # "position":I
    goto :goto_1f

    .end local v2    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .end local v3    # "toStackWindowingMode":I
    .end local v7    # "root":Lcom/android/server/wm/RootActivityContainer;
    .end local v25    # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .local v8, "topActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v9    # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .restart local v12    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .local v14, "supervisor":Lcom/android/server/wm/ActivityStackSupervisor;
    .restart local v21    # "root":Lcom/android/server/wm/RootActivityContainer;
    .restart local v23    # "toStackWindowingMode":I
    :catchall_b
    move-exception v0

    move-object/from16 v10, p1

    move-object/from16 v25, v9

    move-object v2, v12

    move-object v9, v13

    move-object/from16 v7, v21

    move/from16 v3, v23

    move-object/from16 v27, v14

    move-object v14, v8

    move-object/from16 v8, v27

    move/from16 v11, p2

    .end local v9    # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .end local v12    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .end local v21    # "root":Lcom/android/server/wm/RootActivityContainer;
    .end local v23    # "toStackWindowingMode":I
    .restart local v2    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .restart local v3    # "toStackWindowingMode":I
    .restart local v7    # "root":Lcom/android/server/wm/RootActivityContainer;
    .local v8, "supervisor":Lcom/android/server/wm/ActivityStackSupervisor;
    .local v14, "topActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v25    # "sourceStack":Lcom/android/server/wm/ActivityStack;
    goto :goto_1f

    .end local v2    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .end local v3    # "toStackWindowingMode":I
    .end local v25    # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .local v7, "toStackWindowingMode":I
    .local v8, "topActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v9    # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .local v11, "toStack":Lcom/android/server/wm/ActivityStack;
    .restart local v12    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .local v14, "supervisor":Lcom/android/server/wm/ActivityStackSupervisor;
    .local v15, "root":Lcom/android/server/wm/RootActivityContainer;
    :catchall_c
    move-exception v0

    move-object v10, v2

    move v3, v7

    move-object/from16 v25, v9

    move-object v2, v12

    move-object v9, v13

    move-object v7, v15

    move-object v15, v11

    move-object/from16 v27, v14

    move-object v14, v8

    move-object/from16 v8, v27

    move/from16 v11, p2

    .end local v9    # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .end local v12    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .end local p2    # "position":I
    .restart local v2    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .restart local v3    # "toStackWindowingMode":I
    .local v7, "root":Lcom/android/server/wm/RootActivityContainer;
    .local v8, "supervisor":Lcom/android/server/wm/ActivityStackSupervisor;
    .local v11, "position":I
    .local v14, "topActivity":Lcom/android/server/wm/ActivityRecord;
    .local v15, "toStack":Lcom/android/server/wm/ActivityStack;
    .restart local v25    # "sourceStack":Lcom/android/server/wm/ActivityStack;
    :goto_1f
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

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

    .line 658
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

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/TaskRecord;->reparent(Lcom/android/server/wm/ActivityStack;IIZZZLjava/lang/String;)Z

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

    .line 669
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

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/TaskRecord;->reparent(Lcom/android/server/wm/ActivityStack;IIZZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public requestResize(Landroid/graphics/Rect;I)V
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "resizeMode"    # I

    .line 561
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v1, p0, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->resizeTask(ILandroid/graphics/Rect;I)V

    .line 562
    return-void
.end method

.method resize(Landroid/graphics/Rect;IZZ)Z
    .locals 8
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "resizeMode"    # I
    .param p3, "preserveWindow"    # Z
    .param p4, "deferResume"    # Z

    .line 565
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 568
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->isResizeable()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 569
    const-string v0, "ActivityTaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resizeTask: task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " not resizeable."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    nop

    .line 635
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 570
    return v1

    .line 575
    :cond_0
    and-int/lit8 v0, p2, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 576
    .local v0, "forced":Z
    :goto_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskRecord;->equivalentRequestedOverrideBounds(Landroid/graphics/Rect;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    if-nez v0, :cond_2

    .line 578
    nop

    .line 635
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 578
    return v1

    .line 581
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    if-nez v3, :cond_4

    .line 585
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    .line 586
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->inFreeformWindowingMode()Z

    move-result v3

    if-nez v3, :cond_3

    .line 588
    iget-object v3, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->restoreRecentTaskLocked(Lcom/android/server/wm/TaskRecord;Landroid/app/ActivityOptions;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 590
    :cond_3
    nop

    .line 635
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 590
    return v1

    .line 593
    :cond_4
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskRecord;->canResizeToBounds(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 602
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "am.resizeTask_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v3, 0x40

    invoke-static {v3, v4, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 604
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    move-result v1

    .line 610
    .local v1, "updatedConfig":Z
    const/4 v5, 0x1

    .line 611
    .local v5, "kept":Z
    if-eqz v1, :cond_5

    .line 612
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    .line 613
    .local v6, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v6, :cond_5

    if-nez p4, :cond_5

    .line 614
    invoke-virtual {v6, v2, p3}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZ)Z

    move-result v7

    move v5, v7

    .line 622
    iget-object v7, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v7, v6, v2, p3}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 623
    if-nez v5, :cond_5

    .line 624
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 628
    .end local v6    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v2, v5, v0}, Lcom/android/server/wm/Task;->resize(ZZ)V

    .line 630
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->saveLaunchingStateIfNeeded()V

    .line 632
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 633
    nop

    .line 635
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 633
    return v5

    .line 594
    .end local v1    # "updatedConfig":Z
    .end local v5    # "kept":Z
    :cond_6
    :try_start_4
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

    iget v3, p0, Lcom/android/server/wm/TaskRecord;->mResizeMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wm/TaskRecord;
    .end local p1    # "bounds":Landroid/graphics/Rect;
    .end local p2    # "resizeMode":I
    .end local p3    # "preserveWindow":Z
    .end local p4    # "deferResume":Z
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 635
    .end local v0    # "forced":Z
    .restart local p0    # "this":Lcom/android/server/wm/TaskRecord;
    .restart local p1    # "bounds":Landroid/graphics/Rect;
    .restart local p2    # "resizeMode":I
    .restart local p3    # "preserveWindow":Z
    .restart local p4    # "deferResume":Z
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method resizeWindowContainer()V
    .locals 2

    .line 641
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/Task;->resize(ZZ)V

    .line 642
    return-void
.end method

.method resolveOverrideConfiguration(Landroid/content/res/Configuration;)V
    .locals 7
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 2246
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2247
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->resolveOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 2248
    nop

    .line 2249
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 2250
    .local v0, "windowingMode":I
    if-nez v0, :cond_0

    .line 2251
    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 2253
    :cond_0
    nop

    .line 2254
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 2256
    .local v1, "outOverrideBounds":Landroid/graphics/Rect;
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 2257
    const/4 v2, 0x0

    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 2258
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    .line 2257
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/wm/TaskRecord;->computeFullscreenBounds(Landroid/graphics/Rect;Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;I)V

    .line 2262
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2264
    return-void

    .line 2267
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/TaskRecord;->adjustForMinimalTaskDimensions(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2268
    const/4 v2, 0x5

    if-ne v0, v2, :cond_4

    .line 2270
    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v2, v2

    const/high16 v3, 0x43200000    # 160.0f

    div-float/2addr v2, v3

    .line 2272
    .local v2, "density":F
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 2273
    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2274
    .local v3, "parentBounds":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v4

    .line 2275
    .local v4, "display":Lcom/android/server/wm/ActivityDisplay;
    if-eqz v4, :cond_3

    iget-object v5, v4, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v5, :cond_3

    .line 2279
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 2280
    .local v5, "stableBounds":Landroid/graphics/Rect;
    iget-object v6, v4, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6, v5}, Lcom/android/server/wm/DisplayContent;->getStableRect(Landroid/graphics/Rect;)V

    .line 2281
    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 2284
    .end local v5    # "stableBounds":Landroid/graphics/Rect;
    :cond_3
    const/high16 v5, 0x42400000    # 48.0f

    mul-float/2addr v5, v2

    float-to-int v5, v5

    const/high16 v6, 0x42000000    # 32.0f

    mul-float/2addr v6, v2

    float-to-int v6, v6

    invoke-static {v1, v3, v5, v6}, Lcom/android/server/wm/TaskRecord;->fitWithinBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 2289
    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    .line 2290
    .local v5, "offsetTop":I
    if-lez v5, :cond_4

    .line 2298
    iget-object v6, p0, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-static {v6, v0}, Lcom/android/server/wm/OpQuickReplyInjector;->skipTopBoundsAdjust(Landroid/content/ComponentName;I)Z

    move-result v6

    if-nez v6, :cond_4

    .line 2299
    const/4 v6, 0x0

    invoke-virtual {v1, v6, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 2304
    .end local v2    # "density":F
    .end local v3    # "parentBounds":Landroid/graphics/Rect;
    .end local v4    # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v5    # "offsetTop":I
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/android/server/wm/TaskRecord;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 2305
    return-void
.end method

.method returnsToHomeStack()Z
    .locals 3

    .line 1025
    const v0, 0x10004000

    .line 1026
    .local v0, "returnHomeFlags":I
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, 0x10004000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method saveLaunchingStateIfNeeded()V
    .locals 2

    .line 1960
    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->hasBeenVisible:Z

    if-nez v0, :cond_0

    .line 1962
    return-void

    .line 1965
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getWindowingMode()I

    move-result v0

    .line 1966
    .local v0, "windowingMode":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 1968
    return-void

    .line 1972
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/LaunchParamsPersister;->saveTask(Lcom/android/server/wm/TaskRecord;)V

    .line 1973
    return-void
.end method

.method saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 7
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2673
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

    .line 2675
    :cond_0
    iget v0, p0, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "task_id"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2676
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 2677
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "real_activity"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2679
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->realActivitySuspended:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "real_activity_suspended"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2680
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->origActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_2

    .line 2681
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "orig_activity"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2687
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    const-string v2, "@"

    const-string v3, "root_affinity"

    if-eqz v0, :cond_4

    .line 2688
    const-string v4, "affinity"

    invoke-interface {p1, v1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2689
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/wm/TaskRecord;->rootAffinity:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2690
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move-object v0, v2

    :goto_0
    invoke-interface {p1, v1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2

    .line 2692
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 2693
    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    move-object v0, v2

    :goto_1
    invoke-interface {p1, v1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2695
    :cond_6
    :goto_2
    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->rootWasReset:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "root_has_reset"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2696
    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->autoRemoveRecents:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "auto_remove_recents"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2697
    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->askedCompatMode:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "asked_compat_mode"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2698
    iget v0, p0, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "user_id"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2699
    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->mUserSetupComplete:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "user_setup_complete"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2700
    iget v0, p0, Lcom/android/server/wm/TaskRecord;->effectiveUid:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "effective_uid"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2701
    iget-wide v2, p0, Lcom/android/server/wm/TaskRecord;->mLastTimeMoved:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "last_time_moved"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2702
    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->mNeverRelinquishIdentity:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "never_relinquish_identity"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2703
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    .line 2704
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "last_description"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2706
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v0, :cond_8

    .line 2707
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager$TaskDescription;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2709
    :cond_8
    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskColor:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "task_affiliation_color"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2710
    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "task_affiliation"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2711
    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mPrevAffiliateTaskId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "prev_affiliation"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2712
    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mNextAffiliateTaskId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "next_affiliation"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2713
    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mCallingUid:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "calling_uid"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2714
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mCallingPackage:Ljava/lang/String;

    if-nez v0, :cond_9

    const-string v0, ""

    :cond_9
    const-string v2, "calling_package"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2715
    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mResizeMode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "resize_mode"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2716
    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->mSupportsPictureInPicture:Z

    .line 2717
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    .line 2716
    const-string v2, "supports_picture_in_picture"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2718
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_a

    .line 2719
    nop

    .line 2720
    invoke-virtual {v0}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 2719
    const-string v2, "non_fullscreen_bounds"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2722
    :cond_a
    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mMinWidth:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "min_width"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2723
    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mMinHeight:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "min_height"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2724
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "persist_task_version"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2726
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v0, :cond_b

    .line 2727
    const-string v0, "affinity_intent"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2728
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v2, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2729
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2732
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_c

    .line 2733
    const-string v0, "intent"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2734
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2735
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2738
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 2739
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2740
    .local v2, "numActivities":I
    const/4 v3, 0x0

    .local v3, "activityNdx":I
    :goto_3
    if-ge v3, v2, :cond_e

    .line 2741
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 2742
    .local v4, "r":Lcom/android/server/wm/ActivityRecord;
    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v5, Landroid/content/pm/ActivityInfo;->persistableMode:I

    if-eqz v5, :cond_e

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isPersistable()Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 2743
    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const/high16 v6, 0x80000

    and-int/2addr v5, v6

    or-int/lit16 v5, v5, 0x2000

    if-ne v5, v6, :cond_d

    if-lez v3, :cond_d

    .line 2747
    goto :goto_4

    .line 2749
    :cond_d
    const-string v5, "activity"

    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2750
    invoke-virtual {v4, p1}, Lcom/android/server/wm/ActivityRecord;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2751
    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2740
    .end local v4    # "r":Lcom/android/server/wm/ActivityRecord;
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2753
    .end local v3    # "activityNdx":I
    :cond_e
    :goto_4
    return-void
.end method

.method setDisplayedBounds(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 2018
    if-nez p1, :cond_0

    .line 2019
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mDisplayedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    .line 2021
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mDisplayedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2023
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_2

    .line 2024
    nop

    .line 2025
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mDisplayedBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mDisplayedBounds:Landroid/graphics/Rect;

    .line 2024
    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setOverrideDisplayedBounds(Landroid/graphics/Rect;)V

    .line 2027
    :cond_2
    return-void
.end method

.method final setFrontOfTask()V
    .locals 7

    .line 1288
    const/4 v0, 0x0

    .line 1289
    .local v0, "foundFront":Z
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1290
    .local v1, "numActivities":I
    const/4 v2, 0x0

    .local v2, "activityNdx":I
    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v2, v1, :cond_2

    .line 1291
    iget-object v5, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    .line 1292
    .local v5, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v0, :cond_1

    iget-boolean v6, v5, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_0

    goto :goto_1

    .line 1295
    :cond_0
    iput-boolean v4, v5, Lcom/android/server/wm/ActivityRecord;->frontOfTask:Z

    .line 1297
    const/4 v0, 0x1

    goto :goto_2

    .line 1293
    :cond_1
    :goto_1
    iput-boolean v3, v5, Lcom/android/server/wm/ActivityRecord;->frontOfTask:Z

    .line 1290
    .end local v5    # "r":Lcom/android/server/wm/ActivityRecord;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1300
    .end local v2    # "activityNdx":I
    :cond_2
    if-nez v0, :cond_3

    if-lez v1, :cond_3

    .line 1303
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    iput-boolean v4, v2, Lcom/android/server/wm/ActivityRecord;->frontOfTask:Z

    .line 1305
    :cond_3
    return-void
.end method

.method setIntent(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 905
    iget v0, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    iput v0, p0, Lcom/android/server/wm/TaskRecord;->mCallingUid:I

    .line 906
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 907
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 908
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskRecord;->setLockTaskAuth(Lcom/android/server/wm/ActivityRecord;)V

    .line 909
    return-void
.end method

.method setLastNonFullscreenBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 1871
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 1872
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    goto :goto_0

    .line 1874
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1876
    :goto_0
    return-void
.end method

.method setLockTaskAuth()V
    .locals 1

    .line 1593
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskRecord;->setLockTaskAuth(Lcom/android/server/wm/ActivityRecord;)V

    .line 1594
    return-void
.end method

.method setNextAffiliate(Lcom/android/server/wm/TaskRecord;)V
    .locals 1
    .param p1, "nextAffiliate"    # Lcom/android/server/wm/TaskRecord;

    .line 1035
    iput-object p1, p0, Lcom/android/server/wm/TaskRecord;->mNextAffiliate:Lcom/android/server/wm/TaskRecord;

    .line 1036
    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/android/server/wm/TaskRecord;->taskId:I

    :goto_0
    iput v0, p0, Lcom/android/server/wm/TaskRecord;->mNextAffiliateTaskId:I

    .line 1037
    return-void
.end method

.method setPrevAffiliate(Lcom/android/server/wm/TaskRecord;)V
    .locals 1
    .param p1, "prevAffiliate"    # Lcom/android/server/wm/TaskRecord;

    .line 1030
    iput-object p1, p0, Lcom/android/server/wm/TaskRecord;->mPrevAffiliate:Lcom/android/server/wm/TaskRecord;

    .line 1031
    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/android/server/wm/TaskRecord;->taskId:I

    :goto_0
    iput v0, p0, Lcom/android/server/wm/TaskRecord;->mPrevAffiliateTaskId:I

    .line 1032
    return-void
.end method

.method setResizeMode(I)V
    .locals 3
    .param p1, "resizeMode"    # I

    .line 536
    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mResizeMode:I

    if-ne v0, p1, :cond_0

    .line 537
    return-void

    .line 539
    :cond_0
    iput p1, p0, Lcom/android/server/wm/TaskRecord;->mResizeMode:I

    .line 542
    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mResizeMode:I

    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/android/server/wm/OpQuickReplyInjector;->shouldForceResizeTask(ILandroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 543
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/TaskRecord;->mResizeMode:I

    .line 546
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/Task;->setResizeable(I)V

    .line 547
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 548
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 549
    return-void
.end method

.method setRootProcess(Lcom/android/server/wm/WindowProcessController;)V
    .locals 2
    .param p1, "proc"    # Lcom/android/server/wm/WindowProcessController;

    .line 2419
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->clearRootProcess()V

    .line 2420
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 2421
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 2422
    iput-object p1, p0, Lcom/android/server/wm/TaskRecord;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    .line 2423
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowProcessController;->addRecentTask(Lcom/android/server/wm/TaskRecord;)V

    .line 2425
    :cond_0
    return-void
.end method

.method setStack(Lcom/android/server/wm/ActivityStack;)V
    .locals 4
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 1048
    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityStack;->isInStackLocked(Lcom/android/server/wm/TaskRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1049
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Task must be added as a Stack child first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1051
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    .line 1052
    .local v0, "oldStack":Lcom/android/server/wm/ActivityStack;
    iput-object p1, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    .line 1057
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    if-eq v0, v1, :cond_4

    .line 1058
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_4

    .line 1059
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskRecord;->getChildAt(I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 1061
    .local v2, "activity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_2

    .line 1062
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStack;->onActivityRemovedFromStack(Lcom/android/server/wm/ActivityRecord;)V

    .line 1065
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v3, :cond_3

    .line 1066
    invoke-virtual {p1, v2}, Lcom/android/server/wm/ActivityStack;->onActivityAddedToStack(Lcom/android/server/wm/ActivityRecord;)V

    .line 1058
    .end local v2    # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1071
    .end local v1    # "i":I
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->onParentChanged()V

    .line 1072
    return-void
.end method

.method setTask(Lcom/android/server/wm/Task;)V
    .locals 0
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 486
    iput-object p1, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    .line 487
    return-void
.end method

.method setTaskDockedResizing(Z)V
    .locals 2
    .param p1, "resizing"    # Z

    .line 552
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    if-nez v0, :cond_0

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTaskDockedResizing: taskId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " not found."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    return-void

    .line 556
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/wm/Task;->setTaskDockedResizing(Z)V

    .line 557
    return-void
.end method

.method setTaskToAffiliateWith(Lcom/android/server/wm/TaskRecord;)V
    .locals 4
    .param p1, "taskToAffiliateWith"    # Lcom/android/server/wm/TaskRecord;

    .line 1128
    invoke-direct {p0}, Lcom/android/server/wm/TaskRecord;->closeRecentsChain()V

    .line 1129
    iget v0, p1, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    iput v0, p0, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    .line 1130
    iget v0, p1, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskColor:I

    iput v0, p0, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskColor:I

    .line 1132
    :goto_0
    iget-object v0, p1, Lcom/android/server/wm/TaskRecord;->mNextAffiliate:Lcom/android/server/wm/TaskRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1133
    iget-object v0, p1, Lcom/android/server/wm/TaskRecord;->mNextAffiliate:Lcom/android/server/wm/TaskRecord;

    .line 1134
    .local v0, "nextRecents":Lcom/android/server/wm/TaskRecord;
    iget v2, v0, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    iget v3, p0, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    if-eq v2, v3, :cond_1

    .line 1135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTaskToAffiliateWith: nextRecents="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " affilTaskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    iget-object v2, v0, Lcom/android/server/wm/TaskRecord;->mPrevAffiliate:Lcom/android/server/wm/TaskRecord;

    if-ne v2, p1, :cond_0

    .line 1138
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskRecord;->setPrevAffiliate(Lcom/android/server/wm/TaskRecord;)V

    .line 1140
    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/server/wm/TaskRecord;->setNextAffiliate(Lcom/android/server/wm/TaskRecord;)V

    .line 1141
    goto :goto_1

    .line 1143
    :cond_1
    move-object p1, v0

    .line 1144
    .end local v0    # "nextRecents":Lcom/android/server/wm/TaskRecord;
    goto :goto_0

    .line 1145
    :cond_2
    :goto_1
    invoke-virtual {p1, p0}, Lcom/android/server/wm/TaskRecord;->setNextAffiliate(Lcom/android/server/wm/TaskRecord;)V

    .line 1146
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskRecord;->setPrevAffiliate(Lcom/android/server/wm/TaskRecord;)V

    .line 1147
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskRecord;->setNextAffiliate(Lcom/android/server/wm/TaskRecord;)V

    .line 1148
    return-void
.end method

.method public supportsSplitScreenWindowingMode()Z
    .locals 2

    .line 1640
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->supportsSplitScreenWindowingMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsSplitScreenMultiWindow:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    if-nez v0, :cond_0

    .line 1643
    invoke-direct {p0, v1}, Lcom/android/server/wm/TaskRecord;->isResizeable(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mResizeMode:I

    .line 1644
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isPreserveOrientationMode(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 1640
    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2577
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2578
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2579
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2580
    const-string v1, " U="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2581
    iget v1, p0, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2582
    const-string v1, " StackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2583
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getStackId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2584
    const-string v1, " sz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2585
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2586
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2587
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2589
    :cond_0
    const-string v1, "TaskRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2590
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2591
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2592
    iget v1, p0, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2593
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 2594
    const-string v1, " A="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2595
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2596
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_2

    .line 2597
    const-string v1, " I="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2598
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2599
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2600
    const-string v1, " aI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2601
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2603
    :cond_3
    const-string v1, " ??"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2605
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/TaskRecord;->stringName:Ljava/lang/String;

    .line 2606
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;
    .locals 3

    .line 1183
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_1

    .line 1184
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "activityNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1185
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 1186
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->okToShowLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1187
    return-object v1

    .line 1184
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1191
    .end local v0    # "activityNdx":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method topRunningActivityWithStartingWindowLocked()Lcom/android/server/wm/ActivityRecord;
    .locals 4

    .line 1229
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_2

    .line 1230
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "activityNdx":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1231
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 1232
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    iget v3, v2, Lcom/android/server/wm/ActivityRecord;->mStartingWindowState:I

    if-ne v3, v1, :cond_1

    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v3, :cond_1

    .line 1233
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->okToShowLocked()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1234
    goto :goto_1

    .line 1236
    :cond_0
    return-object v2

    .line 1230
    .end local v2    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1239
    .end local v0    # "activityNdx":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method touchActiveTime()V
    .locals 2

    .line 896
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/TaskRecord;->lastActiveTime:J

    .line 897
    return-void
.end method

.method updateEffectiveIntent()V
    .locals 2

    .line 1802
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->findEffectiveRootIndex()I

    move-result v0

    .line 1803
    .local v0, "effectiveRootIndex":I
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 1804
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskRecord;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 1807
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->updateTaskDescription()V

    .line 1808
    return-void
.end method

.method updateOverrideConfiguration(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 1867
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method updateOverrideConfiguration(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 5
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "insetBounds"    # Landroid/graphics/Rect;

    .line 1887
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1888
    .local v2, "hasSetDisplayedBounds":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 1889
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskRecord;->setDisplayedBounds(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 1891
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/wm/TaskRecord;->setDisplayedBounds(Landroid/graphics/Rect;)V

    .line 1894
    :goto_1
    if-eqz v2, :cond_2

    move-object v3, p2

    goto :goto_2

    :cond_2
    move-object v3, p1

    .line 1895
    .local v3, "steadyBounds":Landroid/graphics/Rect;
    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/server/wm/TaskRecord;->equivalentRequestedOverrideBounds(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1896
    return v1

    .line 1899
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1900
    invoke-virtual {p0, v3}, Lcom/android/server/wm/TaskRecord;->setBounds(Landroid/graphics/Rect;)I

    .line 1901
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method updateOverrideConfigurationForStack(Lcom/android/server/wm/ActivityStack;)V
    .locals 3
    .param p1, "inStack"    # Lcom/android/server/wm/ActivityStack;

    .line 2370
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    .line 2371
    return-void

    .line 2374
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2375
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->isResizeable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2379
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->matchParentBounds()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2380
    return-void

    .line 2382
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    .line 2383
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 2385
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/LaunchParamsController;->layoutTask(Lcom/android/server/wm/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;)Z

    goto :goto_0

    .line 2376
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not position non-resizeable task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " in stack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2388
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    .line 2390
    :goto_0
    return-void
.end method

.method updateOverrideConfigurationFromLaunchBounds()Landroid/graphics/Rect;
    .locals 2

    .line 2357
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2358
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    .line 2359
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2362
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2364
    :cond_0
    return-object v0
.end method

.method updateTaskDescription()V
    .locals 26

    .line 1710
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1711
    .local v1, "numActivities":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v4, v0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1712
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, 0x1000

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    nop

    .line 1713
    .local v2, "relinquish":Z
    :goto_0
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .local v3, "activityNdx":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 1715
    iget-object v4, v0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 1716
    .local v4, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_1

    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v5, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v5, v5, 0x1000

    if-nez v5, :cond_1

    .line 1719
    add-int/lit8 v3, v3, 0x1

    .line 1720
    goto :goto_2

    .line 1722
    :cond_1
    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v5, :cond_2

    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1723
    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const/high16 v6, 0x80000

    and-int/2addr v5, v6

    if-eqz v5, :cond_2

    .line 1724
    goto :goto_2

    .line 1714
    .end local v4    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1727
    :cond_3
    :goto_2
    if-lez v3, :cond_c

    .line 1732
    const/4 v4, 0x0

    .line 1733
    .local v4, "label":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1734
    .local v5, "iconFilename":Ljava/lang/String;
    const/4 v6, -0x1

    .line 1735
    .local v6, "iconResource":I
    const/4 v7, 0x0

    .line 1736
    .local v7, "colorPrimary":I
    const/4 v8, 0x0

    .line 1737
    .local v8, "colorBackground":I
    const/4 v9, 0x0

    .line 1738
    .local v9, "statusBarColor":I
    const/4 v10, 0x0

    .line 1739
    .local v10, "navigationBarColor":I
    const/4 v11, 0x0

    .line 1740
    .local v11, "statusBarContrastWhenTransparent":Z
    const/4 v12, 0x0

    .line 1741
    .local v12, "navigationBarContrastWhenTransparent":Z
    const/4 v13, 0x1

    .line 1742
    .local v13, "topActivity":Z
    add-int/lit8 v3, v3, -0x1

    move-object v15, v4

    move-object/from16 v16, v5

    move v14, v6

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v9

    move/from16 v20, v10

    move/from16 v21, v11

    move/from16 v22, v12

    move/from16 v23, v13

    .end local v4    # "label":Ljava/lang/String;
    .end local v5    # "iconFilename":Ljava/lang/String;
    .end local v6    # "iconResource":I
    .end local v7    # "colorPrimary":I
    .end local v8    # "colorBackground":I
    .end local v9    # "statusBarColor":I
    .end local v10    # "navigationBarColor":I
    .end local v11    # "statusBarContrastWhenTransparent":Z
    .end local v12    # "navigationBarContrastWhenTransparent":Z
    .end local v13    # "topActivity":Z
    .local v14, "iconResource":I
    .local v15, "label":Ljava/lang/String;
    .local v16, "iconFilename":Ljava/lang/String;
    .local v17, "colorPrimary":I
    .local v18, "colorBackground":I
    .local v19, "statusBarColor":I
    .local v20, "navigationBarColor":I
    .local v21, "statusBarContrastWhenTransparent":Z
    .local v22, "navigationBarContrastWhenTransparent":Z
    .local v23, "topActivity":Z
    :goto_3
    if-ltz v3, :cond_a

    .line 1743
    iget-object v4, v0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 1744
    .local v4, "r":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    if-eqz v5, :cond_4

    .line 1745
    goto :goto_4

    .line 1747
    :cond_4
    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v5, :cond_9

    .line 1748
    if-nez v15, :cond_5

    .line 1749
    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v5

    move-object v15, v5

    .line 1751
    :cond_5
    const/4 v5, -0x1

    if-ne v14, v5, :cond_6

    .line 1752
    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskDescription;->getIconResource()I

    move-result v14

    .line 1754
    :cond_6
    if-nez v16, :cond_7

    .line 1755
    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v16, v5

    .line 1757
    :cond_7
    if-nez v17, :cond_8

    .line 1758
    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v17

    .line 1760
    :cond_8
    if-eqz v23, :cond_9

    .line 1761
    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v18

    .line 1762
    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v19

    .line 1763
    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskDescription;->getNavigationBarColor()I

    move-result v20

    .line 1764
    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 1765
    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskDescription;->getEnsureStatusBarContrastWhenTransparent()Z

    move-result v21

    .line 1766
    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 1767
    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskDescription;->getEnsureNavigationBarContrastWhenTransparent()Z

    move-result v22

    .line 1770
    :cond_9
    const/4 v5, 0x0

    move/from16 v23, v5

    .line 1742
    .end local v4    # "r":Lcom/android/server/wm/ActivityRecord;
    :goto_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 1772
    :cond_a
    new-instance v13, Landroid/app/ActivityManager$TaskDescription;

    const/4 v6, 0x0

    move-object v4, v13

    move-object v5, v15

    move v7, v14

    move-object/from16 v8, v16

    move/from16 v9, v17

    move/from16 v10, v18

    move/from16 v11, v19

    move/from16 v12, v20

    move-object/from16 v24, v13

    move/from16 v13, v21

    move/from16 v25, v14

    .end local v14    # "iconResource":I
    .local v25, "iconResource":I
    move/from16 v14, v22

    invoke-direct/range {v4 .. v14}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;ILjava/lang/String;IIIIZZ)V

    move-object/from16 v4, v24

    iput-object v4, v0, Lcom/android/server/wm/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 1775
    iget-object v4, v0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    if-eqz v4, :cond_b

    .line 1776
    iget-object v5, v0, Lcom/android/server/wm/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/Task;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    .line 1779
    :cond_b
    iget v4, v0, Lcom/android/server/wm/TaskRecord;->taskId:I

    iget v5, v0, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    if-ne v4, v5, :cond_c

    .line 1780
    iget-object v4, v0, Lcom/android/server/wm/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v4

    iput v4, v0, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskColor:I

    .line 1783
    .end local v15    # "label":Ljava/lang/String;
    .end local v16    # "iconFilename":Ljava/lang/String;
    .end local v17    # "colorPrimary":I
    .end local v18    # "colorBackground":I
    .end local v19    # "statusBarColor":I
    .end local v20    # "navigationBarColor":I
    .end local v21    # "statusBarContrastWhenTransparent":Z
    .end local v22    # "navigationBarContrastWhenTransparent":Z
    .end local v23    # "topActivity":Z
    .end local v25    # "iconResource":I
    :cond_c
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "logLevel"    # I

    .line 2611
    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2612
    return-void

    .line 2615
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 2616
    .local v0, "token":J
    const-wide v2, 0x10b00000001L

    invoke-super {p0, p1, v2, v3, p4}, Lcom/android/server/wm/ConfigurationContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 2617
    const-wide v2, 0x10500000002L

    iget v4, p0, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2618
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 2619
    iget-object v3, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 2620
    .local v3, "activity":Lcom/android/server/wm/ActivityRecord;
    const-wide v4, 0x20b00000003L

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/wm/ActivityRecord;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2618
    .end local v3    # "activity":Lcom/android/server/wm/ActivityRecord;
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2622
    .end local v2    # "i":I
    :cond_1
    const-wide v2, 0x10500000004L

    iget-object v4, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    iget v4, v4, Lcom/android/server/wm/ActivityStack;->mStackId:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2623
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_2

    .line 2624
    const-wide v3, 0x10b00000005L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2626
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_3

    .line 2627
    const-wide v3, 0x10900000006L

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2629
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->origActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_4

    .line 2630
    const-wide v3, 0x10900000007L

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2632
    :cond_4
    const-wide v2, 0x10500000008L

    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getActivityType()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2633
    const-wide v2, 0x10500000009L

    iget v4, p0, Lcom/android/server/wm/TaskRecord;->mResizeMode:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2635
    const-wide v2, 0x1080000000aL

    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->matchParentBounds()Z

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2637
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->matchParentBounds()Z

    move-result v2

    if-nez v2, :cond_5

    .line 2638
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 2639
    .local v2, "bounds":Landroid/graphics/Rect;
    const-wide v3, 0x10b0000000bL

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2641
    .end local v2    # "bounds":Landroid/graphics/Rect;
    :cond_5
    const-wide v2, 0x1050000000cL

    iget v4, p0, Lcom/android/server/wm/TaskRecord;->mMinWidth:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2642
    const-wide v2, 0x1050000000dL

    iget v4, p0, Lcom/android/server/wm/TaskRecord;->mMinHeight:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2643
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2644
    return-void
.end method
